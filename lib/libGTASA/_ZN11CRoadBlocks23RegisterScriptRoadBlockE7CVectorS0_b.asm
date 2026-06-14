; =========================================================
; Game Engine Function: _ZN11CRoadBlocks23RegisterScriptRoadBlockE7CVectorS0_b
; Address            : 0x326F58 - 0x32711A
; =========================================================

326F58:  PUSH            {R4-R7,LR}
326F5A:  ADD             R7, SP, #0xC
326F5C:  PUSH.W          {R8-R10}
326F60:  LDR.W           R12, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326F68)
326F64:  ADD             R12, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326F66:  LDR.W           R12, [R12]; CRoadBlocks::aScriptRoadBlocks ...
326F6A:  LDRB.W          LR, [R12,#(byte_7B75C4 - 0x7B75AC)]!
326F6E:  CMP.W           LR, #0
326F72:  BEQ             loc_327072
326F74:  LDR.W           R12, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326F7C)
326F78:  ADD             R12, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326F7A:  LDR.W           R12, [R12]; CRoadBlocks::aScriptRoadBlocks ...
326F7E:  LDRB.W          LR, [R12,#(byte_7B75E0 - 0x7B75AC)]!
326F82:  CMP.W           LR, #0
326F86:  BEQ             loc_327078
326F88:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326F8E)
326F8A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326F8C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326F90:  LDRB.W          R6, [R12,#(byte_7B75FC - 0x7B75AC)]!
326F94:  CMP             R6, #0
326F96:  BEQ             loc_32707E
326F98:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326F9E)
326F9A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326F9C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326FA0:  LDRB.W          R6, [R12,#(byte_7B7618 - 0x7B75AC)]!
326FA4:  CMP             R6, #0
326FA6:  BEQ             loc_327084
326FA8:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326FAE)
326FAA:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326FAC:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326FB0:  LDRB.W          R6, [R12,#(byte_7B7634 - 0x7B75AC)]!
326FB4:  CMP             R6, #0
326FB6:  BEQ             loc_32708A
326FB8:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326FBE)
326FBA:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326FBC:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326FC0:  LDRB.W          R6, [R12,#(byte_7B7650 - 0x7B75AC)]!
326FC4:  CMP             R6, #0
326FC6:  BEQ             loc_327090
326FC8:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326FCE)
326FCA:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326FCC:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326FD0:  LDRB.W          R6, [R12,#(byte_7B766C - 0x7B75AC)]!
326FD4:  CMP             R6, #0
326FD6:  BEQ             loc_327096
326FD8:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326FDE)
326FDA:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326FDC:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326FE0:  LDRB.W          R6, [R12,#(byte_7B7688 - 0x7B75AC)]!
326FE4:  CMP             R6, #0
326FE6:  BEQ             loc_32709C
326FE8:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326FEE)
326FEA:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326FEC:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
326FF0:  LDRB.W          R6, [R12,#(byte_7B76A4 - 0x7B75AC)]!
326FF4:  CMP             R6, #0
326FF6:  BEQ             loc_3270A2
326FF8:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x326FFE)
326FFA:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
326FFC:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327000:  LDRB.W          R6, [R12,#(byte_7B76C0 - 0x7B75AC)]
327004:  CMP             R6, #0
327006:  BEQ             loc_3270A8
327008:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x32700E)
32700A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32700C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327010:  LDRB.W          R6, [R12,#(byte_7B76DC - 0x7B75AC)]
327014:  CMP             R6, #0
327016:  BEQ             loc_3270B2
327018:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x32701E)
32701A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32701C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327020:  LDRB.W          R6, [R12,#(byte_7B76F8 - 0x7B75AC)]
327024:  CMP             R6, #0
327026:  BEQ             loc_3270BC
327028:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x32702E)
32702A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32702C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327030:  LDRB.W          R6, [R12,#(byte_7B7714 - 0x7B75AC)]
327034:  CMP             R6, #0
327036:  BEQ             loc_3270C6
327038:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x32703E)
32703A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32703C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327040:  LDRB.W          R6, [R12,#(byte_7B7730 - 0x7B75AC)]
327044:  CMP             R6, #0
327046:  BEQ             loc_3270D0
327048:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x32704E)
32704A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32704C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327050:  LDRB.W          R6, [R12,#(byte_7B774C - 0x7B75AC)]
327054:  CMP             R6, #0
327056:  BEQ             loc_3270DA
327058:  LDR             R6, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x32705E)
32705A:  ADD             R6, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
32705C:  LDR.W           R12, [R6]; CRoadBlocks::aScriptRoadBlocks ...
327060:  LDRB.W          R6, [R12,#(dword_7B7768 - 0x7B75AC)]
327064:  CMP             R6, #0
327066:  BNE             loc_327114
327068:  ADD.W           R12, R12, #0x1BC
32706C:  MOV.W           LR, #0xF
327070:  B               loc_3270E2
327072:  MOV.W           LR, #0
327076:  B               loc_3270E2
327078:  MOV.W           LR, #1
32707C:  B               loc_3270E2
32707E:  MOV.W           LR, #2
327082:  B               loc_3270E2
327084:  MOV.W           LR, #3
327088:  B               loc_3270E2
32708A:  MOV.W           LR, #4
32708E:  B               loc_3270E2
327090:  MOV.W           LR, #5
327094:  B               loc_3270E2
327096:  MOV.W           LR, #6
32709A:  B               loc_3270E2
32709C:  MOV.W           LR, #7
3270A0:  B               loc_3270E2
3270A2:  MOV.W           LR, #8
3270A6:  B               loc_3270E2
3270A8:  ADD.W           R12, R12, #0x114
3270AC:  MOV.W           LR, #9
3270B0:  B               loc_3270E2
3270B2:  ADD.W           R12, R12, #0x130
3270B6:  MOV.W           LR, #0xA
3270BA:  B               loc_3270E2
3270BC:  ADD.W           R12, R12, #0x14C
3270C0:  MOV.W           LR, #0xB
3270C4:  B               loc_3270E2
3270C6:  ADD.W           R12, R12, #0x168
3270CA:  MOV.W           LR, #0xC
3270CE:  B               loc_3270E2
3270D0:  ADD.W           R12, R12, #0x184
3270D4:  MOV.W           LR, #0xD
3270D8:  B               loc_3270E2
3270DA:  ADD.W           R12, R12, #0x1A0
3270DE:  MOV.W           LR, #0xE
3270E2:  LDR             R4, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x3270F2)
3270E4:  RSB.W           R6, LR, LR,LSL#3
3270E8:  MOVS            R5, #1
3270EA:  LDRD.W          R10, R9, [R7,#arg_0]
3270EE:  ADD             R4, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
3270F0:  STRB.W          R5, [R12]
3270F4:  LDR.W           R8, [R7,#arg_8]
3270F8:  LDR             R4, [R4]; CRoadBlocks::aScriptRoadBlocks ...
3270FA:  STR.W           R0, [R4,R6,LSL#2]
3270FE:  ADD.W           R0, R4, R6,LSL#2
327102:  ADD.W           R12, R0, #4
327106:  STRB            R5, [R0,#0x19]; CRoadBlocks::bGenerateDynamicRoadBlocks ...
327108:  STM.W           R12, {R1-R3,R10}
32710C:  STR.W           R9, [R0,#0x14]; CRoadBlocks::bGenerateDynamicRoadBlocks
327110:  STRB.W          R8, [R0,#0x1A]; CRoadBlocks::bGenerateDynamicRoadBlocks ...
327114:  POP.W           {R8-R10}
327118:  POP             {R4-R7,PC}
