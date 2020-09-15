#include "textflag.h"

TEXT ·If(SB), NOSPLIT, $0-32
    MOVQ ok+0(FP), AX
    MOVQ l+8(FP), BX
    MOVQ r+8*2(FP), CX

    CMPQ AX, $0
    JZ L
    MOVQ BX, rt+8*3(FP)
    RET
L:
    MOVQ CX, rt+8*3(FP)
    RET
