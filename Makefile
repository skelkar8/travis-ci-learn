WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR)
DIRS = HW1 HW2 HW4
OBJS = $(SRCS:%.c=%.o)
ALLDIRS = $(wildcard */)

test: 
	for subdir in $(DIRS); do \
		make -C $$subdir test; \
	done


clean: 
	for subdir in $(ALLDIRS); do \
		make -C $$subdir clean; \
	done


