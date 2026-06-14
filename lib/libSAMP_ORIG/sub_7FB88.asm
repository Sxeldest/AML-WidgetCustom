; =========================================================
; Game Engine Function: sub_7FB88
; Address            : 0x7FB88 - 0x7FD2A
; =========================================================

7FB88:  PUSH            {R4-R7,LR}
7FB8A:  ADD             R7, SP, #0xC
7FB8C:  PUSH.W          {R8-R11}
7FB90:  SUB             SP, SP, #0x14
7FB92:  LDRD.W          R5, R9, [R0]
7FB96:  MOV             R10, R1
7FB98:  MOVW            R1, #0xAAAB
7FB9C:  MOV             R8, R0
7FB9E:  SUB.W           R0, R9, R5
7FBA2:  MOVT            R1, #0x2AAA
7FBA6:  SMMUL.W         R0, R0, R1
7FBAA:  ASRS            R1, R0, #2
7FBAC:  ADD.W           R6, R1, R0,LSR#31
7FBB0:  MOVW            R0, #0xAAAA
7FBB4:  ADDS            R4, R6, #1
7FBB6:  MOVT            R0, #0xAAA
7FBBA:  CMP             R4, R0
7FBBC:  BHI.W           loc_7FD1C
7FBC0:  LDR.W           R1, [R8,#8]
7FBC4:  MOV             R2, #0xAAAAAAAB
7FBCC:  SUBS            R1, R1, R5
7FBCE:  ASRS            R1, R1, #3
7FBD0:  MULS            R1, R2
7FBD2:  MOV             R2, #0x5555555
7FBDA:  CMP.W           R4, R1,LSL#1
7FBDE:  IT LS
7FBE0:  LSLLS           R4, R1, #1
7FBE2:  CMP             R1, R2
7FBE4:  IT CS
7FBE6:  MOVCS           R4, R0
7FBE8:  CBZ             R4, loc_7FBFE
7FBEA:  CMP             R4, R0
7FBEC:  BHI.W           loc_7FD22
7FBF0:  ADD.W           R0, R4, R4,LSL#1
7FBF4:  LSLS            R0, R0, #3; unsigned int
7FBF6:  BLX             j__Znwj; operator new(uint)
7FBFA:  MOV             R11, R0
7FBFC:  B               loc_7FC02
7FBFE:  MOV.W           R11, #0
7FC02:  MOV             R1, R10
7FC04:  ADD.W           R2, R6, R6,LSL#1
7FC08:  LDR.W           R0, [R1,#0x10]!
7FC0C:  ADD.W           R6, R11, R2,LSL#3
7FC10:  CBZ             R0, loc_7FC1A
7FC12:  CMP             R10, R0
7FC14:  BEQ             loc_7FCAC
7FC16:  STR             R0, [R6,#0x10]
7FC18:  B               loc_7FC1E
7FC1A:  ADD.W           R1, R6, #0x10
7FC1E:  MOVS            R0, #0
7FC20:  STR             R0, [R1]
7FC22:  CMP             R9, R5
7FC24:  BEQ             loc_7FCBE
7FC26:  SUB.W           R10, R9, #0x18
7FC2A:  STRD.W          R11, R4, [SP,#0x30+var_30]
7FC2E:  STR.W           R8, [SP,#0x30+var_28]
7FC32:  SUB.W           R0, R6, #8
7FC36:  MOV.W           R8, #0
7FC3A:  MOV.W           R11, #0
7FC3E:  MOV             R4, R9
7FC40:  STR             R0, [SP,#0x30+var_20]
7FC42:  SUB.W           R0, R6, #0x18
7FC46:  STR             R0, [SP,#0x30+var_24]
7FC48:  B               loc_7FC60
7FC4A:  LDR             R0, [SP,#0x30+var_20]
7FC4C:  ADD             R0, R11
7FC4E:  STR.W           R8, [R0]
7FC52:  SUB.W           R11, R11, #0x18
7FC56:  SUBS            R4, #0x18
7FC58:  ADD.W           R0, R9, R11
7FC5C:  CMP             R0, R5
7FC5E:  BEQ             loc_7FC9A
7FC60:  ADD.W           R0, R9, R11
7FC64:  LDR.W           R1, [R0,#-8]
7FC68:  CMP             R1, #0
7FC6A:  BEQ             loc_7FC4A
7FC6C:  ADD.W           R2, R10, R11
7FC70:  CMP             R2, R1
7FC72:  BEQ             loc_7FC82
7FC74:  SUB.W           R0, R4, #8
7FC78:  ADD.W           R2, R6, R11
7FC7C:  STR.W           R1, [R2,#-8]
7FC80:  B               loc_7FC4E
7FC82:  LDR             R1, [SP,#0x30+var_24]
7FC84:  ADD.W           R2, R6, R11
7FC88:  ADD             R1, R11
7FC8A:  STR.W           R1, [R2,#-8]
7FC8E:  LDR.W           R0, [R0,#-8]
7FC92:  LDR             R2, [R0]
7FC94:  LDR             R2, [R2,#0xC]
7FC96:  BLX             R2
7FC98:  B               loc_7FC52
7FC9A:  LDR.W           R8, [SP,#0x30+var_28]
7FC9E:  ADD.W           R0, R6, R11
7FCA2:  LDRD.W          R11, R4, [SP,#0x30+var_30]
7FCA6:  LDR.W           R9, [R8]
7FCAA:  B               loc_7FCC0
7FCAC:  LDR             R1, [R0]
7FCAE:  STR             R6, [R6,#0x10]
7FCB0:  LDR             R2, [R1,#0xC]
7FCB2:  MOV             R1, R6
7FCB4:  BLX             R2
7FCB6:  LDRD.W          R5, R9, [R8]
7FCBA:  CMP             R9, R5
7FCBC:  BNE             loc_7FC26
7FCBE:  MOV             R0, R6
7FCC0:  ADD.W           R1, R4, R4,LSL#1
7FCC4:  LDR.W           R4, [R8,#4]
7FCC8:  ADD.W           R2, R6, #0x18
7FCCC:  STR.W           R0, [R8]
7FCD0:  ADD.W           R1, R11, R1,LSL#3
7FCD4:  STR.W           R1, [R8,#8]
7FCD8:  STR.W           R2, [R8,#4]
7FCDC:  B               loc_7FCE8
7FCDE:  MOVS            R1, #4
7FCE0:  LDR             R2, [R0]
7FCE2:  LDR.W           R1, [R2,R1,LSL#2]
7FCE6:  BLX             R1
7FCE8:  CMP             R4, R9
7FCEA:  BEQ             loc_7FCFE
7FCEC:  LDR.W           R0, [R4,#-8]
7FCF0:  SUBS            R4, #0x18
7FCF2:  CMP             R4, R0
7FCF4:  BEQ             loc_7FCDE
7FCF6:  CMP             R0, #0
7FCF8:  BEQ             loc_7FCE8
7FCFA:  MOVS            R1, #5
7FCFC:  B               loc_7FCE0
7FCFE:  CMP.W           R9, #0
7FD02:  BEQ             loc_7FD14
7FD04:  MOV             R0, R9; void *
7FD06:  ADD             SP, SP, #0x14
7FD08:  POP.W           {R8-R11}
7FD0C:  POP.W           {R4-R7,LR}
7FD10:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
7FD14:  ADD             SP, SP, #0x14
7FD16:  POP.W           {R8-R11}
7FD1A:  POP             {R4-R7,PC}
7FD1C:  MOV             R0, R8
7FD1E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7FD22:  LDR             R0, =(aAllocatorTAllo - 0x7FD28); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7FD24:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7FD26:  BL              sub_7B270
