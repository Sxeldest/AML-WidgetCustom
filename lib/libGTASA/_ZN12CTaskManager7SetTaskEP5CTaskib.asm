; =========================================================
; Game Engine Function: _ZN12CTaskManager7SetTaskEP5CTaskib
; Address            : 0x53390A - 0x5339C2
; =========================================================

53390A:  PUSH            {R4-R7,LR}
53390C:  ADD             R7, SP, #0xC
53390E:  PUSH.W          {R8}
533912:  MOV             R8, R2
533914:  MOV             R5, R0
533916:  LDR.W           R0, [R5,R8,LSL#2]
53391A:  MOV             R6, R1
53391C:  CBZ             R6, loc_533966
53391E:  CMP             R0, R6
533920:  BEQ             loc_5339BC
533922:  CMP             R0, #0
533924:  ITTT NE
533926:  LDRNE           R1, [R0]
533928:  LDRNE           R1, [R1,#4]
53392A:  BLXNE           R1
53392C:  CMP             R6, #0
53392E:  STR.W           R6, [R5,R8,LSL#2]
533932:  BEQ             loc_5339BC
533934:  LDR             R0, [R6]
533936:  LDR             R1, [R0,#0x10]
533938:  MOV             R0, R6
53393A:  BLX             R1
53393C:  CBNZ            R0, loc_53398A
53393E:  LDR             R0, [R6]
533940:  LDR             R1, [R5,#0x2C]
533942:  LDR             R2, [R0,#0x2C]
533944:  MOV             R0, R6
533946:  BLX             R2
533948:  MOV             R4, R0
53394A:  CBZ             R4, loc_533982
53394C:  LDR             R0, [R6]
53394E:  MOV             R1, R4
533950:  LDR             R2, [R0,#0x24]
533952:  MOV             R0, R6
533954:  BLX             R2
533956:  LDR             R0, [R4]
533958:  LDR             R1, [R0,#0x10]
53395A:  MOV             R0, R4
53395C:  BLX             R1
53395E:  CMP             R0, #1
533960:  MOV             R6, R4
533962:  BNE             loc_53393E
533964:  B               loc_53398A
533966:  MOVS            R4, #0
533968:  CBZ             R0, loc_53397A
53396A:  LDR             R1, [R0]
53396C:  LDR             R1, [R1,#4]
53396E:  BLX             R1
533970:  STR.W           R4, [R5,R8,LSL#2]
533974:  POP.W           {R8}
533978:  POP             {R4-R7,PC}
53397A:  MOVS            R0, #0
53397C:  CMP             R0, R6
53397E:  BNE             loc_533922
533980:  B               loc_5339BC
533982:  LDR             R1, [R6,#4]; CTask *
533984:  MOV             R0, R5; this
533986:  BLX             j__ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
53398A:  LDR.W           R0, [R5,R8,LSL#2]
53398E:  CBZ             R0, loc_5339BC
533990:  MOV             R4, R0
533992:  LDR             R0, [R4]
533994:  LDR             R1, [R0,#0xC]
533996:  MOV             R0, R4
533998:  BLX             R1
53399A:  CMP             R0, #0
53399C:  BNE             loc_533990
53399E:  LDR             R0, [R4]
5339A0:  LDR             R1, [R0,#0x10]
5339A2:  MOV             R0, R4
5339A4:  BLX             R1
5339A6:  CBNZ            R0, loc_5339BC
5339A8:  LDR.W           R0, [R5,R8,LSL#2]
5339AC:  CMP             R0, #0
5339AE:  ITTT NE
5339B0:  LDRNE           R1, [R0]
5339B2:  LDRNE           R1, [R1,#4]
5339B4:  BLXNE           R1
5339B6:  MOVS            R0, #0
5339B8:  STR.W           R0, [R5,R8,LSL#2]
5339BC:  POP.W           {R8}
5339C0:  POP             {R4-R7,PC}
