; =========================================================
; Game Engine Function: sub_EAE24
; Address            : 0xEAE24 - 0xEAFEA
; =========================================================

EAE24:  PUSH            {R4-R7,LR}
EAE26:  ADD             R7, SP, #0xC
EAE28:  PUSH.W          {R11}
EAE2C:  SUB             SP, SP, #0x48
EAE2E:  MOV             R5, R1
EAE30:  MOV             R4, R0
EAE32:  LDRD.W          R0, R1, [R1,#0x10]
EAE36:  MOV             R6, R3
EAE38:  SUBS            R1, #1
EAE3A:  LSRS            R3, R1, #5
EAE3C:  AND.W           R1, R1, #0x1F
EAE40:  LDR.W           R0, [R0,R3,LSL#2]
EAE44:  LSRS            R0, R1
EAE46:  LSLS            R0, R0, #0x1F
EAE48:  BEQ             loc_EAEB6
EAE4A:  MOVS            R0, #0
EAE4C:  LDRD.W          R2, R3, [R2]
EAE50:  STRD.W          R0, R0, [SP,#0x58+var_30]
EAE54:  STRB.W          R0, [SP,#0x58+var_38]
EAE58:  ADD             R0, SP, #0x58+var_38
EAE5A:  BL              sub_EAFFC
EAE5E:  CBNZ            R6, loc_EAE78
EAE60:  LDRD.W          R1, R2, [R5,#4]
EAE64:  SUBS            R1, R2, R1
EAE66:  ADD.W           R0, R5, #0x30 ; '0'
EAE6A:  ADD             R3, SP, #0x58+var_38
EAE6C:  MOVS            R2, #5
EAE6E:  ASRS            R1, R1, #2
EAE70:  BL              sub_E9460
EAE74:  CMP             R0, #0
EAE76:  BEQ             loc_EAF52
EAE78:  LDRD.W          R1, R0, [R5,#4]
EAE7C:  CMP             R1, R0
EAE7E:  BEQ             loc_EAEBE
EAE80:  LDR.W           R0, [R0,#-4]
EAE84:  CMP             R0, #0
EAE86:  BEQ             loc_EAF52
EAE88:  LDRB            R1, [R0]
EAE8A:  CMP             R1, #2
EAE8C:  BNE             loc_EAEFA
EAE8E:  LDR             R6, [R0,#8]
EAE90:  LDRD.W          R0, R3, [R6,#4]
EAE94:  CMP             R0, R3
EAE96:  BCS             loc_EAF5A
EAE98:  LDRB.W          R1, [SP,#0x58+var_38]
EAE9C:  STRB            R1, [R0]
EAE9E:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EAEA2:  STRD.W          R1, R2, [R0,#8]
EAEA6:  MOVS            R1, #0
EAEA8:  STRD.W          R1, R1, [SP,#0x58+var_30]
EAEAC:  ADDS            R0, #0x10
EAEAE:  STR             R0, [R6,#4]
EAEB0:  STRB.W          R1, [SP,#0x58+var_38]
EAEB4:  B               loc_EAFC4
EAEB6:  MOVS            R0, #0
EAEB8:  STR             R0, [R4,#4]
EAEBA:  STRB            R0, [R4]
EAEBC:  B               loc_EAFDC
EAEBE:  LDR             R2, [SP,#0x58+var_2C]
EAEC0:  MOVS            R6, #0
EAEC2:  LDR             R3, [R5]
EAEC4:  LDR             R0, [SP,#0x58+var_30]
EAEC6:  LDRB.W          R1, [SP,#0x58+var_38]
EAECA:  STRD.W          R6, R6, [SP,#0x58+var_30]
EAECE:  STRD.W          R0, R2, [SP,#0x58+var_40]
EAED2:  STRB.W          R6, [SP,#0x58+var_38]
EAED6:  LDRB            R0, [R3]
EAED8:  STRB            R1, [R3]
EAEDA:  STRB.W          R0, [SP,#0x58+var_48]
EAEDE:  ADD             R0, SP, #0x58+var_48
EAEE0:  LDRD.W          R12, R2, [R3,#8]
EAEE4:  LDRD.W          R1, R6, [SP,#0x58+var_40]
EAEE8:  STRD.W          R1, R6, [R3,#8]
EAEEC:  STRD.W          R12, R2, [SP,#0x58+var_40]
EAEF0:  BL              sub_E3F7A
EAEF4:  MOVS            R0, #1
EAEF6:  LDR             R1, [R5]
EAEF8:  B               loc_EAF4C
EAEFA:  LDRD.W          R0, R1, [R5,#0x1C]
EAEFE:  SUBS            R1, #1
EAF00:  LSRS            R2, R1, #5
EAF02:  LDR.W           R0, [R0,R2,LSL#2]
EAF06:  STR             R1, [R5,#0x20]
EAF08:  AND.W           R1, R1, #0x1F
EAF0C:  LSRS            R0, R1
EAF0E:  LSLS            R0, R0, #0x1F
EAF10:  BEQ             loc_EAF52
EAF12:  LDR             R2, [SP,#0x58+var_2C]
EAF14:  MOVS            R6, #0
EAF16:  LDR             R3, [R5,#0x28]
EAF18:  LDR             R0, [SP,#0x58+var_30]
EAF1A:  LDRB.W          R1, [SP,#0x58+var_38]
EAF1E:  STRD.W          R6, R6, [SP,#0x58+var_30]
EAF22:  STRD.W          R0, R2, [SP,#0x58+var_50]
EAF26:  STRB.W          R6, [SP,#0x58+var_38]
EAF2A:  LDRB            R0, [R3]
EAF2C:  STRB            R1, [R3]
EAF2E:  STRB.W          R0, [SP,#0x58+var_58]
EAF32:  MOV             R0, SP
EAF34:  LDRD.W          R12, R2, [R3,#8]
EAF38:  LDRD.W          R1, R6, [SP,#0x58+var_50]
EAF3C:  STRD.W          R1, R6, [R3,#8]
EAF40:  STRD.W          R12, R2, [SP,#0x58+var_50]
EAF44:  BL              sub_E3F7A
EAF48:  LDR             R1, [R5,#0x28]
EAF4A:  MOVS            R0, #1
EAF4C:  STRB            R0, [R4]
EAF4E:  STR             R1, [R4,#4]
EAF50:  B               loc_EAFD6
EAF52:  MOVS            R0, #0
EAF54:  STR             R0, [R4,#4]
EAF56:  STRB            R0, [R4]
EAF58:  B               loc_EAFD6
EAF5A:  LDR.W           R12, [R6]
EAF5E:  MOVS            R1, #1
EAF60:  SUB.W           R0, R0, R12
EAF64:  ADD.W           R1, R1, R0,ASR#4
EAF68:  CMP.W           R1, #0x10000000
EAF6C:  BCS             loc_EAFE4
EAF6E:  ASRS            R2, R0, #4
EAF70:  SUB.W           R0, R3, R12
EAF74:  MOVW            R3, #0xFFF0
EAF78:  CMP.W           R1, R0,ASR#3
EAF7C:  IT LS
EAF7E:  ASRLS           R1, R0, #3
EAF80:  MOVT            R3, #0x7FFF
EAF84:  CMP             R0, R3
EAF86:  IT CS
EAF88:  MOVCS           R1, #0xFFFFFFF
EAF8C:  ADD.W           R3, R6, #8
EAF90:  ADD             R0, SP, #0x58+var_24
EAF92:  BL              sub_E5D88
EAF96:  LDR             R0, [SP,#0x58+var_1C]
EAF98:  LDRB.W          R1, [SP,#0x58+var_38]
EAF9C:  STRB            R1, [R0]
EAF9E:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EAFA2:  STRD.W          R1, R2, [R0,#8]
EAFA6:  MOVS            R1, #0
EAFA8:  LDR             R0, [SP,#0x58+var_1C]
EAFAA:  STRB.W          R1, [SP,#0x58+var_38]
EAFAE:  ADDS            R0, #0x10
EAFB0:  STRD.W          R1, R1, [SP,#0x58+var_30]
EAFB4:  STR             R0, [SP,#0x58+var_1C]
EAFB6:  ADD             R1, SP, #0x58+var_24
EAFB8:  MOV             R0, R6
EAFBA:  BL              sub_E5DD0
EAFBE:  ADD             R0, SP, #0x58+var_24
EAFC0:  BL              sub_E5E26
EAFC4:  LDR             R0, [R5,#8]
EAFC6:  MOVS            R1, #1
EAFC8:  STRB            R1, [R4]
EAFCA:  LDR.W           R0, [R0,#-4]
EAFCE:  LDR             R0, [R0,#8]
EAFD0:  LDR             R0, [R0,#4]
EAFD2:  SUBS            R0, #0x10
EAFD4:  STR             R0, [R4,#4]
EAFD6:  ADD             R0, SP, #0x58+var_38
EAFD8:  BL              sub_E3F7A
EAFDC:  ADD             SP, SP, #0x48 ; 'H'
EAFDE:  POP.W           {R11}
EAFE2:  POP             {R4-R7,PC}
EAFE4:  MOV             R0, R6
EAFE6:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
