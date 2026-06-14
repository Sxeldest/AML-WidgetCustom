; =========================================================
; Game Engine Function: _ZN10FxSystem_c4KillEv
; Address            : 0x36E2AC - 0x36E2E8
; =========================================================

36E2AC:  PUSH            {R4,R5,R7,LR}
36E2AE:  ADD             R7, SP, #8
36E2B0:  MOV             R4, R0
36E2B2:  MOVS            R0, #0
36E2B4:  LDR             R1, [R4,#8]
36E2B6:  STR             R0, [R4,#0x58]
36E2B8:  MOVS            R0, #1
36E2BA:  STRB.W          R0, [R4,#0x54]
36E2BE:  LDRSB.W         R0, [R1,#0x1B]
36E2C2:  CMP             R0, #1
36E2C4:  BLT             loc_36E2E0
36E2C6:  MOVS            R5, #0
36E2C8:  LDR             R0, [R4,#0x7C]
36E2CA:  LDR.W           R0, [R0,R5,LSL#2]
36E2CE:  LDR             R1, [R0]
36E2D0:  LDR             R1, [R1,#0x10]
36E2D2:  BLX             R1
36E2D4:  LDR             R0, [R4,#8]
36E2D6:  ADDS            R5, #1
36E2D8:  LDRSB.W         R0, [R0,#0x1B]
36E2DC:  CMP             R5, R0
36E2DE:  BLT             loc_36E2C8
36E2E0:  MOVS            R0, #2
36E2E2:  STRB.W          R0, [R4,#0x55]
36E2E6:  POP             {R4,R5,R7,PC}
