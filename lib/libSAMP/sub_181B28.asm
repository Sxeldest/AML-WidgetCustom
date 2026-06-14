; =========================================================
; Game Engine Function: sub_181B28
; Address            : 0x181B28 - 0x181C24
; =========================================================

181B28:  MOVS            R3, #0
181B2A:  B.W             loc_181B30
181B2E:  BMI             loc_181ADA
181B30:  PUSH            {R4-R7,LR}
181B32:  ADD             R7, SP, #0x14+var_8
181B34:  PUSH.W          {R8,R9,R11}
181B38:  SUB             SP, SP, #0x140
181B3A:  MOV             R4, R0
181B3C:  LDR             R0, [R0,#0xC]
181B3E:  STRD.W          R1, R2, [SP,#0x160+var_2C]
181B42:  MOVS            R1, #1
181B44:  ADDS            R0, #7
181B46:  MOV             R5, R3
181B48:  ADD.W           R1, R1, R0,ASR#3; size
181B4C:  ADD             R0, SP, #0x160+var_140; int
181B4E:  BL              sub_17D4C0
181B52:  MOVS            R1, #0x29 ; ')'
181B54:  STRB.W          R1, [R7,#-0x19]
181B58:  SUB.W           R1, R7, #0x19
181B5C:  MOVS            R2, #8
181B5E:  MOVS            R3, #1
181B60:  BL              sub_17D628
181B64:  LDR             R0, [R4,#0xC]
181B66:  LDR             R1, [R4,#0x18]
181B68:  ADDS            R0, #7
181B6A:  ASRS            R2, R0, #3
181B6C:  ADD             R0, SP, #0x160+var_140
181B6E:  BL              sub_17D566
181B72:  LDR             R1, =(unk_BE944 - 0x181B78)
181B74:  ADD             R1, PC; unk_BE944
181B76:  CBZ             R5, loc_181BB4
181B78:  ADD             R0, SP, #0x160+var_2C
181B7A:  BL              sub_17E580
181B7E:  LDRD.W          R6, R5, [SP,#0x160+var_2C]
181B82:  LDR.W           R8, [SP,#0x160+var_140]
181B86:  LDR.W           R9, [SP,#0x160+var_134]
181B8A:  CBZ             R0, loc_181BDC
181B8C:  BL              sub_17E2E4
181B90:  MOVS            R1, #0
181B92:  MOVS            R2, #1
181B94:  MOVS            R3, #8
181B96:  STRD.W          R2, R1, [SP,#0x160+var_150]
181B9A:  STRD.W          R3, R1, [SP,#0x160+var_160]
181B9E:  MOV             R2, R8
181BA0:  STRD.W          R0, R1, [SP,#0x160+var_148]
181BA4:  MOV             R0, R4
181BA6:  MOV             R1, R9
181BA8:  MOVS            R3, #0
181BAA:  STRD.W          R6, R5, [SP,#0x160+var_158]
181BAE:  BL              sub_1825E8
181BB2:  B               loc_181C16
181BB4:  ADD             R0, SP, #0x160+var_2C
181BB6:  BL              sub_17E580
181BBA:  LDR             R3, [R4]
181BBC:  LDRD.W          R2, R1, [SP,#0x160+var_2C]
181BC0:  LDR             R6, [R3,#0x38]
181BC2:  CBZ             R0, loc_181C02
181BC4:  MOVS            R0, #1
181BC6:  MOVS            R3, #0
181BC8:  STRD.W          R1, R0, [SP,#0x160+var_158]
181BCC:  ADD             R1, SP, #0x160+var_140
181BCE:  STRD.W          R3, R2, [SP,#0x160+var_160]
181BD2:  MOV             R0, R4
181BD4:  MOVS            R2, #0
181BD6:  MOVS            R3, #8
181BD8:  BLX             R6
181BDA:  B               loc_181C16
181BDC:  BL              sub_17E2E4
181BE0:  MOVS            R1, #0
181BE2:  MOVS            R2, #8
181BE4:  STRD.W          R2, R1, [SP,#0x160+var_160]
181BE8:  MOV             R2, R8
181BEA:  STRD.W          R0, R1, [SP,#0x160+var_148]
181BEE:  MOV             R0, R4
181BF0:  STRD.W          R1, R1, [SP,#0x160+var_150]
181BF4:  MOV             R1, R9
181BF6:  MOVS            R3, #0
181BF8:  STRD.W          R6, R5, [SP,#0x160+var_158]
181BFC:  BL              sub_1825E8
181C00:  B               loc_181C16
181C02:  MOVS            R0, #0
181C04:  MOVS            R3, #8
181C06:  STRD.W          R1, R0, [SP,#0x160+var_158]
181C0A:  ADD             R1, SP, #0x160+var_140
181C0C:  STRD.W          R0, R2, [SP,#0x160+var_160]
181C10:  MOV             R0, R4
181C12:  MOVS            R2, #0
181C14:  BLX             R6
181C16:  ADD             R0, SP, #0x160+var_140
181C18:  BL              sub_17D542
181C1C:  ADD             SP, SP, #0x140
181C1E:  POP.W           {R8,R9,R11}
181C22:  POP             {R4-R7,PC}
