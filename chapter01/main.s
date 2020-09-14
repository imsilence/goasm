"".main STEXT size=168 args=0x0 locals=0x18
	0x0000 00000 (main.go:7)	TEXT	"".main(SB), ABIInternal, $24-0
	0x0000 00000 (main.go:7)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:7)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:7)	JLS	158
	0x0013 00019 (main.go:7)	SUBQ	$24, SP
	0x0017 00023 (main.go:7)	MOVQ	BP, 16(SP)
	0x001c 00028 (main.go:7)	LEAQ	16(SP), BP
	0x0021 00033 (main.go:7)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (main.go:7)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (main.go:7)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (main.go:8)	PCDATA	$0, $0
	0x0021 00033 (main.go:8)	PCDATA	$1, $0
	0x0021 00033 (main.go:8)	CALL	runtime.printlock(SB)
	0x0026 00038 (main.go:8)	MOVQ	$1, (SP)
	0x002e 00046 (main.go:8)	CALL	runtime.printint(SB)
	0x0033 00051 (main.go:8)	CALL	runtime.printnl(SB)
	0x0038 00056 (main.go:8)	CALL	runtime.printunlock(SB)
	0x003d 00061 (main.go:9)	CALL	runtime.printlock(SB)
	0x0042 00066 (main.go:9)	MOVQ	"".id(SB), AX
	0x0049 00073 (main.go:9)	MOVQ	AX, (SP)
	0x004d 00077 (main.go:9)	CALL	runtime.printint(SB)
	0x0052 00082 (main.go:9)	CALL	runtime.printsp(SB)
	0x0057 00087 (main.go:9)	MOVSD	"".width(SB), X0
	0x005f 00095 (main.go:9)	MOVSD	X0, (SP)
	0x0064 00100 (main.go:9)	CALL	runtime.printfloat(SB)
	0x0069 00105 (main.go:9)	CALL	runtime.printsp(SB)
	0x006e 00110 (main.go:9)	PCDATA	$0, $1
	0x006e 00110 (main.go:9)	MOVQ	"".name(SB), AX
	0x0075 00117 (main.go:9)	MOVQ	"".name+8(SB), CX
	0x007c 00124 (main.go:9)	PCDATA	$0, $0
	0x007c 00124 (main.go:9)	MOVQ	AX, (SP)
	0x0080 00128 (main.go:9)	MOVQ	CX, 8(SP)
	0x0085 00133 (main.go:9)	CALL	runtime.printstring(SB)
	0x008a 00138 (main.go:9)	CALL	runtime.printnl(SB)
	0x008f 00143 (main.go:9)	CALL	runtime.printunlock(SB)
	0x0094 00148 (main.go:10)	MOVQ	16(SP), BP
	0x0099 00153 (main.go:10)	ADDQ	$24, SP
	0x009d 00157 (main.go:10)	RET
	0x009e 00158 (main.go:10)	NOP
	0x009e 00158 (main.go:7)	PCDATA	$1, $-1
	0x009e 00158 (main.go:7)	PCDATA	$0, $-1
	0x009e 00158 (main.go:7)	CALL	runtime.morestack_noctxt(SB)
	0x00a3 00163 (main.go:7)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 8b  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 18 48 89 6c 24 10 48 8d 6c 24  ...H...H.l$.H.l$
	0x0020 10 e8 00 00 00 00 48 c7 04 24 01 00 00 00 e8 00  ......H..$......
	0x0030 00 00 00 e8 00 00 00 00 e8 00 00 00 00 e8 00 00  ................
	0x0040 00 00 48 8b 05 00 00 00 00 48 89 04 24 e8 00 00  ..H......H..$...
	0x0050 00 00 e8 00 00 00 00 f2 0f 10 05 00 00 00 00 f2  ................
	0x0060 0f 11 04 24 e8 00 00 00 00 e8 00 00 00 00 48 8b  ...$..........H.
	0x0070 05 00 00 00 00 48 8b 0d 00 00 00 00 48 89 04 24  .....H......H..$
	0x0080 48 89 4c 24 08 e8 00 00 00 00 e8 00 00 00 00 e8  H.L$............
	0x0090 00 00 00 00 48 8b 6c 24 10 48 83 c4 18 c3 e8 00  ....H.l$.H......
	0x00a0 00 00 00 e9 58 ff ff ff                          ....X...
	rel 5+4 t=16 TLS+0
	rel 34+4 t=8 runtime.printlock+0
	rel 47+4 t=8 runtime.printint+0
	rel 52+4 t=8 runtime.printnl+0
	rel 57+4 t=8 runtime.printunlock+0
	rel 62+4 t=8 runtime.printlock+0
	rel 69+4 t=15 "".id+0
	rel 78+4 t=8 runtime.printint+0
	rel 83+4 t=8 runtime.printsp+0
	rel 91+4 t=15 "".width+0
	rel 101+4 t=8 runtime.printfloat+0
	rel 106+4 t=8 runtime.printsp+0
	rel 113+4 t=15 "".name+0
	rel 120+4 t=15 "".name+8
	rel 134+4 t=8 runtime.printstring+0
	rel 139+4 t=8 runtime.printnl+0
	rel 144+4 t=8 runtime.printunlock+0
	rel 159+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+168
	rel 27+4 t=29 gofile..E:\codes\goasm\chapter01\main.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 13 04 0e 03 05 01 08 02 14 01 0b 02 0a 01 0d  ................
	0x0010 02 0a 01 17 02 23 00                             .....#.
go.string."kk" SRODATA dupok size=2
	0x0000 6b 6b                                            kk
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
"".id SNOPTRDATA size=8
	0x0000 20 00 00 00 00 00 00 00                           .......
"".width SNOPTRDATA size=8
	0x0000 48 e1 7a 14 ae 47 f9 3f                          H.z..G.?
"".name SDATA size=16
	0x0000 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."kk"+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
