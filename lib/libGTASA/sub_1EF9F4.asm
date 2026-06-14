; =========================================================
; Game Engine Function: sub_1EF9F4
; Address            : 0x1EF9F4 - 0x1EFAC4
; =========================================================

1EF9F4:  PUSH            {R7,LR}
1EF9F6:  MOV             R7, SP
1EF9F8:  LDR.W           R12, [R1,#0x18]
1EF9FC:  LDR.W           LR, [R0,#0x18]
1EFA00:  SUB.W           R3, R12, R2
1EFA04:  CMP             LR, R3
1EFA06:  BLT             loc_1EFAC0
1EFA08:  ADD.W           R3, R12, R2
1EFA0C:  CMP             LR, R3
1EFA0E:  BGT             loc_1EFAC0
1EFA10:  LDR.W           R12, [R1,#0x1C]
1EFA14:  LDR.W           LR, [R0,#0x1C]
1EFA18:  SUB.W           R3, R12, R2
1EFA1C:  CMP             LR, R3
1EFA1E:  BLT             loc_1EFAC0
1EFA20:  ADD.W           R3, R12, R2
1EFA24:  CMP             LR, R3
1EFA26:  BGT             loc_1EFAC0
1EFA28:  LDR.W           R12, [R1]
1EFA2C:  LDR.W           LR, [R0]
1EFA30:  SUB.W           R3, R12, R2
1EFA34:  CMP             LR, R3
1EFA36:  BLT             loc_1EFAC0
1EFA38:  ADD.W           R3, R12, R2
1EFA3C:  CMP             LR, R3
1EFA3E:  BGT             loc_1EFAC0
1EFA40:  LDR.W           R12, [R1,#4]
1EFA44:  LDR.W           LR, [R0,#4]
1EFA48:  SUB.W           R3, R12, R2
1EFA4C:  CMP             LR, R3
1EFA4E:  BLT             loc_1EFAC0
1EFA50:  ADD.W           R3, R12, R2
1EFA54:  CMP             LR, R3
1EFA56:  BGT             loc_1EFAC0
1EFA58:  LDR.W           R12, [R1,#8]
1EFA5C:  LDR.W           LR, [R0,#8]
1EFA60:  SUB.W           R3, R12, R2
1EFA64:  CMP             LR, R3
1EFA66:  BLT             loc_1EFAC0
1EFA68:  ADD.W           R3, R12, R2
1EFA6C:  CMP             LR, R3
1EFA6E:  BGT             loc_1EFAC0
1EFA70:  LDR.W           R12, [R1,#0xC]
1EFA74:  LDR.W           LR, [R0,#0xC]
1EFA78:  SUB.W           R3, R12, R2
1EFA7C:  CMP             LR, R3
1EFA7E:  BLT             loc_1EFAC0
1EFA80:  ADD.W           R3, R12, R2
1EFA84:  CMP             LR, R3
1EFA86:  BGT             loc_1EFAC0
1EFA88:  LDR.W           R12, [R1,#0x10]
1EFA8C:  LDR.W           LR, [R0,#0x10]
1EFA90:  SUB.W           R3, R12, R2
1EFA94:  CMP             LR, R3
1EFA96:  BLT             loc_1EFAC0
1EFA98:  ADD.W           R3, R12, R2
1EFA9C:  CMP             LR, R3
1EFA9E:  BGT             loc_1EFAC0
1EFAA0:  LDR             R1, [R1,#0x14]
1EFAA2:  MOVS            R3, #0
1EFAA4:  LDR.W           LR, [R0,#0x14]
1EFAA8:  MOVS            R0, #0
1EFAAA:  SUB.W           R12, R1, R2
1EFAAE:  ADD             R1, R2
1EFAB0:  CMP             LR, R12
1EFAB2:  IT GE
1EFAB4:  MOVGE           R0, #1
1EFAB6:  CMP             LR, R1
1EFAB8:  IT LE
1EFABA:  MOVLE           R3, #1
1EFABC:  ANDS            R0, R3
1EFABE:  POP             {R7,PC}
1EFAC0:  MOVS            R0, #0
1EFAC2:  POP             {R7,PC}
