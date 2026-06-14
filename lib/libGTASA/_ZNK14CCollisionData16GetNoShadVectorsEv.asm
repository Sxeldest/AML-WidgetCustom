; =========================================================
; Game Engine Function: _ZNK14CCollisionData16GetNoShadVectorsEv
; Address            : 0x2E1BC6 - 0x2E1C06
; =========================================================

2E1BC6:  LDR.W           R12, [R0,#0x20]
2E1BCA:  CMP.W           R12, #1
2E1BCE:  ITT LT
2E1BD0:  MOVLT           R0, #1
2E1BD2:  BXLT            LR
2E1BD4:  PUSH            {R4,R6,R7,LR}
2E1BD6:  ADD             R7, SP, #0x10+var_8
2E1BD8:  LDR             R0, [R0,#0x2C]
2E1BDA:  MOVS            R2, #0
2E1BDC:  MOVS            R3, #0
2E1BDE:  ADDS            R0, #4
2E1BE0:  LDR.W           R1, [R0,#-4]
2E1BE4:  ADDS            R2, #1
2E1BE6:  LDRD.W          LR, R4, [R0]
2E1BEA:  ADDS            R0, #0x10
2E1BEC:  CMP             R1, R3
2E1BEE:  IT GT
2E1BF0:  MOVGT           R3, R1
2E1BF2:  CMP             LR, R3
2E1BF4:  IT GT
2E1BF6:  MOVGT           R3, LR
2E1BF8:  CMP             R4, R3
2E1BFA:  IT GT
2E1BFC:  MOVGT           R3, R4
2E1BFE:  CMP             R2, R12
2E1C00:  BLT             loc_2E1BE0
2E1C02:  ADDS            R0, R3, #1
2E1C04:  POP             {R4,R6,R7,PC}
