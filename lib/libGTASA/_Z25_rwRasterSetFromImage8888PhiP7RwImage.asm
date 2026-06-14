; =========================================================
; Game Engine Function: _Z25_rwRasterSetFromImage8888PhiP7RwImage
; Address            : 0x1AAB40 - 0x1AAC06
; =========================================================

1AAB40:  PUSH            {R4-R7,LR}
1AAB42:  ADD             R7, SP, #0xC
1AAB44:  PUSH.W          {R8-R11}
1AAB48:  LDRD.W          R9, R12, [R2,#4]
1AAB4C:  LDRD.W          R5, LR, [R2,#0xC]
1AAB50:  LDR.W           R10, [R2,#0x14]
1AAB54:  CMP             R5, #4
1AAB56:  IT NE
1AAB58:  CMPNE           R5, #8
1AAB5A:  BEQ             loc_1AABAC
1AAB5C:  CMP             R5, #0x20 ; ' '
1AAB5E:  BNE             loc_1AABFE
1AAB60:  CMP.W           R12, #1
1AAB64:  BLT             loc_1AABF6
1AAB66:  MOV.W           R8, #0
1AAB6A:  CMP.W           R9, #1
1AAB6E:  BLT             loc_1AAB9E
1AAB70:  MOVS            R5, #0
1AAB72:  MOV             R6, R9
1AAB74:  ADD.W           R4, R10, R5
1AAB78:  LDRB.W          R3, [R10,R5]
1AAB7C:  SUBS            R6, #1
1AAB7E:  LDRB            R2, [R4,#1]
1AAB80:  LDRB.W          R11, [R4,#2]
1AAB84:  MOV.W           R3, R3,LSL#16
1AAB88:  LDRB            R4, [R4,#3]
1AAB8A:  ORR.W           R3, R3, R4,LSL#24
1AAB8E:  ORR.W           R2, R3, R2,LSL#8
1AAB92:  ORR.W           R2, R2, R11
1AAB96:  STR             R2, [R0,R5]
1AAB98:  ADD.W           R5, R5, #4
1AAB9C:  BNE             loc_1AAB74
1AAB9E:  ADD.W           R8, R8, #1
1AABA2:  ADD             R10, LR
1AABA4:  ADD             R0, R1
1AABA6:  CMP             R8, R12
1AABA8:  BNE             loc_1AAB6A
1AABAA:  B               loc_1AABF6
1AABAC:  CMP.W           R12, #1
1AABB0:  BLT             loc_1AABF6
1AABB2:  LDR.W           R11, [R2,#0x18]
1AABB6:  MOV.W           R8, #0
1AABBA:  CMP.W           R9, #1
1AABBE:  BLT             loc_1AABEA
1AABC0:  MOVS            R6, #0
1AABC2:  LDRB.W          R5, [R10,R6]
1AABC6:  LDRB.W          R3, [R11,R5,LSL#2]
1AABCA:  ADD.W           R5, R11, R5,LSL#2
1AABCE:  LDRB            R4, [R5,#1]
1AABD0:  LDRB            R2, [R5,#2]
1AABD2:  LSLS            R3, R3, #0x10
1AABD4:  LDRB            R5, [R5,#3]
1AABD6:  ORR.W           R3, R3, R5,LSL#24
1AABDA:  ORR.W           R3, R3, R4,LSL#8
1AABDE:  ORRS            R2, R3
1AABE0:  STR.W           R2, [R0,R6,LSL#2]
1AABE4:  ADDS            R6, #1
1AABE6:  CMP             R9, R6
1AABE8:  BNE             loc_1AABC2
1AABEA:  ADD.W           R8, R8, #1
1AABEE:  ADD             R10, LR
1AABF0:  ADD             R0, R1
1AABF2:  CMP             R8, R12
1AABF4:  BNE             loc_1AABBA
1AABF6:  MOVS            R0, #1
1AABF8:  POP.W           {R8-R11}
1AABFC:  POP             {R4-R7,PC}
1AABFE:  MOVS            R0, #0
1AAC00:  POP.W           {R8-R11}
1AAC04:  POP             {R4-R7,PC}
