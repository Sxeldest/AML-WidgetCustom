; =========================================================
; Game Engine Function: sub_EBB6E
; Address            : 0xEBB6E - 0xEBC06
; =========================================================

EBB6E:  PUSH            {R4,R6,R7,LR}
EBB70:  ADD             R7, SP, #8
EBB72:  SUB             SP, SP, #0x20
EBB74:  MOV             R4, R0
EBB76:  LDRD.W          R2, R0, [R0,#4]
EBB7A:  CMP             R2, R0
EBB7C:  BEQ             loc_EBB9C
EBB7E:  LDR.W           R0, [R0,#-4]
EBB82:  LDRB            R2, [R0]
EBB84:  CMP             R2, #2
EBB86:  BNE             loc_EBBD0
EBB88:  LDR             R0, [R0,#8]
EBB8A:  BL              sub_EBC06
EBB8E:  LDR             R0, [R4,#8]
EBB90:  LDR.W           R0, [R0,#-4]
EBB94:  LDR             R0, [R0,#8]
EBB96:  LDR             R0, [R0,#4]
EBB98:  SUBS            R0, #0x10
EBB9A:  B               loc_EBC02
EBB9C:  MOVS            R0, #0
EBB9E:  STRD.W          R0, R0, [SP,#0x28+var_10]
EBBA2:  MOV             R0, R1
EBBA4:  BL              sub_EA114
EBBA8:  LDR             R1, [R4]
EBBAA:  MOVS            R2, #3
EBBAC:  STR             R0, [SP,#0x28+var_10]
EBBAE:  LDRD.W          LR, R12, [R1,#8]
EBBB2:  LDRB            R3, [R1]
EBBB4:  STRB            R2, [R1]
EBBB6:  LDRD.W          R2, R0, [SP,#0x28+var_10]
EBBBA:  STRD.W          R2, R0, [R1,#8]
EBBBE:  ADD             R0, SP, #0x28+var_18
EBBC0:  STRB.W          R3, [SP,#0x28+var_18]
EBBC4:  STRD.W          LR, R12, [SP,#0x28+var_10]
EBBC8:  BL              sub_E3F7A
EBBCC:  LDR             R0, [R4]
EBBCE:  B               loc_EBC02
EBBD0:  MOVS            R0, #0
EBBD2:  STRD.W          R0, R0, [SP,#0x28+var_20]
EBBD6:  MOV             R0, R1
EBBD8:  BL              sub_EA114
EBBDC:  LDR             R1, [R4,#0x10]
EBBDE:  MOVS            R2, #3
EBBE0:  STR             R0, [SP,#0x28+var_20]
EBBE2:  LDRD.W          LR, R12, [R1,#8]
EBBE6:  LDRB            R3, [R1]
EBBE8:  STRB            R2, [R1]
EBBEA:  LDRD.W          R2, R0, [SP,#0x28+var_20]
EBBEE:  STRD.W          R2, R0, [R1,#8]
EBBF2:  MOV             R0, SP
EBBF4:  STRB.W          R3, [SP,#0x28+var_28]
EBBF8:  STRD.W          LR, R12, [SP,#0x28+var_20]
EBBFC:  BL              sub_E3F7A
EBC00:  LDR             R0, [R4,#0x10]
EBC02:  ADD             SP, SP, #0x20 ; ' '
EBC04:  POP             {R4,R6,R7,PC}
