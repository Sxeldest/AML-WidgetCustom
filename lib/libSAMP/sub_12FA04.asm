; =========================================================
; Game Engine Function: sub_12FA04
; Address            : 0x12FA04 - 0x12FAEC
; =========================================================

12FA04:  PUSH            {R4-R7,LR}
12FA06:  ADD             R7, SP, #0xC
12FA08:  PUSH.W          {R8-R11}
12FA0C:  SUB             SP, SP, #0xC
12FA0E:  MOV             R6, R0
12FA10:  LDRB            R0, [R1]
12FA12:  LDR.W           R11, [R1,#4]
12FA16:  LSLS            R2, R0, #0x1F
12FA18:  IT EQ
12FA1A:  MOVEQ.W         R11, R0,LSR#1
12FA1E:  CMP.W           R11, #0
12FA22:  BEQ             loc_12FAD2
12FA24:  MOV             R0, R6
12FA26:  MOVW            R2, #0xAAAB
12FA2A:  LDR.W           R4, [R0,#0x7C]!
12FA2E:  MOVT            R2, #0x2AAA
12FA32:  LDR             R5, [R0,#4]
12FA34:  LDR.W           R12, [R0,#-0x28]
12FA38:  SUBS            R3, R5, R4
12FA3A:  SMMUL.W         R2, R3, R2
12FA3E:  ASRS            R3, R2, #1
12FA40:  ADD.W           R8, R3, R2,LSR#31
12FA44:  CMP             R8, R12
12FA46:  BNE             loc_12FAA2
12FA48:  SUBS.W          R3, R8, #1
12FA4C:  BEQ             loc_12FABA
12FA4E:  MOV.W           R10, #1
12FA52:  MOV.W           R9, #0xC
12FA56:  STR             R0, [SP,#0x28+var_20]
12FA58:  STRD.W          R3, R1, [SP,#0x28+var_28]
12FA5C:  SUBS            R1, R5, R4
12FA5E:  MOV             R0, #0xAAAAAAAB
12FA66:  ASRS            R1, R1, #2
12FA68:  MULS            R1, R0
12FA6A:  CMP             R1, R10
12FA6C:  BLS             loc_12FAE6
12FA6E:  ADD.W           R1, R4, R9
12FA72:  SUB.W           R0, R1, #0xC
12FA76:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12FA7A:  LDRD.W          R4, R5, [R6,#0x7C]
12FA7E:  ADD.W           R10, R10, #1
12FA82:  ADD.W           R9, R9, #0xC
12FA86:  CMP             R8, R10
12FA88:  BNE             loc_12FA5C
12FA8A:  SUBS            R1, R5, R4
12FA8C:  MOV             R0, #0xAAAAAAAB
12FA94:  ASRS            R1, R1, #2
12FA96:  MUL.W           R2, R1, R0
12FA9A:  LDR             R0, [SP,#0x28+var_20]
12FA9C:  LDRD.W          R3, R1, [SP,#0x28+var_28]
12FAA0:  B               loc_12FABC
12FAA2:  LDR.W           R2, [R6,#0x84]
12FAA6:  CMP             R5, R2
12FAA8:  BEQ             loc_12FACE
12FAAA:  MOV             R0, R5
12FAAC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FAB0:  ADD.W           R0, R5, #0xC
12FAB4:  STR.W           R0, [R6,#0x80]
12FAB8:  B               loc_12FAD2
12FABA:  MOVS            R2, #1
12FABC:  CMP             R2, R3
12FABE:  BLS             loc_12FAE8
12FAC0:  ADD.W           R2, R3, R3,LSL#1
12FAC4:  ADD.W           R0, R4, R2,LSL#2
12FAC8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12FACC:  B               loc_12FAD2
12FACE:  BL              sub_126DEE
12FAD2:  CMP.W           R11, #0
12FAD6:  IT NE
12FAD8:  MOVNE.W         R11, #1
12FADC:  MOV             R0, R11
12FADE:  ADD             SP, SP, #0xC
12FAE0:  POP.W           {R8-R11}
12FAE4:  POP             {R4-R7,PC}
12FAE6:  LDR             R0, [SP,#0x28+var_20]
12FAE8:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_out_of_rangeEv; std::__vector_base_common<true>::__throw_out_of_range(void)
