export KDIR=/mnt/linux

all:
	make -C 1-sys_call_table/fshid
	make -C 1-sys_call_table/fsmon
	make -C 1-sys_call_table/psmon
	make -C 1-sys_call_table/sys_call_table
	make -C 1-sys_call_table/write_protection

	make -C 2-fundamentals/fshid
	make -C 2-fundamentals/kohid
	make -C 2-fundamentals/komon
	make -C 2-fundamentals/pshid
	make -C 2-fundamentals/root

	make -C 3-persistence/codeinj
	make -C 3-persistence/elf
	make -C 3-persistence/noinj

clean:
	make clean -C 1-sys_call_table/fshid
	make clean -C 1-sys_call_table/fsmon
	make clean -C 1-sys_call_table/psmon
	make clean -C 1-sys_call_table/sys_call_table
	make clean -C 1-sys_call_table/write_protection

	make clean -C 2-fundamentals/fshid
	make clean -C 2-fundamentals/kohid
	make clean -C 2-fundamentals/komon
	make clean -C 2-fundamentals/pshid
	make clean -C 2-fundamentals/root

	make clean -C 3-persistence/codeinj
	make clean -C 3-persistence/elf
	make clean -C 3-persistence/noinj