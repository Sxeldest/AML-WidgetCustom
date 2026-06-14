; =========================================================
; Game Engine Function: _ZN9ES2Shader12CheckCompileEjjPKc
; Address            : 0x1CC6F0 - 0x1CC7BA
; =========================================================

1CC6F0:  PUSH            {R4-R7,LR}
1CC6F2:  ADD             R7, SP, #0xC
1CC6F4:  PUSH.W          {R8-R11}
1CC6F8:  SUB.W           SP, SP, #0x20C
1CC6FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CC708)
1CC6FE:  MOV             R8, R1
1CC700:  ADD             R2, SP, #0x228+var_224
1CC702:  MOVS            R6, #0
1CC704:  ADD             R0, PC; __stack_chk_guard_ptr
1CC706:  MOVW            R1, #0x8B81
1CC70A:  MOV             R5, R3
1CC70C:  LDR             R0, [R0]; __stack_chk_guard
1CC70E:  LDR             R0, [R0]
1CC710:  STR             R0, [SP,#0x228+var_20]
1CC712:  MOV             R0, R8
1CC714:  STR             R6, [SP,#0x228+var_224]
1CC716:  BLX             glGetShaderiv
1CC71A:  LDR             R0, [SP,#0x228+var_224]
1CC71C:  CBZ             R0, loc_1CC722
1CC71E:  MOVS            R0, #1
1CC720:  B               loc_1CC79E
1CC722:  LDR.W           R9, =(byte_61CD7E - 0x1CC732)
1CC726:  ADD.W           R11, SP, #0x228+var_220
1CC72A:  LDR.W           R10, =(asc_5EA852 - 0x1CC734); "    "
1CC72E:  ADD             R9, PC; byte_61CD7E
1CC730:  ADD             R10, PC; "    "
1CC732:  B               loc_1CC770
1CC734:  CMP             R0, #0x7D ; '}'
1CC736:  MOV.W           R0, #0
1CC73A:  IT NE
1CC73C:  MOVNE           R0, #1
1CC73E:  MOV             R1, R9
1CC740:  ANDS            R6, R0
1CC742:  MOV             R0, R11; char *
1CC744:  IT NE
1CC746:  MOVNE           R1, R10; char *
1CC748:  BLX             strcpy
1CC74C:  RSB.W           R0, R4, #1
1CC750:  MOV             R1, R4; char *
1CC752:  ADDS            R2, R0, R5; size_t
1CC754:  MOV             R0, R11; char *
1CC756:  BLX             strncat
1CC75A:  MOV             R0, R11; fmt
1CC75C:  LDRB.W          R4, [R5],#1
1CC760:  BLX             j__Z11OS_DebugOutPKc; OS_DebugOut(char const*)
1CC764:  CMP             R4, #0x7B ; '{'
1CC766:  MOV.W           R0, #0
1CC76A:  IT EQ
1CC76C:  MOVEQ           R0, #1
1CC76E:  ORRS            R6, R0
1CC770:  MOV             R4, R5
1CC772:  B               loc_1CC776
1CC774:  ADDS            R5, #1
1CC776:  LDRB            R0, [R5]
1CC778:  CMP             R0, #0x7A ; 'z'
1CC77A:  BGT             loc_1CC784
1CC77C:  CBZ             R0, loc_1CC78E
1CC77E:  CMP             R0, #0x3B ; ';'
1CC780:  BNE             loc_1CC774
1CC782:  B               loc_1CC734
1CC784:  CMP             R0, #0x7B ; '{'
1CC786:  IT NE
1CC788:  CMPNE           R0, #0x7D ; '}'
1CC78A:  BNE             loc_1CC774
1CC78C:  B               loc_1CC734
1CC78E:  ADD             R3, SP, #0x228+var_220
1CC790:  MOV             R2, SP
1CC792:  MOV             R0, R8
1CC794:  MOV.W           R1, #0x200
1CC798:  BLX             glGetShaderInfoLog
1CC79C:  MOVS            R0, #0
1CC79E:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CC7A6)
1CC7A0:  LDR             R2, [SP,#0x228+var_20]
1CC7A2:  ADD             R1, PC; __stack_chk_guard_ptr
1CC7A4:  LDR             R1, [R1]; __stack_chk_guard
1CC7A6:  LDR             R1, [R1]
1CC7A8:  SUBS            R1, R1, R2
1CC7AA:  ITTT EQ
1CC7AC:  ADDEQ.W         SP, SP, #0x20C
1CC7B0:  POPEQ.W         {R8-R11}
1CC7B4:  POPEQ           {R4-R7,PC}
1CC7B6:  BLX             __stack_chk_fail
