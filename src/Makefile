#Makefile
#Created on: May 1, 2017
#     Author: haobo
SUBDIR = $(shell ls -l | grep ^d | awk '{print $$9}')
CURSRC = ${wildcard *.c}
CUROBJ = ${patsubst %.c,%.o,$(CURSRC)}
all:$(SUBDIR) $(CUROBJ)
$(SUBDIR):ECHO
	make -C $@
$(CUROBJ):%.o:%.c
	$(CC) -c $^ -o $(ROOTDIR)/$(OBJDIR)/$@ $(CFLAGS)
ECHO:
	@echo $(SUBDIR)