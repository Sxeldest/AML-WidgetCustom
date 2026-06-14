; =========================================================
; Game Engine Function: _ZNK11CEventGroup26HasScriptCommandOfTaskTypeEi
; Address            : 0x36F89A - 0x36F8EC
; =========================================================

36F89A:  PUSH            {R4-R7,LR}
36F89C:  ADD             R7, SP, #0xC
36F89E:  PUSH.W          {R8}
36F8A2:  MOV             R5, R0
36F8A4:  MOV             R8, R1
36F8A6:  LDR             R0, [R5,#8]
36F8A8:  CMP             R0, #1
36F8AA:  BLT             loc_36F8DC
36F8AC:  ADD.W           R6, R5, #0xC
36F8B0:  MOVS            R4, #0
36F8B2:  LDR.W           R0, [R6,R4,LSL#2]
36F8B6:  CBZ             R0, loc_36F8D4
36F8B8:  LDR             R1, [R0]
36F8BA:  LDR             R1, [R1,#8]
36F8BC:  BLX             R1
36F8BE:  CMP             R0, #0x20 ; ' '
36F8C0:  BNE             loc_36F8D4
36F8C2:  LDR.W           R0, [R6,R4,LSL#2]
36F8C6:  LDR             R0, [R0,#0x10]
36F8C8:  CBZ             R0, loc_36F8D4
36F8CA:  LDR             R1, [R0]
36F8CC:  LDR             R1, [R1,#0x14]
36F8CE:  BLX             R1
36F8D0:  CMP             R0, R8
36F8D2:  BEQ             loc_36F8E4
36F8D4:  LDR             R0, [R5,#8]
36F8D6:  ADDS            R4, #1
36F8D8:  CMP             R4, R0
36F8DA:  BLT             loc_36F8B2
36F8DC:  MOVS            R0, #0
36F8DE:  POP.W           {R8}
36F8E2:  POP             {R4-R7,PC}
36F8E4:  MOVS            R0, #1
36F8E6:  POP.W           {R8}
36F8EA:  POP             {R4-R7,PC}
