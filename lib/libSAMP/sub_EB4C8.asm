; =========================================================
; Game Engine Function: sub_EB4C8
; Address            : 0xEB4C8 - 0xEB574
; =========================================================

EB4C8:  PUSH            {R4-R7,LR}
EB4CA:  ADD             R7, SP, #0xC
EB4CC:  PUSH.W          {R8}
EB4D0:  SUB             SP, SP, #0x18
EB4D2:  MOV             R4, R0
EB4D4:  MOV             R8, R1
EB4D6:  LDR             R0, [R0]
EB4D8:  LDR             R1, [R4,#4]
EB4DA:  SUBS            R6, R1, R0
EB4DC:  MOVS            R1, #1
EB4DE:  ADD.W           R5, R1, R6,ASR#2
EB4E2:  CMP.W           R5, #0x40000000
EB4E6:  BCS             loc_EB566
EB4E8:  MOV             R1, R4
EB4EA:  LDR.W           R2, [R1,#8]!
EB4EE:  STR             R1, [SP,#0x28+var_14]
EB4F0:  MOVW            R1, #0xFFFC
EB4F4:  SUBS            R0, R2, R0
EB4F6:  MOVT            R1, #0x7FFF
EB4FA:  CMP.W           R5, R0,ASR#1
EB4FE:  IT LS
EB500:  ASRLS           R5, R0, #1
EB502:  CMP             R0, R1
EB504:  IT CS
EB506:  MOVCS           R5, #0x3FFFFFFF
EB50A:  CBZ             R5, loc_EB51A
EB50C:  CMP.W           R5, #0x40000000
EB510:  BCS             loc_EB56C
EB512:  LSLS            R0, R5, #2; unsigned int
EB514:  BLX             j__Znwj; operator new(uint)
EB518:  B               loc_EB51C
EB51A:  MOVS            R0, #0
EB51C:  ASRS            R1, R6, #2
EB51E:  ADD.W           R2, R0, R5,LSL#2
EB522:  ADD.W           R1, R0, R1,LSL#2
EB526:  STR             R2, [SP,#0x28+var_18]
EB528:  LDR.W           R2, [R8]
EB52C:  STRD.W          R0, R1, [SP,#0x28+var_24]
EB530:  STR.W           R2, [R1],#4
EB534:  STR             R1, [SP,#0x28+var_1C]
EB536:  ADD             R1, SP, #0x28+var_24
EB538:  MOV             R0, R4
EB53A:  BL              sub_E972C
EB53E:  LDRD.W          R1, R0, [SP,#0x28+var_20]
EB542:  CMP             R0, R1
EB544:  ITTTT NE
EB546:  SUBNE           R1, R0, R1
EB548:  SUBNE           R1, #4
EB54A:  MVNNE.W         R1, R1,LSR#2
EB54E:  ADDNE.W         R0, R0, R1,LSL#2
EB552:  IT NE
EB554:  STRNE           R0, [SP,#0x28+var_1C]
EB556:  LDR             R0, [SP,#0x28+var_24]; void *
EB558:  CBZ             R0, loc_EB55E
EB55A:  BLX             j__ZdlPv; operator delete(void *)
EB55E:  ADD             SP, SP, #0x18
EB560:  POP.W           {R8}
EB564:  POP             {R4-R7,PC}
EB566:  MOV             R0, R4
EB568:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
EB56C:  LDR             R0, =(aAllocatorTAllo - 0xEB572); "allocator<T>::allocate(size_t n) 'n' ex"... ...
EB56E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
EB570:  BL              sub_DC8D4
