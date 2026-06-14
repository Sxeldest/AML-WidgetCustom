; =========================================================
; Game Engine Function: sub_158E8C
; Address            : 0x158E8C - 0x158F38
; =========================================================

158E8C:  PUSH            {R4-R7,LR}
158E8E:  ADD             R7, SP, #0xC
158E90:  PUSH.W          {R8}
158E94:  SUB             SP, SP, #0x18
158E96:  MOV             R4, R0
158E98:  MOV             R8, R1
158E9A:  LDR             R0, [R0]
158E9C:  LDR             R1, [R4,#4]
158E9E:  SUBS            R6, R1, R0
158EA0:  MOVS            R1, #1
158EA2:  ADD.W           R5, R1, R6,ASR#2
158EA6:  CMP.W           R5, #0x40000000
158EAA:  BCS             loc_158F2A
158EAC:  MOV             R1, R4
158EAE:  LDR.W           R2, [R1,#8]!
158EB2:  STR             R1, [SP,#0x28+var_14]
158EB4:  MOVW            R1, #0xFFFC
158EB8:  SUBS            R0, R2, R0
158EBA:  MOVT            R1, #0x7FFF
158EBE:  CMP.W           R5, R0,ASR#1
158EC2:  IT LS
158EC4:  ASRLS           R5, R0, #1
158EC6:  CMP             R0, R1
158EC8:  IT CS
158ECA:  MOVCS           R5, #0x3FFFFFFF
158ECE:  CBZ             R5, loc_158EDE
158ED0:  CMP.W           R5, #0x40000000
158ED4:  BCS             loc_158F30
158ED6:  LSLS            R0, R5, #2; unsigned int
158ED8:  BLX             j__Znwj; operator new(uint)
158EDC:  B               loc_158EE0
158EDE:  MOVS            R0, #0
158EE0:  ASRS            R1, R6, #2
158EE2:  ADD.W           R2, R0, R5,LSL#2
158EE6:  ADD.W           R1, R0, R1,LSL#2
158EEA:  STR             R2, [SP,#0x28+var_18]
158EEC:  LDR.W           R2, [R8]
158EF0:  STRD.W          R0, R1, [SP,#0x28+var_24]
158EF4:  STR.W           R2, [R1],#4
158EF8:  STR             R1, [SP,#0x28+var_1C]
158EFA:  ADD             R1, SP, #0x28+var_24
158EFC:  MOV             R0, R4
158EFE:  BL              sub_100CA4
158F02:  LDRD.W          R1, R0, [SP,#0x28+var_20]
158F06:  CMP             R0, R1
158F08:  ITTTT NE
158F0A:  SUBNE           R1, R0, R1
158F0C:  SUBNE           R1, #4
158F0E:  MVNNE.W         R1, R1,LSR#2
158F12:  ADDNE.W         R0, R0, R1,LSL#2
158F16:  IT NE
158F18:  STRNE           R0, [SP,#0x28+var_1C]
158F1A:  LDR             R0, [SP,#0x28+var_24]; void *
158F1C:  CBZ             R0, loc_158F22
158F1E:  BLX             j__ZdlPv; operator delete(void *)
158F22:  ADD             SP, SP, #0x18
158F24:  POP.W           {R8}
158F28:  POP             {R4-R7,PC}
158F2A:  MOV             R0, R4
158F2C:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
158F30:  LDR             R0, =(aAllocatorTAllo - 0x158F36); "allocator<T>::allocate(size_t n) 'n' ex"... ...
158F32:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
158F34:  BL              sub_DC8D4
