```assembly
mov ax, bx
add ax, cx
jnc no_overflow ; Jump if no carry (no overflow)
; Handle overflow here (e.g., set an error flag or use larger registers)
mov dx, 0 ; clear dx to indicate error
;Alternatively, handle overflow with a larger register 
mov bx,ax ;move ax to bx
mov ax,0 ;clear ax
add ax,cx ; add cx to ax 
add ax,bx ; add bx to ax
mov dx,ax;move result to dx
jmp end
no_overflow:
mov dx, ax ; Copy the result to dx if no overflow
end:
```