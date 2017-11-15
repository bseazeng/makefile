#make -f test_vars.mk -f vars.mk d-foo
#make -f test_vars.mk -f vars.mk OBJS
OBJDIR := objdir
OBJS := $(addprefix $(OBJDIR)/,foo.o bar.o baz.o)
 
foo = $(bar)bar = $(ugh)ugh = Huh?
 
CFLAGS = $(include_dirs) -O
include_dirs = -Ifoo -Ibar
CFLAGS := $(CFLAGS) -Wall
 
MYOBJ := a.o b.o c.o
MYSRC := $(MYOBJ:.o=.c)