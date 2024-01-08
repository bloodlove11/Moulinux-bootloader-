default:
	qemu-system-i386 -fda bootsec.bin
build:
	nasm bootsec.asm -f bin -o bootsec.bin
		
