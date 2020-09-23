
# Compiler settings
export CC = g++
export CXXFLAGS = -std=c++11 -Wall -g
export LDFLAGS = 




# Makefile settings
export APPNAME = mytest
export EXT = .cpp
export ROOTDIR =  $(CURDIR)
export INCDIR = $(CURDIR)/include
export OUTPUTDIR = $(CURDIR)/out

#test exclude main
export EXCLUDEFILE = main.c

# UNIX-based OS variables & settings
export RM = rm
export DELOBJ = $(OBJ)
# Windows OS variables & settings
export DEL = del
export EXE = .exe


export SHOW = show
export BUILD = build
export CLEANW = cleanw
export TEST = test

TESTDIR = $(TEST)
SRCDIR = src


###############################################################################
$(SHOW):	 
	@echo --------------$(APPNAME):$(SHOW) Makefile-----------------------	 
	@echo CC = $(CC)
	$(MAKE) $(SHOW) -C $(SRCDIR) 

$(TEST):	
	$(MAKE) $(BUILD) -C $(TESTDIR)

$(BUILD):	
	$(MAKE) $(BUILD) -C $(SRCDIR)

 .PHONY: $(SHOW) $(TESTDIR)
