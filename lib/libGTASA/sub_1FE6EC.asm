; =========================================================
; Game Engine Function: sub_1FE6EC
; Address            : 0x1FE6EC - 0x1FE7A0
; =========================================================

1FE6EC:  PUSH            {R4-R7,LR}
1FE6EE:  ADD             R7, SP, #0xC
1FE6F0:  PUSH.W          {R11}
1FE6F4:  SUB             SP, SP, #0x48
1FE6F6:  MOV             R4, R0
1FE6F8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1FE700)
1FE6FA:  MOV             R5, R1
1FE6FC:  ADD             R0, PC; __stack_chk_guard_ptr
1FE6FE:  LDR             R0, [R0]; __stack_chk_guard
1FE700:  LDR             R0, [R0]
1FE702:  STR             R0, [SP,#0x58+var_14]
1FE704:  LDR.W           R0, [R4,#0x140]
1FE708:  CBZ             R0, loc_1FE73C
1FE70A:  LSRS            R1, R0, #0x10
1FE70C:  ADD             R6, SP, #0x58+var_54
1FE70E:  STRB.W          R0, [SP,#0x58+var_51]
1FE712:  ADR             R3, aUsingZstream; " using zstream"
1FE714:  STRB.W          R1, [SP,#0x58+var_53]
1FE718:  LSRS            R1, R0, #0x18
1FE71A:  LSRS            R0, R0, #8
1FE71C:  STRB.W          R1, [SP,#0x58+var_54]
1FE720:  STRB.W          R0, [SP,#0x58+var_52]
1FE724:  MOV             R0, R6
1FE726:  MOVS            R1, #0x40 ; '@'
1FE728:  MOVS            R2, #4
1FE72A:  BLX             j_png_safecat
1FE72E:  MOV             R0, R4
1FE730:  MOV             R1, R6
1FE732:  BLX             j_png_chunk_warning
1FE736:  MOVS            R0, #0
1FE738:  STR.W           R0, [R4,#0x140]
1FE73C:  LDRB.W          R1, [R4,#0x138]
1FE740:  MOVS            R0, #0
1FE742:  STRD.W          R0, R0, [R4,#0x150]
1FE746:  STRD.W          R0, R0, [R4,#0x144]
1FE74A:  ADD.W           R0, R4, #0x144
1FE74E:  LSLS            R1, R1, #0x1E
1FE750:  BMI             loc_1FE76C
1FE752:  ADR             R1, a113; "1.1.3"
1FE754:  MOVS            R2, #0x38 ; '8'
1FE756:  BLX             j_inflateInit_
1FE75A:  MOV             R6, R0
1FE75C:  CBNZ            R6, loc_1FE774
1FE75E:  LDR.W           R0, [R4,#0x138]
1FE762:  ORR.W           R0, R0, #2
1FE766:  STR.W           R0, [R4,#0x138]
1FE76A:  B               loc_1FE77E
1FE76C:  BLX             j_inflateReset
1FE770:  MOV             R6, R0
1FE772:  CBZ             R6, loc_1FE77E
1FE774:  MOV             R0, R4
1FE776:  MOV             R1, R6
1FE778:  BLX             j_png_zstream_error
1FE77C:  B               loc_1FE784
1FE77E:  STR.W           R5, [R4,#0x140]
1FE782:  MOVS            R6, #0
1FE784:  LDR             R0, =(__stack_chk_guard_ptr - 0x1FE78C)
1FE786:  LDR             R1, [SP,#0x58+var_14]
1FE788:  ADD             R0, PC; __stack_chk_guard_ptr
1FE78A:  LDR             R0, [R0]; __stack_chk_guard
1FE78C:  LDR             R0, [R0]
1FE78E:  SUBS            R0, R0, R1
1FE790:  ITTTT EQ
1FE792:  MOVEQ           R0, R6
1FE794:  ADDEQ           SP, SP, #0x48 ; 'H'
1FE796:  POPEQ.W         {R11}
1FE79A:  POPEQ           {R4-R7,PC}
1FE79C:  BLX             __stack_chk_fail
