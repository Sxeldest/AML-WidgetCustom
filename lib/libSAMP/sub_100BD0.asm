; =========================================================
; Game Engine Function: sub_100BD0
; Address            : 0x100BD0 - 0x100C7C
; =========================================================

100BD0:  PUSH            {R4-R7,LR}
100BD2:  ADD             R7, SP, #0xC
100BD4:  PUSH.W          {R8}
100BD8:  SUB             SP, SP, #0x18
100BDA:  MOV             R4, R0
100BDC:  MOV             R8, R1
100BDE:  LDR             R0, [R0]
100BE0:  LDR             R1, [R4,#4]
100BE2:  SUBS            R6, R1, R0
100BE4:  MOVS            R1, #1
100BE6:  ADD.W           R5, R1, R6,ASR#2
100BEA:  CMP.W           R5, #0x40000000
100BEE:  BCS             loc_100C6E
100BF0:  MOV             R1, R4
100BF2:  LDR.W           R2, [R1,#8]!
100BF6:  STR             R1, [SP,#0x28+var_14]
100BF8:  MOVW            R1, #0xFFFC
100BFC:  SUBS            R0, R2, R0
100BFE:  MOVT            R1, #0x7FFF
100C02:  CMP.W           R5, R0,ASR#1
100C06:  IT LS
100C08:  ASRLS           R5, R0, #1
100C0A:  CMP             R0, R1
100C0C:  IT CS
100C0E:  MOVCS           R5, #0x3FFFFFFF
100C12:  CBZ             R5, loc_100C22
100C14:  CMP.W           R5, #0x40000000
100C18:  BCS             loc_100C74
100C1A:  LSLS            R0, R5, #2; unsigned int
100C1C:  BLX             j__Znwj; operator new(uint)
100C20:  B               loc_100C24
100C22:  MOVS            R0, #0
100C24:  ASRS            R1, R6, #2
100C26:  ADD.W           R2, R0, R5,LSL#2
100C2A:  ADD.W           R1, R0, R1,LSL#2
100C2E:  STR             R2, [SP,#0x28+var_18]
100C30:  LDR.W           R2, [R8]
100C34:  STRD.W          R0, R1, [SP,#0x28+var_24]
100C38:  STR.W           R2, [R1],#4
100C3C:  STR             R1, [SP,#0x28+var_1C]
100C3E:  ADD             R1, SP, #0x28+var_24
100C40:  MOV             R0, R4
100C42:  BL              sub_100CA4
100C46:  LDRD.W          R1, R0, [SP,#0x28+var_20]
100C4A:  CMP             R0, R1
100C4C:  ITTTT NE
100C4E:  SUBNE           R1, R0, R1
100C50:  SUBNE           R1, #4
100C52:  MVNNE.W         R1, R1,LSR#2
100C56:  ADDNE.W         R0, R0, R1,LSL#2
100C5A:  IT NE
100C5C:  STRNE           R0, [SP,#0x28+var_1C]
100C5E:  LDR             R0, [SP,#0x28+var_24]; void *
100C60:  CBZ             R0, loc_100C66
100C62:  BLX             j__ZdlPv; operator delete(void *)
100C66:  ADD             SP, SP, #0x18
100C68:  POP.W           {R8}
100C6C:  POP             {R4-R7,PC}
100C6E:  MOV             R0, R4
100C70:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
100C74:  LDR             R0, =(aAllocatorTAllo - 0x100C7A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
100C76:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
100C78:  BL              sub_DC8D4
