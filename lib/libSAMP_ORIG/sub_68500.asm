; =========================================================
; Game Engine Function: sub_68500
; Address            : 0x68500 - 0x68582
; =========================================================

68500:  PUSH            {R4-R7,LR}
68502:  ADD             R7, SP, #0xC
68504:  PUSH.W          {R11}
68508:  SUB             SP, SP, #0x18
6850A:  MOV             R4, R0
6850C:  LDR             R0, =(__stack_chk_guard_ptr - 0x68516)
6850E:  MOV             R5, SP
68510:  MOV             R3, R1
68512:  ADD             R0, PC; __stack_chk_guard_ptr
68514:  LDR             R0, [R0]; __stack_chk_guard
68516:  LDR             R0, [R0]
68518:  STR             R0, [SP,#0x28+var_14]
6851A:  MOV             R0, R5
6851C:  BL              sub_6858C
68520:  MOV             R0, R5; s
68522:  BLX             strlen
68526:  CMN.W           R0, #0x10
6852A:  BCS             loc_6857C
6852C:  MOV             R5, R0
6852E:  CMP             R0, #0xB
68530:  BCS             loc_6853C
68532:  LSLS            R0, R5, #1
68534:  STRB.W          R0, [R4],#1
68538:  CBNZ            R5, loc_68554
6853A:  B               loc_6855E
6853C:  ADD.W           R0, R5, #0x10
68540:  BIC.W           R6, R0, #0xF
68544:  MOV             R0, R6; unsigned int
68546:  BLX             j__Znwj; operator new(uint)
6854A:  ADDS            R1, R6, #1
6854C:  STRD.W          R1, R5, [R4]
68550:  STR             R0, [R4,#8]
68552:  MOV             R4, R0
68554:  MOV             R1, SP; src
68556:  MOV             R0, R4; dest
68558:  MOV             R2, R5; n
6855A:  BLX             j_memcpy
6855E:  MOVS            R0, #0
68560:  STRB            R0, [R4,R5]
68562:  LDR             R0, [SP,#0x28+var_14]
68564:  LDR             R1, =(__stack_chk_guard_ptr - 0x6856A)
68566:  ADD             R1, PC; __stack_chk_guard_ptr
68568:  LDR             R1, [R1]; __stack_chk_guard
6856A:  LDR             R1, [R1]
6856C:  CMP             R1, R0
6856E:  ITTT EQ
68570:  ADDEQ           SP, SP, #0x18
68572:  POPEQ.W         {R11}
68576:  POPEQ           {R4-R7,PC}
68578:  BLX             __stack_chk_fail
6857C:  MOV             R0, R4
6857E:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
