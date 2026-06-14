; =========================================================
; Game Engine Function: ReadLock
; Address            : 0x246B30 - 0x246C3C
; =========================================================

246B30:  PUSH            {R4-R7,LR}
246B32:  ADD             R7, SP, #0xC
246B34:  PUSH.W          {R8}
246B38:  MOV             R8, R0
246B3A:  ADD.W           R5, R8, #0xC
246B3E:  MOVS            R1, #1
246B40:  DMB.W           ISH
246B44:  LDREX.W         R0, [R5]
246B48:  STREX.W         R2, R1, [R5]
246B4C:  CMP             R2, #0
246B4E:  BNE             loc_246B44
246B50:  CMP             R0, #1
246B52:  DMB.W           ISH
246B56:  BNE             loc_246B76
246B58:  MOVS            R6, #1
246B5A:  BLX             sched_yield
246B5E:  DMB.W           ISH
246B62:  LDREX.W         R0, [R5]
246B66:  STREX.W         R1, R6, [R5]
246B6A:  CMP             R1, #0
246B6C:  BNE             loc_246B62
246B6E:  CMP             R0, #1
246B70:  DMB.W           ISH
246B74:  BEQ             loc_246B5A
246B76:  ADD.W           R6, R8, #8
246B7A:  MOVS            R1, #1
246B7C:  DMB.W           ISH
246B80:  LDREX.W         R0, [R6]
246B84:  STREX.W         R2, R1, [R6]
246B88:  CMP             R2, #0
246B8A:  BNE             loc_246B80
246B8C:  CMP             R0, #1
246B8E:  DMB.W           ISH
246B92:  BNE             loc_246BB2
246B94:  MOVS            R4, #1
246B96:  BLX             sched_yield
246B9A:  DMB.W           ISH
246B9E:  LDREX.W         R0, [R6]
246BA2:  STREX.W         R1, R4, [R6]
246BA6:  CMP             R1, #0
246BA8:  BNE             loc_246B9E
246BAA:  CMP             R0, #1
246BAC:  DMB.W           ISH
246BB0:  BEQ             loc_246B96
246BB2:  DMB.W           ISH
246BB6:  LDREX.W         R0, [R8]
246BBA:  ADDS            R1, R0, #1
246BBC:  STREX.W         R2, R1, [R8]
246BC0:  CMP             R2, #0
246BC2:  BNE             loc_246BB6
246BC4:  CMP             R0, #0
246BC6:  DMB.W           ISH
246BCA:  BNE             loc_246C0A
246BCC:  ADD.W           R4, R8, #0x10
246BD0:  MOVS            R1, #1
246BD2:  DMB.W           ISH
246BD6:  LDREX.W         R0, [R4]
246BDA:  STREX.W         R2, R1, [R4]
246BDE:  CMP             R2, #0
246BE0:  BNE             loc_246BD6
246BE2:  CMP             R0, #1
246BE4:  DMB.W           ISH
246BE8:  BNE             loc_246C0A
246BEA:  MOV.W           R8, #1
246BEE:  BLX             sched_yield
246BF2:  DMB.W           ISH
246BF6:  LDREX.W         R0, [R4]
246BFA:  STREX.W         R1, R8, [R4]
246BFE:  CMP             R1, #0
246C00:  BNE             loc_246BF6
246C02:  CMP             R0, #1
246C04:  DMB.W           ISH
246C08:  BEQ             loc_246BEE
246C0A:  MOVS            R0, #0
246C0C:  DMB.W           ISH
246C10:  LDREX.W         R1, [R6]
246C14:  STREX.W         R1, R0, [R6]
246C18:  CMP             R1, #0
246C1A:  BNE             loc_246C10
246C1C:  DMB.W           ISH
246C20:  MOVS            R0, #0
246C22:  DMB.W           ISH
246C26:  LDREX.W         R1, [R5]
246C2A:  STREX.W         R1, R0, [R5]
246C2E:  CMP             R1, #0
246C30:  BNE             loc_246C26
246C32:  DMB.W           ISH
246C36:  POP.W           {R8}
246C3A:  POP             {R4-R7,PC}
