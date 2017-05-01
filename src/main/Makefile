#Makefile
#Created on: May 1, 2017
#     Author: haobo
SUBDIR = $(shell ls -l | grep ^d | awk '{print $$9}')
CURSRC = ${wildcard *.c}
CUROBJ = ${patsubst %.c,%.o,$(CURSRC)}
all: $(CUROBJ)
$(CUROBJ):%.o:%.c
	@echo $(CFLAGS)
	$(CC) -c $^ -o $(ROOTDIR)/$(OBJDIR)/$@ $(CFLAGS)
ECHO:
	@echo $(SUBDIR)