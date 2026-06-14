; =========================================================
; Game Engine Function: png_write_cHRM_fixed
; Address            : 0x207838 - 0x207940
; =========================================================

207838:  PUSH            {R4-R7,LR}
20783A:  ADD             R7, SP, #0xC
20783C:  PUSH.W          {R11}
207840:  SUB             SP, SP, #0x30
207842:  MOV             R4, R0
207844:  LDR             R0, =(__stack_chk_guard_ptr - 0x20784E)
207846:  MOV             R5, R1
207848:  ADD             R6, SP, #0x40+var_3C
20784A:  ADD             R0, PC; __stack_chk_guard_ptr
20784C:  LDR             R0, [R0]; __stack_chk_guard
20784E:  LDR             R0, [R0]
207850:  STR             R0, [SP,#0x40+var_14]
207852:  MOV             R0, R6
207854:  LDR             R1, [R5,#0x18]
207856:  BLX             j_png_save_int_32
20785A:  LDR             R1, [R5,#0x1C]
20785C:  ADDS            R0, R6, #4
20785E:  BLX             j_png_save_int_32
207862:  LDR             R1, [R5]
207864:  ADD.W           R0, R6, #8
207868:  BLX             j_png_save_int_32
20786C:  LDR             R1, [R5,#4]
20786E:  ADD.W           R0, R6, #0xC
207872:  BLX             j_png_save_int_32
207876:  LDR             R1, [R5,#8]
207878:  ADD.W           R0, R6, #0x10
20787C:  BLX             j_png_save_int_32
207880:  LDR             R1, [R5,#0xC]
207882:  ADD.W           R0, R6, #0x14
207886:  BLX             j_png_save_int_32
20788A:  LDR             R1, [R5,#0x10]
20788C:  ADD.W           R0, R6, #0x18
207890:  BLX             j_png_save_int_32
207894:  LDR             R1, [R5,#0x14]
207896:  ADD.W           R0, R6, #0x1C
20789A:  BLX             j_png_save_int_32
20789E:  CMP             R4, #0
2078A0:  BEQ             loc_207926
2078A2:  MOVS            R0, #0x22 ; '"'
2078A4:  ADD             R5, SP, #0x40+var_1C
2078A6:  STR.W           R0, [R4,#0x368]
2078AA:  MOV.W           R0, #0x20000000
2078AE:  STR             R0, [SP,#0x40+var_1C]
2078B0:  MOV             R0, #0x4D524863
2078B8:  MOV             R1, R5
2078BA:  STR             R0, [SP,#0x40+var_18]
2078BC:  MOV             R0, R4
2078BE:  MOVS            R2, #8
2078C0:  BLX             j_png_write_data
2078C4:  MOV             R0, #0x6348524D
2078CC:  STR.W           R0, [R4,#0x1DC]
2078D0:  MOV             R0, R4
2078D2:  BLX             j_png_reset_crc
2078D6:  ADDS            R1, R5, #4
2078D8:  MOV             R0, R4
2078DA:  MOVS            R2, #4
2078DC:  BLX             j_png_calculate_crc
2078E0:  ADD             R5, SP, #0x40+var_3C
2078E2:  MOVS            R0, #0x42 ; 'B'
2078E4:  STR.W           R0, [R4,#0x368]
2078E8:  MOV             R0, R4
2078EA:  MOV             R1, R5
2078EC:  MOVS            R2, #0x20 ; ' '
2078EE:  BLX             j_png_write_data
2078F2:  MOV             R0, R4
2078F4:  MOV             R1, R5
2078F6:  MOVS            R2, #0x20 ; ' '
2078F8:  BLX             j_png_calculate_crc
2078FC:  LDR.W           R0, [R4,#0x1F8]
207900:  MOVS            R1, #0x82
207902:  STR.W           R1, [R4,#0x368]
207906:  MOVS            R2, #4
207908:  STRB.W          R0, [SP,#0x40+var_1C+3]
20790C:  LSRS            R1, R0, #0x10
20790E:  STRB.W          R1, [SP,#0x40+var_1C+1]
207912:  LSRS            R1, R0, #0x18
207914:  STRB.W          R1, [SP,#0x40+var_1C]
207918:  LSRS            R0, R0, #8
20791A:  ADD             R1, SP, #0x40+var_1C
20791C:  STRB.W          R0, [SP,#0x40+var_1C+2]
207920:  MOV             R0, R4
207922:  BLX             j_png_write_data
207926:  LDR             R0, =(__stack_chk_guard_ptr - 0x20792E)
207928:  LDR             R1, [SP,#0x40+var_14]
20792A:  ADD             R0, PC; __stack_chk_guard_ptr
20792C:  LDR             R0, [R0]; __stack_chk_guard
20792E:  LDR             R0, [R0]
207930:  SUBS            R0, R0, R1
207932:  ITTT EQ
207934:  ADDEQ           SP, SP, #0x30 ; '0'
207936:  POPEQ.W         {R11}
20793A:  POPEQ           {R4-R7,PC}
20793C:  BLX             __stack_chk_fail
