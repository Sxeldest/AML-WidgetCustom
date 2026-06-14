; =========================================================
; Game Engine Function: sub_EBC06
; Address            : 0xEBC06 - 0xEBCA6
; =========================================================

EBC06:  PUSH            {R4-R7,LR}
EBC08:  ADD             R7, SP, #0xC
EBC0A:  PUSH.W          {R11}
EBC0E:  SUB             SP, SP, #0x18
EBC10:  MOV             R4, R0
EBC12:  LDRD.W          R6, R0, [R0,#4]
EBC16:  MOV             R5, R1
EBC18:  CMP             R6, R0
EBC1A:  BCS             loc_EBC36
EBC1C:  MOVS            R0, #0
EBC1E:  STRD.W          R0, R0, [R6,#8]
EBC22:  MOVS            R0, #3
EBC24:  STRB            R0, [R6]
EBC26:  MOV             R0, R5
EBC28:  BL              sub_EA114
EBC2C:  STR             R0, [R6,#8]
EBC2E:  ADD.W           R0, R6, #0x10
EBC32:  STR             R0, [R4,#4]
EBC34:  B               loc_EBC96
EBC36:  LDR             R3, [R4]
EBC38:  MOVS            R1, #1
EBC3A:  SUBS            R2, R6, R3
EBC3C:  ADD.W           R1, R1, R2,ASR#4
EBC40:  CMP.W           R1, #0x10000000
EBC44:  BCS             loc_EBCA0
EBC46:  SUBS            R0, R0, R3
EBC48:  MOV             R3, #0x7FFFFFF0
EBC50:  ASRS            R2, R2, #4
EBC52:  CMP.W           R1, R0,ASR#3
EBC56:  IT LS
EBC58:  ASRLS           R1, R0, #3
EBC5A:  CMP             R0, R3
EBC5C:  ADD.W           R3, R4, #8
EBC60:  ADD             R0, SP, #0x28+var_24
EBC62:  IT CS
EBC64:  MOVCS           R1, #0xFFFFFFF
EBC68:  BL              sub_E5D88
EBC6C:  LDR             R6, [SP,#0x28+var_1C]
EBC6E:  MOVS            R0, #0
EBC70:  STRD.W          R0, R0, [R6,#8]
EBC74:  MOVS            R0, #3
EBC76:  STRB            R0, [R6]
EBC78:  MOV             R0, R5
EBC7A:  BL              sub_EA114
EBC7E:  STR             R0, [R6,#8]
EBC80:  LDR             R0, [SP,#0x28+var_1C]
EBC82:  ADDS            R0, #0x10
EBC84:  STR             R0, [SP,#0x28+var_1C]
EBC86:  ADD             R1, SP, #0x28+var_24
EBC88:  MOV             R0, R4
EBC8A:  BL              sub_E5DD0
EBC8E:  ADD             R0, SP, #0x28+var_24
EBC90:  BL              sub_E5E26
EBC94:  LDR             R0, [R4,#4]
EBC96:  SUBS            R0, #0x10
EBC98:  ADD             SP, SP, #0x18
EBC9A:  POP.W           {R11}
EBC9E:  POP             {R4-R7,PC}
EBCA0:  MOV             R0, R4
EBCA2:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
