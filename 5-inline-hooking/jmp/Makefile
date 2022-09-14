TARGET = jmp
obj-m := ${TARGET}ko.o
${TARGET}ko-objs := ${TARGET}.o zeroevil/zeroevil.o
KDIR ?= "/lib/modules/$(shell uname --release)/build"

ccflags-y = "-O0"


default:
	${MAKE} modules \
		--directory $(KDIR) \
		M="$(shell pwd)"


clean:
	${MAKE} clean \
		--directory $(KDIR) \
		M="$(shell pwd)"
