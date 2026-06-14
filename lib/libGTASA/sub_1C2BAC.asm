; =========================================================
; Game Engine Function: sub_1C2BAC
; Address            : 0x1C2BAC - 0x1C2C12
; =========================================================

1C2BAC:  PUSH            {R4-R7,LR}
1C2BAE:  ADD             R7, SP, #0xC
1C2BB0:  PUSH.W          {R8,R9,R11}
1C2BB4:  MOV             R8, R0
1C2BB6:  LDR             R0, =(RpHAnimAtomicGlobals_ptr - 0x1C2BBE)
1C2BB8:  MOV             R9, R1
1C2BBA:  ADD             R0, PC; RpHAnimAtomicGlobals_ptr
1C2BBC:  LDR.W           R1, [R9,#4]
1C2BC0:  LDR             R0, [R0]; RpHAnimAtomicGlobals
1C2BC2:  LDR             R0, [R0]
1C2BC4:  LDR.W           R4, [R8,R0]
1C2BC8:  CMP             R4, R1
1C2BCA:  BNE             loc_1C2BF8
1C2BCC:  LDR.W           R0, [R9]
1C2BD0:  LDR             R1, [R0,#4]
1C2BD2:  CMP             R1, #1
1C2BD4:  BLT             loc_1C2BF8
1C2BD6:  MOVS            R2, #1
1C2BD8:  MOVS            R3, #0
1C2BDA:  B               loc_1C2BE4
1C2BDC:  ADDS            R3, #0x10
1C2BDE:  LDR.W           R4, [R9,#4]
1C2BE2:  ADDS            R2, #1
1C2BE4:  LDR             R6, [R0,#0x10]
1C2BE6:  LDR             R5, [R6,R3]
1C2BE8:  CMP             R5, R4
1C2BEA:  ITTT EQ
1C2BEC:  ADDEQ           R1, R6, R3
1C2BEE:  STREQ.W         R8, [R1,#0xC]
1C2BF2:  LDREQ           R1, [R0,#4]
1C2BF4:  CMP             R2, R1
1C2BF6:  BLT             loc_1C2BDC
1C2BF8:  MOV             R0, R8
1C2BFA:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
1C2BFE:  LDR             R1, =(sub_1C2BAC+1 - 0x1C2C08)
1C2C00:  MOV             R0, R8
1C2C02:  MOV             R2, R9
1C2C04:  ADD             R1, PC; sub_1C2BAC
1C2C06:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
1C2C0A:  MOV             R0, R8
1C2C0C:  POP.W           {R8,R9,R11}
1C2C10:  POP             {R4-R7,PC}
