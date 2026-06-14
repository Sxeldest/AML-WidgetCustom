; =========================================================
; Game Engine Function: sub_DDB98
; Address            : 0xDDB98 - 0xDDC42
; =========================================================

DDB98:  PUSH            {R4-R7,LR}
DDB9A:  ADD             R7, SP, #0xC
DDB9C:  PUSH.W          {R8,R9,R11}
DDBA0:  SUB             SP, SP, #0x18
DDBA2:  MOV             R6, R0
DDBA4:  LDR             R0, =(unk_91CE0 - 0xDDBB2)
DDBA6:  LDRH.W          R2, [R1,#9]
DDBAA:  ADD.W           R8, R1, #0xB
DDBAE:  ADD             R0, PC; unk_91CE0
DDBB0:  LDR             R5, [R1]
DDBB2:  AND.W           R2, R2, #0xF
DDBB6:  LDR.W           R9, [R7,#arg_0]
DDBBA:  SUBS            R4, R5, R3
DDBBC:  LDRB            R0, [R0,R2]
DDBBE:  IT CC
DDBC0:  MOVCC           R4, #0
DDBC2:  LSRS.W          R5, R4, R0
DDBC6:  BEQ             loc_DDBD4
DDBC8:  MOV             R0, R6
DDBCA:  MOV             R1, R5
DDBCC:  MOV             R2, R8
DDBCE:  BL              sub_DD992
DDBD2:  MOV             R6, R0
DDBD4:  LDR.W           R0, [R9]
DDBD8:  SUBS            R5, R4, R5
DDBDA:  BIC.W           R4, R0, #0xFF000000
DDBDE:  CBZ             R4, loc_DDC00
DDBE0:  LDRD.W          R0, R2, [R6,#8]
DDBE4:  ADDS            R1, R0, #1
DDBE6:  CMP             R2, R1
DDBE8:  BCS             loc_DDBF6
DDBEA:  LDR             R0, [R6]
DDBEC:  LDR             R2, [R0]
DDBEE:  MOV             R0, R6
DDBF0:  BLX             R2
DDBF2:  LDR             R0, [R6,#8]
DDBF4:  ADDS            R1, R0, #1
DDBF6:  LDR             R2, [R6,#4]
DDBF8:  STR             R1, [R6,#8]
DDBFA:  STRB            R4, [R2,R0]
DDBFC:  LSRS            R4, R4, #8
DDBFE:  BNE             loc_DDBE0
DDC00:  LDR.W           R1, [R9,#8]
DDC04:  MOVS            R0, #0x30 ; '0'
DDC06:  SUB.W           R2, R7, #-var_22
DDC0A:  STRB.W          R0, [R7,#var_22]
DDC0E:  MOV             R0, R6
DDC10:  BL              sub_DD9D2
DDC14:  SUB.W           R4, R7, #-var_22
DDC18:  LDRD.W          R2, R3, [R9,#0xC]
DDC1C:  MOV             R6, R0
DDC1E:  ADD             R0, SP, #0x30+var_2C
DDC20:  MOV             R1, R4
DDC22:  BL              sub_DCEB4
DDC26:  LDR             R1, [SP,#0x30+var_28]
DDC28:  MOV             R0, R4
DDC2A:  MOV             R2, R6
DDC2C:  BL              sub_DCF1C
DDC30:  CBZ             R5, loc_DDC3A
DDC32:  MOV             R1, R5
DDC34:  MOV             R2, R8
DDC36:  BL              sub_DD992
DDC3A:  ADD             SP, SP, #0x18
DDC3C:  POP.W           {R8,R9,R11}
DDC40:  POP             {R4-R7,PC}
