; =========================================================
; Game Engine Function: _ZNK19CEventScriptCommand16GetEventPriorityEv
; Address            : 0x3765A2 - 0x376612
; =========================================================

3765A2:  PUSH            {R4,R6,R7,LR}
3765A4:  ADD             R7, SP, #8
3765A6:  MOV             R4, R0
3765A8:  LDRB            R0, [R4,#0x14]
3765AA:  CMP             R0, #0
3765AC:  ITT NE
3765AE:  MOVNE           R0, #0x4B ; 'K'
3765B0:  POPNE           {R4,R6,R7,PC}
3765B2:  LDR             R0, [R4,#0x10]
3765B4:  CBZ             R0, loc_37660E
3765B6:  LDR             R1, [R0]
3765B8:  LDR             R1, [R1,#0x14]
3765BA:  BLX             R1
3765BC:  MOVW            R1, #0x191
3765C0:  CMP             R0, R1
3765C2:  BNE             loc_3765D2
3765C4:  LDR             R0, [R4,#0x10]
3765C6:  LDRB            R1, [R0,#0xC]
3765C8:  LSLS            R1, R1, #0x1E
3765CA:  ITT MI
3765CC:  MOVMI           R0, #0x47 ; 'G'
3765CE:  POPMI           {R4,R6,R7,PC}
3765D0:  B               loc_3765D4
3765D2:  LDR             R0, [R4,#0x10]
3765D4:  LDR             R1, [R0]
3765D6:  LDR             R1, [R1,#0x14]
3765D8:  BLX             R1
3765DA:  CMP             R0, #0xD4
3765DC:  ITT EQ
3765DE:  MOVEQ           R0, #0x47 ; 'G'
3765E0:  POPEQ           {R4,R6,R7,PC}
3765E2:  LDR             R0, [R4,#0x10]
3765E4:  LDR             R1, [R0]
3765E6:  LDR             R1, [R1,#0x14]
3765E8:  BLX             R1
3765EA:  CMP.W           R0, #0x518
3765EE:  BEQ             loc_37660A
3765F0:  LDR             R0, [R4,#0x10]
3765F2:  LDR             R1, [R0]
3765F4:  LDR             R1, [R1,#0x14]
3765F6:  BLX             R1
3765F8:  CMP.W           R0, #0x640
3765FC:  BEQ             loc_37660A
3765FE:  LDR             R0, [R4,#0x10]
376600:  LDR             R1, [R0]
376602:  LDR             R1, [R1,#0x14]
376604:  BLX             R1
376606:  CMP             R0, #0xD9
376608:  BNE             loc_37660E
37660A:  MOVS            R0, #0x47 ; 'G'
37660C:  POP             {R4,R6,R7,PC}
37660E:  MOVS            R0, #0x35 ; '5'
376610:  POP             {R4,R6,R7,PC}
