#include "textflag.h"

// 定义整数变量

// 导出符号
// GLOBL symbol(SB), [flags, ]width
// symbol: 符号名
// flags: 修饰符
//      可选择:
//          NOPTR: 标识符修饰符, 表示变量内部不包含指针类型元素, 垃圾回收器忽略对该变量扫描
//          DUPOK: 该变量对应多个标识符, 在链接时只选择其中一个即可, 用于合并相同的常量字符串, 减少重复数据占用空间
//          RODATA: 该变量为只读内存空间, 修改将导致异常
//      多个标识符使用|连接
// width: 占用字节大小, 可选值2^n
GLOBL ·Id(SB), $8

// 数据初始化, 小端表示
// DATA symbol+offset(SB)/width, value
// symbol: 符号名
// offset: 相对符号开始地址的偏移量
// width: 初始化字节大小, 可选值1, 2, 4, 8
// value: 初始化值
DATA ·Id+0(SB)/1, $0x11
DATA ·Id+1(SB)/1, $0x00
DATA ·Id+2(SB)/1, $0x00
DATA ·Id+3(SB)/1, $0x00
DATA ·Id+4(SB)/1, $0x00
DATA ·Id+5(SB)/1, $0x00
DATA ·Id+6(SB)/1, $0x00
DATA ·Id+7(SB)/1, $0x00


// 定义字符串变量
GLOBL ·Name(SB), $40

DATA ·Name+0(SB)/8, $·Name+16(SB)
DATA ·Name+8(SB)/8, $23
DATA ·Name+16(SB)/8, $"i love n"
DATA ·Name+24(SB)/8, $"etwork s"
DATA ·Name+32(SB)/8, $"ecurity"

// 定义数组变量
GLOBL ·Scores(SB), $24

DATA ·Scores+0(SB)/8, $80
DATA ·Scores+8(SB)/8, $79
DATA ·Scores+16(SB)/8, $90

// 定义boolean变量
GLOBL ·IsBoy(SB), $1

DATA ·IsBoy+0(SB)/1, $1

// 定义浮点数变量
GLOBL ·Height(SB), $4
DATA ·Height+0(SB)/4, $1.68


// 定义私有标识符只在当前文件中使用
// <> 是私有变量声明
GLOBL text<>(SB), NOPTR, $24

DATA text<>+0(SB)/8, $"i love n"
DATA text<>+8(SB)/8, $"etwork s"
DATA text<>+16(SB)/8, $"ecurity"


// 定义切片变量
GLOBL ·Chars(SB), $24
DATA ·Chars+0(SB)/8, $text<>(SB)
DATA ·Chars+8(SB)/8, $23
DATA ·Chars+16(SB)/8, $23
