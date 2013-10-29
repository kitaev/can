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

SPL_SRCS = $(wildcard libs/src/*.c)
SPL_OBJS = $(addprefix $(DIRBUILD)/,$(patsubst libs/src/%.c,%.o,$(SPL_SRCS)))

DEVICE_MANUFACTER=ST
DEVICE_FAMILY=STM32F30x

CC_PREFIX = arm-none-eabi
CC = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-gcc$(EXT)"
LD = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-ld$(EXT)"
AS = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-as$(EXT)"
SIZE = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-size$(EXT)"

OBJCOPY = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-objcopy$(EXT)"
OBJDUMP = "$(GNU_CC_HOME)/bin/$(CC_PREFIX)-objdump$(EXT)"

CFLAGS = -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mlittle-endian -mfloat-abi=hard -mthumb -mthumb-interwork

INCDIRS += -I "$(GNU_CC_HOME)/$(CC_PREFIX)/include"
INCDIRS += -I "libs/inc" 

LIBDIRS += -L "$(GNU_CC_HOME)/$(CC_PREFIX)/lib/armv7e-m"
LIBDIRS += -L "$(GNU_CC_HOME)/lib/gcc/$(CC_PREFIX)/4.7.3/armv7e-m"

LDFLAGS = $(LIBDIRS) -v
DEFFLAGS = -DUSE_STDPERIPH_DRIVER -DHSEVALUE=8000000
CCFLAGS = $(CFLAGS) $(DEFFLAGS) $(INCDIRS)
 
all: $(TARGET).elf
	$(OBJCOPY) -O binary $(TARGET).elf $(TARGET).bin
	$(OBJCOPY) -O ihex $(TARGET).elf $(TARGET).hex
	$(OBJDUMP) -d $(TARGET).elf > $(TARGET).txt
	$(SIZE) $(TARGET).hex

$(TARGET).elf: $(SPL_OBJS) $(OBJS) $(AOBJS)
	$(LD) $(LDFLAGS) -Map $(DIRBUILD)/map.txt -T stm32_flash.ld -o $@ $^

$(DIRBUILD)/%.o : $(DIRSRC)/%.c
	$(CC) $(CCFLAGS) -c $^ -o $@
    
$(DIRBUILD)/%.o : $(DIRSRC)/%.s
	$(AS) -c $^ -o $@

$(DIRBUILD)/%.o : libs/src/%.c
	$(CC) $(CCFLAGS) -c $^ -o $@

ifneq ($(STM32_FLASHER),)
flash: clean all
	"$(STM32_FLASHER)" $(STM32_FLASHER_ARGS) 
endif

clean :
	$(RM) -rf $(DIRBUILD)
	$(MKDIR) $(DIRBUILD) 

.PHONY : all flash clean
