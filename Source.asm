 .model small
.stack 100h
.data
Var db  0AH,0DH,‘hello$’
Var1 db 3 dup(?)
.code
Main proc
	Mov ax,@data
	Mov ds,ax
             Mov ah, 1
	Int 21h
	Mov var1[si],al
 Mov ah,1
	Int 21h
	Mov var1[si+1],al
             Mov ah,1
	Int 21h
	Mov var1[si+2],al
Mov si,offset var1
Mov dx,[si]
mov ah,2
int 21h
Mov dx,[si+1]
mov ah,2
int 21h
Mov dx,[si+2]
mov ah,2
int 21h
mov ah, 4ch
int 21h	
main endp
end main
