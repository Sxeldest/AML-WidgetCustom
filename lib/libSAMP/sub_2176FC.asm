; =========================================================
; Game Engine Function: sub_2176FC
; Address            : 0x2176FC - 0x217780
; =========================================================

2176FC:  PUSH            {R4-R7,LR}
2176FE:  ADD             R7, SP, #0xC
217700:  PUSH.W          {R5-R11}
217704:  MOV             R5, R0
217706:  LDR             R0, =(__stack_chk_guard_ptr - 0x217712)
217708:  ADD.W           R10, R5, #0x198
21770C:  MOV             R4, R1
21770E:  ADD             R0, PC; __stack_chk_guard_ptr
217710:  MOV             R8, SP
217712:  LDR             R0, [R0]; __stack_chk_guard
217714:  LDR             R0, [R0]
217716:  STR             R0, [SP,#0x28+var_20]
217718:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle10AbiTagAttrE - 0x21771E); `vtable for'`anonymous namespace'::itanium_demangle::AbiTagAttr ...
21771A:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::AbiTagAttr
21771C:  ADD.W           R11, R0, #8
217720:  LDRD.W          R0, R1, [R5]
217724:  CMP             R0, R1
217726:  BEQ             loc_217766
217728:  LDRB            R1, [R0]
21772A:  CMP             R1, #0x42 ; 'B'
21772C:  BNE             loc_217766
21772E:  ADDS            R0, #1
217730:  STR             R0, [R5]
217732:  MOV             R0, R8
217734:  MOV             R1, R5
217736:  BL              sub_21C7E4
21773A:  LDRD.W          R6, R9, [SP,#0x28+var_28]
21773E:  CMP             R6, R9
217740:  BEQ             loc_217764
217742:  MOV             R0, R10
217744:  MOVS            R1, #0x14
217746:  BL              sub_216EF0
21774A:  MOVS            R1, #8
21774C:  STR             R4, [R0,#8]
21774E:  STRB            R1, [R0,#4]
217750:  STR.W           R11, [R0]
217754:  LDRH            R1, [R4,#6]
217756:  LDRB            R2, [R4,#5]
217758:  MOV             R4, R0
21775A:  STRD.W          R6, R9, [R0,#0xC]
21775E:  STRB            R2, [R0,#5]
217760:  STRH            R1, [R0,#6]
217762:  B               loc_217720
217764:  MOVS            R4, #0
217766:  LDR             R0, [SP,#0x28+var_20]
217768:  LDR             R1, =(__stack_chk_guard_ptr - 0x21776E)
21776A:  ADD             R1, PC; __stack_chk_guard_ptr
21776C:  LDR             R1, [R1]; __stack_chk_guard
21776E:  LDR             R1, [R1]
217770:  CMP             R1, R0
217772:  ITTT EQ
217774:  MOVEQ           R0, R4
217776:  POPEQ.W         {R1-R3,R8-R11}
21777A:  POPEQ           {R4-R7,PC}
21777C:  BLX             __stack_chk_fail
