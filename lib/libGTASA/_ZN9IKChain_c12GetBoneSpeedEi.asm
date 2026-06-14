; =========================================================
; Game Engine Function: _ZN9IKChain_c12GetBoneSpeedEi
; Address            : 0x4D2DC4 - 0x4D2DFA
; =========================================================

4D2DC4:  PUSH            {R7,LR}
4D2DC6:  MOV             R7, SP
4D2DC8:  LDR.W           LR, [R0,#0xC]
4D2DCC:  CMP.W           LR, #1
4D2DD0:  BLT             loc_4D2DE8
4D2DD2:  LDR.W           R12, [R0,#0x10]
4D2DD6:  MOVS            R3, #0
4D2DD8:  LDR.W           R0, [R12,R3,LSL#2]; this
4D2DDC:  LDR             R2, [R0,#8]
4D2DDE:  CMP             R2, R1
4D2DE0:  BEQ             loc_4D2DF2
4D2DE2:  ADDS            R3, #1
4D2DE4:  CMP             R3, LR
4D2DE6:  BLT             loc_4D2DD8
4D2DE8:  MOVS            R0, #0; this
4D2DEA:  POP.W           {R7,LR}
4D2DEE:  B.W             sub_18C334
4D2DF2:  POP.W           {R7,LR}
4D2DF6:  B.W             sub_18C334
