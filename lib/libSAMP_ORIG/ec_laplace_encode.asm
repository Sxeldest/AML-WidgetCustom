; =========================================================
; Game Engine Function: ec_laplace_encode
; Address            : 0xBCAB4 - 0xBCB86
; =========================================================

BCAB4:  PUSH            {R4-R7,LR}
BCAB6:  ADD             R7, SP, #0xC
BCAB8:  PUSH.W          {R8,R9,R11}
BCABC:  LDR.W           LR, [R1]
BCAC0:  MOV.W           R12, #0
BCAC4:  CMP.W           LR, #0
BCAC8:  BEQ             loc_BCB74
BCACA:  MOVW            R4, #0x7FE0
BCACE:  RSB.W           R5, R3, #0x4000
BCAD2:  SUBS            R4, R4, R2
BCAD4:  MULS            R5, R4
BCAD6:  ADD.W           R4, LR, LR,ASR#31
BCADA:  EOR.W           R9, R4, LR,ASR#31
BCADE:  CMP.W           R12, R5,LSR#15
BCAE2:  MOV.W           R6, R5,LSR#15
BCAE6:  IT EQ
BCAE8:  MOVEQ.W         R12, #1
BCAEC:  MOVS            R5, #1
BCAEE:  CMP.W           R9, #2
BCAF2:  BLT             loc_BCB22
BCAF4:  CBZ             R6, loc_BCB22
BCAF6:  MOVS            R5, #1
BCAF8:  MOV.W           R8, #0
BCAFC:  LSLS            R4, R6, #1
BCAFE:  ADD.W           R2, R2, R6,LSL#1
BCB02:  MULS            R4, R3
BCB04:  MOV.W           R12, #0
BCB08:  ADDS            R2, #2
BCB0A:  ADDS            R5, #1
BCB0C:  CMP.W           R8, R4,LSR#15
BCB10:  MOV.W           R6, R4,LSR#15
BCB14:  IT EQ
BCB16:  MOVEQ.W         R12, #1
BCB1A:  CMP             R9, R5
BCB1C:  BLE             loc_BCB22
BCB1E:  CMP             R6, #0
BCB20:  BNE             loc_BCAFC
BCB22:  MOV.W           R3, LR,ASR#31
BCB26:  CMP.W           R12, #1
BCB2A:  BNE             loc_BCB68
BCB2C:  MOV.W           R6, #0x8000
BCB30:  MOV.W           R4, #0xFFFFFFFF
BCB34:  ORR.W           R6, R6, LR,LSR#31
BCB38:  SUBS            R6, R6, R2
BCB3A:  ADD             R2, R3
BCB3C:  ADD.W           R6, R4, R6,ASR#1
BCB40:  SUB.W           R4, R9, R5
BCB44:  CMP             R4, R6
BCB46:  ADD             R5, R3
BCB48:  IT LT
BCB4A:  MOVLT           R6, R4
BCB4C:  ADD             R5, R6
BCB4E:  EORS            R5, R3
BCB50:  STR             R5, [R1]
BCB52:  MOVS            R1, #1
BCB54:  ORR.W           R1, R1, R6,LSL#1
BCB58:  ADD.W           R12, R2, R1
BCB5C:  MOVS            R2, #0
BCB5E:  CMP.W           R12, #0x8000
BCB62:  IT NE
BCB64:  MOVNE           R2, #1
BCB66:  B               loc_BCB74
BCB68:  ADDS            R1, R6, #1
BCB6A:  BIC.W           R3, R1, R3
BCB6E:  ADD.W           R12, R3, R2
BCB72:  MOV             R2, R1
BCB74:  ADD             R2, R12
BCB76:  MOV             R1, R12
BCB78:  MOVS            R3, #0xF
BCB7A:  POP.W           {R8,R9,R11}
BCB7E:  POP.W           {R4-R7,LR}
BCB82:  B.W             sub_10C1E8
