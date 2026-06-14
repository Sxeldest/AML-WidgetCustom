; =========================================================
; Game Engine Function: _ZNK19CDecisionMakerTypes11HasResponseERK4CPedPKii
; Address            : 0x4BC88A - 0x4BC948
; =========================================================

4BC88A:  PUSH            {R4-R7,LR}
4BC88C:  ADD             R7, SP, #0xC
4BC88E:  PUSH.W          {R8-R11}
4BC892:  SUB             SP, SP, #4
4BC894:  MOV.W           R12, #0
4BC898:  CMP             R3, #1
4BC89A:  BLT             loc_4BC93E
4BC89C:  LDR.W           R6, [R1,#0x440]
4BC8A0:  MOVW            R11, #0xC034
4BC8A4:  MOV.W           R9, #0
4BC8A8:  LDR.W           LR, [R6,#0xB4]
4BC8AC:  MOVW            R6, #0x99C
4BC8B0:  MLA.W           R6, LR, R6, R0
4BC8B4:  ADDS            R6, #4
4BC8B6:  STR             R6, [SP,#0x20+var_20]
4BC8B8:  MOVW            R6, #0xC1B4
4BC8BC:  ADD.W           R10, R0, R6
4BC8C0:  MOVW            R6, #0xD4EC
4BC8C4:  ADD.W           R8, R0, R6
4BC8C8:  LDR.W           R6, [R2,R9,LSL#2]
4BC8CC:  ADD.W           R6, R0, R6,LSL#2
4BC8D0:  LDR.W           R4, [R6,R11]
4BC8D4:  ADDS.W          R6, LR, #2
4BC8D8:  MOV             R6, R8
4BC8DA:  BEQ             loc_4BC8F6
4BC8DC:  ADDS.W          R6, LR, #1
4BC8E0:  BNE             loc_4BC8F4
4BC8E2:  LDRB.W          R6, [R1,#0x448]
4BC8E6:  MOVW            R5, #0xCB50
4BC8EA:  CMP             R6, #2
4BC8EC:  MOV             R6, R10
4BC8EE:  IT EQ
4BC8F0:  ADDEQ           R6, R0, R5
4BC8F2:  B               loc_4BC8F6
4BC8F4:  LDR             R6, [SP,#0x20+var_20]
4BC8F6:  RSB.W           R4, R4, R4,LSL#4
4BC8FA:  LDR.W           R5, [R6,R4,LSL#2]
4BC8FE:  CMP             R5, #0xC8
4BC900:  BNE             loc_4BC93A
4BC902:  ADD.W           R4, R6, R4,LSL#2
4BC906:  LDR             R6, [R4,#4]
4BC908:  CMP             R6, #0xC8
4BC90A:  ITT EQ
4BC90C:  LDREQ           R6, [R4,#8]
4BC90E:  CMPEQ           R6, #0xC8
4BC910:  BNE             loc_4BC93A
4BC912:  LDR             R6, [R4,#0xC]
4BC914:  CMP             R6, #0xC8
4BC916:  ITT EQ
4BC918:  LDREQ           R6, [R4,#0x10]
4BC91A:  CMPEQ           R6, #0xC8
4BC91C:  BNE             loc_4BC93A
4BC91E:  LDR             R4, [R4,#0x14]
4BC920:  ADD.W           R9, R9, #1
4BC924:  MOV.W           R12, #0
4BC928:  CMP             R4, #0xC8
4BC92A:  IT NE
4BC92C:  MOVNE.W         R12, #1
4BC930:  CMP             R9, R3
4BC932:  BGE             loc_4BC93E
4BC934:  CMP             R4, #0xC8
4BC936:  BEQ             loc_4BC8C8
4BC938:  B               loc_4BC93E
4BC93A:  MOV.W           R12, #1
4BC93E:  MOV             R0, R12
4BC940:  ADD             SP, SP, #4
4BC942:  POP.W           {R8-R11}
4BC946:  POP             {R4-R7,PC}
