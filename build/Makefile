# **********************************************
# ls1x project
# **********************************************
# Name of application

# **********************************************
# Tools
# **********************************************
#CROSS_COMPILE = loongarch32-linux-gnu-
#CROSS_COMPILE = loongarch32-linux-gnusf-
#CROSS_COMPILE =  /opt/loongarch32-linux-gnu-2022-04-15/bin/loongarch32-linux-gnu-



CC        = D:/嵌入式/LongXin/text/laidevscode/buildtool/la32-tool/bin/loongarch32-newlib-elf-gcc.exe
LD        = D:/嵌入式/LongXin/text/laidevscode/buildtool/la32-tool/bin/loongarch32-newlib-elf-ld.exe
OBJCOPY   = D:/嵌入式/LongXin/text/laidevscode/buildtool/la32-tool/bin/loongarch32-newlib-elf-objcopy.exe
OBJDUMP   = D:/嵌入式/LongXin/text/laidevscode/buildtool/la32-tool/bin/loongarch32-newlib-elf-objdump.exe
STRIP     = D:/嵌入式/LongXin/text/laidevscode/buildtool/la32-tool/bin/loongarch32-newlib-elf-strip.exe
SIZE	  = D:/嵌入式/LongXin/text/laidevscode/buildtool/la32-tool/bin/loongarch32-newlib-elf-size.exe

# **********************************************
# Directories
# **********************************************
DRIVERS   = $(ROOT_DIR)/drivers
BUILD_DIR = $(ROOT_DIR)/build
SYSTEM	  = $(ROOT_DIR)/system
USER      = $(ROOT_DIR)/user/ls$(BOARD)
DIR_SRC	  = $(ROOT_DIR)/src


BOARD     = 1c102
ifeq ($(BOARD),1c102)
BOARDNAME = LS1C102
IMAGENAME = 1c102_demo
else ifeq ($(BOARD),1c103)
BOARDNAME = LS1C103
IMAGENAME = 1c103_demo
endif
PUBLIC	  = $(DRIVERS)/public
PRIVATE	  = $(DRIVERS)/private/ls$(BOARD)
EXAMPLE	  = $(ROOT_DIR)/example/ls$(BOARD)
CASE	  = $(ROOT_DIR)/example/ls$(BOARD)/case
# BCMDLINE  = $(ROOT_DIR)/user/$(BOARD)_cmdline.o
# BCMDLINE  = $(ROOT_DIR)/$(USER)/$(BOARD)_main.o
# BCOMMAND  = $(ROOT_DIR)/$(USER)/$(BOARD)_cmd.o
# BINT      = $(ROOT_DIR)/$(USER)/$(BOARD)_Interrupt.o

# SRCDIR    = $(SYSTEM) $(PUBLIC) $(PRIVATE) $(EXAMPLE) $(CASE)  $(USER) $(DIR_SRC) 
# INCLUDE	+= -I$(DRIVERS)/include -I$(PUBLIC)  -I$(PRIVATE) -I$(SYSTEM) -I$(DIR_SRC) 


SRCDIR    = \
	$(SYSTEM) 			\
	$(PUBLIC) 			\
	$(PRIVATE) 			\
	$(EXAMPLE) 			\
	$(CASE) 			\
	$(USER) 			\
	$(DIR_SRC) 			\


INCLUDE += \
    -I$(DRIVERS)/include    \
    -I$(PUBLIC)             \
    -I$(PRIVATE)            \
    -I$(SYSTEM)             \
    -I$(DIR_SRC)            \

VPATH     = $(SRCDIR) $(USER)
IMAGE_ELF = $(IMAGENAME).elf
IMAGE_BIN = $(IMAGENAME).bin
IMAGE_MAP = $(IMAGENAME).map



FLAGS   = -std=gnu99 -O0 -ffunction-sections -fdata-sections -msoft-float -fsched-pressure -fno-builtin -D $(BOARDNAME) 

CC_OPTS	 = $(DEBUG) $(FLAGS) $(INCLUDE) 
CC_COPTS = $(DEBUG) $(FLAGS) $(INCLUDE) 

LD_SCRIPT = ld.script
LD_OPTS   = -G 0 -static -T $(LD_SCRIPT) -Map $(IMAGE_MAP) --gc-sections

# **********************************************
# Files to be compiled
# **********************************************

SRC_C  = $(foreach dir, $(SRCDIR), $(wildcard $(dir)/*.c))
SRC_S  = $(foreach dir, $(SRCDIR), $(wildcard $(dir)/*.S))
SRC    = $(SRC_C) $(SRC_S)
OBJ_C  = $(notdir $(patsubst %.c, %.o, $(SRC_C)))
OBJ_C += $(notdir $(BCMDLINE))
OBJ_C += $(notdir $(BCOMMAND))
OBJ_C += $(notdir $(BINT))
OBJ_S  = start.o $(filter-out start.o, $(notdir $(patsubst %.S, %.o, $(SRC_S))))
LS1C1X_OBJ = $(OBJ_S) $(OBJ_C)

# **********************************************
# Rules
# **********************************************
.PHONY : all
all : $(IMAGE_BIN) 
$(IMAGE_BIN):$(LS1C1X_OBJ) 
	$(LD) $(LD_OPTS) -o $(IMAGE_ELF) $^ -Map $(IMAGE_MAP)
	$(OBJCOPY) -O binary $(IMAGE_ELF) $(IMAGE_BIN)
	$(SIZE) $(IMAGE_ELF)
	$(OBJDUMP) -alD $(IMAGE_ELF) > $(IMAGENAME).s

$(OBJ_C) : %.o : %.c 
	$(CC) $(CC_COPTS) -c -o $@ $^
$(OBJ_S) : %.o : %.S
	$(CC) $(CC_OPTS) -c -o $@ $^


.PHONY : clean 
clean :
	rm -rf *.o *.elf *.map *.bin *.s *.a
