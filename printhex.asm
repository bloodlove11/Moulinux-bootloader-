print_hex:
	pusha 
	push 0
	mov cx,0
	loop1:
	mov ax,dx
	shr ax,cl
	shr ax,cl
	shr ax,cl
	shr ax,cl
	and ax,0xF
	cmp ax,0xA
	jge label1
	add ax,"0"
	jmp end1
	label1:
		add ax,"7"
	end1:
	shl ax,8
	push ax
	inc sp
	
	add cx,1
	cmp cx,4
	jl loop1
	push "0x"
	mov bx,sp
	call printstr
	pop ax
	pop ax
	pop ax
	pop ax
	popa
	ret