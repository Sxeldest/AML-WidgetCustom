; =========================================================
; Game Engine Function: _Z30RxPipelineNodeFindOutputByNameP14RxPipelineNodePKc
; Address            : 0x1DEDD0 - 0x1DEE3A
; =========================================================

1DEDD0:  PUSH            {R4-R7,LR}
1DEDD2:  ADD             R7, SP, #0xC
1DEDD4:  PUSH.W          {R8-R11}
1DEDD8:  SUB             SP, SP, #4
1DEDDA:  MOV             R8, R0
1DEDDC:  MOV             R11, R1
1DEDDE:  MOVS            R0, #0
1DEDE0:  CMP.W           R8, #0
1DEDE4:  BEQ             loc_1DEE32
1DEDE6:  CMP.W           R11, #0
1DEDEA:  ITT NE
1DEDEC:  LDRNE.W         R1, [R8]
1DEDF0:  CMPNE           R1, #0
1DEDF2:  BEQ             loc_1DEE32
1DEDF4:  LDR.W           R10, [R1,#0x2C]
1DEDF8:  CMP.W           R10, #1
1DEDFC:  BLT             loc_1DEE28
1DEDFE:  LDR             R0, =(RwEngineInstance_ptr - 0x1DEE0C)
1DEE00:  MOVS            R4, #0
1DEE02:  LDR.W           R9, [R1,#0x30]
1DEE06:  MOVS            R5, #0
1DEE08:  ADD             R0, PC; RwEngineInstance_ptr
1DEE0A:  LDR             R6, [R0]; RwEngineInstance
1DEE0C:  ADD.W           R0, R4, R4,LSL#1
1DEE10:  LDR             R1, [R6]
1DEE12:  LDR.W           R0, [R9,R0]
1DEE16:  LDR.W           R2, [R1,#0x110]
1DEE1A:  MOV             R1, R11
1DEE1C:  BLX             R2
1DEE1E:  CBZ             R0, loc_1DEE2C
1DEE20:  ADDS            R5, #1
1DEE22:  ADDS            R4, #4
1DEE24:  CMP             R5, R10
1DEE26:  BLT             loc_1DEE0C
1DEE28:  MOVS            R0, #0
1DEE2A:  B               loc_1DEE32
1DEE2C:  LDR.W           R0, [R8,#8]
1DEE30:  ADD             R0, R4
1DEE32:  ADD             SP, SP, #4
1DEE34:  POP.W           {R8-R11}
1DEE38:  POP             {R4-R7,PC}
