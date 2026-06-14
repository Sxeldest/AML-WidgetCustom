; =========================================================
; Game Engine Function: sub_EB6F8
; Address            : 0xEB6F8 - 0xEB7A6
; =========================================================

EB6F8:  PUSH            {R4-R7,LR}
EB6FA:  ADD             R7, SP, #0xC
EB6FC:  PUSH.W          {R3-R11}
EB700:  MOV             R5, R0
EB702:  LDR             R0, =(__stack_chk_guard_ptr - 0xEB70E)
EB704:  MOV             R9, R1
EB706:  MOV             R1, #0x7FFFFFFF
EB70A:  ADD             R0, PC; __stack_chk_guard_ptr
EB70C:  MOV             R8, R2
EB70E:  LDR             R0, [R0]; __stack_chk_guard
EB710:  LDR             R0, [R0]
EB712:  STR             R0, [SP,#0x30+var_20]
EB714:  LDRD.W          R11, R10, [R5]
EB718:  LDR             R0, [R2]
EB71A:  SUBS.W          R0, R0, R11
EB71E:  MOV.W           R4, R0,LSL#1
EB722:  IT EQ
EB724:  MOVEQ           R4, #4
EB726:  CMP             R0, R1
EB728:  IT CS
EB72A:  MOVCS.W         R4, #0xFFFFFFFF
EB72E:  LDR             R0, =(_ZNSt6__ndk112__do_nothingEPv_ptr - 0xEB734)
EB730:  ADD             R0, PC; _ZNSt6__ndk112__do_nothingEPv_ptr
EB732:  LDR             R6, [R0]; std::__do_nothing(void *)
EB734:  SUBS.W          R0, R10, R6
EB738:  IT NE
EB73A:  MOVNE           R0, R11; ptr
EB73C:  LDR.W           R1, [R9]
EB740:  STR             R1, [SP,#0x30+var_2C]
EB742:  MOV             R1, R4; size
EB744:  BLX             realloc
EB748:  CBZ             R0, loc_EB7A2
EB74A:  CMP             R10, R6
EB74C:  ITT NE
EB74E:  MOVNE           R1, #0
EB750:  STRNE           R1, [R5]
EB752:  STR             R0, [SP,#0x30+var_28]
EB754:  ADD.W           R10, SP, #0x30+var_28
EB758:  LDR             R0, =(free_ptr - 0xEB760)
EB75A:  MOV             R1, R10
EB75C:  ADD             R0, PC; free_ptr
EB75E:  LDR             R0, [R0]; __imp_free
EB760:  STR             R0, [SP,#0x30+var_24]
EB762:  MOV             R0, R5
EB764:  BL              sub_F7672
EB768:  MOV             R0, R10
EB76A:  BL              sub_E8070
EB76E:  LDR             R0, [SP,#0x30+var_2C]
EB770:  LDR             R1, [R5]
EB772:  SUB.W           R0, R0, R11
EB776:  ADD             R0, R1
EB778:  STR.W           R0, [R9]
EB77C:  LDR             R1, [R5]
EB77E:  BIC.W           R0, R4, #3
EB782:  ADD             R0, R1
EB784:  STR.W           R0, [R8]
EB788:  LDR             R0, [SP,#0x30+var_20]
EB78A:  LDR             R1, =(__stack_chk_guard_ptr - 0xEB790)
EB78C:  ADD             R1, PC; __stack_chk_guard_ptr
EB78E:  LDR             R1, [R1]; __stack_chk_guard
EB790:  LDR             R1, [R1]
EB792:  CMP             R1, R0
EB794:  ITTT EQ
EB796:  ADDEQ           SP, SP, #0x14
EB798:  POPEQ.W         {R8-R11}
EB79C:  POPEQ           {R4-R7,PC}
EB79E:  BLX             __stack_chk_fail
EB7A2:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
