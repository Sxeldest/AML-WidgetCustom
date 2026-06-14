; =========================================================
; Game Engine Function: sub_688B0
; Address            : 0x688B0 - 0x6896A
; =========================================================

688B0:  PUSH            {R4-R7,LR}
688B2:  ADD             R7, SP, #0xC
688B4:  PUSH.W          {R8,R9,R11}
688B8:  SUB             SP, SP, #8
688BA:  MOV             R4, R1
688BC:  LDR             R1, =(__stack_chk_guard_ptr - 0x688C4)
688BE:  CMP             R0, #0
688C0:  ADD             R1, PC; __stack_chk_guard_ptr
688C2:  LDR             R1, [R1]; __stack_chk_guard
688C4:  LDR             R1, [R1]
688C6:  STR             R1, [SP,#0x20+var_1C]
688C8:  IT NE
688CA:  CMPNE           R4, #0
688CC:  BNE             loc_688FC
688CE:  LDR             R1, =(aSampOrig - 0x688DA); "SAMP_ORIG" ...
688D0:  MOVS            R0, #4; prio
688D2:  LDR             R2, =(aTextureSWasNot - 0x688DC); "Texture \"%s\" was not found!" ...
688D4:  MOV             R3, R4
688D6:  ADD             R1, PC; "SAMP_ORIG"
688D8:  ADD             R2, PC; "Texture \"%s\" was not found!"
688DA:  BLX             __android_log_print
688DE:  MOVS            R5, #0
688E0:  LDR             R0, [SP,#0x20+var_1C]
688E2:  LDR             R1, =(__stack_chk_guard_ptr - 0x688E8)
688E4:  ADD             R1, PC; __stack_chk_guard_ptr
688E6:  LDR             R1, [R1]; __stack_chk_guard
688E8:  LDR             R1, [R1]
688EA:  CMP             R1, R0
688EC:  ITTTT EQ
688EE:  MOVEQ           R0, R5
688F0:  ADDEQ           SP, SP, #8
688F2:  POPEQ.W         {R8,R9,R11}
688F6:  POPEQ           {R4-R7,PC}
688F8:  BLX             __stack_chk_fail
688FC:  LDR             R0, =(off_114AA8 - 0x6890A)
688FE:  MOV             R8, #0x5D41C5
68906:  ADD             R0, PC; off_114AA8
68908:  LDR             R6, [R0]; dword_1A4404
6890A:  LDR             R1, [R6]
6890C:  LDR             R0, =(byte_4CC4A - 0x68914)
6890E:  ADD             R1, R8
68910:  ADD             R0, PC; byte_4CC4A
68912:  SUB.W           R1, R1, #0x364
68916:  BLX             R1
68918:  MOV             R5, R0
6891A:  ADDS            R0, #1
6891C:  BEQ             loc_688CE
6891E:  LDR             R0, [R6]
68920:  ADD             R0, R8
68922:  SUBS            R0, #0x40 ; '@'
68924:  BLX             R0
68926:  LDR             R0, [R6]
68928:  MOVS            R1, #0
6892A:  MOV.W           R9, #0
6892E:  ADD             R0, R8
68930:  SUB.W           R2, R0, #0xD0
68934:  MOV             R0, R5
68936:  BLX             R2
68938:  LDR             R0, [R6]
6893A:  MOV             R1, #0x5C8839
68942:  STR.W           R9, [SP,#0x20+var_20]
68946:  ADDS            R2, R0, R1
68948:  MOV             R0, SP
6894A:  MOV             R1, R4
6894C:  BLX             R2
6894E:  LDR             R5, [SP,#0x20+var_20]
68950:  CBZ             R5, loc_68962
68952:  LDR             R0, [R5,#0x54]
68954:  LDR             R1, [R6]
68956:  ADDS            R0, #1
68958:  STR             R0, [R5,#0x54]
6895A:  ADD.W           R0, R1, R8
6895E:  BLX             R0
68960:  B               loc_688E0
68962:  LDR             R0, [R6]
68964:  ADD             R0, R8
68966:  BLX             R0
68968:  B               loc_688CE
