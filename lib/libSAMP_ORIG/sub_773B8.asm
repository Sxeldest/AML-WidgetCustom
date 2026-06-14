; =========================================================
; Game Engine Function: sub_773B8
; Address            : 0x773B8 - 0x77466
; =========================================================

773B8:  PUSH            {R4-R7,LR}
773BA:  ADD             R7, SP, #0xC
773BC:  PUSH.W          {R11}
773C0:  SUB             SP, SP, #0x40
773C2:  MOV             R4, R0
773C4:  LDR             R0, =(__stack_chk_guard_ptr - 0x773CE)
773C6:  MOV             R5, R1
773C8:  MOV             R1, R2
773CA:  ADD             R0, PC; __stack_chk_guard_ptr
773CC:  MOV             R6, R3
773CE:  LDR             R0, [R0]; __stack_chk_guard
773D0:  LDR             R0, [R0]
773D2:  STR             R0, [SP,#0x50+var_14]
773D4:  ADD             R0, SP, #0x50+var_3C
773D6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
773DA:  ADD             R0, SP, #0x50+var_48
773DC:  MOV             R1, R6
773DE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
773E2:  ADD             R0, SP, #0x50+var_30
773E4:  ADD             R1, SP, #0x50+var_3C
773E6:  ADD             R2, SP, #0x50+var_48
773E8:  BL              sub_77A44
773EC:  LDRB.W          R0, [SP,#0x50+var_48]
773F0:  LSLS            R0, R0, #0x1F
773F2:  ITT NE
773F4:  LDRNE           R0, [SP,#0x50+var_40]; void *
773F6:  BLXNE           j__ZdlPv; operator delete(void *)
773FA:  LDRB.W          R0, [SP,#0x50+var_3C]
773FE:  LSLS            R0, R0, #0x1F
77400:  ITT NE
77402:  LDRNE           R0, [SP,#0x50+var_34]; void *
77404:  BLXNE           j__ZdlPv; operator delete(void *)
77408:  ADDS            R5, #4
7740A:  ADD             R6, SP, #0x50+var_30
7740C:  MOV             R0, R5
7740E:  MOV             R1, R6
77410:  BL              sub_781B2
77414:  CBZ             R0, loc_77436
77416:  LDR             R3, =(unk_51F90 - 0x7741E)
77418:  STR             R6, [SP,#0x50+var_20]
7741A:  ADD             R3, PC; unk_51F90
7741C:  ADD             R0, SP, #0x50+var_24
7741E:  ADD             R1, SP, #0x50+var_20
77420:  MOV             R2, R6
77422:  STRD.W          R1, R0, [SP,#0x50+var_50]
77426:  ADD             R0, SP, #0x50+var_1C
77428:  MOV             R1, R5
7742A:  BL              sub_77C28
7742E:  LDR             R0, [SP,#0x50+var_1C]
77430:  ADD.W           R1, R0, #0x1C
77434:  B               loc_77438
77436:  LDR             R1, [R7,#arg_0]
77438:  MOV             R0, R4
7743A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
7743E:  LDRB.W          R0, [SP,#0x50+var_30]
77442:  LSLS            R0, R0, #0x1F
77444:  ITT NE
77446:  LDRNE           R0, [SP,#0x50+var_28]; void *
77448:  BLXNE           j__ZdlPv; operator delete(void *)
7744C:  LDR             R0, [SP,#0x50+var_14]
7744E:  LDR             R1, =(__stack_chk_guard_ptr - 0x77454)
77450:  ADD             R1, PC; __stack_chk_guard_ptr
77452:  LDR             R1, [R1]; __stack_chk_guard
77454:  LDR             R1, [R1]
77456:  CMP             R1, R0
77458:  ITTT EQ
7745A:  ADDEQ           SP, SP, #0x40 ; '@'
7745C:  POPEQ.W         {R11}
77460:  POPEQ           {R4-R7,PC}
77462:  BLX             __stack_chk_fail
