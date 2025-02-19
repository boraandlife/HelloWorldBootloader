ORG 0x7c00

block_parameter:
    jmp short init_cs


times 33 db 0

init_cs:
    jmp 0:general

general:
    cli
    mov ax, 0x00
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00
    mov si, msg
    call _print
    sti

_print:
    lodsb
    cmp al, 0
    je .done
    call print_char
    jmp _print

.done:
    ret

print_char:
    mov ah, 0eh
    int 10h
    ret



msg: db "Hello World",0

times 510-($ - $$) db 0
dw 0xAA55
