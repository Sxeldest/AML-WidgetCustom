; =========================================================
; Game Engine Function: sub_EAC4C
; Address            : 0xEAC4C - 0xEAE12
; =========================================================

EAC4C:  PUSH            {R4-R7,LR}
EAC4E:  ADD             R7, SP, #0xC
EAC50:  PUSH.W          {R11}
EAC54:  SUB             SP, SP, #0x48
EAC56:  MOV             R5, R1
EAC58:  MOV             R4, R0
EAC5A:  LDRD.W          R0, R1, [R1,#0x10]
EAC5E:  MOV             R6, R3
EAC60:  SUBS            R1, #1
EAC62:  LSRS            R3, R1, #5
EAC64:  AND.W           R1, R1, #0x1F
EAC68:  LDR.W           R0, [R0,R3,LSL#2]
EAC6C:  LSRS            R0, R1
EAC6E:  LSLS            R0, R0, #0x1F
EAC70:  BEQ             loc_EACDE
EAC72:  MOVS            R0, #0
EAC74:  STRD.W          R0, R0, [SP,#0x58+var_30]
EAC78:  MOVS            R0, #3
EAC7A:  STRB.W          R0, [SP,#0x58+var_38]
EAC7E:  MOV             R0, R2
EAC80:  BL              sub_EA114
EAC84:  STR             R0, [SP,#0x58+var_30]
EAC86:  CBNZ            R6, loc_EACA0
EAC88:  LDRD.W          R1, R2, [R5,#4]
EAC8C:  SUBS            R1, R2, R1
EAC8E:  ADD.W           R0, R5, #0x30 ; '0'
EAC92:  ADD             R3, SP, #0x58+var_38
EAC94:  MOVS            R2, #5
EAC96:  ASRS            R1, R1, #2
EAC98:  BL              sub_E9460
EAC9C:  CMP             R0, #0
EAC9E:  BEQ             loc_EAD7A
EACA0:  LDRD.W          R1, R0, [R5,#4]
EACA4:  CMP             R1, R0
EACA6:  BEQ             loc_EACE6
EACA8:  LDR.W           R0, [R0,#-4]
EACAC:  CMP             R0, #0
EACAE:  BEQ             loc_EAD7A
EACB0:  LDRB            R1, [R0]
EACB2:  CMP             R1, #2
EACB4:  BNE             loc_EAD22
EACB6:  LDR             R6, [R0,#8]
EACB8:  LDRD.W          R0, R3, [R6,#4]
EACBC:  CMP             R0, R3
EACBE:  BCS             loc_EAD82
EACC0:  LDRB.W          R1, [SP,#0x58+var_38]
EACC4:  STRB            R1, [R0]
EACC6:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EACCA:  STRD.W          R1, R2, [R0,#8]
EACCE:  MOVS            R1, #0
EACD0:  STRD.W          R1, R1, [SP,#0x58+var_30]
EACD4:  ADDS            R0, #0x10
EACD6:  STR             R0, [R6,#4]
EACD8:  STRB.W          R1, [SP,#0x58+var_38]
EACDC:  B               loc_EADEC
EACDE:  MOVS            R0, #0
EACE0:  STR             R0, [R4,#4]
EACE2:  STRB            R0, [R4]
EACE4:  B               loc_EAE04
EACE6:  LDR             R2, [SP,#0x58+var_2C]
EACE8:  MOVS            R6, #0
EACEA:  LDR             R3, [R5]
EACEC:  LDR             R0, [SP,#0x58+var_30]
EACEE:  LDRB.W          R1, [SP,#0x58+var_38]
EACF2:  STRD.W          R6, R6, [SP,#0x58+var_30]
EACF6:  STRD.W          R0, R2, [SP,#0x58+var_40]
EACFA:  STRB.W          R6, [SP,#0x58+var_38]
EACFE:  LDRB            R0, [R3]
EAD00:  STRB            R1, [R3]
EAD02:  STRB.W          R0, [SP,#0x58+var_48]
EAD06:  ADD             R0, SP, #0x58+var_48
EAD08:  LDRD.W          R12, R2, [R3,#8]
EAD0C:  LDRD.W          R1, R6, [SP,#0x58+var_40]
EAD10:  STRD.W          R1, R6, [R3,#8]
EAD14:  STRD.W          R12, R2, [SP,#0x58+var_40]
EAD18:  BL              sub_E3F7A
EAD1C:  MOVS            R0, #1
EAD1E:  LDR             R1, [R5]
EAD20:  B               loc_EAD74
EAD22:  LDRD.W          R0, R1, [R5,#0x1C]
EAD26:  SUBS            R1, #1
EAD28:  LSRS            R2, R1, #5
EAD2A:  LDR.W           R0, [R0,R2,LSL#2]
EAD2E:  STR             R1, [R5,#0x20]
EAD30:  AND.W           R1, R1, #0x1F
EAD34:  LSRS            R0, R1
EAD36:  LSLS            R0, R0, #0x1F
EAD38:  BEQ             loc_EAD7A
EAD3A:  LDR             R2, [SP,#0x58+var_2C]
EAD3C:  MOVS            R6, #0
EAD3E:  LDR             R3, [R5,#0x28]
EAD40:  LDR             R0, [SP,#0x58+var_30]
EAD42:  LDRB.W          R1, [SP,#0x58+var_38]
EAD46:  STRD.W          R6, R6, [SP,#0x58+var_30]
EAD4A:  STRD.W          R0, R2, [SP,#0x58+var_50]
EAD4E:  STRB.W          R6, [SP,#0x58+var_38]
EAD52:  LDRB            R0, [R3]
EAD54:  STRB            R1, [R3]
EAD56:  STRB.W          R0, [SP,#0x58+var_58]
EAD5A:  MOV             R0, SP
EAD5C:  LDRD.W          R12, R2, [R3,#8]
EAD60:  LDRD.W          R1, R6, [SP,#0x58+var_50]
EAD64:  STRD.W          R1, R6, [R3,#8]
EAD68:  STRD.W          R12, R2, [SP,#0x58+var_50]
EAD6C:  BL              sub_E3F7A
EAD70:  LDR             R1, [R5,#0x28]
EAD72:  MOVS            R0, #1
EAD74:  STRB            R0, [R4]
EAD76:  STR             R1, [R4,#4]
EAD78:  B               loc_EADFE
EAD7A:  MOVS            R0, #0
EAD7C:  STR             R0, [R4,#4]
EAD7E:  STRB            R0, [R4]
EAD80:  B               loc_EADFE
EAD82:  LDR.W           R12, [R6]
EAD86:  MOVS            R1, #1
EAD88:  SUB.W           R0, R0, R12
EAD8C:  ADD.W           R1, R1, R0,ASR#4
EAD90:  CMP.W           R1, #0x10000000
EAD94:  BCS             loc_EAE0C
EAD96:  ASRS            R2, R0, #4
EAD98:  SUB.W           R0, R3, R12
EAD9C:  MOVW            R3, #0xFFF0
EADA0:  CMP.W           R1, R0,ASR#3
EADA4:  IT LS
EADA6:  ASRLS           R1, R0, #3
EADA8:  MOVT            R3, #0x7FFF
EADAC:  CMP             R0, R3
EADAE:  IT CS
EADB0:  MOVCS           R1, #0xFFFFFFF
EADB4:  ADD.W           R3, R6, #8
EADB8:  ADD             R0, SP, #0x58+var_24
EADBA:  BL              sub_E5D88
EADBE:  LDR             R0, [SP,#0x58+var_1C]
EADC0:  LDRB.W          R1, [SP,#0x58+var_38]
EADC4:  STRB            R1, [R0]
EADC6:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EADCA:  STRD.W          R1, R2, [R0,#8]
EADCE:  MOVS            R1, #0
EADD0:  LDR             R0, [SP,#0x58+var_1C]
EADD2:  STRB.W          R1, [SP,#0x58+var_38]
EADD6:  ADDS            R0, #0x10
EADD8:  STRD.W          R1, R1, [SP,#0x58+var_30]
EADDC:  STR             R0, [SP,#0x58+var_1C]
EADDE:  ADD             R1, SP, #0x58+var_24
EADE0:  MOV             R0, R6
EADE2:  BL              sub_E5DD0
EADE6:  ADD             R0, SP, #0x58+var_24
EADE8:  BL              sub_E5E26
EADEC:  LDR             R0, [R5,#8]
EADEE:  MOVS            R1, #1
EADF0:  STRB            R1, [R4]
EADF2:  LDR.W           R0, [R0,#-4]
EADF6:  LDR             R0, [R0,#8]
EADF8:  LDR             R0, [R0,#4]
EADFA:  SUBS            R0, #0x10
EADFC:  STR             R0, [R4,#4]
EADFE:  ADD             R0, SP, #0x58+var_38
EAE00:  BL              sub_E3F7A
EAE04:  ADD             SP, SP, #0x48 ; 'H'
EAE06:  POP.W           {R11}
EAE0A:  POP             {R4-R7,PC}
EAE0C:  MOV             R0, R6
EAE0E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
