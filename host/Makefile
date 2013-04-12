-include ../makefile.$(OS)
-include ../Makefile.Local
-include Makefile.Local

TARGET_NAME=host

DIRSRC = src
DIRINC = inc
DIRBUILD = build

TARGET = $(DIRBUILD)/$(TARGET_NAME)
SRCS = $(wildcard $(DIRSRC)/*.c)
OBJS = $(addprefix $(DIRBUILD)/,$(patsubst $(DIRSRC)/%.c,%.o,$(SRCS)))

ASMS = $(wildcard $(DIRSRC)/*.s)
AOBJS = $(addprefix $(DIRBUILD)/,$(patsubst $(DIRSRC)/%.s,%.o,$(ASMS)))

SPL_SRCS = $(wildcard libs/SPL/*.c)
SPL_OBJS = $(addprefix $(DIRBUILD)/,$(patsubst libs/SPL/%.c,%.o,$(SPL_SRCS)))

DEVICE_MANUFACTER=ST
DEVICE_FAMILY=STM32F30x

CC_PREFIX = arm-none-eabi
CC = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-gcc$(EXT)"
LD = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-ld$(EXT)"
AS = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-as$(EXT)"
SIZE = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-size$(EXT)"

OBJCOPY = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-objcopy$(EXT)"
OBJDUMP = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-objdump$(EXT)"

CFLAGS = -mcpu=cortex-m4 -march=armv7e-m -mfloat-abi=soft -mthumb -Os
#-ggdb

INCDIRS += -I "$(GNU_CC_HOME)/$(CC_PREFIX)/include"
# CMSIS 
INCDIRS += -I "libs/CMSIS" 
INCDIRS += -I "libs/CMSIS_device"

# SPL
INCDIRS += -I "libs/SPL"

LIBDIRS += -L "$(GNU_CC_HOME)/$(CC_PREFIX)/lib/armv7e-m"
LIBDIRS += -L "$(GNU_CC_HOME)/lib/gcc/$(CC_PREFIX)/4.7.3/armv7e-m"

LDFLAGS = $(LIBDIRS) -v
DEFFLAGS = -DUSE_STDPERIPH_DRIVER
CCFLAGS = $(CFLAGS) $(DEFFLAGS) $(INCDIRS)
 
all: clean mkdir $(TARGET).o
	$(OBJCOPY) -O binary $(TARGET).o $(TARGET).bin
	$(OBJCOPY) -O ihex $(TARGET).o $(TARGET).hex
	$(OBJDUMP) -d $(TARGET).o > $(TARGET).txt
	$(SIZE) $(TARGET).hex

$(TARGET).o: $(SPL_OBJS) $(OBJS) $(AOBJS)
	$(LD) $(LDFLAGS) -Map $(DIRBUILD)/map.txt -T stm32f30x.ld -o $@ $^

$(DIRBUILD)/%.o : $(DIRSRC)/%.c
	$(CC) $(CCFLAGS) -c $^ -o $@

$(DIRBUILD)/%.o : libs/SPL/%.c
	$(CC) $(CCFLAGS) -c $^ -o $@
	
$(DIRBUILD)/%.o : $(DIRSRC)/%.s
	$(AS) -c $^ -o $@

ifneq ($(STM32_FLASHER),)
flash: all
	"$(STM32_FLASHER)" $(STM32_FLASHER_ARGS) 
endif

mkdir:
	$(MKDIR) $(DIRBUILD)

clean :
	$(RM) -rf $(DIRBUILD) 

.PHONY : all mkdir clean
