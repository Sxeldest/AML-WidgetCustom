; =========================================================
; Game Engine Function: sub_10F8C4
; Address            : 0x10F8C4 - 0x10F964
; =========================================================

10F8C4:  PUSH            {R4-R7,LR}
10F8C6:  ADD             R7, SP, #0xC
10F8C8:  PUSH.W          {R11}
10F8CC:  SUB             SP, SP, #0x10
10F8CE:  CMP             R1, R0
10F8D0:  BEQ             loc_10F95C
10F8D2:  MOV             R5, R0
10F8D4:  LDR             R0, [R0,#0x10]
10F8D6:  MOV             R4, R1
10F8D8:  CMP             R0, R5
10F8DA:  BEQ             loc_10F8E8
10F8DC:  LDR             R1, [R4,#0x10]
10F8DE:  CMP             R4, R1
10F8E0:  BEQ             loc_10F904
10F8E2:  STR             R1, [R5,#0x10]
10F8E4:  STR             R0, [R4,#0x10]
10F8E6:  B               loc_10F95C
10F8E8:  LDR             R1, [R4,#0x10]
10F8EA:  CMP             R1, R4
10F8EC:  BEQ             loc_10F91E
10F8EE:  LDR             R1, [R0]
10F8F0:  LDR             R2, [R1,#0xC]
10F8F2:  MOV             R1, R4
10F8F4:  BLX             R2
10F8F6:  LDR             R0, [R5,#0x10]
10F8F8:  LDR             R1, [R0]
10F8FA:  LDR             R1, [R1,#0x10]
10F8FC:  BLX             R1
10F8FE:  LDR             R0, [R4,#0x10]
10F900:  STR             R0, [R5,#0x10]
10F902:  B               loc_10F95A
10F904:  LDR             R0, [R1]
10F906:  LDR             R2, [R0,#0xC]
10F908:  MOV             R0, R1
10F90A:  MOV             R1, R5
10F90C:  BLX             R2
10F90E:  LDR             R0, [R4,#0x10]
10F910:  LDR             R1, [R0]
10F912:  LDR             R1, [R1,#0x10]
10F914:  BLX             R1
10F916:  LDR             R0, [R5,#0x10]
10F918:  STR             R0, [R4,#0x10]
10F91A:  STR             R5, [R5,#0x10]
10F91C:  B               loc_10F95C
10F91E:  LDR             R1, [R0]
10F920:  LDR             R2, [R1,#0xC]
10F922:  MOV             R1, SP
10F924:  BLX             R2
10F926:  LDR             R0, [R5,#0x10]
10F928:  LDR             R1, [R0]
10F92A:  LDR             R1, [R1,#0x10]
10F92C:  BLX             R1
10F92E:  MOVS            R6, #0
10F930:  STR             R6, [R5,#0x10]
10F932:  LDR             R0, [R4,#0x10]
10F934:  LDR             R1, [R0]
10F936:  LDR             R2, [R1,#0xC]
10F938:  MOV             R1, R5
10F93A:  BLX             R2
10F93C:  LDR             R0, [R4,#0x10]
10F93E:  LDR             R1, [R0]
10F940:  LDR             R1, [R1,#0x10]
10F942:  BLX             R1
10F944:  LDR             R0, [SP,#0x20+var_20]
10F946:  STR             R6, [R4,#0x10]
10F948:  STR             R5, [R5,#0x10]
10F94A:  LDR             R2, [R0,#0xC]
10F94C:  MOV             R0, SP
10F94E:  MOV             R1, R4
10F950:  BLX             R2
10F952:  LDR             R0, [SP,#0x20+var_20]
10F954:  LDR             R1, [R0,#0x10]
10F956:  MOV             R0, SP
10F958:  BLX             R1
10F95A:  STR             R4, [R4,#0x10]
10F95C:  ADD             SP, SP, #0x10
10F95E:  POP.W           {R11}
10F962:  POP             {R4-R7,PC}
