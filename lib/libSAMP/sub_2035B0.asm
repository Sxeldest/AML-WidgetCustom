; =========================================================
; Game Engine Function: sub_2035B0
; Address            : 0x2035B0 - 0x20365E
; =========================================================

2035B0:  PUSH            {R4-R7,LR}
2035B2:  ADD             R7, SP, #0xC
2035B4:  PUSH.W          {R3-R11}
2035B8:  MOV             R5, R0
2035BA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2035C6)
2035BC:  MOV             R9, R1
2035BE:  MOV             R1, #0x7FFFFFFF
2035C2:  ADD             R0, PC; __stack_chk_guard_ptr
2035C4:  MOV             R8, R2
2035C6:  LDR             R0, [R0]; __stack_chk_guard
2035C8:  LDR             R0, [R0]
2035CA:  STR             R0, [SP,#0x30+var_20]
2035CC:  LDRD.W          R11, R10, [R5]
2035D0:  LDR             R0, [R2]
2035D2:  SUBS.W          R0, R0, R11
2035D6:  MOV.W           R4, R0,LSL#1
2035DA:  IT EQ
2035DC:  MOVEQ           R4, #4
2035DE:  CMP             R0, R1
2035E0:  IT CS
2035E2:  MOVCS.W         R4, #0xFFFFFFFF
2035E6:  LDR             R0, =(_ZNSt6__ndk112__do_nothingEPv_ptr - 0x2035EC)
2035E8:  ADD             R0, PC; _ZNSt6__ndk112__do_nothingEPv_ptr
2035EA:  LDR             R6, [R0]; std::__do_nothing(void *)
2035EC:  SUBS.W          R0, R10, R6
2035F0:  IT NE
2035F2:  MOVNE           R0, R11; ptr
2035F4:  LDR.W           R1, [R9]
2035F8:  STR             R1, [SP,#0x30+var_2C]
2035FA:  MOV             R1, R4; size
2035FC:  BLX             realloc
203600:  CBZ             R0, loc_20365A
203602:  CMP             R10, R6
203604:  ITT NE
203606:  MOVNE           R1, #0
203608:  STRNE           R1, [R5]
20360A:  STR             R0, [SP,#0x30+var_28]
20360C:  ADD.W           R10, SP, #0x30+var_28
203610:  LDR             R0, =(free_ptr - 0x203618)
203612:  MOV             R1, R10
203614:  ADD             R0, PC; free_ptr
203616:  LDR             R0, [R0]; __imp_free
203618:  STR             R0, [SP,#0x30+var_24]
20361A:  MOV             R0, R5
20361C:  BL              sub_20F4C2
203620:  MOV             R0, R10
203622:  BL              sub_1FFF50
203626:  LDR             R0, [SP,#0x30+var_2C]
203628:  LDR             R1, [R5]
20362A:  SUB.W           R0, R0, R11
20362E:  ADD             R0, R1
203630:  STR.W           R0, [R9]
203634:  LDR             R1, [R5]
203636:  BIC.W           R0, R4, #3
20363A:  ADD             R0, R1
20363C:  STR.W           R0, [R8]
203640:  LDR             R0, [SP,#0x30+var_20]
203642:  LDR             R1, =(__stack_chk_guard_ptr - 0x203648)
203644:  ADD             R1, PC; __stack_chk_guard_ptr
203646:  LDR             R1, [R1]; __stack_chk_guard
203648:  LDR             R1, [R1]
20364A:  CMP             R1, R0
20364C:  ITTT EQ
20364E:  ADDEQ           SP, SP, #0x14
203650:  POPEQ.W         {R8-R11}
203654:  POPEQ           {R4-R7,PC}
203656:  BLX             __stack_chk_fail
20365A:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
