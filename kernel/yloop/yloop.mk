NAME := yloop

$(NAME)_COMPONENTS := log vfs

$(NAME)_TYPE := kernel
$(NAME)_SOURCES     := yloop.c
$(NAME)_SOURCES     += local_event.c

#default gcc
ifeq ($(COMPILER),)
$(NAME)_CFLAGS      += -Wall -Werror
else ifeq ($(COMPILER),gcc)
$(NAME)_CFLAGS      += -Wall -Werror
endif

GLOBAL_DEFINES      += AOS_LOOP
