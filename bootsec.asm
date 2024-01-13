[org 0x7c00]



mov bp, 0x8000
mov sp , bp


%include"printbitmap.asm"
mov ax,DATA
mov bx,0x0
call printbitmap
jmp $
 
DATA: dw 0x0F41,0xF567,0xABCD,0x6969,0xFF15,0x0000
times 510 -( $ - $$ ) db 0
dw 0xaa55




