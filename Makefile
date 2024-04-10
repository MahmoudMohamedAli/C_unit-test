#Tool definitions

CC ?= gcc
CXX ?= g++

#Setting 
SRC_DIR = ./src
TEST_DIR =./tests
BUILD_DIR = .
NAME = app.elf


#Search Path for Header file
C_FLAGS = -I $(SRC_DIR)/average

#List Module Source Files

CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/average/*.c)

#Compiler Flags
C_FLAGS += -Wall


#Linker Flags
LDFLAGS +=

#Generate  names for output object files (*.o)
COBJECTS = $(pathsubst %.c %.o , $(CSOURCES))

#Default rule : build application

.PHONY: all
all: $(NAME)

#BUILD Components
$(COBJECTS) : %.o : %.c
%.o : %.c
	$(CC) $(C_FLAGS) -c $< -o $@

# BUILD the target application
.PHONY: $(NAME)
$(NAME) : $(COBJECTS)
	$(CC) $(COBJECTS) -o  $(BUILD_DIR)/$(NAME)   $(LDFLAGS)

#Remove Compiled Object Files
.PHONY: clean
clean:
	rm -f $(COBJECTS)
	rm -f $(NAME)
