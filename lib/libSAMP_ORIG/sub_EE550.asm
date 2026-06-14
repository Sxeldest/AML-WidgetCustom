; =========================================================
; Game Engine Function: sub_EE550
; Address            : 0xEE550 - 0xEE5BE
; =========================================================

EE550:  PUSH            {R4-R7,LR}
EE552:  ADD             R7, SP, #0xC
EE554:  PUSH.W          {R11}
EE558:  SUB             SP, SP, #8
EE55A:  MOV             R6, R0
EE55C:  LDR             R0, =(__stack_chk_guard_ptr - 0xEE566)
EE55E:  MOV             R4, R2
EE560:  MOV             R5, R1
EE562:  ADD             R0, PC; __stack_chk_guard_ptr
EE564:  LDR             R0, [R0]; __stack_chk_guard
EE566:  LDR             R0, [R0]
EE568:  STR             R0, [SP,#0x18+var_14]
EE56A:  MOV             R0, R1; this
EE56C:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
EE570:  LDR.W           R1, [R6,#8]!
EE574:  STR             R5, [SP,#0x18+var_18]
EE576:  LDR             R0, [R6,#4]
EE578:  SUBS            R0, R0, R1
EE57A:  CMP.W           R4, R0,ASR#2
EE57E:  BCC             loc_EE58A
EE580:  ADDS            R1, R4, #1
EE582:  MOV             R0, R6
EE584:  BL              sub_EE64C
EE588:  LDR             R1, [R6]
EE58A:  LDR.W           R0, [R1,R4,LSL#2]; this
EE58E:  CBZ             R0, loc_EE596
EE590:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
EE594:  LDR             R1, [R6]
EE596:  MOVS            R0, #0
EE598:  STR             R0, [SP,#0x18+var_18]
EE59A:  MOV             R0, SP
EE59C:  STR.W           R5, [R1,R4,LSL#2]
EE5A0:  BL              sub_EE5D0
EE5A4:  LDR             R0, [SP,#0x18+var_14]
EE5A6:  LDR             R1, =(__stack_chk_guard_ptr - 0xEE5AC)
EE5A8:  ADD             R1, PC; __stack_chk_guard_ptr
EE5AA:  LDR             R1, [R1]; __stack_chk_guard
EE5AC:  LDR             R1, [R1]
EE5AE:  CMP             R1, R0
EE5B0:  ITTT EQ
EE5B2:  ADDEQ           SP, SP, #8
EE5B4:  POPEQ.W         {R11}
EE5B8:  POPEQ           {R4-R7,PC}
EE5BA:  BLX             __stack_chk_fail
