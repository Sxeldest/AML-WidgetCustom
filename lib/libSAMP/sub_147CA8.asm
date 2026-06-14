; =========================================================
; Game Engine Function: sub_147CA8
; Address            : 0x147CA8 - 0x147D54
; =========================================================

147CA8:  PUSH            {R4-R7,LR}
147CAA:  ADD             R7, SP, #0xC
147CAC:  PUSH.W          {R8}
147CB0:  SUB             SP, SP, #0x18
147CB2:  MOV             R4, R0
147CB4:  MOV             R8, R1
147CB6:  LDR             R0, [R0]
147CB8:  LDR             R1, [R4,#4]
147CBA:  SUBS            R6, R1, R0
147CBC:  MOVS            R1, #1
147CBE:  ADD.W           R5, R1, R6,ASR#2
147CC2:  CMP.W           R5, #0x40000000
147CC6:  BCS             loc_147D46
147CC8:  MOV             R1, R4
147CCA:  LDR.W           R2, [R1,#8]!
147CCE:  STR             R1, [SP,#0x28+var_14]
147CD0:  MOVW            R1, #0xFFFC
147CD4:  SUBS            R0, R2, R0
147CD6:  MOVT            R1, #0x7FFF
147CDA:  CMP.W           R5, R0,ASR#1
147CDE:  IT LS
147CE0:  ASRLS           R5, R0, #1
147CE2:  CMP             R0, R1
147CE4:  IT CS
147CE6:  MOVCS           R5, #0x3FFFFFFF
147CEA:  CBZ             R5, loc_147CFA
147CEC:  CMP.W           R5, #0x40000000
147CF0:  BCS             loc_147D4C
147CF2:  LSLS            R0, R5, #2; unsigned int
147CF4:  BLX             j__Znwj; operator new(uint)
147CF8:  B               loc_147CFC
147CFA:  MOVS            R0, #0
147CFC:  ASRS            R1, R6, #2
147CFE:  ADD.W           R2, R0, R5,LSL#2
147D02:  ADD.W           R1, R0, R1,LSL#2
147D06:  STR             R2, [SP,#0x28+var_18]
147D08:  LDR.W           R2, [R8]
147D0C:  STRD.W          R0, R1, [SP,#0x28+var_24]
147D10:  STR.W           R2, [R1],#4
147D14:  STR             R1, [SP,#0x28+var_1C]
147D16:  ADD             R1, SP, #0x28+var_24
147D18:  MOV             R0, R4
147D1A:  BL              sub_10D7AC
147D1E:  LDRD.W          R1, R0, [SP,#0x28+var_20]
147D22:  CMP             R0, R1
147D24:  ITTTT NE
147D26:  SUBNE           R1, R0, R1
147D28:  SUBNE           R1, #4
147D2A:  MVNNE.W         R1, R1,LSR#2
147D2E:  ADDNE.W         R0, R0, R1,LSL#2
147D32:  IT NE
147D34:  STRNE           R0, [SP,#0x28+var_1C]
147D36:  LDR             R0, [SP,#0x28+var_24]; void *
147D38:  CBZ             R0, loc_147D3E
147D3A:  BLX             j__ZdlPv; operator delete(void *)
147D3E:  ADD             SP, SP, #0x18
147D40:  POP.W           {R8}
147D44:  POP             {R4-R7,PC}
147D46:  MOV             R0, R4
147D48:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
147D4C:  LDR             R0, =(aAllocatorTAllo - 0x147D52); "allocator<T>::allocate(size_t n) 'n' ex"... ...
147D4E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
147D50:  BL              sub_DC8D4
