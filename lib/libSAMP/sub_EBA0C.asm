; =========================================================
; Game Engine Function: sub_EBA0C
; Address            : 0xEBA0C - 0xEBAC2
; =========================================================

EBA0C:  PUSH            {R4-R7,LR}
EBA0E:  ADD             R7, SP, #0xC
EBA10:  PUSH.W          {R8}
EBA14:  SUB             SP, SP, #0x20
EBA16:  MOV             R4, R0
EBA18:  LDRD.W          R2, R0, [R0,#4]
EBA1C:  CMP             R2, R0
EBA1E:  BEQ             loc_EBA3E
EBA20:  LDR.W           R0, [R0,#-4]
EBA24:  LDRB            R2, [R0]
EBA26:  CMP             R2, #2
EBA28:  BNE             loc_EBA7E
EBA2A:  LDR             R0, [R0,#8]
EBA2C:  BL              sub_EBAC2
EBA30:  LDR             R0, [R4,#8]
EBA32:  LDR.W           R0, [R0,#-4]
EBA36:  LDR             R0, [R0,#8]
EBA38:  LDR             R0, [R0,#4]
EBA3A:  SUBS            R0, #0x10
EBA3C:  B               loc_EBABA
EBA3E:  LDRD.W          R2, R3, [R1]
EBA42:  ADD.W           R8, SP, #0x30+var_20
EBA46:  MOVS            R0, #0
EBA48:  STRD.W          R0, R0, [SP,#0x30+var_18]
EBA4C:  STRB.W          R0, [SP,#0x30+var_20]
EBA50:  MOV             R0, R8
EBA52:  BL              sub_EAC24
EBA56:  LDR             R0, [R4]
EBA58:  LDRB.W          R1, [SP,#0x30+var_20]
EBA5C:  LDRD.W          R3, R5, [R0,#8]
EBA60:  LDRB            R2, [R0]
EBA62:  STRB            R1, [R0]
EBA64:  LDRD.W          R1, R6, [SP,#0x30+var_18]
EBA68:  STRD.W          R1, R6, [R0,#8]
EBA6C:  MOV             R0, R8
EBA6E:  STRB.W          R2, [SP,#0x30+var_20]
EBA72:  STRD.W          R3, R5, [SP,#0x30+var_18]
EBA76:  BL              sub_E3F7A
EBA7A:  LDR             R0, [R4]
EBA7C:  B               loc_EBABA
EBA7E:  LDRD.W          R2, R3, [R1]
EBA82:  MOVS            R0, #0
EBA84:  MOV             R8, SP
EBA86:  STRD.W          R0, R0, [SP,#0x30+var_28]
EBA8A:  STRB.W          R0, [SP,#0x30+var_30]
EBA8E:  MOV             R0, R8
EBA90:  BL              sub_EAC24
EBA94:  LDR             R0, [R4,#0x10]
EBA96:  LDRB.W          R1, [SP,#0x30+var_30]
EBA9A:  LDRD.W          R3, R6, [R0,#8]
EBA9E:  LDRB            R2, [R0]
EBAA0:  STRB            R1, [R0]
EBAA2:  LDRD.W          R1, R5, [SP,#0x30+var_28]
EBAA6:  STRD.W          R1, R5, [R0,#8]
EBAAA:  MOV             R0, R8
EBAAC:  STRB.W          R2, [SP,#0x30+var_30]
EBAB0:  STRD.W          R3, R6, [SP,#0x30+var_28]
EBAB4:  BL              sub_E3F7A
EBAB8:  LDR             R0, [R4,#0x10]
EBABA:  ADD             SP, SP, #0x20 ; ' '
EBABC:  POP.W           {R8}
EBAC0:  POP             {R4-R7,PC}
