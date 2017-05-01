#Makefile
# Created on: May 1, 2017
#     Author: haobo
CC = gcc
SUBDIR = $(shell ls -l | grep ^d | awk '{if( $$9 == "src") print $$9}' )
DEBUGDIR = $(shell ls -l | grep ^d | awk '{if( $$9 == "debug") print $$9}')
ROOTDIR = $(shell pwd)
BINFILE= test.bin
OBJDIR = debug/obj
BINDIR = debug/bin
CFLAGS=-I $(ROOTDIR)/inc
CURSRC = ${wildcard *.c}
CUROBJ = $(patsubst %c,%o,$(CURSRC))
export CC BINFILE ROOTDIR OBJDIR BINDIR CFLAGS
all:$(SUBDIR) $(CUROBJ) $(DEBUGDIR)
$(SUBDIR):ECHO
	make -C $@
$(DEBUGDIR):ECHO
	make -C $@
ECHO:
	@echo $(SUBDIR)
$(CUROBJ): %.o:%.c
	$(CC) -c $^ -o $(ROOTDIR)/$(OBJDIR)/$@
clean:
	rm -f $(OBJDIR)/*.o $(BINDIR)/*.bin