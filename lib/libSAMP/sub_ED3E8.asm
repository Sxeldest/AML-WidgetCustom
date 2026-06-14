; =========================================================
; Game Engine Function: sub_ED3E8
; Address            : 0xED3E8 - 0xED494
; =========================================================

ED3E8:  PUSH            {R4-R7,LR}
ED3EA:  ADD             R7, SP, #0xC
ED3EC:  PUSH.W          {R8}
ED3F0:  SUB             SP, SP, #0x18
ED3F2:  MOV             R4, R0
ED3F4:  MOV             R8, R1
ED3F6:  LDR             R0, [R0]
ED3F8:  LDR             R1, [R4,#4]
ED3FA:  SUBS            R6, R1, R0
ED3FC:  MOVS            R1, #1
ED3FE:  ADD.W           R5, R1, R6,ASR#2
ED402:  CMP.W           R5, #0x40000000
ED406:  BCS             loc_ED486
ED408:  MOV             R1, R4
ED40A:  LDR.W           R2, [R1,#8]!
ED40E:  STR             R1, [SP,#0x28+var_14]
ED410:  MOVW            R1, #0xFFFC
ED414:  SUBS            R0, R2, R0
ED416:  MOVT            R1, #0x7FFF
ED41A:  CMP.W           R5, R0,ASR#1
ED41E:  IT LS
ED420:  ASRLS           R5, R0, #1
ED422:  CMP             R0, R1
ED424:  IT CS
ED426:  MOVCS           R5, #0x3FFFFFFF
ED42A:  CBZ             R5, loc_ED43A
ED42C:  CMP.W           R5, #0x40000000
ED430:  BCS             loc_ED48C
ED432:  LSLS            R0, R5, #2; unsigned int
ED434:  BLX             j__Znwj; operator new(uint)
ED438:  B               loc_ED43C
ED43A:  MOVS            R0, #0
ED43C:  ASRS            R1, R6, #2
ED43E:  ADD.W           R2, R0, R5,LSL#2
ED442:  ADD.W           R1, R0, R1,LSL#2
ED446:  STR             R2, [SP,#0x28+var_18]
ED448:  LDR.W           R2, [R8]
ED44C:  STRD.W          R0, R1, [SP,#0x28+var_24]
ED450:  STR.W           R2, [R1],#4
ED454:  STR             R1, [SP,#0x28+var_1C]
ED456:  ADD             R1, SP, #0x28+var_24
ED458:  MOV             R0, R4
ED45A:  BL              sub_ED4BC
ED45E:  LDRD.W          R1, R0, [SP,#0x28+var_20]
ED462:  CMP             R0, R1
ED464:  ITTTT NE
ED466:  SUBNE           R1, R0, R1
ED468:  SUBNE           R1, #4
ED46A:  MVNNE.W         R1, R1,LSR#2
ED46E:  ADDNE.W         R0, R0, R1,LSL#2
ED472:  IT NE
ED474:  STRNE           R0, [SP,#0x28+var_1C]
ED476:  LDR             R0, [SP,#0x28+var_24]; void *
ED478:  CBZ             R0, loc_ED47E
ED47A:  BLX             j__ZdlPv; operator delete(void *)
ED47E:  ADD             SP, SP, #0x18
ED480:  POP.W           {R8}
ED484:  POP             {R4-R7,PC}
ED486:  MOV             R0, R4
ED488:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
ED48C:  LDR             R0, =(aAllocatorTAllo - 0xED492); "allocator<T>::allocate(size_t n) 'n' ex"... ...
ED48E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
ED490:  BL              sub_DC8D4
