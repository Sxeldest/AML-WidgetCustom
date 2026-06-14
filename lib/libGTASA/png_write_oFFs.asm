; =========================================================
; Game Engine Function: png_write_oFFs
; Address            : 0x20870C - 0x2087F0
; =========================================================

20870C:  PUSH            {R4-R7,LR}
20870E:  ADD             R7, SP, #0xC
208710:  PUSH.W          {R8,R9,R11}
208714:  SUB             SP, SP, #0x18
208716:  MOV             R4, R0
208718:  LDR             R0, =(__stack_chk_guard_ptr - 0x208722)
20871A:  MOV             R5, R3
20871C:  MOV             R8, R2
20871E:  ADD             R0, PC; __stack_chk_guard_ptr
208720:  MOV             R9, R1
208722:  CMP             R5, #2
208724:  LDR             R0, [R0]; __stack_chk_guard
208726:  LDR             R0, [R0]
208728:  STR             R0, [SP,#0x30+var_1C]
20872A:  BLT             loc_208734
20872C:  ADR             R1, aUnrecognizedUn; "Unrecognized unit type for oFFs chunk"
20872E:  MOV             R0, R4
208730:  BLX             j_png_warning
208734:  SUB.W           R6, R7, #-var_2D
208738:  MOV             R1, R9
20873A:  MOV             R0, R6
20873C:  BLX             j_png_save_int_32
208740:  ADDS            R0, R6, #4
208742:  MOV             R1, R8
208744:  BLX             j_png_save_int_32
208748:  CMP             R4, #0
20874A:  STRB.W          R5, [R7,#var_25]
20874E:  BEQ             loc_2087D6
208750:  MOVS            R0, #0x22 ; '"'
208752:  ADD             R5, SP, #0x30+var_24
208754:  STR.W           R0, [R4,#0x368]
208758:  MOV.W           R0, #0x9000000
20875C:  STR             R0, [SP,#0x30+var_24]
20875E:  MOV             R0, #0x7346466F
208766:  MOV             R1, R5
208768:  STR             R0, [SP,#0x30+var_20]
20876A:  MOV             R0, R4
20876C:  MOVS            R2, #8
20876E:  BLX             j_png_write_data
208772:  MOV             R0, #0x6F464673
20877A:  STR.W           R0, [R4,#0x1DC]
20877E:  MOV             R0, R4
208780:  BLX             j_png_reset_crc
208784:  ADDS            R1, R5, #4
208786:  MOV             R0, R4
208788:  MOVS            R2, #4
20878A:  BLX             j_png_calculate_crc
20878E:  SUB.W           R5, R7, #-var_2D
208792:  MOVS            R0, #0x42 ; 'B'
208794:  STR.W           R0, [R4,#0x368]
208798:  MOV             R0, R4
20879A:  MOV             R1, R5
20879C:  MOVS            R2, #9
20879E:  BLX             j_png_write_data
2087A2:  MOV             R0, R4
2087A4:  MOV             R1, R5
2087A6:  MOVS            R2, #9
2087A8:  BLX             j_png_calculate_crc
2087AC:  LDR.W           R0, [R4,#0x1F8]
2087B0:  MOVS            R1, #0x82
2087B2:  STR.W           R1, [R4,#0x368]
2087B6:  MOVS            R2, #4
2087B8:  STRB.W          R0, [SP,#0x30+var_24+3]
2087BC:  LSRS            R1, R0, #0x10
2087BE:  STRB.W          R1, [SP,#0x30+var_24+1]
2087C2:  LSRS            R1, R0, #0x18
2087C4:  STRB.W          R1, [SP,#0x30+var_24]
2087C8:  LSRS            R0, R0, #8
2087CA:  ADD             R1, SP, #0x30+var_24
2087CC:  STRB.W          R0, [SP,#0x30+var_24+2]
2087D0:  MOV             R0, R4
2087D2:  BLX             j_png_write_data
2087D6:  LDR             R0, =(__stack_chk_guard_ptr - 0x2087DE)
2087D8:  LDR             R1, [SP,#0x30+var_1C]
2087DA:  ADD             R0, PC; __stack_chk_guard_ptr
2087DC:  LDR             R0, [R0]; __stack_chk_guard
2087DE:  LDR             R0, [R0]
2087E0:  SUBS            R0, R0, R1
2087E2:  ITTT EQ
2087E4:  ADDEQ           SP, SP, #0x18
2087E6:  POPEQ.W         {R8,R9,R11}
2087EA:  POPEQ           {R4-R7,PC}
2087EC:  BLX             __stack_chk_fail
