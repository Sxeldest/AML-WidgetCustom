; =========================================================
; Game Engine Function: sub_206408
; Address            : 0x206408 - 0x206476
; =========================================================

206408:  PUSH            {R4-R7,LR}
20640A:  ADD             R7, SP, #0xC
20640C:  PUSH.W          {R11}
206410:  SUB             SP, SP, #8
206412:  MOV             R6, R0
206414:  LDR             R0, =(__stack_chk_guard_ptr - 0x20641E)
206416:  MOV             R4, R2
206418:  MOV             R5, R1
20641A:  ADD             R0, PC; __stack_chk_guard_ptr
20641C:  LDR             R0, [R0]; __stack_chk_guard
20641E:  LDR             R0, [R0]
206420:  STR             R0, [SP,#0x18+var_14]
206422:  MOV             R0, R1; this
206424:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
206428:  LDR.W           R1, [R6,#8]!
20642C:  STR             R5, [SP,#0x18+var_18]
20642E:  LDR             R0, [R6,#4]
206430:  SUBS            R0, R0, R1
206432:  CMP.W           R4, R0,ASR#2
206436:  BCC             loc_206442
206438:  ADDS            R1, R4, #1
20643A:  MOV             R0, R6
20643C:  BL              sub_206504
206440:  LDR             R1, [R6]
206442:  LDR.W           R0, [R1,R4,LSL#2]; this
206446:  CBZ             R0, loc_20644E
206448:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
20644C:  LDR             R1, [R6]
20644E:  MOVS            R0, #0
206450:  STR             R0, [SP,#0x18+var_18]
206452:  MOV             R0, SP
206454:  STR.W           R5, [R1,R4,LSL#2]
206458:  BL              sub_206488
20645C:  LDR             R0, [SP,#0x18+var_14]
20645E:  LDR             R1, =(__stack_chk_guard_ptr - 0x206464)
206460:  ADD             R1, PC; __stack_chk_guard_ptr
206462:  LDR             R1, [R1]; __stack_chk_guard
206464:  LDR             R1, [R1]
206466:  CMP             R1, R0
206468:  ITTT EQ
20646A:  ADDEQ           SP, SP, #8
20646C:  POPEQ.W         {R11}
206470:  POPEQ           {R4-R7,PC}
206472:  BLX             __stack_chk_fail
