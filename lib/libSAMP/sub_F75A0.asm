; =========================================================
; Game Engine Function: sub_F75A0
; Address            : 0xF75A0 - 0xF764C
; =========================================================

F75A0:  PUSH            {R4-R7,LR}
F75A2:  ADD             R7, SP, #0xC
F75A4:  PUSH.W          {R8}
F75A8:  SUB             SP, SP, #0x18
F75AA:  MOV             R4, R0
F75AC:  MOV             R8, R1
F75AE:  LDR             R0, [R0]
F75B0:  LDR             R1, [R4,#4]
F75B2:  SUBS            R6, R1, R0
F75B4:  MOVS            R1, #1
F75B6:  ADD.W           R5, R1, R6,ASR#2
F75BA:  CMP.W           R5, #0x40000000
F75BE:  BCS             loc_F763E
F75C0:  MOV             R1, R4
F75C2:  LDR.W           R2, [R1,#8]!
F75C6:  STR             R1, [SP,#0x28+var_14]
F75C8:  MOVW            R1, #0xFFFC
F75CC:  SUBS            R0, R2, R0
F75CE:  MOVT            R1, #0x7FFF
F75D2:  CMP.W           R5, R0,ASR#1
F75D6:  IT LS
F75D8:  ASRLS           R5, R0, #1
F75DA:  CMP             R0, R1
F75DC:  IT CS
F75DE:  MOVCS           R5, #0x3FFFFFFF
F75E2:  CBZ             R5, loc_F75F2
F75E4:  CMP.W           R5, #0x40000000
F75E8:  BCS             loc_F7644
F75EA:  LSLS            R0, R5, #2; unsigned int
F75EC:  BLX             j__Znwj; operator new(uint)
F75F0:  B               loc_F75F4
F75F2:  MOVS            R0, #0
F75F4:  ASRS            R1, R6, #2
F75F6:  ADD.W           R2, R0, R5,LSL#2
F75FA:  ADD.W           R1, R0, R1,LSL#2
F75FE:  STR             R2, [SP,#0x28+var_18]
F7600:  LDR.W           R2, [R8]
F7604:  STRD.W          R0, R1, [SP,#0x28+var_24]
F7608:  STR.W           R2, [R1],#4
F760C:  STR             R1, [SP,#0x28+var_1C]
F760E:  ADD             R1, SP, #0x28+var_24
F7610:  MOV             R0, R4
F7612:  BL              sub_F7674
F7616:  LDRD.W          R1, R0, [SP,#0x28+var_20]
F761A:  CMP             R0, R1
F761C:  ITTTT NE
F761E:  SUBNE           R1, R0, R1
F7620:  SUBNE           R1, #4
F7622:  MVNNE.W         R1, R1,LSR#2
F7626:  ADDNE.W         R0, R0, R1,LSL#2
F762A:  IT NE
F762C:  STRNE           R0, [SP,#0x28+var_1C]
F762E:  LDR             R0, [SP,#0x28+var_24]; void *
F7630:  CBZ             R0, loc_F7636
F7632:  BLX             j__ZdlPv; operator delete(void *)
F7636:  ADD             SP, SP, #0x18
F7638:  POP.W           {R8}
F763C:  POP             {R4-R7,PC}
F763E:  MOV             R0, R4
F7640:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
F7644:  LDR             R0, =(aAllocatorTAllo - 0xF764A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
F7646:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
F7648:  BL              sub_DC8D4
