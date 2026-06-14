; =========================================================
; Game Engine Function: sub_11D8CE
; Address            : 0x11D8CE - 0x11D96E
; =========================================================

11D8CE:  PUSH            {R4-R7,LR}
11D8D0:  ADD             R7, SP, #0xC
11D8D2:  PUSH.W          {R11}
11D8D6:  SUB             SP, SP, #0x10
11D8D8:  CMP             R1, R0
11D8DA:  BEQ             loc_11D966
11D8DC:  MOV             R5, R0
11D8DE:  LDR             R0, [R0,#0x10]
11D8E0:  MOV             R4, R1
11D8E2:  CMP             R0, R5
11D8E4:  BEQ             loc_11D8F2
11D8E6:  LDR             R1, [R4,#0x10]
11D8E8:  CMP             R4, R1
11D8EA:  BEQ             loc_11D90E
11D8EC:  STR             R1, [R5,#0x10]
11D8EE:  STR             R0, [R4,#0x10]
11D8F0:  B               loc_11D966
11D8F2:  LDR             R1, [R4,#0x10]
11D8F4:  CMP             R1, R4
11D8F6:  BEQ             loc_11D928
11D8F8:  LDR             R1, [R0]
11D8FA:  LDR             R2, [R1,#0xC]
11D8FC:  MOV             R1, R4
11D8FE:  BLX             R2
11D900:  LDR             R0, [R5,#0x10]
11D902:  LDR             R1, [R0]
11D904:  LDR             R1, [R1,#0x10]
11D906:  BLX             R1
11D908:  LDR             R0, [R4,#0x10]
11D90A:  STR             R0, [R5,#0x10]
11D90C:  B               loc_11D964
11D90E:  LDR             R0, [R1]
11D910:  LDR             R2, [R0,#0xC]
11D912:  MOV             R0, R1
11D914:  MOV             R1, R5
11D916:  BLX             R2
11D918:  LDR             R0, [R4,#0x10]
11D91A:  LDR             R1, [R0]
11D91C:  LDR             R1, [R1,#0x10]
11D91E:  BLX             R1
11D920:  LDR             R0, [R5,#0x10]
11D922:  STR             R0, [R4,#0x10]
11D924:  STR             R5, [R5,#0x10]
11D926:  B               loc_11D966
11D928:  LDR             R1, [R0]
11D92A:  LDR             R2, [R1,#0xC]
11D92C:  MOV             R1, SP
11D92E:  BLX             R2
11D930:  LDR             R0, [R5,#0x10]
11D932:  LDR             R1, [R0]
11D934:  LDR             R1, [R1,#0x10]
11D936:  BLX             R1
11D938:  MOVS            R6, #0
11D93A:  STR             R6, [R5,#0x10]
11D93C:  LDR             R0, [R4,#0x10]
11D93E:  LDR             R1, [R0]
11D940:  LDR             R2, [R1,#0xC]
11D942:  MOV             R1, R5
11D944:  BLX             R2
11D946:  LDR             R0, [R4,#0x10]
11D948:  LDR             R1, [R0]
11D94A:  LDR             R1, [R1,#0x10]
11D94C:  BLX             R1
11D94E:  LDR             R0, [SP,#0x20+var_20]
11D950:  STR             R6, [R4,#0x10]
11D952:  STR             R5, [R5,#0x10]
11D954:  LDR             R2, [R0,#0xC]
11D956:  MOV             R0, SP
11D958:  MOV             R1, R4
11D95A:  BLX             R2
11D95C:  LDR             R0, [SP,#0x20+var_20]
11D95E:  LDR             R1, [R0,#0x10]
11D960:  MOV             R0, SP
11D962:  BLX             R1
11D964:  STR             R4, [R4,#0x10]
11D966:  ADD             SP, SP, #0x10
11D968:  POP.W           {R11}
11D96C:  POP             {R4-R7,PC}
