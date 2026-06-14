; =========================================================
; Game Engine Function: sub_E8B20
; Address            : 0xE8B20 - 0xE8BF4
; =========================================================

E8B20:  PUSH            {R4-R7,LR}
E8B22:  ADD             R7, SP, #0xC
E8B24:  PUSH.W          {R8-R10}
E8B28:  MOV             R4, R3
E8B2A:  MOV             R9, R1
E8B2C:  LDR             R1, [R1]
E8B2E:  MOV             R8, R0
E8B30:  LDRD.W          R3, R2, [R2]
E8B34:  LDR.W           R0, [R9,#4]
E8B38:  SUBS            R3, R3, R1
E8B3A:  SUBS            R2, R2, R0
E8B3C:  ADD.W           R5, R2, R3,LSL#3
E8B40:  CMP             R5, #0
E8B42:  BLE             loc_E8BE6
E8B44:  CBZ             R0, loc_E8B94
E8B46:  MOV.W           R12, #0xFFFFFFFF
E8B4A:  LDR.W           LR, [R1]
E8B4E:  LSL.W           R3, R12, R0
E8B52:  RSB.W           R0, R0, #0x20 ; ' '
E8B56:  CMP             R5, R0
E8B58:  MOV             R6, R0
E8B5A:  IT LT
E8B5C:  MOVLT           R6, R5
E8B5E:  LDR             R2, [R4]
E8B60:  SUBS            R0, R0, R6
E8B62:  SUBS            R5, R5, R6
E8B64:  LSR.W           R0, R12, R0
E8B68:  LDR             R1, [R2]
E8B6A:  ANDS            R0, R3
E8B6C:  AND.W           R3, LR, R0
E8B70:  BIC.W           R0, R1, R0
E8B74:  ADD             R0, R3
E8B76:  STR             R0, [R2]
E8B78:  LDR             R0, [R4,#4]
E8B7A:  ADD             R0, R6
E8B7C:  LSRS            R1, R0, #5
E8B7E:  AND.W           R0, R0, #0x1F
E8B82:  ADD.W           R1, R2, R1,LSL#2
E8B86:  STR             R1, [R4]
E8B88:  LDR.W           R1, [R9]
E8B8C:  STR             R0, [R4,#4]
E8B8E:  ADDS            R1, #4; src
E8B90:  STR.W           R1, [R9]
E8B94:  ASRS            R2, R5, #0x1F
E8B96:  LDR             R0, [R4]; dest
E8B98:  ADD.W           R10, R5, R2,LSR#27
E8B9C:  MOV.W           R6, R10,ASR#5
E8BA0:  LSLS            R2, R6, #2; n
E8BA2:  BLX             j_memmove
E8BA6:  LDR             R0, [R4]
E8BA8:  BIC.W           R1, R10, #0x1F
E8BAC:  SUBS            R1, R5, R1
E8BAE:  ADD.W           R0, R0, R6,LSL#2
E8BB2:  CMP             R1, #1
E8BB4:  STR             R0, [R4]
E8BB6:  BLT             loc_E8BE8
E8BB8:  LDR.W           R2, [R9]
E8BBC:  RSB.W           R3, R1, #0x20 ; ' '
E8BC0:  MOV.W           R5, #0xFFFFFFFF
E8BC4:  ADD.W           R0, R2, R6,LSL#2
E8BC8:  STR.W           R0, [R9]
E8BCC:  LDR             R0, [R4]
E8BCE:  LSR.W           R3, R5, R3
E8BD2:  LDR.W           R2, [R2,R6,LSL#2]
E8BD6:  LDR             R6, [R0]
E8BD8:  ANDS            R2, R3
E8BDA:  BIC.W           R3, R6, R3
E8BDE:  ADD             R2, R3
E8BE0:  STR             R2, [R0]
E8BE2:  STR             R1, [R4,#4]
E8BE4:  B               loc_E8BE8
E8BE6:  LDR             R0, [R4]
E8BE8:  LDR             R1, [R4,#4]
E8BEA:  STRD.W          R0, R1, [R8]
E8BEE:  POP.W           {R8-R10}
E8BF2:  POP             {R4-R7,PC}
