TARGET = rec
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
