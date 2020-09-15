#include "textflag.h"

TEXT ·Test(SB), NOSPLIT, $24-0
    MOVQ $0, a-8*2(SP) // a := 0
    MOVQ $0, b-8(SP) // b := 0

    MOVQ $10, AX // AX = 10
    MOVQ AX, a-8*2(SP) // a = AX

    MOVQ AX, 0(SP)
    CALL ·println(SB)

    MOVQ a-8*2(SP), AX // AX = a
    MOVQ b-8(SP), BX // AX = b

    MOVQ AX, BX // BX = AX
    ADDQ BX, BX // BX += BX
    IMULQ BX, BX // BX *= BX

    MOVQ BX, 0(SP)
    CALL ·println(SB)

    RET
