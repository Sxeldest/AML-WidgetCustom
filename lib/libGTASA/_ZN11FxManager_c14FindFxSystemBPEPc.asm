; =========================================================
; Game Engine Function: _ZN11FxManager_c14FindFxSystemBPEPc
; Address            : 0x36D748 - 0x36D79A
; =========================================================

36D748:  PUSH            {R4,R5,R7,LR}
36D74A:  ADD             R7, SP, #8
36D74C:  SUB             SP, SP, #0x88
36D74E:  MOV             R5, R0
36D750:  LDR             R0, =(__stack_chk_guard_ptr - 0x36D758)
36D752:  MOV             R4, R1
36D754:  ADD             R0, PC; __stack_chk_guard_ptr
36D756:  LDR             R0, [R0]; __stack_chk_guard
36D758:  LDR             R0, [R0]
36D75A:  STR             R0, [SP,#0x90+var_C]
36D75C:  MOV             R0, R4; this
36D75E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36D762:  MOV             R1, R0
36D764:  LDR             R0, [R5]
36D766:  CBNZ            R0, loc_36D76E
36D768:  B               loc_36D776
36D76A:  LDR             R0, [R0,#4]
36D76C:  CBZ             R0, loc_36D776
36D76E:  LDR             R2, [R0,#8]
36D770:  CMP             R1, R2
36D772:  BNE             loc_36D76A
36D774:  B               loc_36D784
36D776:  LDR             R1, =(aCannotFindFxSy - 0x36D780); "Cannot Find Fx System Blueprint - %s"
36D778:  ADD             R0, SP, #0x90+var_8C
36D77A:  MOV             R2, R4
36D77C:  ADD             R1, PC; "Cannot Find Fx System Blueprint - %s"
36D77E:  BL              sub_5E6BC0
36D782:  MOVS            R0, #0
36D784:  LDR             R1, =(__stack_chk_guard_ptr - 0x36D78C)
36D786:  LDR             R2, [SP,#0x90+var_C]
36D788:  ADD             R1, PC; __stack_chk_guard_ptr
36D78A:  LDR             R1, [R1]; __stack_chk_guard
36D78C:  LDR             R1, [R1]
36D78E:  SUBS            R1, R1, R2
36D790:  ITT EQ
36D792:  ADDEQ           SP, SP, #0x88
36D794:  POPEQ           {R4,R5,R7,PC}
36D796:  BLX             __stack_chk_fail
