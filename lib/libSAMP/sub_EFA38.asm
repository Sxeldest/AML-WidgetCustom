; =========================================================
; Game Engine Function: sub_EFA38
; Address            : 0xEFA38 - 0xEFB1C
; =========================================================

EFA38:  PUSH            {R4,R5,R7,LR}
EFA3A:  ADD             R7, SP, #8
EFA3C:  SUB             SP, SP, #0x10
EFA3E:  MOV             R4, R0
EFA40:  LDRB            R0, [R0,#4]
EFA42:  CMP             R0, #0
EFA44:  BEQ             loc_EFB06
EFA46:  LDRD.W          R5, R1, [R4,#8]
EFA4A:  MOV.W           R0, #0xCD0000
EFA4E:  MOVW            LR, #0xF
EFA52:  LDRD.W          R12, R2, [R1]
EFA56:  MOVT            LR, #0xF00
EFA5A:  LDR             R1, [R1,#8]
EFA5C:  SUBS.W          R3, R1, #0xC
EFA60:  MUL.W           R0, R12, R0
EFA64:  IT LT
EFA66:  MOVLT           R3, R1
EFA68:  CMP             R3, #0
EFA6A:  IT EQ
EFA6C:  MOVEQ           R3, #0xC
EFA6E:  ORR.W           R1, R3, R2,LSL#24
EFA72:  MOVS            R2, #0xCD
EFA74:  UMULL.W         R2, R3, R1, R2
EFA78:  ADD             R0, R3
EFA7A:  MOVW            R3, #0x3030
EFA7E:  LSRS            R2, R2, #0xB
EFA80:  MOVT            R3, #0x303A
EFA84:  ORR.W           R2, R2, R0,LSL#21
EFA88:  AND.W           R2, R2, LR
EFA8C:  ADD.W           R2, R2, R2,LSL#1
EFA90:  ADDS.W          R1, R1, R2,LSL#1
EFA94:  AND.W           R2, LR, R1,LSR#4
EFA98:  BFI.W           R2, R1, #8, #4
EFA9C:  ORR.W           R2, R2, R3
EFAA0:  STR             R2, [SP,#0x18+var_10]
EFAA2:  MOV.W           R2, #0xF0000
EFAA6:  AND.W           R0, R2, R0,LSR#11
EFAAA:  ADD.W           R0, R0, R0,LSL#1
EFAAE:  MOV.W           R0, R0,LSL#1
EFAB2:  ADC.W           R0, R0, R12,LSL#16
EFAB6:  AND.W           R2, R2, R0,LSR#4
EFABA:  LSLS            R0, R0, #8
EFABC:  ORR.W           R0, R0, R1,LSR#24
EFAC0:  MOVW            R1, #0x3A30
EFAC4:  AND.W           R0, R0, LR
EFAC8:  MOVT            R1, #0x3030
EFACC:  ADD             R0, R2
EFACE:  ORRS            R0, R1
EFAD0:  ADD             R1, SP, #0x18+var_10
EFAD2:  ADD.W           R2, R1, #8
EFAD6:  STR             R0, [SP,#0x18+var_C]
EFAD8:  MOV             R0, R5
EFADA:  BL              sub_DCF30
EFADE:  STR             R5, [R4,#8]
EFAE0:  LDRD.W          R0, R2, [R5,#8]
EFAE4:  ADDS            R1, R0, #1
EFAE6:  CMP             R2, R1
EFAE8:  BCS             loc_EFAF6
EFAEA:  LDR             R0, [R5]
EFAEC:  LDR             R2, [R0]
EFAEE:  MOV             R0, R5
EFAF0:  BLX             R2
EFAF2:  LDR             R0, [R5,#8]
EFAF4:  ADDS            R1, R0, #1
EFAF6:  LDR             R2, [R5,#4]
EFAF8:  STR             R1, [R5,#8]
EFAFA:  MOVS            R1, #0x20 ; ' '
EFAFC:  STRB            R1, [R2,R0]
EFAFE:  MOV             R0, R4
EFB00:  BL              sub_EFB5A
EFB04:  B               loc_EFB18
EFB06:  LDR             R2, [R4]
EFB08:  MOVS            R3, #0
EFB0A:  LDRD.W          R0, R1, [R4,#8]
EFB0E:  STR             R3, [SP,#0x18+var_18]
EFB10:  MOVS            R3, #0x72 ; 'r'
EFB12:  BL              sub_EFCE0
EFB16:  STR             R0, [R4,#8]
EFB18:  ADD             SP, SP, #0x10
EFB1A:  POP             {R4,R5,R7,PC}
