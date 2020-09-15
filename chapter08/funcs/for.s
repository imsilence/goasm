#include "textflag.h"

TEXT ·For(SB), NOSPLIT, $0-32
    MOVQ start+0(FP), AX
    MOVQ end+8(FP), BX
    MOVQ step+8*2(FP), CX

    MOVQ $0, DX

START:
    CMPQ AX, BX
    JL LOOP
    JMP END

LOOP:
    ADDQ AX, DX
    ADDQ CX, AX
    JMP START

END:
    MOVQ DX, rt+8*3(FP)
    RET
