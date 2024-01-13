default:bootsec.bin

run:
	qemu-system-i386 -hda bootsec.bin

bootsec.bin: printstr.asm bootsec.asm printbitmap.asm disk_load.asm
	nasm bootsec.asm -f bin -o bootsec.bin	
