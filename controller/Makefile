-include ../makefile.$(OS)
-include ../Makefile.Local
-include Makefile.Local

TARGET_NAME=controller

TOOLSET_BIN=$(TOOLSET_ROOT)
TOOLSET_INC=$(TOOLSET_ROOT)/Hstm8
TOOLSET_LIB=$(TOOLSET_ROOT)/Lib

CC="$(TOOLSET_BIN)/cxstm8$(EXT)"
LL="$(TOOLSET_BIN)/clnk$(EXT)"
DWRF="$(TOOLSET_BIN)/cvdwarf$(EXT)"
HH="$(TOOLSET_BIN)/chex$(EXT)"

FLASH="$(ST_TOOLSET_ROOT)/stvp/STVP_CmdLine$(EXT)"
DEVICE=STM8S003K3

DIRSRC = src
DIRBUILD = build
TARGET = $(DIRBUILD)/$(TARGET_NAME)
SRCS = $(wildcard $(DIRSRC)/*.c)
OBJS = $(addprefix $(DIRBUILD)/,$(SRCS:.c=.o))
LKF = stm8lkf.lkf
#LKF = vasja.lkf

CFLAGS=+mods0 -eg -debug -pxp -no -pp -l -i"$(TOOLSET_INC)"

all : clean mkdir $(TARGET).elf

$(OBJS) : $(SRCS)
	$(CC) $(CFLAGS) -cl $(DIRBUILD) -co $(DIRBUILD) $^

%.elf : $(OBJS)
	$(LL) -l"$(TOOLSET_LIB)" -o $(TARGET).sm8 -m $(TARGET).map $(LKF) 
	$(DWRF) $(TARGET).sm8
	$(HH) -o $(TARGET).s19 $(TARGET).sm8

mkdir:
	$(MKDIR) $(DIRBUILD)

clean :
	$(RM) -rf $(DIRBUILD) 

flash: all
	$(FLASH) -BoardName=ST-LINK -Device=$(DEVICE) -Port=USB -ProgMode=SWIM -no_loop -no_log -verif -verbose -FileProg=$(TARGET).s19

.PHONY : all mkdir clean flash