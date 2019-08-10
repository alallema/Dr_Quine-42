;Comment
section .data
str: db "%4$cComment%1$csection .data%1$cstr: db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _printf%1$c%1$cstart:%1$ccall _main%1$cret%1$c%1$c_main:%1$c%4$cComment%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$clea rdi, [rel str]%1$cmov rsi, 10%1$cmov rdx, 34%1$clea rcx, [rel str]%1$cmov r8, 59%1$ccall _printf%1$cjmp .end%1$c%1$c.end:%1$cadd rsp, 16%1$cleave%1$cret", 0

section .text
global start
global _main
extern _printf

start:
call _main
ret

_main:
;Comment
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel str]
mov rsi, 10
mov rdx, 34
lea rcx, [rel str]
mov r8, 59
call _printf
jmp .end

.end:
add rsp, 16
leave
ret