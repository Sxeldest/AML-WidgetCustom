; =========================================================
; Game Engine Function: sub_EFB5A
; Address            : 0xEFB5A - 0xEFBD0
; =========================================================

EFB5A:  PUSH            {R4-R7,LR}
EFB5C:  ADD             R7, SP, #0xC
EFB5E:  PUSH.W          {R11}
EFB62:  SUB             SP, SP, #8
EFB64:  MOV             R4, R0
EFB66:  LDRB            R0, [R0,#4]
EFB68:  CBZ             R0, loc_EFBB6
EFB6A:  LDRD.W          R5, R1, [R4,#8]
EFB6E:  MOVS            R6, #0x50 ; 'P'
EFB70:  LDR             R1, [R1,#8]
EFB72:  LDRD.W          R0, R2, [R5,#8]
EFB76:  CMP             R1, #0xC
EFB78:  IT LT
EFB7A:  MOVLT           R6, #0x41 ; 'A'
EFB7C:  ADDS            R1, R0, #1
EFB7E:  CMP             R2, R1
EFB80:  BCS             loc_EFB8E
EFB82:  LDR             R0, [R5]
EFB84:  LDR             R2, [R0]
EFB86:  MOV             R0, R5
EFB88:  BLX             R2
EFB8A:  LDR             R0, [R5,#8]
EFB8C:  ADDS            R1, R0, #1
EFB8E:  LDR             R2, [R5,#4]
EFB90:  STR             R1, [R5,#8]
EFB92:  STRB            R6, [R2,R0]
EFB94:  LDR             R4, [R4,#8]
EFB96:  LDRD.W          R0, R2, [R4,#8]
EFB9A:  ADDS            R1, R0, #1
EFB9C:  CMP             R2, R1
EFB9E:  BCS             loc_EFBAC
EFBA0:  LDR             R0, [R4]
EFBA2:  LDR             R2, [R0]
EFBA4:  MOV             R0, R4
EFBA6:  BLX             R2
EFBA8:  LDR             R0, [R4,#8]
EFBAA:  ADDS            R1, R0, #1
EFBAC:  LDR             R2, [R4,#4]
EFBAE:  STR             R1, [R4,#8]
EFBB0:  MOVS            R1, #0x4D ; 'M'
EFBB2:  STRB            R1, [R2,R0]
EFBB4:  B               loc_EFBC8
EFBB6:  LDR             R2, [R4]
EFBB8:  MOVS            R3, #0
EFBBA:  LDRD.W          R0, R1, [R4,#8]
EFBBE:  STR             R3, [SP,#0x18+var_18]
EFBC0:  MOVS            R3, #0x70 ; 'p'
EFBC2:  BL              sub_EFCE0
EFBC6:  STR             R0, [R4,#8]
EFBC8:  ADD             SP, SP, #8
EFBCA:  POP.W           {R11}
EFBCE:  POP             {R4-R7,PC}
