; =========================================================
; Game Engine Function: _ZNK16CEventStuckInAir17TakesPriorityOverERK6CEvent
; Address            : 0x376DC8 - 0x376E0A
; =========================================================

376DC8:  PUSH            {R4,R5,R7,LR}
376DCA:  ADD             R7, SP, #8
376DCC:  MOV             R4, R1
376DCE:  MOV             R5, R0
376DD0:  LDR             R0, [R4]
376DD2:  LDR             R1, [R0,#0xC]
376DD4:  MOV             R0, R4
376DD6:  BLX             R1
376DD8:  CMP             R0, #0x49 ; 'I'
376DDA:  BGT             loc_376DEC
376DDC:  LDR             R0, [R4]
376DDE:  LDR             R1, [R0,#8]
376DE0:  MOV             R0, R4
376DE2:  BLX             R1
376DE4:  CMP             R0, #0x5D ; ']'
376DE6:  ITT NE
376DE8:  MOVNE           R0, #1
376DEA:  POPNE           {R4,R5,R7,PC}
376DEC:  LDR             R0, [R5]
376DEE:  LDR             R1, [R0,#0xC]
376DF0:  MOV             R0, R5
376DF2:  BLX             R1
376DF4:  MOV             R5, R0
376DF6:  LDR             R0, [R4]
376DF8:  LDR             R1, [R0,#0xC]
376DFA:  MOV             R0, R4
376DFC:  BLX             R1
376DFE:  MOV             R1, R0
376E00:  MOVS            R0, #0
376E02:  CMP             R5, R1
376E04:  IT GE
376E06:  MOVGE           R0, #1
376E08:  POP             {R4,R5,R7,PC}
