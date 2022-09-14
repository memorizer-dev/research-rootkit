TARGET = sys_call_table
obj-m := ${TARGET}ko.o
${TARGET}ko-objs := ${TARGET}.o zeroevil/zeroevil.o
KDIR ?= "/lib/modules/$(shell uname --release)/build"




default:
	${MAKE} modules \
		--directory $(KDIR) \
		M="$(shell pwd)"


clean:
	${MAKE} clean \
		--directory $(KDIR) \
		M="$(shell pwd)"


test: default
	sudo dmesg -c && sudo insmod ${TARGET}ko.ko && sudo dmesg -c && sudo rmmod ${TARGET}ko && sudo dmesg -c
