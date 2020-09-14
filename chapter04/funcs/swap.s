#include "textflag.h"

// 定义函数
// TEXT symbol(SB), [flags], $framesize[-argsize]
// symbol: 符号名
// flags: 修饰符
//      可选值:
//          NOSPLIT: 禁止汇编器为汇编函数插入栈分裂代码, go代码 // go:nosplit, 常用在无其他函数调用的叶子函数, 适当提高性能
//          WRAPPER: 标识包装函数, 在panic等某些处理函数帧处不会增加函数帧计数
//          NEEDCTXT: 一般用于闭包, 标识需要一个上下文参数
// framesize: 帧内存大小
// argsize: 参数及返回值内存大小
TEXT ·Swap(SB), NOSPLIT, $0-32
    MOVQ arg0+0(FP), AX
    MOVQ arg1+8(FP), BX
    MOVQ BX, rt0+16(FP)
    MOVQ AX, rt1+24(FP)
    RET
