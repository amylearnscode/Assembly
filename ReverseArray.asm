; Reverse an Array

INCLUDE Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:DWORD

.data
array DWORD 1,5,6,8,0Ah,1Bh,1Eh,22h,2Ah,32h

.code
main proc
mov esi,0  ;point to first element
mov edi,SIZEOF array - TYPE array ;point to last element
mov ecx,LENGTHOF array/2 ;counter

L1:   ;top of loop
mov eax,array[esi]   ;temp = array[esi]
xchg eax,array[edi]  ;xchg(temp, array[edi])
mov array[esi],eax   ;array[esi]=temp

add esi, TYPE array
sub edi, TYPE array
loop L1


invoke ExitProcess,0
main endp
end main

 