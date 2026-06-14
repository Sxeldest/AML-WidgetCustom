; =========================================================
; Game Engine Function: sub_1028CC
; Address            : 0x1028CC - 0x1029D2
; =========================================================

1028CC:  PUSH            {R4-R7,LR}
1028CE:  ADD             R7, SP, #0xC
1028D0:  PUSH.W          {R8}
1028D4:  SUB             SP, SP, #0x10
1028D6:  MOV             R4, R0
1028D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1028DE)
1028DA:  ADD             R0, PC; __stack_chk_guard_ptr
1028DC:  LDR             R0, [R0]; __stack_chk_guard
1028DE:  LDR             R0, [R0]
1028E0:  STR             R0, [SP,#0x20+var_14]
1028E2:  LDRD.W          R0, R1, [R4]
1028E6:  SUBS            R1, R1, R0
1028E8:  BEQ             loc_102924
1028EA:  LDRB            R2, [R0]
1028EC:  CMP             R2, #0x64 ; 'd'
1028EE:  BNE             loc_102924
1028F0:  CMP             R1, #1
1028F2:  BEQ             loc_102924
1028F4:  LDRB            R1, [R0,#1]
1028F6:  CMP             R1, #0x58 ; 'X'
1028F8:  BEQ             loc_102946
1028FA:  CMP             R1, #0x78 ; 'x'
1028FC:  BEQ             loc_102988
1028FE:  CMP             R1, #0x69 ; 'i'
102900:  BNE             loc_102924
102902:  ADDS            R0, #2
102904:  STR             R0, [R4]
102906:  MOV             R0, R4
102908:  BL              sub_104164
10290C:  CMP             R0, #0
10290E:  STR             R0, [SP,#0x20+var_18]
102910:  BEQ             loc_1029B6
102912:  MOV             R0, R4
102914:  BL              sub_1028CC
102918:  MOV             R1, R0
10291A:  STR             R0, [SP,#0x20+var_1C]
10291C:  MOVS            R0, #0
10291E:  CMP             R1, #0
102920:  BNE             loc_1029A2
102922:  B               loc_1029B8
102924:  LDR             R0, [SP,#0x20+var_14]
102926:  LDR             R1, =(__stack_chk_guard_ptr - 0x10292C)
102928:  ADD             R1, PC; __stack_chk_guard_ptr
10292A:  LDR             R1, [R1]; __stack_chk_guard
10292C:  LDR             R1, [R1]
10292E:  CMP             R1, R0
102930:  ITTTT EQ
102932:  MOVEQ           R0, R4
102934:  ADDEQ           SP, SP, #0x10
102936:  POPEQ.W         {R8}
10293A:  POPEQ.W         {R4-R7,LR}
10293E:  IT EQ
102940:  BEQ.W           sub_1006E0
102944:  B               loc_1029CE
102946:  ADDS            R0, #2
102948:  STR             R0, [R4]
10294A:  MOV             R0, R4
10294C:  BL              sub_1006E0
102950:  CBZ             R0, loc_1029B6
102952:  MOV             R5, R0
102954:  MOV             R0, R4
102956:  BL              sub_1006E0
10295A:  CBZ             R0, loc_1029B6
10295C:  MOV             R6, R0
10295E:  MOV             R0, R4
102960:  BL              sub_1028CC
102964:  CBZ             R0, loc_1029B6
102966:  MOV             R8, R0
102968:  ADD.W           R0, R4, #0x198
10296C:  MOVS            R1, #0x14
10296E:  BL              sub_FFA98
102972:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle15BracedRangeExprE - 0x10297A); `vtable for'`anonymous namespace'::itanium_demangle::BracedRangeExpr ...
102974:  LDR             R1, =0x101014A
102976:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::BracedRangeExpr
102978:  ADDS            R2, #8
10297A:  STRD.W          R2, R1, [R0]
10297E:  ADD.W           R1, R0, #8
102982:  STM.W           R1, {R5,R6,R8}
102986:  B               loc_1029B8
102988:  ADDS            R0, #2
10298A:  STR             R0, [R4]
10298C:  MOV             R0, R4
10298E:  BL              sub_1006E0
102992:  STR             R0, [SP,#0x20+var_18]
102994:  CBZ             R0, loc_1029B6
102996:  MOV             R0, R4
102998:  BL              sub_1028CC
10299C:  STR             R0, [SP,#0x20+var_1C]
10299E:  CBZ             R0, loc_1029B6
1029A0:  MOVS            R0, #1
1029A2:  STRB.W          R0, [R7,#var_1D]
1029A6:  ADD             R1, SP, #0x20+var_18
1029A8:  ADD             R2, SP, #0x20+var_1C
1029AA:  SUB.W           R3, R7, #-var_1D
1029AE:  MOV             R0, R4
1029B0:  BL              sub_104E58
1029B4:  B               loc_1029B8
1029B6:  MOVS            R0, #0
1029B8:  LDR             R1, [SP,#0x20+var_14]
1029BA:  LDR             R2, =(__stack_chk_guard_ptr - 0x1029C0)
1029BC:  ADD             R2, PC; __stack_chk_guard_ptr
1029BE:  LDR             R2, [R2]; __stack_chk_guard
1029C0:  LDR             R2, [R2]
1029C2:  CMP             R2, R1
1029C4:  ITTT EQ
1029C6:  ADDEQ           SP, SP, #0x10
1029C8:  POPEQ.W         {R8}
1029CC:  POPEQ           {R4-R7,PC}
1029CE:  BLX             __stack_chk_fail
