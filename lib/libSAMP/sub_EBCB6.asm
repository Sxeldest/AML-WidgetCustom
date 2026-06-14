; =========================================================
; Game Engine Function: sub_EBCB6
; Address            : 0xEBCB6 - 0xEBD6C
; =========================================================

EBCB6:  PUSH            {R4-R7,LR}
EBCB8:  ADD             R7, SP, #0xC
EBCBA:  PUSH.W          {R8}
EBCBE:  SUB             SP, SP, #0x20
EBCC0:  MOV             R4, R0
EBCC2:  LDRD.W          R2, R0, [R0,#4]
EBCC6:  CMP             R2, R0
EBCC8:  BEQ             loc_EBCE8
EBCCA:  LDR.W           R0, [R0,#-4]
EBCCE:  LDRB            R2, [R0]
EBCD0:  CMP             R2, #2
EBCD2:  BNE             loc_EBD28
EBCD4:  LDR             R0, [R0,#8]
EBCD6:  BL              sub_EBD6C
EBCDA:  LDR             R0, [R4,#8]
EBCDC:  LDR.W           R0, [R0,#-4]
EBCE0:  LDR             R0, [R0,#8]
EBCE2:  LDR             R0, [R0,#4]
EBCE4:  SUBS            R0, #0x10
EBCE6:  B               loc_EBD64
EBCE8:  LDRD.W          R2, R3, [R1]
EBCEC:  ADD.W           R8, SP, #0x30+var_20
EBCF0:  MOVS            R0, #0
EBCF2:  STRD.W          R0, R0, [SP,#0x30+var_18]
EBCF6:  STRB.W          R0, [SP,#0x30+var_20]
EBCFA:  MOV             R0, R8
EBCFC:  BL              sub_EAFFC
EBD00:  LDR             R0, [R4]
EBD02:  LDRB.W          R1, [SP,#0x30+var_20]
EBD06:  LDRD.W          R3, R5, [R0,#8]
EBD0A:  LDRB            R2, [R0]
EBD0C:  STRB            R1, [R0]
EBD0E:  LDRD.W          R1, R6, [SP,#0x30+var_18]
EBD12:  STRD.W          R1, R6, [R0,#8]
EBD16:  MOV             R0, R8
EBD18:  STRB.W          R2, [SP,#0x30+var_20]
EBD1C:  STRD.W          R3, R5, [SP,#0x30+var_18]
EBD20:  BL              sub_E3F7A
EBD24:  LDR             R0, [R4]
EBD26:  B               loc_EBD64
EBD28:  LDRD.W          R2, R3, [R1]
EBD2C:  MOVS            R0, #0
EBD2E:  MOV             R8, SP
EBD30:  STRD.W          R0, R0, [SP,#0x30+var_28]
EBD34:  STRB.W          R0, [SP,#0x30+var_30]
EBD38:  MOV             R0, R8
EBD3A:  BL              sub_EAFFC
EBD3E:  LDR             R0, [R4,#0x10]
EBD40:  LDRB.W          R1, [SP,#0x30+var_30]
EBD44:  LDRD.W          R3, R6, [R0,#8]
EBD48:  LDRB            R2, [R0]
EBD4A:  STRB            R1, [R0]
EBD4C:  LDRD.W          R1, R5, [SP,#0x30+var_28]
EBD50:  STRD.W          R1, R5, [R0,#8]
EBD54:  MOV             R0, R8
EBD56:  STRB.W          R2, [SP,#0x30+var_30]
EBD5A:  STRD.W          R3, R6, [SP,#0x30+var_28]
EBD5E:  BL              sub_E3F7A
EBD62:  LDR             R0, [R4,#0x10]
EBD64:  ADD             SP, SP, #0x20 ; ' '
EBD66:  POP.W           {R8}
EBD6A:  POP             {R4-R7,PC}
