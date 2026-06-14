; =========================================================
; Game Engine Function: sub_21B5BC
; Address            : 0x21B5BC - 0x21B64C
; =========================================================

21B5BC:  PUSH            {R0-R5,R7,LR}
21B5BE:  ADD             R7, SP, #0x18
21B5C0:  MOV             R4, R0
21B5C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x21B5CA)
21B5C4:  MOVS            R5, #0
21B5C6:  ADD             R0, PC; __stack_chk_guard_ptr
21B5C8:  LDR             R0, [R0]; __stack_chk_guard
21B5CA:  LDR             R0, [R0]
21B5CC:  STR             R0, [SP,#0x18+var_C]
21B5CE:  MOV             R0, R4
21B5D0:  STR             R5, [SP,#0x18+var_10]
21B5D2:  ADD             R1, SP, #0x18+var_10
21B5D4:  BL              sub_2178F6
21B5D8:  CBNZ            R0, loc_21B628
21B5DA:  LDRD.W          R0, R1, [R4]
21B5DE:  SUBS            R2, R1, R0
21B5E0:  LDR             R1, [SP,#0x18+var_10]
21B5E2:  CMP             R2, R1
21B5E4:  BCC             loc_21B626
21B5E6:  CBZ             R1, loc_21B626
21B5E8:  STR             R0, [SP,#0x18+var_18]
21B5EA:  ADD             R0, R1
21B5EC:  STR             R0, [R4]
21B5EE:  STR             R0, [SP,#0x18+var_14]
21B5F0:  MOV             R0, SP
21B5F2:  LDR             R1, =(aGlobalN - 0x21B5F8); "_GLOBAL__N" ...
21B5F4:  ADD             R1, PC; "_GLOBAL__N"
21B5F6:  ADD.W           R2, R1, #0xA
21B5FA:  BL              sub_2166CC
21B5FE:  CBZ             R0, loc_21B640
21B600:  ADD.W           R0, R4, #0x198
21B604:  MOVS            R1, #0x10
21B606:  BL              sub_216EF0
21B60A:  LDR             R1, =(aAnonymousNames - 0x21B614); "(anonymous namespace)" ...
21B60C:  MOV             R5, R0
21B60E:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21B61C); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21B610:  ADD             R1, PC; "(anonymous namespace)"
21B612:  LDR             R0, =0x1010107
21B614:  ADD.W           R2, R1, #0x15
21B618:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21B61A:  ADDS            R3, #8
21B61C:  STRD.W          R3, R0, [R5]
21B620:  STRD.W          R1, R2, [R5,#8]
21B624:  B               loc_21B628
21B626:  MOVS            R5, #0
21B628:  LDR             R0, [SP,#0x18+var_C]
21B62A:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B630)
21B62C:  ADD             R1, PC; __stack_chk_guard_ptr
21B62E:  LDR             R1, [R1]; __stack_chk_guard
21B630:  LDR             R1, [R1]
21B632:  CMP             R1, R0
21B634:  ITTT EQ
21B636:  MOVEQ           R0, R5
21B638:  ADDEQ           SP, SP, #0x10
21B63A:  POPEQ           {R4,R5,R7,PC}
21B63C:  BLX             __stack_chk_fail
21B640:  MOV             R1, SP
21B642:  MOV             R0, R4
21B644:  BL              sub_21B664
21B648:  MOV             R5, R0
21B64A:  B               loc_21B628
