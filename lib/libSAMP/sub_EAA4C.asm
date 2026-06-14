; =========================================================
; Game Engine Function: sub_EAA4C
; Address            : 0xEAA4C - 0xEAC12
; =========================================================

EAA4C:  PUSH            {R4-R7,LR}
EAA4E:  ADD             R7, SP, #0xC
EAA50:  PUSH.W          {R11}
EAA54:  SUB             SP, SP, #0x48
EAA56:  MOV             R5, R1
EAA58:  MOV             R4, R0
EAA5A:  LDRD.W          R0, R1, [R1,#0x10]
EAA5E:  MOV             R6, R3
EAA60:  SUBS            R1, #1
EAA62:  LSRS            R3, R1, #5
EAA64:  AND.W           R1, R1, #0x1F
EAA68:  LDR.W           R0, [R0,R3,LSL#2]
EAA6C:  LSRS            R0, R1
EAA6E:  LSLS            R0, R0, #0x1F
EAA70:  BEQ             loc_EAADE
EAA72:  MOVS            R0, #0
EAA74:  LDRD.W          R2, R3, [R2]
EAA78:  STRD.W          R0, R0, [SP,#0x58+var_30]
EAA7C:  STRB.W          R0, [SP,#0x58+var_38]
EAA80:  ADD             R0, SP, #0x58+var_38
EAA82:  BL              sub_EAC24
EAA86:  CBNZ            R6, loc_EAAA0
EAA88:  LDRD.W          R1, R2, [R5,#4]
EAA8C:  SUBS            R1, R2, R1
EAA8E:  ADD.W           R0, R5, #0x30 ; '0'
EAA92:  ADD             R3, SP, #0x58+var_38
EAA94:  MOVS            R2, #5
EAA96:  ASRS            R1, R1, #2
EAA98:  BL              sub_E9460
EAA9C:  CMP             R0, #0
EAA9E:  BEQ             loc_EAB7A
EAAA0:  LDRD.W          R1, R0, [R5,#4]
EAAA4:  CMP             R1, R0
EAAA6:  BEQ             loc_EAAE6
EAAA8:  LDR.W           R0, [R0,#-4]
EAAAC:  CMP             R0, #0
EAAAE:  BEQ             loc_EAB7A
EAAB0:  LDRB            R1, [R0]
EAAB2:  CMP             R1, #2
EAAB4:  BNE             loc_EAB22
EAAB6:  LDR             R6, [R0,#8]
EAAB8:  LDRD.W          R0, R3, [R6,#4]
EAABC:  CMP             R0, R3
EAABE:  BCS             loc_EAB82
EAAC0:  LDRB.W          R1, [SP,#0x58+var_38]
EAAC4:  STRB            R1, [R0]
EAAC6:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EAACA:  STRD.W          R1, R2, [R0,#8]
EAACE:  MOVS            R1, #0
EAAD0:  STRD.W          R1, R1, [SP,#0x58+var_30]
EAAD4:  ADDS            R0, #0x10
EAAD6:  STR             R0, [R6,#4]
EAAD8:  STRB.W          R1, [SP,#0x58+var_38]
EAADC:  B               loc_EABEC
EAADE:  MOVS            R0, #0
EAAE0:  STR             R0, [R4,#4]
EAAE2:  STRB            R0, [R4]
EAAE4:  B               loc_EAC04
EAAE6:  LDR             R2, [SP,#0x58+var_2C]
EAAE8:  MOVS            R6, #0
EAAEA:  LDR             R3, [R5]
EAAEC:  LDR             R0, [SP,#0x58+var_30]
EAAEE:  LDRB.W          R1, [SP,#0x58+var_38]
EAAF2:  STRD.W          R6, R6, [SP,#0x58+var_30]
EAAF6:  STRD.W          R0, R2, [SP,#0x58+var_40]
EAAFA:  STRB.W          R6, [SP,#0x58+var_38]
EAAFE:  LDRB            R0, [R3]
EAB00:  STRB            R1, [R3]
EAB02:  STRB.W          R0, [SP,#0x58+var_48]
EAB06:  ADD             R0, SP, #0x58+var_48
EAB08:  LDRD.W          R12, R2, [R3,#8]
EAB0C:  LDRD.W          R1, R6, [SP,#0x58+var_40]
EAB10:  STRD.W          R1, R6, [R3,#8]
EAB14:  STRD.W          R12, R2, [SP,#0x58+var_40]
EAB18:  BL              sub_E3F7A
EAB1C:  MOVS            R0, #1
EAB1E:  LDR             R1, [R5]
EAB20:  B               loc_EAB74
EAB22:  LDRD.W          R0, R1, [R5,#0x1C]
EAB26:  SUBS            R1, #1
EAB28:  LSRS            R2, R1, #5
EAB2A:  LDR.W           R0, [R0,R2,LSL#2]
EAB2E:  STR             R1, [R5,#0x20]
EAB30:  AND.W           R1, R1, #0x1F
EAB34:  LSRS            R0, R1
EAB36:  LSLS            R0, R0, #0x1F
EAB38:  BEQ             loc_EAB7A
EAB3A:  LDR             R2, [SP,#0x58+var_2C]
EAB3C:  MOVS            R6, #0
EAB3E:  LDR             R3, [R5,#0x28]
EAB40:  LDR             R0, [SP,#0x58+var_30]
EAB42:  LDRB.W          R1, [SP,#0x58+var_38]
EAB46:  STRD.W          R6, R6, [SP,#0x58+var_30]
EAB4A:  STRD.W          R0, R2, [SP,#0x58+var_50]
EAB4E:  STRB.W          R6, [SP,#0x58+var_38]
EAB52:  LDRB            R0, [R3]
EAB54:  STRB            R1, [R3]
EAB56:  STRB.W          R0, [SP,#0x58+var_58]
EAB5A:  MOV             R0, SP
EAB5C:  LDRD.W          R12, R2, [R3,#8]
EAB60:  LDRD.W          R1, R6, [SP,#0x58+var_50]
EAB64:  STRD.W          R1, R6, [R3,#8]
EAB68:  STRD.W          R12, R2, [SP,#0x58+var_50]
EAB6C:  BL              sub_E3F7A
EAB70:  LDR             R1, [R5,#0x28]
EAB72:  MOVS            R0, #1
EAB74:  STRB            R0, [R4]
EAB76:  STR             R1, [R4,#4]
EAB78:  B               loc_EABFE
EAB7A:  MOVS            R0, #0
EAB7C:  STR             R0, [R4,#4]
EAB7E:  STRB            R0, [R4]
EAB80:  B               loc_EABFE
EAB82:  LDR.W           R12, [R6]
EAB86:  MOVS            R1, #1
EAB88:  SUB.W           R0, R0, R12
EAB8C:  ADD.W           R1, R1, R0,ASR#4
EAB90:  CMP.W           R1, #0x10000000
EAB94:  BCS             loc_EAC0C
EAB96:  ASRS            R2, R0, #4
EAB98:  SUB.W           R0, R3, R12
EAB9C:  MOVW            R3, #0xFFF0
EABA0:  CMP.W           R1, R0,ASR#3
EABA4:  IT LS
EABA6:  ASRLS           R1, R0, #3
EABA8:  MOVT            R3, #0x7FFF
EABAC:  CMP             R0, R3
EABAE:  IT CS
EABB0:  MOVCS           R1, #0xFFFFFFF
EABB4:  ADD.W           R3, R6, #8
EABB8:  ADD             R0, SP, #0x58+var_24
EABBA:  BL              sub_E5D88
EABBE:  LDR             R0, [SP,#0x58+var_1C]
EABC0:  LDRB.W          R1, [SP,#0x58+var_38]
EABC4:  STRB            R1, [R0]
EABC6:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EABCA:  STRD.W          R1, R2, [R0,#8]
EABCE:  MOVS            R1, #0
EABD0:  LDR             R0, [SP,#0x58+var_1C]
EABD2:  STRB.W          R1, [SP,#0x58+var_38]
EABD6:  ADDS            R0, #0x10
EABD8:  STRD.W          R1, R1, [SP,#0x58+var_30]
EABDC:  STR             R0, [SP,#0x58+var_1C]
EABDE:  ADD             R1, SP, #0x58+var_24
EABE0:  MOV             R0, R6
EABE2:  BL              sub_E5DD0
EABE6:  ADD             R0, SP, #0x58+var_24
EABE8:  BL              sub_E5E26
EABEC:  LDR             R0, [R5,#8]
EABEE:  MOVS            R1, #1
EABF0:  STRB            R1, [R4]
EABF2:  LDR.W           R0, [R0,#-4]
EABF6:  LDR             R0, [R0,#8]
EABF8:  LDR             R0, [R0,#4]
EABFA:  SUBS            R0, #0x10
EABFC:  STR             R0, [R4,#4]
EABFE:  ADD             R0, SP, #0x58+var_38
EAC00:  BL              sub_E3F7A
EAC04:  ADD             SP, SP, #0x48 ; 'H'
EAC06:  POP.W           {R11}
EAC0A:  POP             {R4-R7,PC}
EAC0C:  MOV             R0, R6
EAC0E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
