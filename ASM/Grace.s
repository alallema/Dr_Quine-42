%define NL 10
%define QT 34
%define PC 37
;Comment
section .data
str: db "%4$cdefine NL 10%1$c%4$cdefine QT 34%1$c%4$cdefine PC 37%1$c%5$cComment%1$csection .data%1$cstr: db %2$c%3$s%2$c, 0%1$cfilename: db %2$cGrace_kid.s%2$c, 0%1$coption: db %2$cw+%2$c%1$c%1$c%4$cmacro MAIN 0%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _fopen%1$cextern _fprintf%1$c%1$cstart:%1$ccall _main%1$cret%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$c%1$clea rdi, [rel filename]%1$clea rsi, [rel option]%1$ccall _fopen%1$c%1$cmov rdi, rax%1$clea rsi, [rel str]%1$cmov rdx, NL%1$cmov rcx, QT%1$clea r8, [rel str]%1$cmov r9, PC%1$cmov byte[rbp - 16], 59%1$ccall _fprintf%1$c%1$cadd rsp, 16%1$cleave%1$cret%1$c%1$c%4$cendmacro%1$c%1$cMAIN", 0
filename: db "Grace_kid.s", 0
option: db "w+"

%macro MAIN 0

section .text
global start
global _main
extern _fopen
extern _fprintf

start:
call _main
ret

_main:
push rbp
mov rbp, rsp
sub rsp, 16

lea rdi, [rel filename]
lea rsi, [rel option]
call _fopen

mov rdi, rax
lea rsi, [rel str]
mov rdx, NL
mov rcx, QT
lea r8, [rel str]
mov r9, PC
mov byte[rbp - 16], 59
call _fprintf

add rsp, 16
leave
ret

%endmacro

MAIN