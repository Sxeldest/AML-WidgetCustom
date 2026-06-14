; =========================================================
; Game Engine Function: _ZNK11CEventGroup14HasEventOfTypeEPK6CEvent
; Address            : 0x36F696 - 0x36F6E4
; =========================================================

36F696:  PUSH            {R4-R7,LR}
36F698:  ADD             R7, SP, #0xC
36F69A:  PUSH.W          {R8,R9,R11}
36F69E:  MOV             R4, R1
36F6A0:  MOV             R9, R0
36F6A2:  CBZ             R4, loc_36F6DC
36F6A4:  LDR.W           R0, [R9,#8]
36F6A8:  CMP             R0, #1
36F6AA:  BLT             loc_36F6D4
36F6AC:  ADD.W           R8, R9, #0xC
36F6B0:  MOVS            R5, #0
36F6B2:  LDR             R0, [R4]
36F6B4:  LDR             R1, [R0,#8]
36F6B6:  MOV             R0, R4
36F6B8:  BLX             R1
36F6BA:  MOV             R6, R0
36F6BC:  LDR.W           R0, [R8,R5,LSL#2]
36F6C0:  LDR             R1, [R0]
36F6C2:  LDR             R1, [R1,#8]
36F6C4:  BLX             R1
36F6C6:  CMP             R6, R0
36F6C8:  BEQ             loc_36F6DC
36F6CA:  LDR.W           R0, [R9,#8]
36F6CE:  ADDS            R5, #1
36F6D0:  CMP             R5, R0
36F6D2:  BLT             loc_36F6B2
36F6D4:  MOVS            R0, #0
36F6D6:  POP.W           {R8,R9,R11}
36F6DA:  POP             {R4-R7,PC}
36F6DC:  MOVS            R0, #1
36F6DE:  POP.W           {R8,R9,R11}
36F6E2:  POP             {R4-R7,PC}
