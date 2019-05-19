"".main STEXT size=173 args=0x0 locals=0x30
	0x0000 00000 (main.go:5)	TEXT	"".main(SB), ABIInternal, $48-0
	0x0000 00000 (main.go:5)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:5)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:5)	JLS	163
	0x0013 00019 (main.go:5)	SUBQ	$48, SP
	0x0017 00023 (main.go:5)	MOVQ	BP, 40(SP)
	0x001c 00028 (main.go:5)	LEAQ	40(SP), BP
	0x0021 00033 (main.go:5)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (main.go:5)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (main.go:5)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (main.go:7)	PCDATA	$2, $0
	0x0021 00033 (main.go:7)	PCDATA	$0, $0
	0x0021 00033 (main.go:7)	MOVQ	$0, (SP)
	0x0029 00041 (main.go:7)	XORPS	X0, X0
	0x002c 00044 (main.go:7)	MOVUPS	X0, 8(SP)
	0x0031 00049 (main.go:7)	CALL	"".SumWalk(SB)
	0x0036 00054 (main.go:7)	MOVQ	24(SP), AX
	0x003b 00059 (main.go:7)	MOVQ	AX, ""..autotmp_6+32(SP)
	0x0040 00064 (main.go:7)	CALL	runtime.printlock(SB)
	0x0045 00069 (main.go:7)	MOVQ	""..autotmp_6+32(SP), AX
	0x004a 00074 (main.go:7)	MOVQ	AX, (SP)
	0x004e 00078 (main.go:7)	CALL	runtime.printint(SB)
	0x0053 00083 (main.go:7)	CALL	runtime.printnl(SB)
	0x0058 00088 (main.go:7)	CALL	runtime.printunlock(SB)
	0x005d 00093 (main.go:8)	MOVQ	$0, (SP)
	0x0065 00101 (main.go:8)	XORPS	X0, X0
	0x0068 00104 (main.go:8)	MOVUPS	X0, 8(SP)
	0x006d 00109 (main.go:8)	CALL	"".SumIter(SB)
	0x0072 00114 (main.go:8)	MOVQ	24(SP), AX
	0x0077 00119 (main.go:8)	MOVQ	AX, ""..autotmp_6+32(SP)
	0x007c 00124 (main.go:8)	CALL	runtime.printlock(SB)
	0x0081 00129 (main.go:8)	MOVQ	""..autotmp_6+32(SP), AX
	0x0086 00134 (main.go:8)	MOVQ	AX, (SP)
	0x008a 00138 (main.go:8)	CALL	runtime.printint(SB)
	0x008f 00143 (main.go:8)	CALL	runtime.printnl(SB)
	0x0094 00148 (main.go:8)	CALL	runtime.printunlock(SB)
	0x0099 00153 (main.go:9)	MOVQ	40(SP), BP
	0x009e 00158 (main.go:9)	ADDQ	$48, SP
	0x00a2 00162 (main.go:9)	RET
	0x00a3 00163 (main.go:9)	NOP
	0x00a3 00163 (main.go:5)	PCDATA	$0, $-1
	0x00a3 00163 (main.go:5)	PCDATA	$2, $-1
	0x00a3 00163 (main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x00a8 00168 (main.go:5)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 90  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24  ...H..0H.l$(H.l$
	0x0020 28 48 c7 04 24 00 00 00 00 0f 57 c0 0f 11 44 24  (H..$.....W...D$
	0x0030 08 e8 00 00 00 00 48 8b 44 24 18 48 89 44 24 20  ......H.D$.H.D$ 
	0x0040 e8 00 00 00 00 48 8b 44 24 20 48 89 04 24 e8 00  .....H.D$ H..$..
	0x0050 00 00 00 e8 00 00 00 00 e8 00 00 00 00 48 c7 04  .............H..
	0x0060 24 00 00 00 00 0f 57 c0 0f 11 44 24 08 e8 00 00  $.....W...D$....
	0x0070 00 00 48 8b 44 24 18 48 89 44 24 20 e8 00 00 00  ..H.D$.H.D$ ....
	0x0080 00 48 8b 44 24 20 48 89 04 24 e8 00 00 00 00 e8  .H.D$ H..$......
	0x0090 00 00 00 00 e8 00 00 00 00 48 8b 6c 24 28 48 83  .........H.l$(H.
	0x00a0 c4 30 c3 e8 00 00 00 00 e9 53 ff ff ff           .0.......S...
	rel 5+4 t=16 TLS+0
	rel 50+4 t=8 "".SumWalk+0
	rel 65+4 t=8 runtime.printlock+0
	rel 79+4 t=8 runtime.printint+0
	rel 84+4 t=8 runtime.printnl+0
	rel 89+4 t=8 runtime.printunlock+0
	rel 110+4 t=8 "".SumIter+0
	rel 125+4 t=8 runtime.printlock+0
	rel 139+4 t=8 runtime.printint+0
	rel 144+4 t=8 runtime.printnl+0
	rel 149+4 t=8 runtime.printunlock+0
	rel 164+4 t=8 runtime.morestack_noctxt+0
"".SumWalk STEXT size=132 args=0x20 locals=0x40
	0x0000 00000 (main.go:11)	TEXT	"".SumWalk(SB), ABIInternal, $64-32
	0x0000 00000 (main.go:11)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:11)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:11)	JLS	122
	0x000f 00015 (main.go:11)	SUBQ	$64, SP
	0x0013 00019 (main.go:11)	MOVQ	BP, 56(SP)
	0x0018 00024 (main.go:11)	LEAQ	56(SP), BP
	0x001d 00029 (main.go:11)	FUNCDATA	$0, gclocals·c5b2f6560804ff174daf09d95facbd35(SB)
	0x001d 00029 (main.go:11)	FUNCDATA	$1, gclocals·b566bf517073933b5de3b38142d02a51(SB)
	0x001d 00029 (main.go:11)	FUNCDATA	$3, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (main.go:11)	FUNCDATA	$4, "".SumWalk.stkobj(SB)
	0x001d 00029 (main.go:11)	PCDATA	$2, $0
	0x001d 00029 (main.go:11)	PCDATA	$0, $0
	0x001d 00029 (main.go:11)	MOVQ	$0, "".sum+96(SP)
	0x0026 00038 (main.go:12)	PCDATA	$0, $1
	0x0026 00038 (main.go:12)	XORPS	X0, X0
	0x0029 00041 (main.go:12)	MOVUPS	X0, ""..autotmp_3+40(SP)
	0x002e 00046 (main.go:12)	LEAQ	"".SumWalk.func1(SB), AX
	0x0035 00053 (main.go:12)	MOVQ	AX, ""..autotmp_3+40(SP)
	0x003a 00058 (main.go:12)	PCDATA	$2, $1
	0x003a 00058 (main.go:12)	LEAQ	"".sum+96(SP), AX
	0x003f 00063 (main.go:12)	PCDATA	$2, $0
	0x003f 00063 (main.go:12)	MOVQ	AX, ""..autotmp_3+48(SP)
	0x0044 00068 (main.go:12)	PCDATA	$2, $1
	0x0044 00068 (main.go:12)	MOVQ	"".l+72(SP), AX
	0x0049 00073 (main.go:12)	PCDATA	$2, $0
	0x0049 00073 (main.go:12)	MOVQ	AX, (SP)
	0x004d 00077 (main.go:12)	MOVQ	"".l+80(SP), AX
	0x0052 00082 (main.go:12)	MOVQ	AX, 8(SP)
	0x0057 00087 (main.go:12)	PCDATA	$0, $2
	0x0057 00087 (main.go:12)	MOVQ	"".l+88(SP), AX
	0x005c 00092 (main.go:12)	MOVQ	AX, 16(SP)
	0x0061 00097 (main.go:12)	PCDATA	$2, $1
	0x0061 00097 (main.go:12)	PCDATA	$0, $3
	0x0061 00097 (main.go:12)	LEAQ	""..autotmp_3+40(SP), AX
	0x0066 00102 (main.go:12)	PCDATA	$2, $0
	0x0066 00102 (main.go:12)	MOVQ	AX, 24(SP)
	0x006b 00107 (main.go:12)	CALL	github.com/sevlyar/devday-iterators/list.List.Walk(SB)
	0x0070 00112 (main.go:16)	MOVQ	56(SP), BP
	0x0075 00117 (main.go:16)	ADDQ	$64, SP
	0x0079 00121 (main.go:16)	RET
	0x007a 00122 (main.go:16)	NOP
	0x007a 00122 (main.go:11)	PCDATA	$0, $-1
	0x007a 00122 (main.go:11)	PCDATA	$2, $-1
	0x007a 00122 (main.go:11)	CALL	runtime.morestack_noctxt(SB)
	0x007f 00127 (main.go:11)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 6b 48  eH..%....H;a.vkH
	0x0010 83 ec 40 48 89 6c 24 38 48 8d 6c 24 38 48 c7 44  ..@H.l$8H.l$8H.D
	0x0020 24 60 00 00 00 00 0f 57 c0 0f 11 44 24 28 48 8d  $`.....W...D$(H.
	0x0030 05 00 00 00 00 48 89 44 24 28 48 8d 44 24 60 48  .....H.D$(H.D$`H
	0x0040 89 44 24 30 48 8b 44 24 48 48 89 04 24 48 8b 44  .D$0H.D$HH..$H.D
	0x0050 24 50 48 89 44 24 08 48 8b 44 24 58 48 89 44 24  $PH.D$.H.D$XH.D$
	0x0060 10 48 8d 44 24 28 48 89 44 24 18 e8 00 00 00 00  .H.D$(H.D$......
	0x0070 48 8b 6c 24 38 48 83 c4 40 c3 e8 00 00 00 00 e9  H.l$8H..@.......
	0x0080 7c ff ff ff                                      |...
	rel 5+4 t=16 TLS+0
	rel 49+4 t=15 "".SumWalk.func1+0
	rel 108+4 t=8 github.com/sevlyar/devday-iterators/list.List.Walk+0
	rel 123+4 t=8 runtime.morestack_noctxt+0
"".SumIter STEXT size=370 args=0x20 locals=0x88
	0x0000 00000 (main.go:19)	TEXT	"".SumIter(SB), ABIInternal, $136-32
	0x0000 00000 (main.go:19)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:19)	LEAQ	-8(SP), AX
	0x000e 00014 (main.go:19)	CMPQ	AX, 16(CX)
	0x0012 00018 (main.go:19)	JLS	360
	0x0018 00024 (main.go:19)	SUBQ	$136, SP
	0x001f 00031 (main.go:19)	MOVQ	BP, 128(SP)
	0x0027 00039 (main.go:19)	LEAQ	128(SP), BP
	0x002f 00047 (main.go:19)	FUNCDATA	$0, gclocals·1002ed0418470fd2fbc0c138a2d530c8(SB)
	0x002f 00047 (main.go:19)	FUNCDATA	$1, gclocals·91667b269dee6578b057cbed1e577bab(SB)
	0x002f 00047 (main.go:19)	FUNCDATA	$3, gclocals·8b9c1e7780561acdb841419cc3dfaf31(SB)
	0x002f 00047 (main.go:19)	FUNCDATA	$4, "".SumIter.stkobj(SB)
	0x002f 00047 (main.go:20)	PCDATA	$2, $0
	0x002f 00047 (main.go:20)	PCDATA	$0, $0
	0x002f 00047 (main.go:20)	XCHGL	AX, AX
	0x0030 00048 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:56)	XCHGL	AX, AX
	0x0031 00049 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	PCDATA	$0, $1
	0x0031 00049 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	XORPS	X0, X0
	0x0034 00052 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:56)	MOVUPS	X0, ""..autotmp_22+64(SP)
	0x0039 00057 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:56)	MOVUPS	X0, ""..autotmp_22+80(SP)
	0x003e 00062 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:56)	MOVUPS	X0, ""..autotmp_22+96(SP)
	0x0043 00067 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:56)	MOVUPS	X0, ""..autotmp_22+112(SP)
	0x0048 00072 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	$-1, ""..autotmp_22+64(SP)
	0x0051 00081 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	PCDATA	$2, $1
	0x0051 00081 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	"".l+144(SP), AX
	0x0059 00089 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	PCDATA	$2, $0
	0x0059 00089 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	AX, ""..autotmp_22+72(SP)
	0x005e 00094 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	"".l+152(SP), AX
	0x0066 00102 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	AX, ""..autotmp_22+80(SP)
	0x006b 00107 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	PCDATA	$0, $2
	0x006b 00107 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	"".l+160(SP), AX
	0x0073 00115 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:66)	MOVQ	AX, ""..autotmp_22+88(SP)
	0x0078 00120 (main.go:20)	PCDATA	$0, $3
	0x0078 00120 (main.go:20)	MOVUPS	""..autotmp_22+64(SP), X0
	0x007d 00125 (main.go:20)	MOVUPS	X0, "".iter(SP)
	0x0081 00129 (main.go:20)	MOVUPS	""..autotmp_22+80(SP), X0
	0x0086 00134 (main.go:20)	MOVUPS	X0, "".iter+16(SP)
	0x008b 00139 (main.go:20)	MOVUPS	""..autotmp_22+96(SP), X0
	0x0090 00144 (main.go:20)	MOVUPS	X0, "".iter+32(SP)
	0x0095 00149 (main.go:20)	PCDATA	$0, $4
	0x0095 00149 (main.go:20)	MOVUPS	""..autotmp_22+112(SP), X0
	0x009a 00154 (main.go:20)	MOVUPS	X0, "".iter+48(SP)
	0x009f 00159 (main.go:20)	XORL	AX, AX
	0x00a1 00161 (main.go:21)	JMP	170
	0x00a3 00163 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	MOVQ	(CX)(DX*8), CX
	0x00a7 00167 (main.go:22)	ADDQ	CX, AX
	0x00aa 00170 (main.go:21)	XCHGL	AX, AX
	0x00ab 00171 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:70)	XCHGL	AX, AX
	0x00ac 00172 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:55)	MOVQ	"".iter+32(SP), CX
	0x00b1 00177 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:55)	INCQ	CX
	0x00b4 00180 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:55)	MOVQ	CX, "".iter+32(SP)
	0x00b9 00185 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:56)	CMPQ	"".iter+48(SP), CX
	0x00be 00190 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:56)	JGT	339
	0x00c4 00196 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:73)	MOVQ	"".iter(SP), CX
	0x00c8 00200 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:73)	LEAQ	1(CX), DX
	0x00cc 00204 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:73)	MOVQ	DX, "".iter(SP)
	0x00d0 00208 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	MOVQ	"".iter+16(SP), BX
	0x00d5 00213 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	PCDATA	$2, $2
	0x00d5 00213 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	MOVQ	"".iter+8(SP), SI
	0x00da 00218 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	CMPQ	DX, BX
	0x00dd 00221 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	JLT	274
	0x00df 00223 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	PCDATA	$2, $0
	0x00df 00223 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:74)	XORL	CX, CX
	0x00e1 00225 (main.go:21)	TESTB	CL, CL
	0x00e3 00227 (main.go:21)	JEQ	250
	0x00e5 00229 (main.go:22)	XCHGL	AX, AX
	0x00e6 00230 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:82)	XCHGL	AX, AX
	0x00e7 00231 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	PCDATA	$2, $3
	0x00e7 00231 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	MOVQ	"".iter+40(SP), CX
	0x00ec 00236 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	MOVQ	"".iter+32(SP), DX
	0x00f1 00241 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	CMPQ	"".iter+48(SP), DX
	0x00f6 00246 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	JHI	163
	0x00f8 00248 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	JMP	346
	0x00fa 00250 (main.go:24)	PCDATA	$2, $0
	0x00fa 00250 (main.go:24)	PCDATA	$0, $5
	0x00fa 00250 (main.go:24)	MOVQ	AX, "".sum+168(SP)
	0x0102 00258 (main.go:24)	MOVQ	128(SP), BP
	0x010a 00266 (main.go:24)	ADDQ	$136, SP
	0x0111 00273 (main.go:24)	RET
	0x0112 00274 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	PCDATA	$2, $-2
	0x0112 00274 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	PCDATA	$0, $-2
	0x0112 00274 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	JCC	353
	0x0114 00276 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	PCDATA	$2, $2
	0x0114 00276 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	PCDATA	$0, $4
	0x0114 00276 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	LEAQ	(CX)(CX*2), DX
	0x0118 00280 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	40(SI)(DX*8), BX
	0x011d 00285 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	32(SI)(DX*8), DI
	0x0122 00290 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	PCDATA	$2, $4
	0x0122 00290 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	24(SI)(DX*8), DX
	0x0127 00295 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	XCHGL	AX, AX
	0x0128 00296 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:42)	XCHGL	AX, AX
	0x0129 00297 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	$-1, "".iter+32(SP)
	0x0132 00306 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	DI, "".iter+48(SP)
	0x0137 00311 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	BX, "".iter+56(SP)
	0x013c 00316 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	PCDATA	$2, $0
	0x013c 00316 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	MOVQ	DX, "".iter+40(SP)
	0x0141 00321 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:78)	XCHGL	AX, AX
	0x0142 00322 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:55)	MOVQ	$0, "".iter+32(SP)
	0x014b 00331 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:56)	TESTQ	DI, DI
	0x014e 00334 (main.go:21)	SETGT	CL
	0x0151 00337 (main.go:21)	JMP	225
	0x0153 00339 (main.go:21)	MOVL	$1, CX
	0x0158 00344 (main.go:21)	JMP	225
	0x015a 00346 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	PCDATA	$0, $5
	0x015a 00346 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	CALL	runtime.panicindex(SB)
	0x015f 00351 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/chunk.go:63)	UNDEF
	0x0161 00353 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	CALL	runtime.panicindex(SB)
	0x0166 00358 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	UNDEF
	0x0168 00360 (/Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go:77)	NOP
	0x0168 00360 (main.go:19)	PCDATA	$0, $-1
	0x0168 00360 (main.go:19)	PCDATA	$2, $-1
	0x0168 00360 (main.go:19)	CALL	runtime.morestack_noctxt(SB)
	0x016d 00365 (main.go:19)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 8d 44 24 f8 48 3b  eH..%....H.D$.H;
	0x0010 41 10 0f 86 50 01 00 00 48 81 ec 88 00 00 00 48  A...P...H......H
	0x0020 89 ac 24 80 00 00 00 48 8d ac 24 80 00 00 00 90  ..$....H..$.....
	0x0030 90 0f 57 c0 0f 11 44 24 40 0f 11 44 24 50 0f 11  ..W...D$@..D$P..
	0x0040 44 24 60 0f 11 44 24 70 48 c7 44 24 40 ff ff ff  D$`..D$pH.D$@...
	0x0050 ff 48 8b 84 24 90 00 00 00 48 89 44 24 48 48 8b  .H..$....H.D$HH.
	0x0060 84 24 98 00 00 00 48 89 44 24 50 48 8b 84 24 a0  .$....H.D$PH..$.
	0x0070 00 00 00 48 89 44 24 58 0f 10 44 24 40 0f 11 04  ...H.D$X..D$@...
	0x0080 24 0f 10 44 24 50 0f 11 44 24 10 0f 10 44 24 60  $..D$P..D$...D$`
	0x0090 0f 11 44 24 20 0f 10 44 24 70 0f 11 44 24 30 31  ..D$ ..D$p..D$01
	0x00a0 c0 eb 07 48 8b 0c d1 48 01 c8 90 90 48 8b 4c 24  ...H...H....H.L$
	0x00b0 20 48 ff c1 48 89 4c 24 20 48 39 4c 24 30 0f 8f   H..H.L$ H9L$0..
	0x00c0 8f 00 00 00 48 8b 0c 24 48 8d 51 01 48 89 14 24  ....H..$H.Q.H..$
	0x00d0 48 8b 5c 24 10 48 8b 74 24 08 48 39 da 7c 33 31  H.\$.H.t$.H9.|31
	0x00e0 c9 84 c9 74 15 90 90 48 8b 4c 24 28 48 8b 54 24  ...t...H.L$(H.T$
	0x00f0 20 48 39 54 24 30 77 ab eb 60 48 89 84 24 a8 00   H9T$0w..`H..$..
	0x0100 00 00 48 8b ac 24 80 00 00 00 48 81 c4 88 00 00  ..H..$....H.....
	0x0110 00 c3 73 4d 48 8d 14 49 48 8b 5c d6 28 48 8b 7c  ..sMH..IH.\.(H.|
	0x0120 d6 20 48 8b 54 d6 18 90 90 48 c7 44 24 20 ff ff  . H.T....H.D$ ..
	0x0130 ff ff 48 89 7c 24 30 48 89 5c 24 38 48 89 54 24  ..H.|$0H.\$8H.T$
	0x0140 28 90 48 c7 44 24 20 00 00 00 00 48 85 ff 0f 9f  (.H.D$ ....H....
	0x0150 c1 eb 8e b9 01 00 00 00 eb 87 e8 00 00 00 00 0f  ................
	0x0160 0b e8 00 00 00 00 0f 0b e8 00 00 00 00 e9 8e fe  ................
	0x0170 ff ff                                            ..
	rel 5+4 t=16 TLS+0
	rel 347+4 t=8 runtime.panicindex+0
	rel 354+4 t=8 runtime.panicindex+0
	rel 361+4 t=8 runtime.morestack_noctxt+0
"".SumWalk.func1 STEXT nosplit size=18 args=0x10 locals=0x0
	0x0000 00000 (main.go:12)	TEXT	"".SumWalk.func1(SB), NOSPLIT|NEEDCTXT|ABIInternal, $0-16
	0x0000 00000 (main.go:12)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (main.go:12)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (main.go:12)	FUNCDATA	$3, gclocals·db688afbc90e26183a53c9ad23b80c29(SB)
	0x0000 00000 (main.go:12)	PCDATA	$2, $2
	0x0000 00000 (main.go:12)	PCDATA	$0, $0
	0x0000 00000 (main.go:12)	MOVQ	8(DX), AX
	0x0004 00004 (main.go:13)	MOVQ	"".item+8(SP), CX
	0x0009 00009 (main.go:13)	PCDATA	$2, $0
	0x0009 00009 (main.go:13)	ADDQ	CX, (AX)
	0x000c 00012 (main.go:14)	MOVB	$1, "".~r1+16(SP)
	0x0011 00017 (main.go:14)	RET
	0x0000 48 8b 42 08 48 8b 4c 24 08 48 01 08 c6 44 24 10  H.B.H.L$.H...D$.
	0x0010 01 c3                                            ..
"".init STEXT size=80 args=0x0 locals=0x8
	0x0000 00000 (<autogenerated>:1)	TEXT	"".init(SB), ABIInternal, $8-0
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	73
	0x000f 00015 (<autogenerated>:1)	SUBQ	$8, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0017 00023 (<autogenerated>:1)	LEAQ	(SP), BP
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	PCDATA	$2, $0
	0x001b 00027 (<autogenerated>:1)	PCDATA	$0, $0
	0x001b 00027 (<autogenerated>:1)	MOVBLZX	"".initdone·(SB), AX
	0x0022 00034 (<autogenerated>:1)	CMPB	AL, $1
	0x0025 00037 (<autogenerated>:1)	JLS	48
	0x0027 00039 (<autogenerated>:1)	PCDATA	$2, $-2
	0x0027 00039 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0027 00039 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002b 00043 (<autogenerated>:1)	ADDQ	$8, SP
	0x002f 00047 (<autogenerated>:1)	RET
	0x0030 00048 (<autogenerated>:1)	JNE	57
	0x0032 00050 (<autogenerated>:1)	PCDATA	$2, $0
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $0
	0x0032 00050 (<autogenerated>:1)	CALL	runtime.throwinit(SB)
	0x0037 00055 (<autogenerated>:1)	UNDEF
	0x0039 00057 (<autogenerated>:1)	MOVB	$2, "".initdone·(SB)
	0x0040 00064 (<autogenerated>:1)	MOVQ	(SP), BP
	0x0044 00068 (<autogenerated>:1)	ADDQ	$8, SP
	0x0048 00072 (<autogenerated>:1)	RET
	0x0049 00073 (<autogenerated>:1)	NOP
	0x0049 00073 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0049 00073 (<autogenerated>:1)	PCDATA	$2, $-1
	0x0049 00073 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x004e 00078 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3a 48  eH..%....H;a.v:H
	0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
	0x0020 00 00 80 f8 01 76 09 48 8b 2c 24 48 83 c4 08 c3  .....v.H.,$H....
	0x0030 75 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 02  u...............
	0x0040 48 8b 2c 24 48 83 c4 08 c3 e8 00 00 00 00 eb b0  H.,$H...........
	rel 5+4 t=16 TLS+0
	rel 30+4 t=15 "".initdone·+0
	rel 51+4 t=8 runtime.throwinit+0
	rel 59+4 t=15 "".initdone·+-1
	rel 74+4 t=8 runtime.morestack_noctxt+0
go.info.github.com/sevlyar/devday-iterators/list.List.Iterator$abstract SDWARFINFO dupok size=70
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 4c 69 73 74 2e 49  tors/list.List.I
	0x0030 74 65 72 61 74 6f 72 00 01 01 11 6c 69 73 74 00  terator....list.
	0x0040 00 00 00 00 00 00                                ......
	rel 65+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.List+0
go.info.github.com/sevlyar/devday-iterators/list.newIterator$abstract SDWARFINFO dupok size=68
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 6e 65 77 49 74 65  tors/list.newIte
	0x0030 72 61 74 6f 72 00 01 01 11 6c 69 73 74 00 00 00  rator....list...
	0x0040 00 00 00 00                                      ....
	rel 63+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.List+0
go.info.github.com/sevlyar/devday-iterators/list.(*Iterator).Next$abstract SDWARFINFO dupok size=73
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 28 2a 49 74 65 72  tors/list.(*Iter
	0x0030 61 74 6f 72 29 2e 4e 65 78 74 00 01 01 11 69 74  ator).Next....it
	0x0040 65 72 00 00 00 00 00 00 00                       er.......
	rel 68+4 t=28 go.info.*github.com/sevlyar/devday-iterators/list.Iterator+0
go.info.github.com/sevlyar/devday-iterators/list.(*ChunkIterator).Next$abstract SDWARFINFO dupok size=78
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 28 2a 43 68 75 6e  tors/list.(*Chun
	0x0030 6b 49 74 65 72 61 74 6f 72 29 2e 4e 65 78 74 00  kIterator).Next.
	0x0040 01 01 11 69 74 65 72 00 00 00 00 00 00 00        ...iter.......
	rel 73+4 t=28 go.info.*github.com/sevlyar/devday-iterators/list.ChunkIterator+0
go.info.github.com/sevlyar/devday-iterators/list.Chunk.Iterator$abstract SDWARFINFO dupok size=69
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 43 68 75 6e 6b 2e  tors/list.Chunk.
	0x0030 49 74 65 72 61 74 6f 72 00 01 01 11 63 68 00 00  Iterator....ch..
	0x0040 00 00 00 00 00                                   .....
	rel 64+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.Chunk+0
go.info.github.com/sevlyar/devday-iterators/list.newChunkIterator$abstract SDWARFINFO dupok size=71
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 6e 65 77 43 68 75  tors/list.newChu
	0x0030 6e 6b 49 74 65 72 61 74 6f 72 00 01 01 11 63 68  nkIterator....ch
	0x0040 00 00 00 00 00 00 00                             .......
	rel 66+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.Chunk+0
go.info.github.com/sevlyar/devday-iterators/list.(*Iterator).Value$abstract SDWARFINFO dupok size=74
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 28 2a 49 74 65 72  tors/list.(*Iter
	0x0030 61 74 6f 72 29 2e 56 61 6c 75 65 00 01 01 11 69  ator).Value....i
	0x0040 74 65 72 00 00 00 00 00 00 00                    ter.......
	rel 69+4 t=28 go.info.*github.com/sevlyar/devday-iterators/list.Iterator+0
go.info.github.com/sevlyar/devday-iterators/list.(*ChunkIterator).Value$abstract SDWARFINFO dupok size=79
	0x0000 04 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65 76 6c  .github.com/sevl
	0x0010 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65 72 61  yar/devday-itera
	0x0020 74 6f 72 73 2f 6c 69 73 74 2e 28 2a 43 68 75 6e  tors/list.(*Chun
	0x0030 6b 49 74 65 72 61 74 6f 72 29 2e 56 61 6c 75 65  kIterator).Value
	0x0040 00 01 01 11 69 74 65 72 00 00 00 00 00 00 00     ....iter.......
	rel 74+4 t=28 go.info.*github.com/sevlyar/devday-iterators/list.ChunkIterator+0
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+173
	rel 27+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 13 04 0e 03 08 01 08 02 05 01 0a 02 05 01 09  ................
	0x0010 02 17 01 08 02 05 01 0a 02 05 01 09 02 23 00     .............#.
go.loc."".SumWalk SDWARFLOC size=113
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 84 00 00 00 00 00 00 00  ................
	0x0020 0b 00 9c 93 08 91 08 93 08 91 10 93 08 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff  ................
	0x0040 ff ff ff ff ff 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 84 00 00 00 00 00 00 00 02 00 91  ................
	0x0060 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00                                               .
	rel 8+8 t=1 "".SumWalk+0
	rel 69+8 t=1 "".SumWalk+0
go.info."".SumWalk SDWARFINFO size=64
	0x0000 03 22 22 2e 53 75 6d 57 61 6c 6b 00 00 00 00 00  ."".SumWalk.....
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00  ................
	0x0020 00 00 01 10 6c 00 00 0b 00 00 00 00 00 00 00 00  ....l...........
	0x0030 10 73 75 6d 00 01 0b 00 00 00 00 00 00 00 00 00  .sum............
	rel 12+8 t=1 "".SumWalk+0
	rel 20+8 t=1 "".SumWalk+132
	rel 30+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
	rel 40+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.List+0
	rel 44+4 t=28 go.loc."".SumWalk+0
	rel 55+4 t=28 go.info.int+0
	rel 59+4 t=28 go.loc."".SumWalk+61
go.range."".SumWalk SDWARFRANGE size=0
go.isstmt."".SumWalk SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 0c 01 42 02 19 00                 .......B...
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*struct { F uintptr; sum *int }- SRODATA dupok size=34
	0x0000 00 00 1f 2a 73 74 72 75 63 74 20 7b 20 46 20 75  ...*struct { F u
	0x0010 69 6e 74 70 74 72 3b 20 73 75 6d 20 2a 69 6e 74  intptr; sum *int
	0x0020 20 7d                                             }
type.*struct { F uintptr; "".sum *int } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d7 ee 0d 33 00 08 08 36 00 00 00 00 00 00 00 00  ...3...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; sum *int }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; "".sum *int }+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type..namedata..F- SRODATA dupok size=5
	0x0000 00 00 02 2e 46                                   ....F
type..namedata.sum- SRODATA dupok size=6
	0x0000 00 00 03 73 75 6d                                ...sum
type.noalg.struct { F uintptr; "".sum *int } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 9d c9 1b 7e 02 08 08 19 00 00 00 00 00 00 00 00  ...~............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; sum *int }-+0
	rel 44+4 t=6 type.*struct { F uintptr; "".sum *int }+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; "".sum *int }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.sum-+0
	rel 112+8 t=1 type.*int+0
go.loc."".SumIter SDWARFLOC size=288
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 7d 00 00 00 00 00 00 00 72 01 00 00 00 00 00 00  }.......r.......
	0x0020 03 00 91 f0 7e 00 00 00 00 00 00 00 00 00 00 00  ....~...........
	0x0030 00 00 00 00 00 ff ff ff ff ff ff ff ff 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 72 01 00  .............r..
	0x0050 00 00 00 00 00 0b 00 9c 93 08 91 08 93 08 91 10  ................
	0x0060 93 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 ff ff ff ff ff ff ff ff 00 00 00 00 00 00  ................
	0x0080 00 00 02 01 00 00 00 00 00 00 12 01 00 00 00 00  ................
	0x0090 00 00 02 00 91 18 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 ff ff ff ff ff ff ff ff 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 01  ..............r.
	0x00c0 00 00 00 00 00 00 0b 00 9c 93 08 91 08 93 08 91  ................
	0x00d0 10 93 08 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00e0 00 00 00 ff ff ff ff ff ff ff ff 00 00 00 00 00  ................
	0x00f0 00 00 00 00 00 00 00 00 00 00 00 72 01 00 00 00  ...........r....
	0x0100 00 00 00 0b 00 9c 93 08 91 08 93 08 91 10 93 08  ................
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 8+8 t=1 "".SumIter+0
	rel 61+8 t=1 "".SumIter+0
	rel 122+8 t=1 "".SumIter+0
	rel 174+8 t=1 "".SumIter+0
	rel 235+8 t=1 "".SumIter+0
go.info."".SumIter SDWARFINFO size=265
	0x0000 03 22 22 2e 53 75 6d 49 74 65 72 00 00 00 00 00  ."".SumIter.....
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00  ................
	0x0020 00 00 01 0b 69 74 65 72 00 14 00 00 00 00 00 00  ....iter........
	0x0030 00 00 10 6c 00 00 13 00 00 00 00 00 00 00 00 10  ...l............
	0x0040 73 75 6d 00 01 13 00 00 00 00 00 00 00 00 07 00  sum.............
	0x0050 00 00 00 00 00 00 00 00 00 00 00 14 13 00 00 00  ................
	0x0060 00 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 38 13 00 00 00 00 00 00 00 00 00 00 06 00  ..8.............
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 16 07 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 52 00 00 07 00 00 00 00 00 00 00  .....R..........
	0x00b0 00 00 00 00 00 15 06 00 00 00 00 00 00 00 00 00  ................
	0x00c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46  ...............F
	0x00d0 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00e0 00 00 00 00 00 00 00 00 00 00 4d 00 06 00 00 00  ..........M.....
	0x00f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0100 00 00 00 00 00 4e 00 00 00                       .....N...
	rel 12+8 t=1 "".SumIter+0
	rel 20+8 t=1 "".SumIter+370
	rel 30+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
	rel 42+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.Iterator+0
	rel 46+4 t=28 go.loc."".SumIter+0
	rel 55+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.List+0
	rel 59+4 t=28 go.loc."".SumIter+53
	rel 70+4 t=28 go.info.int+0
	rel 74+4 t=28 go.loc."".SumIter+114
	rel 79+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.List.Iterator$abstract+0
	rel 83+4 t=28 go.range."".SumIter+0
	rel 87+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
	rel 93+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.List.Iterator$abstract+58
	rel 97+4 t=28 go.loc."".SumIter+166
	rel 102+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.newIterator$abstract+0
	rel 106+4 t=28 go.range."".SumIter+64
	rel 110+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go+0
	rel 116+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.newIterator$abstract+56
	rel 120+4 t=28 go.loc."".SumIter+227
	rel 127+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.(*Iterator).Value$abstract+0
	rel 131+8 t=1 "".SumIter+230
	rel 139+8 t=1 "".SumIter+231
	rel 147+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
	rel 153+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.(*ChunkIterator).Value$abstract+0
	rel 157+4 t=28 go.range."".SumIter+128
	rel 161+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go+0
	rel 169+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.(*Iterator).Next$abstract+0
	rel 173+4 t=28 go.range."".SumIter+208
	rel 177+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
	rel 183+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.(*ChunkIterator).Next$abstract+0
	rel 187+8 t=1 "".SumIter+172
	rel 195+8 t=1 "".SumIter+196
	rel 203+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go+0
	rel 210+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.Chunk.Iterator$abstract+0
	rel 214+8 t=1 "".SumIter+296
	rel 222+8 t=1 "".SumIter+297
	rel 230+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go+0
	rel 237+4 t=28 go.info.github.com/sevlyar/devday-iterators/list.(*ChunkIterator).Next$abstract+0
	rel 241+8 t=1 "".SumIter+322
	rel 249+8 t=1 "".SumIter+334
	rel 257+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/list.go+0
go.range."".SumIter SDWARFRANGE size=320
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 30 00 00 00 00 00 00 00 31 00 00 00 00 00 00 00  0.......1.......
	0x0020 34 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00  4.......H.......
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0050 31 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00  1.......4.......
	0x0060 48 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00  H.......x.......
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0090 a3 00 00 00 00 00 00 00 a7 00 00 00 00 00 00 00  ................
	0x00a0 e7 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00  ................
	0x00b0 5a 01 00 00 00 00 00 00 61 01 00 00 00 00 00 00  Z.......a.......
	0x00c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x00e0 ab 00 00 00 00 00 00 00 ac 00 00 00 00 00 00 00  ................
	0x00f0 c4 00 00 00 00 00 00 00 e1 00 00 00 00 00 00 00  ................
	0x0100 12 01 00 00 00 00 00 00 28 01 00 00 00 00 00 00  ........(.......
	0x0110 29 01 00 00 00 00 00 00 42 01 00 00 00 00 00 00  ).......B.......
	0x0120 61 01 00 00 00 00 00 00 68 01 00 00 00 00 00 00  a.......h.......
	0x0130 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 8+8 t=1 "".SumIter+0
	rel 72+8 t=1 "".SumIter+0
	rel 136+8 t=1 "".SumIter+0
	rel 216+8 t=1 "".SumIter+0
go.isstmt."".SumIter SDWARFMISC size=0
	0x0000 04 18 04 17 05 02 02 03 01 44 02 05 01 24 02 02  .........D...$..
	0x0010 01 04 02 0a 01 08 02 05 01 06 02 04 01 08 02 05  ................
	0x0020 01 0a 02 04 01 02 02 07 01 0e 02 08 01 12 02 04  ................
	0x0030 01 10 02 01 01 18 02 10 01 02 02 05 01 02 02 18  ................
	0x0040 00                                               .
go.loc."".SumWalk.func1 SDWARFLOC size=102
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 12 00 00 00 00 00 00 00  ................
	0x0020 01 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00  ..P.............
	0x0030 00 00 00 ff ff ff ff ff ff ff ff 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 12 00 00 00 00  ................
	0x0050 00 00 00 01 00 9c 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00                                ......
	rel 8+8 t=1 "".SumWalk.func1+0
	rel 59+8 t=1 "".SumWalk.func1+0
go.info."".SumWalk.func1 SDWARFINFO size=85
	0x0000 03 22 22 2e 53 75 6d 57 61 6c 6b 2e 66 75 6e 63  ."".SumWalk.func
	0x0010 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  1...............
	0x0020 00 00 01 9c 00 00 00 00 01 0b 26 73 75 6d 00 0c  ..........&sum..
	0x0030 00 00 00 00 00 00 00 00 10 69 74 65 6d 00 00 0c  .........item...
	0x0040 00 00 00 00 00 00 00 00 0f 7e 72 31 00 01 0c 00  .........~r1....
	0x0050 00 00 00 00 00                                   .....
	rel 18+8 t=1 "".SumWalk.func1+0
	rel 26+8 t=1 "".SumWalk.func1+18
	rel 36+4 t=29 gofile../Users/yar/work/golang/src/github.com/sevlyar/devday-iterators/list/asm/main.go+0
	rel 48+4 t=28 go.info.*int+0
	rel 52+4 t=28 go.loc."".SumWalk.func1+0
	rel 64+4 t=28 go.info.int+0
	rel 68+4 t=28 go.loc."".SumWalk.func1+51
	rel 79+4 t=28 go.info.bool+0
go.range."".SumWalk.func1 SDWARFRANGE size=0
go.isstmt."".SumWalk.func1 SDWARFMISC size=0
	0x0000 02 04 02 05 01 03 02 05 01 01 00                 ...........
go.loc."".init SDWARFLOC size=0
go.info."".init SDWARFINFO size=33
	0x0000 03 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+80
	rel 27+4 t=29 gofile..<autogenerated>+0
go.range."".init SDWARFRANGE size=0
go.isstmt."".init SDWARFMISC size=0
	0x0000 04 0f 04 0c 03 07 01 05 02 09 01 02 02 0e 01 09  ................
	0x0010 02 07 00                                         ...
"".initdone· SNOPTRBSS size=1
type..importpath.github.com/sevlyar/devday-iterators/list. SRODATA dupok size=43
	0x0000 00 00 28 67 69 74 68 75 62 2e 63 6f 6d 2f 73 65  ..(github.com/se
	0x0010 76 6c 79 61 72 2f 64 65 76 64 61 79 2d 69 74 65  vlyar/devday-ite
	0x0020 72 61 74 6f 72 73 2f 6c 69 73 74                 rators/list
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·c5b2f6560804ff174daf09d95facbd35 SRODATA dupok size=12
	0x0000 04 00 00 00 01 00 00 00 01 01 00 00              ............
gclocals·b566bf517073933b5de3b38142d02a51 SRODATA dupok size=12
	0x0000 04 00 00 00 02 00 00 00 00 02 02 00              ............
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
"".SumWalk.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.noalg.struct { F uintptr; "".sum *int }+0
gclocals·1002ed0418470fd2fbc0c138a2d530c8 SRODATA dupok size=14
	0x0000 06 00 00 00 01 00 00 00 01 01 00 00 00 00        ..............
gclocals·91667b269dee6578b057cbed1e577bab SRODATA dupok size=20
	0x0000 06 00 00 00 10 00 00 00 00 00 00 22 00 22 22 22  ..........."."""
	0x0010 22 00 00 00                                      "...
gclocals·8b9c1e7780561acdb841419cc3dfaf31 SRODATA dupok size=13
	0x0000 05 00 00 00 06 00 00 00 00 01 20 02 04           .......... ..
"".SumIter.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 80 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.github.com/sevlyar/devday-iterators/list.Iterator+0
gclocals·db688afbc90e26183a53c9ad23b80c29 SRODATA dupok size=11
	0x0000 03 00 00 00 03 00 00 00 00 04 01                 ...........
