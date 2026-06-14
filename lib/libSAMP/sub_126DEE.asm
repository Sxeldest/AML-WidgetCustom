; =========================================================
; Game Engine Function: sub_126DEE
; Address            : 0x126DEE - 0x126EB8
; =========================================================

126DEE:  PUSH            {R4-R7,LR}
126DF0:  ADD             R7, SP, #0xC
126DF2:  PUSH.W          {R8}
126DF6:  SUB             SP, SP, #0x18
126DF8:  MOV             R4, R0
126DFA:  LDRD.W          R5, R0, [R0]
126DFE:  MOVW            R12, #0xAAAB
126E02:  MOV             R8, R1
126E04:  SUBS            R0, R0, R5
126E06:  MOVT            R12, #0xAAAA
126E0A:  MOVW            R1, #0x5555
126E0E:  ASRS            R0, R0, #2
126E10:  MOVT            R1, #0x1555
126E14:  MUL.W           R2, R0, R12
126E18:  ADDS            R0, R2, #1
126E1A:  CMP             R0, R1
126E1C:  BHI             loc_126EB2
126E1E:  MOV             R3, R4
126E20:  LDR.W           R6, [R3,#8]!
126E24:  SUBS            R6, R6, R5
126E26:  MOV             R5, #0xAAAAAAA
126E2E:  ASRS            R6, R6, #2
126E30:  MUL.W           R6, R6, R12
126E34:  CMP.W           R0, R6,LSL#1
126E38:  IT LS
126E3A:  LSLLS           R0, R6, #1
126E3C:  CMP             R6, R5
126E3E:  IT CC
126E40:  MOVCC           R1, R0
126E42:  ADD             R0, SP, #0x28+var_24
126E44:  BL              sub_F4C90
126E48:  LDR             R0, [SP,#0x28+var_1C]
126E4A:  MOV             R1, R8
126E4C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
126E50:  LDRD.W          R1, R3, [SP,#0x28+var_20]
126E54:  LDRD.W          R0, R2, [R4]
126E58:  ADDS            R3, #0xC
126E5A:  STR             R3, [SP,#0x28+var_1C]
126E5C:  CMP             R2, R0
126E5E:  BEQ             loc_126E90
126E60:  MOVS            R3, #0
126E62:  VLDR            D16, [R2,#-0xC]
126E66:  LDR.W           R6, [R2,#-4]
126E6A:  STR.W           R6, [R1,#-4]
126E6E:  VSTR            D16, [R1,#-0xC]
126E72:  STRD.W          R3, R3, [R2,#-0xC]
126E76:  STR.W           R3, [R2,#-4]
126E7A:  SUBS            R2, #0xC
126E7C:  LDR             R1, [SP,#0x28+var_20]
126E7E:  CMP             R2, R0
126E80:  SUB.W           R1, R1, #0xC
126E84:  STR             R1, [SP,#0x28+var_20]
126E86:  BNE             loc_126E62
126E88:  LDR             R3, [SP,#0x28+var_1C]
126E8A:  LDRD.W          R2, R0, [R4]
126E8E:  B               loc_126E92
126E90:  MOV             R2, R0
126E92:  STR             R1, [R4]
126E94:  LDR             R1, [R4,#8]
126E96:  LDR             R6, [SP,#0x28+var_18]
126E98:  STRD.W          R2, R2, [SP,#0x28+var_24]
126E9C:  STRD.W          R0, R1, [SP,#0x28+var_1C]
126EA0:  ADD             R0, SP, #0x28+var_24
126EA2:  STRD.W          R3, R6, [R4,#4]
126EA6:  BL              sub_F4CE8
126EAA:  ADD             SP, SP, #0x18
126EAC:  POP.W           {R8}
126EB0:  POP             {R4-R7,PC}
126EB2:  MOV             R0, R4
126EB4:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
