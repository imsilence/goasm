#include "textflag.h"

// 定义函数
// TEXT symbol(SB), $framesize-argsize
// symbol: 符号名
// framesize: 帧内存大小
// argsize: 参数和返回值内存大小
TEXT ·main(SB), $16-0
    MOVQ ·desc+0(SB), AX
    MOVQ AX, 0(SP)
    MOVQ ·desc+8(SB), BX
    MOVQ BX, 8(SP)
    CALL ·println(SB)
    RET
