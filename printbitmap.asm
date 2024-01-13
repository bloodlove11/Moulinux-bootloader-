;prints image at bx in 0xb8000+ax
printbitmap:
	pusha
	mov cx,0xb800
	mov es,cx
	mov cx,bx
	mov si,ax
	printloop:
	mov word dx,[si]
	cmp dx,0
	jmp fin
	cmp dx,0xFFFF
	je nextline
	mov word [es:bx],dx
	inc si
	inc si
	inc bx
	inc bx
	jmp printloop
	nextline:
	mov dx,es
	add dx,0xA
	mov es,dx
	mov bx,cx
	inc si
	inc si
	jmp printloop
	fin:
	popa
	ret	
