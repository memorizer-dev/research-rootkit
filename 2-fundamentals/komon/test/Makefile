obj-m := test.o
KDIR ?= "/lib/modules/$(shell uname --release)/build"

default:
	${MAKE} modules \
		--directory $(KDIR) \
		M="$(shell pwd)"


clean:
	${MAKE} clean \
		--directory $(KDIR) \
		M="$(shell pwd)"
