-include ../makefile.$(OS)
-include ../Makefile.Local
-include Makefile.Local

TARGET_NAME=controller

DIRSRC = src
DIRBUILD = build

TARGET = $(DIRBUILD)/$(TARGET_NAME)
LKF = stm8lkf.lkf

INCDIRS += -i"inc"
INCDIRS += -i"libs/inc"

SRCS = $(wildcard $(DIRSRC)/*.c)
ASMS = $(wildcard $(DIRSRC)/*.s)
LIB_SRCS = $(wildcard libs/src/*.c)

OBJS = $(addprefix $(DIRBUILD)/,$(patsubst $(DIRSRC)/%.c,%.o,$(SRCS)))
AOBJS = $(addprefix $(DIRBUILD)/,$(patsubst $(DIRSRC)/%.s,%.o,$(ASMS)))
LIB_OBJS = $(addprefix $(DIRBUILD)/,$(patsubst libs/src/%.c,%.o,$(LIB_SRCS)))

CC = "$(COSMIC_HOME)/cxstm8$(EXT)"
LL = "$(COSMIC_HOME)/clnk$(EXT)"
AS = "$(COSMIC_HOME)/castm8$(EXT)"
DWRF = "$(COSMIC_HOME)/cvdwarf$(EXT)"
HH = "$(COSMIC_HOME)/chex$(EXT)"

CFLAGS=+mods -eg -debug -pxp -no -pp -l $(INCDIRS)
DEFFLAGS=-dUSE_STDPERIPH_DRIVER -dSTM8S208
CCFLAGS = $(CFLAGS) $(INCDIRS) $(DEFFLAGS)

FLASH="$(ST_TOOLSET_ROOT)/stvp/STVP_CmdLine$(EXT)"
DEVICE=STM8S208MB
 
all: $(TARGET).elf

%.elf : $(LIB_OBJS) $(OBJS) $(AOBJS)
	$(LL) -ge -o $(TARGET).sm8 -m $(TARGET).map $(LKF) 
	$(DWRF) $(TARGET).sm8
	$(HH) -o $(TARGET).s19 $(TARGET).sm8
	
$(DIRBUILD)/%.o : $(DIRSRC)/%.c
	$(CC) $(CCFLAGS) -cl $(DIRBUILD) -co $(DIRBUILD) $^

$(DIRBUILD)/%.o : libs/src/%.c
	$(CC) $(CCFLAGS) -cl $(DIRBUILD) -co $(DIRBUILD) $^
	
$(DIRBUILD)/%.o : $(DIRSRC)/%.s
	$(AS) -o $@ $^ 

flash: clean all
	$(FLASH) -BoardName=ST-LINK -Device=$(DEVICE) -Port=USB -ProgMode=SWIM -no_loop -no_log -verif -verbose -FileProg=$(TARGET).s19 -FileOption=options.s19

clean :
	$(RM) -rf $(DIRBUILD)
	$(MKDIR) $(DIRBUILD) 

.PHONY : all clean
