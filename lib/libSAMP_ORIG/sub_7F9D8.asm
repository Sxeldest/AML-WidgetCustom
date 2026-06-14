; =========================================================
; Game Engine Function: sub_7F9D8
; Address            : 0x7F9D8 - 0x7FB7A
; =========================================================

7F9D8:  PUSH            {R4-R7,LR}
7F9DA:  ADD             R7, SP, #0xC
7F9DC:  PUSH.W          {R8-R11}
7F9E0:  SUB             SP, SP, #0x14
7F9E2:  LDRD.W          R5, R9, [R0]
7F9E6:  MOV             R10, R1
7F9E8:  MOVW            R1, #0xAAAB
7F9EC:  MOV             R8, R0
7F9EE:  SUB.W           R0, R9, R5
7F9F2:  MOVT            R1, #0x2AAA
7F9F6:  SMMUL.W         R0, R0, R1
7F9FA:  ASRS            R1, R0, #2
7F9FC:  ADD.W           R6, R1, R0,LSR#31
7FA00:  MOVW            R0, #0xAAAA
7FA04:  ADDS            R4, R6, #1
7FA06:  MOVT            R0, #0xAAA
7FA0A:  CMP             R4, R0
7FA0C:  BHI.W           loc_7FB6C
7FA10:  LDR.W           R1, [R8,#8]
7FA14:  MOV             R2, #0xAAAAAAAB
7FA1C:  SUBS            R1, R1, R5
7FA1E:  ASRS            R1, R1, #3
7FA20:  MULS            R1, R2
7FA22:  MOV             R2, #0x5555555
7FA2A:  CMP.W           R4, R1,LSL#1
7FA2E:  IT LS
7FA30:  LSLLS           R4, R1, #1
7FA32:  CMP             R1, R2
7FA34:  IT CS
7FA36:  MOVCS           R4, R0
7FA38:  CBZ             R4, loc_7FA4E
7FA3A:  CMP             R4, R0
7FA3C:  BHI.W           loc_7FB72
7FA40:  ADD.W           R0, R4, R4,LSL#1
7FA44:  LSLS            R0, R0, #3; unsigned int
7FA46:  BLX             j__Znwj; operator new(uint)
7FA4A:  MOV             R11, R0
7FA4C:  B               loc_7FA52
7FA4E:  MOV.W           R11, #0
7FA52:  MOV             R1, R10
7FA54:  ADD.W           R2, R6, R6,LSL#1
7FA58:  LDR.W           R0, [R1,#0x10]!
7FA5C:  ADD.W           R6, R11, R2,LSL#3
7FA60:  CBZ             R0, loc_7FA6A
7FA62:  CMP             R10, R0
7FA64:  BEQ             loc_7FAFC
7FA66:  STR             R0, [R6,#0x10]
7FA68:  B               loc_7FA6E
7FA6A:  ADD.W           R1, R6, #0x10
7FA6E:  MOVS            R0, #0
7FA70:  STR             R0, [R1]
7FA72:  CMP             R9, R5
7FA74:  BEQ             loc_7FB0E
7FA76:  SUB.W           R10, R9, #0x18
7FA7A:  STRD.W          R11, R4, [SP,#0x30+var_30]
7FA7E:  STR.W           R8, [SP,#0x30+var_28]
7FA82:  SUB.W           R0, R6, #8
7FA86:  MOV.W           R8, #0
7FA8A:  MOV.W           R11, #0
7FA8E:  MOV             R4, R9
7FA90:  STR             R0, [SP,#0x30+var_20]
7FA92:  SUB.W           R0, R6, #0x18
7FA96:  STR             R0, [SP,#0x30+var_24]
7FA98:  B               loc_7FAB0
7FA9A:  LDR             R0, [SP,#0x30+var_20]
7FA9C:  ADD             R0, R11
7FA9E:  STR.W           R8, [R0]
7FAA2:  SUB.W           R11, R11, #0x18
7FAA6:  SUBS            R4, #0x18
7FAA8:  ADD.W           R0, R9, R11
7FAAC:  CMP             R0, R5
7FAAE:  BEQ             loc_7FAEA
7FAB0:  ADD.W           R0, R9, R11
7FAB4:  LDR.W           R1, [R0,#-8]
7FAB8:  CMP             R1, #0
7FABA:  BEQ             loc_7FA9A
7FABC:  ADD.W           R2, R10, R11
7FAC0:  CMP             R2, R1
7FAC2:  BEQ             loc_7FAD2
7FAC4:  SUB.W           R0, R4, #8
7FAC8:  ADD.W           R2, R6, R11
7FACC:  STR.W           R1, [R2,#-8]
7FAD0:  B               loc_7FA9E
7FAD2:  LDR             R1, [SP,#0x30+var_24]
7FAD4:  ADD.W           R2, R6, R11
7FAD8:  ADD             R1, R11
7FADA:  STR.W           R1, [R2,#-8]
7FADE:  LDR.W           R0, [R0,#-8]
7FAE2:  LDR             R2, [R0]
7FAE4:  LDR             R2, [R2,#0xC]
7FAE6:  BLX             R2
7FAE8:  B               loc_7FAA2
7FAEA:  LDR.W           R8, [SP,#0x30+var_28]
7FAEE:  ADD.W           R0, R6, R11
7FAF2:  LDRD.W          R11, R4, [SP,#0x30+var_30]
7FAF6:  LDR.W           R9, [R8]
7FAFA:  B               loc_7FB10
7FAFC:  LDR             R1, [R0]
7FAFE:  STR             R6, [R6,#0x10]
7FB00:  LDR             R2, [R1,#0xC]
7FB02:  MOV             R1, R6
7FB04:  BLX             R2
7FB06:  LDRD.W          R5, R9, [R8]
7FB0A:  CMP             R9, R5
7FB0C:  BNE             loc_7FA76
7FB0E:  MOV             R0, R6
7FB10:  ADD.W           R1, R4, R4,LSL#1
7FB14:  LDR.W           R4, [R8,#4]
7FB18:  ADD.W           R2, R6, #0x18
7FB1C:  STR.W           R0, [R8]
7FB20:  ADD.W           R1, R11, R1,LSL#3
7FB24:  STR.W           R1, [R8,#8]
7FB28:  STR.W           R2, [R8,#4]
7FB2C:  B               loc_7FB38
7FB2E:  MOVS            R1, #4
7FB30:  LDR             R2, [R0]
7FB32:  LDR.W           R1, [R2,R1,LSL#2]
7FB36:  BLX             R1
7FB38:  CMP             R4, R9
7FB3A:  BEQ             loc_7FB4E
7FB3C:  LDR.W           R0, [R4,#-8]
7FB40:  SUBS            R4, #0x18
7FB42:  CMP             R4, R0
7FB44:  BEQ             loc_7FB2E
7FB46:  CMP             R0, #0
7FB48:  BEQ             loc_7FB38
7FB4A:  MOVS            R1, #5
7FB4C:  B               loc_7FB30
7FB4E:  CMP.W           R9, #0
7FB52:  BEQ             loc_7FB64
7FB54:  MOV             R0, R9; void *
7FB56:  ADD             SP, SP, #0x14
7FB58:  POP.W           {R8-R11}
7FB5C:  POP.W           {R4-R7,LR}
7FB60:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
7FB64:  ADD             SP, SP, #0x14
7FB66:  POP.W           {R8-R11}
7FB6A:  POP             {R4-R7,PC}
7FB6C:  MOV             R0, R8
7FB6E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7FB72:  LDR             R0, =(aAllocatorTAllo - 0x7FB78); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7FB74:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7FB76:  BL              sub_7B270
