; =========================================================
; Game Engine Function: sub_DC6DC
; Address            : 0xDC6DC - 0xDC7DA
; =========================================================

DC6DC:  PUSH            {R4-R7,LR}
DC6DE:  ADD             R7, SP, #0xC
DC6E0:  PUSH.W          {R8,R9,R11}
DC6E4:  MOV             R6, R0
DC6E6:  MOV             R0, R1; s
DC6E8:  MOV             R8, R1
DC6EA:  BLX             strlen
DC6EE:  CMN.W           R0, #0x10
DC6F2:  BCS             loc_DC736
DC6F4:  MOV             R5, R0
DC6F6:  CMP             R0, #0xB
DC6F8:  BCS             loc_DC706
DC6FA:  LSLS            R0, R5, #1
DC6FC:  MOV             R4, R6
DC6FE:  STRB.W          R0, [R4],#1
DC702:  CBNZ            R5, loc_DC720
DC704:  B               loc_DC72A
DC706:  ADD.W           R0, R5, #0x10
DC70A:  BIC.W           R9, R0, #0xF
DC70E:  MOV             R0, R9; unsigned int
DC710:  BLX             j__Znwj; operator new(uint)
DC714:  MOV             R4, R0
DC716:  ADD.W           R0, R9, #1
DC71A:  STRD.W          R0, R5, [R6]
DC71E:  STR             R4, [R6,#8]
DC720:  MOV             R0, R4; dest
DC722:  MOV             R1, R8; src
DC724:  MOV             R2, R5; n
DC726:  BLX             j_memcpy
DC72A:  MOVS            R0, #0
DC72C:  STRB            R0, [R4,R5]
DC72E:  MOV             R0, R6
DC730:  POP.W           {R8,R9,R11}
DC734:  POP             {R4-R7,PC}
DC736:  MOV             R0, R6
DC738:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
DC73C:  PUSH            {R4-R7,LR}
DC73E:  ADD             R7, SP, #0xC
DC740:  PUSH.W          {R8}
DC744:  SUB             SP, SP, #0x18
DC746:  MOV             R4, R0
DC748:  LDR             R0, =(__stack_chk_guard_ptr - 0xDC750)
DC74A:  MOV             R8, R1
DC74C:  ADD             R0, PC; __stack_chk_guard_ptr
DC74E:  LDR             R0, [R0]; __stack_chk_guard
DC750:  LDR             R0, [R0]
DC752:  STR             R0, [SP,#0x28+var_14]
DC754:  LDRD.W          R0, R1, [R4]
DC758:  SUBS            R5, R1, R0
DC75A:  ADDS            R6, R5, #1
DC75C:  CMP.W           R6, #0xFFFFFFFF
DC760:  BLE             loc_DC7D4
DC762:  MOV             R1, R4
DC764:  LDR.W           R2, [R1,#8]!
DC768:  STR             R1, [SP,#0x28+var_18]
DC76A:  MOV             R1, #0x3FFFFFFF
DC76E:  SUBS            R0, R2, R0
DC770:  CMP.W           R6, R0,LSL#1
DC774:  IT LS
DC776:  LSLLS           R6, R0, #1
DC778:  CMP             R0, R1
DC77A:  IT CS
DC77C:  MOVCS           R6, #0x7FFFFFFF
DC780:  CBZ             R6, loc_DC78A
DC782:  MOV             R0, R6; unsigned int
DC784:  BLX             j__Znwj; operator new(uint)
DC788:  B               loc_DC78C
DC78A:  MOVS            R0, #0
DC78C:  ADDS            R1, R0, R6
DC78E:  STR             R1, [SP,#0x28+var_1C]
DC790:  LDRB.W          R1, [R8]
DC794:  ADDS            R2, R0, R5
DC796:  STRD.W          R0, R2, [SP,#0x28+var_28]
DC79A:  STRB.W          R1, [R2],#1
DC79E:  STR             R2, [SP,#0x28+var_20]
DC7A0:  MOV             R1, SP
DC7A2:  MOV             R0, R4
DC7A4:  BL              sub_DC7F8
DC7A8:  LDRD.W          R0, R1, [SP,#0x28+var_24]
DC7AC:  CMP             R1, R0
DC7AE:  IT NE
DC7B0:  STRNE           R0, [SP,#0x28+var_20]
DC7B2:  LDR             R0, [SP,#0x28+var_28]; void *
DC7B4:  CBZ             R0, loc_DC7BA
DC7B6:  BLX             j__ZdlPv; operator delete(void *)
DC7BA:  LDR             R0, [SP,#0x28+var_14]
DC7BC:  LDR             R1, =(__stack_chk_guard_ptr - 0xDC7C2)
DC7BE:  ADD             R1, PC; __stack_chk_guard_ptr
DC7C0:  LDR             R1, [R1]; __stack_chk_guard
DC7C2:  LDR             R1, [R1]
DC7C4:  CMP             R1, R0
DC7C6:  ITTT EQ
DC7C8:  ADDEQ           SP, SP, #0x18
DC7CA:  POPEQ.W         {R8}
DC7CE:  POPEQ           {R4-R7,PC}
DC7D0:  BLX             __stack_chk_fail
DC7D4:  MOV             R0, R4
DC7D6:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
