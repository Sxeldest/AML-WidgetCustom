; =========================================================
; Game Engine Function: sub_EA882
; Address            : 0xEA882 - 0xEAA3A
; =========================================================

EA882:  PUSH            {R4-R7,LR}
EA884:  ADD             R7, SP, #0xC
EA886:  PUSH.W          {R11}
EA88A:  SUB             SP, SP, #0x48
EA88C:  MOV             R5, R1
EA88E:  MOV             R4, R0
EA890:  LDRD.W          R0, R1, [R1,#0x10]
EA894:  SUBS            R1, #1
EA896:  LSRS            R2, R1, #5
EA898:  AND.W           R1, R1, #0x1F
EA89C:  LDR.W           R0, [R0,R2,LSL#2]
EA8A0:  LSRS            R0, R1
EA8A2:  LSLS            R0, R0, #0x1F
EA8A4:  BEQ             loc_EA906
EA8A6:  MOVS            R0, #0
EA8A8:  STR             R0, [SP,#0x58+var_30]
EA8AA:  STRB.W          R0, [SP,#0x58+var_38]
EA8AE:  CBNZ            R3, loc_EA8C8
EA8B0:  LDRD.W          R1, R2, [R5,#4]
EA8B4:  SUBS            R1, R2, R1
EA8B6:  ADD.W           R0, R5, #0x30 ; '0'
EA8BA:  ADD             R3, SP, #0x58+var_38
EA8BC:  MOVS            R2, #5
EA8BE:  ASRS            R1, R1, #2
EA8C0:  BL              sub_E9460
EA8C4:  CMP             R0, #0
EA8C6:  BEQ             loc_EA9A2
EA8C8:  LDRD.W          R1, R0, [R5,#4]
EA8CC:  CMP             R1, R0
EA8CE:  BEQ             loc_EA90E
EA8D0:  LDR.W           R0, [R0,#-4]
EA8D4:  CMP             R0, #0
EA8D6:  BEQ             loc_EA9A2
EA8D8:  LDRB            R1, [R0]
EA8DA:  CMP             R1, #2
EA8DC:  BNE             loc_EA94A
EA8DE:  LDR             R6, [R0,#8]
EA8E0:  LDRD.W          R0, R3, [R6,#4]
EA8E4:  CMP             R0, R3
EA8E6:  BCS             loc_EA9AA
EA8E8:  LDRB.W          R1, [SP,#0x58+var_38]
EA8EC:  STRB            R1, [R0]
EA8EE:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EA8F2:  STRD.W          R1, R2, [R0,#8]
EA8F6:  MOVS            R1, #0
EA8F8:  STRD.W          R1, R1, [SP,#0x58+var_30]
EA8FC:  ADDS            R0, #0x10
EA8FE:  STR             R0, [R6,#4]
EA900:  STRB.W          R1, [SP,#0x58+var_38]
EA904:  B               loc_EAA14
EA906:  MOVS            R0, #0
EA908:  STR             R0, [R4,#4]
EA90A:  STRB            R0, [R4]
EA90C:  B               loc_EAA2C
EA90E:  LDR             R2, [SP,#0x58+var_2C]
EA910:  MOVS            R6, #0
EA912:  LDR             R3, [R5]
EA914:  LDR             R0, [SP,#0x58+var_30]
EA916:  LDRB.W          R1, [SP,#0x58+var_38]
EA91A:  STRD.W          R6, R6, [SP,#0x58+var_30]
EA91E:  STRD.W          R0, R2, [SP,#0x58+var_40]
EA922:  STRB.W          R6, [SP,#0x58+var_38]
EA926:  LDRB            R0, [R3]
EA928:  STRB            R1, [R3]
EA92A:  STRB.W          R0, [SP,#0x58+var_48]
EA92E:  ADD             R0, SP, #0x58+var_48
EA930:  LDRD.W          R12, R2, [R3,#8]
EA934:  LDRD.W          R1, R6, [SP,#0x58+var_40]
EA938:  STRD.W          R1, R6, [R3,#8]
EA93C:  STRD.W          R12, R2, [SP,#0x58+var_40]
EA940:  BL              sub_E3F7A
EA944:  MOVS            R0, #1
EA946:  LDR             R1, [R5]
EA948:  B               loc_EA99C
EA94A:  LDRD.W          R0, R1, [R5,#0x1C]
EA94E:  SUBS            R1, #1
EA950:  LSRS            R2, R1, #5
EA952:  LDR.W           R0, [R0,R2,LSL#2]
EA956:  STR             R1, [R5,#0x20]
EA958:  AND.W           R1, R1, #0x1F
EA95C:  LSRS            R0, R1
EA95E:  LSLS            R0, R0, #0x1F
EA960:  BEQ             loc_EA9A2
EA962:  LDR             R2, [SP,#0x58+var_2C]
EA964:  MOVS            R6, #0
EA966:  LDR             R3, [R5,#0x28]
EA968:  LDR             R0, [SP,#0x58+var_30]
EA96A:  LDRB.W          R1, [SP,#0x58+var_38]
EA96E:  STRD.W          R6, R6, [SP,#0x58+var_30]
EA972:  STRD.W          R0, R2, [SP,#0x58+var_50]
EA976:  STRB.W          R6, [SP,#0x58+var_38]
EA97A:  LDRB            R0, [R3]
EA97C:  STRB            R1, [R3]
EA97E:  STRB.W          R0, [SP,#0x58+var_58]
EA982:  MOV             R0, SP
EA984:  LDRD.W          R12, R2, [R3,#8]
EA988:  LDRD.W          R1, R6, [SP,#0x58+var_50]
EA98C:  STRD.W          R1, R6, [R3,#8]
EA990:  STRD.W          R12, R2, [SP,#0x58+var_50]
EA994:  BL              sub_E3F7A
EA998:  LDR             R1, [R5,#0x28]
EA99A:  MOVS            R0, #1
EA99C:  STRB            R0, [R4]
EA99E:  STR             R1, [R4,#4]
EA9A0:  B               loc_EAA26
EA9A2:  MOVS            R0, #0
EA9A4:  STR             R0, [R4,#4]
EA9A6:  STRB            R0, [R4]
EA9A8:  B               loc_EAA26
EA9AA:  LDR.W           R12, [R6]
EA9AE:  MOVS            R1, #1
EA9B0:  SUB.W           R0, R0, R12
EA9B4:  ADD.W           R1, R1, R0,ASR#4
EA9B8:  CMP.W           R1, #0x10000000
EA9BC:  BCS             loc_EAA34
EA9BE:  ASRS            R2, R0, #4
EA9C0:  SUB.W           R0, R3, R12
EA9C4:  MOVW            R3, #0xFFF0
EA9C8:  CMP.W           R1, R0,ASR#3
EA9CC:  IT LS
EA9CE:  ASRLS           R1, R0, #3
EA9D0:  MOVT            R3, #0x7FFF
EA9D4:  CMP             R0, R3
EA9D6:  IT CS
EA9D8:  MOVCS           R1, #0xFFFFFFF
EA9DC:  ADD.W           R3, R6, #8
EA9E0:  ADD             R0, SP, #0x58+var_24
EA9E2:  BL              sub_E5D88
EA9E6:  LDR             R0, [SP,#0x58+var_1C]
EA9E8:  LDRB.W          R1, [SP,#0x58+var_38]
EA9EC:  STRB            R1, [R0]
EA9EE:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EA9F2:  STRD.W          R1, R2, [R0,#8]
EA9F6:  MOVS            R1, #0
EA9F8:  LDR             R0, [SP,#0x58+var_1C]
EA9FA:  STRB.W          R1, [SP,#0x58+var_38]
EA9FE:  ADDS            R0, #0x10
EAA00:  STRD.W          R1, R1, [SP,#0x58+var_30]
EAA04:  STR             R0, [SP,#0x58+var_1C]
EAA06:  ADD             R1, SP, #0x58+var_24
EAA08:  MOV             R0, R6
EAA0A:  BL              sub_E5DD0
EAA0E:  ADD             R0, SP, #0x58+var_24
EAA10:  BL              sub_E5E26
EAA14:  LDR             R0, [R5,#8]
EAA16:  MOVS            R1, #1
EAA18:  STRB            R1, [R4]
EAA1A:  LDR.W           R0, [R0,#-4]
EAA1E:  LDR             R0, [R0,#8]
EAA20:  LDR             R0, [R0,#4]
EAA22:  SUBS            R0, #0x10
EAA24:  STR             R0, [R4,#4]
EAA26:  ADD             R0, SP, #0x58+var_38
EAA28:  BL              sub_E3F7A
EAA2C:  ADD             SP, SP, #0x48 ; 'H'
EAA2E:  POP.W           {R11}
EAA32:  POP             {R4-R7,PC}
EAA34:  MOV             R0, R6
EAA36:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
