; =========================================================
; Game Engine Function: _Z25_rwImageSetFromRaster8888P7RwImagePhi
; Address            : 0x1AA2D8 - 0x1AA334
; =========================================================

1AA2D8:  PUSH            {R4-R7,LR}
1AA2DA:  ADD             R7, SP, #0xC
1AA2DC:  PUSH.W          {R8-R11}
1AA2E0:  LDR.W           R12, [R0,#8]
1AA2E4:  CMP.W           R12, #1
1AA2E8:  BLT             loc_1AA32E
1AA2EA:  LDR.W           R8, [R0,#4]
1AA2EE:  MOV.W           R9, #0
1AA2F2:  LDRD.W          LR, R10, [R0,#0x10]
1AA2F6:  CMP.W           R8, #1
1AA2FA:  BLT             loc_1AA322
1AA2FC:  MOVS            R6, #0
1AA2FE:  MOV             R3, R8
1AA300:  LDR             R5, [R1,R6]
1AA302:  ADD.W           R4, R10, R6
1AA306:  SUBS            R3, #1
1AA308:  MOV.W           R11, R5,LSR#8
1AA30C:  STRB.W          R11, [R10,R6]
1AA310:  ADD.W           R6, R6, #4
1AA314:  STRB            R5, [R4,#2]
1AA316:  MOV.W           R5, R5,LSR#16
1AA31A:  STRB            R5, [R4,#3]
1AA31C:  STRB.W          R11, [R4,#1]
1AA320:  BNE             loc_1AA300
1AA322:  ADD.W           R9, R9, #1
1AA326:  ADD             R1, R2
1AA328:  ADD             R10, LR
1AA32A:  CMP             R9, R12
1AA32C:  BNE             loc_1AA2F6
1AA32E:  POP.W           {R8-R11}
1AA332:  POP             {R4-R7,PC}
