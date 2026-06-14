; =========================================================
; Game Engine Function: sub_EBD6C
; Address            : 0xEBD6C - 0xEBE0E
; =========================================================

EBD6C:  PUSH            {R4-R7,LR}
EBD6E:  ADD             R7, SP, #0xC
EBD70:  PUSH.W          {R11}
EBD74:  SUB             SP, SP, #0x18
EBD76:  MOV             R4, R0
EBD78:  LDRD.W          R6, R0, [R0,#4]
EBD7C:  MOV             R5, R1
EBD7E:  CMP             R6, R0
EBD80:  BCS             loc_EBD9C
EBD82:  MOVS            R0, #0
EBD84:  STR             R0, [R6,#8]
EBD86:  LDR             R2, [R5]
EBD88:  STR             R0, [R6,#0xC]
EBD8A:  LDR             R3, [R5,#4]
EBD8C:  STRB            R0, [R6]
EBD8E:  MOV             R0, R6
EBD90:  BL              sub_EAFFC
EBD94:  ADD.W           R0, R6, #0x10
EBD98:  STR             R0, [R4,#4]
EBD9A:  B               loc_EBDFE
EBD9C:  LDR             R3, [R4]
EBD9E:  MOVS            R1, #1
EBDA0:  SUBS            R2, R6, R3
EBDA2:  ADD.W           R1, R1, R2,ASR#4
EBDA6:  CMP.W           R1, #0x10000000
EBDAA:  BCS             loc_EBE08
EBDAC:  SUBS            R0, R0, R3
EBDAE:  MOV             R3, #0x7FFFFFF0
EBDB6:  ADD             R6, SP, #0x28+var_24
EBDB8:  CMP.W           R1, R0,ASR#3
EBDBC:  IT LS
EBDBE:  ASRLS           R1, R0, #3
EBDC0:  CMP             R0, R3
EBDC2:  ADD.W           R3, R4, #8
EBDC6:  MOV.W           R2, R2,ASR#4
EBDCA:  MOV             R0, R6
EBDCC:  IT CS
EBDCE:  MOVCS           R1, #0xFFFFFFF
EBDD2:  BL              sub_E5D88
EBDD6:  LDR             R0, [SP,#0x28+var_1C]
EBDD8:  MOVS            R1, #0
EBDDA:  STR             R1, [R0,#8]
EBDDC:  LDR             R2, [R5]
EBDDE:  STR             R1, [R0,#0xC]
EBDE0:  LDR             R3, [R5,#4]
EBDE2:  STRB            R1, [R0]
EBDE4:  BL              sub_EAFFC
EBDE8:  LDR             R0, [SP,#0x28+var_1C]
EBDEA:  ADDS            R0, #0x10
EBDEC:  STR             R0, [SP,#0x28+var_1C]
EBDEE:  MOV             R0, R4
EBDF0:  MOV             R1, R6
EBDF2:  BL              sub_E5DD0
EBDF6:  ADD             R0, SP, #0x28+var_24
EBDF8:  BL              sub_E5E26
EBDFC:  LDR             R0, [R4,#4]
EBDFE:  SUBS            R0, #0x10
EBE00:  ADD             SP, SP, #0x18
EBE02:  POP.W           {R11}
EBE06:  POP             {R4-R7,PC}
EBE08:  MOV             R0, R4
EBE0A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
