; =========================================================
; Game Engine Function: sub_15EC68
; Address            : 0x15EC68 - 0x15ED14
; =========================================================

15EC68:  PUSH            {R4-R7,LR}
15EC6A:  ADD             R7, SP, #0xC
15EC6C:  PUSH.W          {R8}
15EC70:  SUB             SP, SP, #0x18
15EC72:  MOV             R4, R0
15EC74:  MOV             R8, R1
15EC76:  LDR             R0, [R0]
15EC78:  LDR             R1, [R4,#4]
15EC7A:  SUBS            R6, R1, R0
15EC7C:  MOVS            R1, #1
15EC7E:  ADD.W           R5, R1, R6,ASR#2
15EC82:  CMP.W           R5, #0x40000000
15EC86:  BCS             loc_15ED06
15EC88:  MOV             R1, R4
15EC8A:  LDR.W           R2, [R1,#8]!
15EC8E:  STR             R1, [SP,#0x28+var_14]
15EC90:  MOVW            R1, #0xFFFC
15EC94:  SUBS            R0, R2, R0
15EC96:  MOVT            R1, #0x7FFF
15EC9A:  CMP.W           R5, R0,ASR#1
15EC9E:  IT LS
15ECA0:  ASRLS           R5, R0, #1
15ECA2:  CMP             R0, R1
15ECA4:  IT CS
15ECA6:  MOVCS           R5, #0x3FFFFFFF
15ECAA:  CBZ             R5, loc_15ECBA
15ECAC:  CMP.W           R5, #0x40000000
15ECB0:  BCS             loc_15ED0C
15ECB2:  LSLS            R0, R5, #2; unsigned int
15ECB4:  BLX             j__Znwj; operator new(uint)
15ECB8:  B               loc_15ECBC
15ECBA:  MOVS            R0, #0
15ECBC:  ASRS            R1, R6, #2
15ECBE:  ADD.W           R2, R0, R5,LSL#2
15ECC2:  ADD.W           R1, R0, R1,LSL#2
15ECC6:  STR             R2, [SP,#0x28+var_18]
15ECC8:  LDR.W           R2, [R8]
15ECCC:  STRD.W          R0, R1, [SP,#0x28+var_24]
15ECD0:  STR.W           R2, [R1],#4
15ECD4:  STR             R1, [SP,#0x28+var_1C]
15ECD6:  ADD             R1, SP, #0x28+var_24
15ECD8:  MOV             R0, R4
15ECDA:  BL              sub_15ED3C
15ECDE:  LDRD.W          R1, R0, [SP,#0x28+var_20]
15ECE2:  CMP             R0, R1
15ECE4:  ITTTT NE
15ECE6:  SUBNE           R1, R0, R1
15ECE8:  SUBNE           R1, #4
15ECEA:  MVNNE.W         R1, R1,LSR#2
15ECEE:  ADDNE.W         R0, R0, R1,LSL#2
15ECF2:  IT NE
15ECF4:  STRNE           R0, [SP,#0x28+var_1C]
15ECF6:  LDR             R0, [SP,#0x28+var_24]; void *
15ECF8:  CBZ             R0, loc_15ECFE
15ECFA:  BLX             j__ZdlPv; operator delete(void *)
15ECFE:  ADD             SP, SP, #0x18
15ED00:  POP.W           {R8}
15ED04:  POP             {R4-R7,PC}
15ED06:  MOV             R0, R4
15ED08:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
15ED0C:  LDR             R0, =(aAllocatorTAllo - 0x15ED12); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15ED0E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15ED10:  BL              sub_DC8D4
