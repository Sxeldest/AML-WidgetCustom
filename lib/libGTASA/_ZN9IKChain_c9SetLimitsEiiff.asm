; =========================================================
; Game Engine Function: _ZN9IKChain_c9SetLimitsEiiff
; Address            : 0x4D2D88 - 0x4D2DC4
; =========================================================

4D2D88:  PUSH            {R4,R5,R7,LR}
4D2D8A:  ADD             R7, SP, #8
4D2D8C:  LDR.W           R12, [R0,#0xC]
4D2D90:  VLDR            S0, [R7,#arg_0]
4D2D94:  CMP.W           R12, #1
4D2D98:  BLT             loc_4D2DB0
4D2D9A:  LDR.W           LR, [R0,#0x10]
4D2D9E:  MOVS            R4, #0
4D2DA0:  LDR.W           R0, [LR,R4,LSL#2]
4D2DA4:  LDR             R5, [R0,#8]
4D2DA6:  CMP             R5, R1
4D2DA8:  BEQ             loc_4D2DB2
4D2DAA:  ADDS            R4, #1
4D2DAC:  CMP             R4, R12
4D2DAE:  BLT             loc_4D2DA0
4D2DB0:  MOVS            R0, #0; this
4D2DB2:  VMOV            R12, S0
4D2DB6:  MOV             R1, R2; int
4D2DB8:  MOV             R2, R3; float
4D2DBA:  MOV             R3, R12; float
4D2DBC:  POP.W           {R4,R5,R7,LR}
4D2DC0:  B.W             sub_1A0D8C
