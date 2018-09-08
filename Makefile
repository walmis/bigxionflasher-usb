#
# Makefile for BigXionFlasher for Linux and Windows (MinGW)
# Copyright (c) 2011-2017 by Thomas König <info@bigxionflasher.org>.
# All rights reserved. Distributed under the GPLv3 software license,
# see the accompanying file LICENSE or
# https://opensource.org/licenses/GPL-3.0
#

TINY_CAN_API = tinycan

CC = gcc
LD = gcc
INCLUDE = 
LDFLAGS = -Wall

UNAME := $(shell uname)

 API_DRV = can_drv_linux
 LIB = -ldl -lc
 CFLAGS = -Wall -pthread -g0 -O2 


OBJS = src/bigXionFlasher.o

all: $(OBJS)
	$(LD) $(LDFLAGS) -o bigXionFlasher $(OBJS) $(LIB)

obj/bigXionFlasher.o: src/bigXionFlasher.c
	$(CC) $(CFLAGS) $(INCLUDE) -o obj/bigXionFlasher.o -c src/bigXionFlasher.c


clean:	
	rm -f obj/*.o *~ ./bigXionFlasher ./bigXionFlasher.exe
