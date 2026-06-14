; =========================================================
; Game Engine Function: sub_EBAC2
; Address            : 0xEBAC2 - 0xEBB64
; =========================================================

EBAC2:  PUSH            {R4-R7,LR}
EBAC4:  ADD             R7, SP, #0xC
EBAC6:  PUSH.W          {R11}
EBACA:  SUB             SP, SP, #0x18
EBACC:  MOV             R4, R0
EBACE:  LDRD.W          R6, R0, [R0,#4]
EBAD2:  MOV             R5, R1
EBAD4:  CMP             R6, R0
EBAD6:  BCS             loc_EBAF2
EBAD8:  MOVS            R0, #0
EBADA:  STR             R0, [R6,#8]
EBADC:  LDR             R2, [R5]
EBADE:  STR             R0, [R6,#0xC]
EBAE0:  LDR             R3, [R5,#4]
EBAE2:  STRB            R0, [R6]
EBAE4:  MOV             R0, R6
EBAE6:  BL              sub_EAC24
EBAEA:  ADD.W           R0, R6, #0x10
EBAEE:  STR             R0, [R4,#4]
EBAF0:  B               loc_EBB54
EBAF2:  LDR             R3, [R4]
EBAF4:  MOVS            R1, #1
EBAF6:  SUBS            R2, R6, R3
EBAF8:  ADD.W           R1, R1, R2,ASR#4
EBAFC:  CMP.W           R1, #0x10000000
EBB00:  BCS             loc_EBB5E
EBB02:  SUBS            R0, R0, R3
EBB04:  MOV             R3, #0x7FFFFFF0
EBB0C:  ADD             R6, SP, #0x28+var_24
EBB0E:  CMP.W           R1, R0,ASR#3
EBB12:  IT LS
EBB14:  ASRLS           R1, R0, #3
EBB16:  CMP             R0, R3
EBB18:  ADD.W           R3, R4, #8
EBB1C:  MOV.W           R2, R2,ASR#4
EBB20:  MOV             R0, R6
EBB22:  IT CS
EBB24:  MOVCS           R1, #0xFFFFFFF
EBB28:  BL              sub_E5D88
EBB2C:  LDR             R0, [SP,#0x28+var_1C]
EBB2E:  MOVS            R1, #0
EBB30:  STR             R1, [R0,#8]
EBB32:  LDR             R2, [R5]
EBB34:  STR             R1, [R0,#0xC]
EBB36:  LDR             R3, [R5,#4]
EBB38:  STRB            R1, [R0]
EBB3A:  BL              sub_EAC24
EBB3E:  LDR             R0, [SP,#0x28+var_1C]
EBB40:  ADDS            R0, #0x10
EBB42:  STR             R0, [SP,#0x28+var_1C]
EBB44:  MOV             R0, R4
EBB46:  MOV             R1, R6
EBB48:  BL              sub_E5DD0
EBB4C:  ADD             R0, SP, #0x28+var_24
EBB4E:  BL              sub_E5E26
EBB52:  LDR             R0, [R4,#4]
EBB54:  SUBS            R0, #0x10
EBB56:  ADD             SP, SP, #0x18
EBB58:  POP.W           {R11}
EBB5C:  POP             {R4-R7,PC}
EBB5E:  MOV             R0, R4
EBB60:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
