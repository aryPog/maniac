# Directories
SRCDIR = src
PREFIX = /usr/local
INCLUDES = -I$(PREFIX)/include
LIBDIR = -L$(PREFIX)/lib

# Combine flags
CPPFLAGS += $(INCLUDES) $(DEPFLAGS)
LDFLAGS += $(LIBDIR)
# LDLIBS = $(shell pkg-config --libs ncursesw) -lm 
LDLIBS = -lm 

# Dependency flags
DEPFLAGS = -MD

# Compiler and flags
CC = gcc
GCCFLAGS = -Wextra -Wno-unused-variable
DFLAGS = -D_POSIX_C_SOURCE=199309L
CFLAGS = -std=c99 -g -Wall $(GCCFLAGS) -pedantic $(DFLAGS)

# Debug flag
DEBUG ?= 0
ifeq ($(DEBUG), 1)
    DFLAGS += -DDEBUG_FLAG
    CFLAGS += -g
endif