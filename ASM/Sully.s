section .bss
buff: resb 10

section .data
str: db "section .bss%1$cbuff: resb 10%1$c%1$csection .data%1$cstr: db %2$c%3$s%2$c, 0%1$cflag: db %2$cF_OK%2$c, 0%1$coption: db %2$cw%2$c, 0%1$cfilename: db %2$cSully_%4$c1%5$cd.s%2$c, 0%1$cname: db %2$c%2$c, 10%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _access%1$cextern _fopen%1$cextern _fclose%1$cextern _fprintf%1$cextern _sprintf%1$c%1$cstart:%1$ccall _main%1$cret%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$c%1$cmov byte[rbp - 8], %6$d%1$ccmp byte[rbp - 8], 0%1$cje .end%1$c%1$clea rdi, [rel buff]%1$clea rsi, [rel filename]%1$cmovzx rdx, byte[rbp - 8]%1$ccall _sprintf%1$c%1$clea rdi, [rel buff]%1$clea rsi, [rel flag]%1$ccall _access%1$c%1$ccmp rax, 0%1$cje .dec%1$cjmp .open%1$c%1$c.dec:%1$csub byte[rbp - 8], 1%1$c%1$c.open:%1$clea rdi, [rel buff]%1$clea rsi, [rel filename]%1$cmovzx rdx, byte[rbp - 8]%1$ccall _sprintf%1$c%1$c
", 0
flag: db "F_OK", 0
option: db "w", 0
filename: db "Sully_%1$d.s", 0
name: db "%1$d", 10
number: dw 5

section .text
global start
global _main
extern _access
extern _fopen
extern _fclose
extern _fprintf
extern _sprintf

start:
call _main
ret

_main:
push rbp
mov rbp, rsp
sub rsp, 64

mov byte[rbp - 8], 5
cmp byte[rbp - 8], 0
je .end

lea rdi, [rel buff]
lea rsi, [rel filename]
movzx rdx, byte[rbp - 8]
call _sprintf

lea rdi, [rel buff]
lea rsi, [rel flag]
call _access

cmp rax, 0
je .dec
jmp .open

.dec:
sub byte[rbp - 8], 1

.open:
lea rdi, [rel buff]
lea rsi, [rel filename]
movzx rdx, byte[rbp - 8]
call _sprintf

lea rdi, [rel buff]
lea rsi, [rel option]
call _fopen

.print:
mov rdi, rax
lea rsi, [rel str]
mov rdx, 10
mov rcx, 34
lea r8, [rel str]
mov r9, 37
mov byte[rbp - 64], 36
movzx r10, byte[rbp - 8]
mov [rbp - 56], r10
call _fprintf

;.close:
;mov rdi, [rbp - 16]
;call _fclose
;.print:
;lea rdi, [rel buff]
;call _printf

;lea rdi, [rel buff]
;lea rdi, [rel filename]
;movzx rsi, byte[rbp -8]
;call _printf

.end:
add rsp, 64
leave
ret
