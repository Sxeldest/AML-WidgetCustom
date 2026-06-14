; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistoryD2Ev
; Address            : 0x37B1C0 - 0x37B1F6
; =========================================================

37B1C0:  PUSH            {R4,R5,R7,LR}
37B1C2:  ADD             R7, SP, #8
37B1C4:  MOV             R4, R0
37B1C6:  LDR             R0, [R4,#8]
37B1C8:  CMP             R0, #0
37B1CA:  ITTT NE
37B1CC:  LDRNE           R1, [R0]
37B1CE:  LDRNE           R1, [R1,#4]
37B1D0:  BLXNE           R1
37B1D2:  LDR             R0, [R4,#4]
37B1D4:  MOVS            R5, #0
37B1D6:  STR             R5, [R4,#8]
37B1D8:  CMP             R0, #0
37B1DA:  ITTT NE
37B1DC:  LDRNE           R1, [R0]
37B1DE:  LDRNE           R1, [R1,#4]
37B1E0:  BLXNE           R1
37B1E2:  LDR             R0, [R4,#0xC]
37B1E4:  STR             R5, [R4,#4]
37B1E6:  CBZ             R0, loc_37B1F2
37B1E8:  LDR             R1, [R0]
37B1EA:  LDR             R1, [R1,#4]
37B1EC:  BLX             R1
37B1EE:  MOVS            R0, #0
37B1F0:  STR             R0, [R4,#0xC]
37B1F2:  MOV             R0, R4
37B1F4:  POP             {R4,R5,R7,PC}
