; =========================================================
; Game Engine Function: sub_220844
; Address            : 0x220844 - 0x22091E
; =========================================================

220844:  PUSH            {R4-R7,LR}
220846:  ADD             R7, SP, #0xC
220848:  PUSH.W          {R8-R11}
22084C:  SUB             SP, SP, #0x24
22084E:  MOV             R9, R0
220850:  LDR             R0, =(__stack_chk_guard_ptr - 0x22085A)
220852:  MOV             R8, R3
220854:  MOV             R11, R2
220856:  ADD             R0, PC; __stack_chk_guard_ptr
220858:  MOV             R5, R1
22085A:  LDR             R0, [R0]; __stack_chk_guard
22085C:  LDR             R0, [R0]
22085E:  STR             R0, [SP,#0x40+var_20]
220860:  MOVS            R0, #0
220862:  STR             R0, [SP,#0x40+var_24]
220864:  CBZ             R2, loc_22086A
220866:  STR.W           R5, [R11]
22086A:  MOV             R0, R5; s
22086C:  BLX             wcslen
220870:  LSLS            R0, R0, #2
220872:  ADDS            R4, R0, #1
220874:  MOV             R0, R4; unsigned int
220876:  BLX             j__Znaj; operator new[](uint)
22087A:  STRD.W          R5, R0, [SP,#0x40+var_2C]
22087E:  ADD             R1, SP, #0x40+var_2C
220880:  ADD             R3, SP, #0x40+var_24
220882:  MOV             R2, R4
220884:  MOV             R6, R0
220886:  BL              sub_2200EC
22088A:  ADDS            R0, #1
22088C:  BEQ             loc_2208EC
22088E:  ADD             R1, SP, #0x40+var_30
220890:  MOV             R0, R6
220892:  MOV             R2, R8
220894:  BLX             R9
220896:  MOV             R8, R0
220898:  MOV             R9, R1
22089A:  CMP.W           R11, #0
22089E:  BEQ             loc_2208F4
2208A0:  BLX             __errno
2208A4:  MOV             R10, R0
2208A6:  LDR             R0, [SP,#0x40+var_30]
2208A8:  LDR.W           R1, [R10]
2208AC:  SUBS            R4, R0, R6
2208AE:  STR             R1, [SP,#0x40+var_3C]
2208B0:  ADDS            R0, R4, #1; unsigned int
2208B2:  BLX             j__Znaj; operator new[](uint)
2208B6:  MOV             R1, R6; src
2208B8:  MOV             R2, R4; n
2208BA:  STR             R0, [SP,#0x40+var_34]
2208BC:  BLX             strncpy
2208C0:  MOVS            R1, #0
2208C2:  STR             R0, [SP,#0x40+var_38]
2208C4:  STRB            R1, [R0,R4]
2208C6:  ADD             R1, SP, #0x40+var_38
2208C8:  ADD             R3, SP, #0x40+var_24
2208CA:  MOVS            R0, #0
2208CC:  MOVS            R2, #0
2208CE:  BL              sub_21FF8C
2208D2:  ADDS            R1, R0, #1
2208D4:  BEQ             loc_22091A
2208D6:  LDR             R1, [SP,#0x40+var_3C]
2208D8:  ADD.W           R0, R5, R0,LSL#2
2208DC:  STR.W           R1, [R10]
2208E0:  STR.W           R0, [R11]
2208E4:  ADD             R0, SP, #0x40+var_34
2208E6:  BL              sub_220A28
2208EA:  B               loc_2208F4
2208EC:  MOV.W           R8, #0
2208F0:  MOV.W           R9, #0
2208F4:  ADD             R0, SP, #0x40+var_28
2208F6:  BL              sub_220A28
2208FA:  LDR             R0, [SP,#0x40+var_20]
2208FC:  LDR             R1, =(__stack_chk_guard_ptr - 0x220902)
2208FE:  ADD             R1, PC; __stack_chk_guard_ptr
220900:  LDR             R1, [R1]; __stack_chk_guard
220902:  LDR             R1, [R1]
220904:  CMP             R1, R0
220906:  ITTTT EQ
220908:  MOVEQ           R0, R8
22090A:  MOVEQ           R1, R9
22090C:  ADDEQ           SP, SP, #0x24 ; '$'
22090E:  POPEQ.W         {R8-R11}
220912:  IT EQ
220914:  POPEQ           {R4-R7,PC}
220916:  BLX             __stack_chk_fail
22091A:  BLX             abort
