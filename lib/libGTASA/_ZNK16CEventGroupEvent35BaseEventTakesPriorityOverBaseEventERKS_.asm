; =========================================================
; Game Engine Function: _ZNK16CEventGroupEvent35BaseEventTakesPriorityOverBaseEventERKS_
; Address            : 0x373D88 - 0x373DFE
; =========================================================

373D88:  PUSH            {R4-R7,LR}
373D8A:  ADD             R7, SP, #0xC
373D8C:  PUSH.W          {R11}
373D90:  MOV             R5, R0
373D92:  MOV             R4, R1
373D94:  LDR             R0, [R5,#0x10]
373D96:  LDR             R1, [R0]
373D98:  LDR             R1, [R1,#8]
373D9A:  BLX             R1
373D9C:  SUB.W           R1, R0, #0x36 ; '6'
373DA0:  MOVS            R6, #1
373DA2:  CMP             R1, #0x17
373DA4:  BHI             loc_373DB4
373DA6:  MOVS            R2, #0xB
373DA8:  LSL.W           R1, R6, R1
373DAC:  MOVT            R2, #0xC2
373DB0:  TST             R1, R2
373DB2:  BNE             loc_373DBA
373DB4:  CMP             R0, #7
373DB6:  IT NE
373DB8:  MOVNE           R6, #0
373DBA:  LDR             R0, [R4,#0x10]
373DBC:  LDR             R1, [R0]
373DBE:  LDR             R1, [R1,#8]
373DC0:  BLX             R1
373DC2:  SUB.W           R1, R0, #0x36 ; '6'
373DC6:  CMP             R1, #0x17
373DC8:  BHI             loc_373DE2
373DCA:  MOVS            R2, #1
373DCC:  LSL.W           R1, R2, R1
373DD0:  MOVS            R2, #0xC2000B
373DD6:  TST             R1, R2
373DD8:  BEQ             loc_373DE2
373DDA:  MOV             R0, R6
373DDC:  POP.W           {R11}
373DE0:  POP             {R4-R7,PC}
373DE2:  CMP             R0, #7
373DE4:  BEQ             loc_373DDA
373DE6:  CBZ             R6, loc_373DEC
373DE8:  MOVS            R6, #1
373DEA:  B               loc_373DDA
373DEC:  LDR             R0, [R5,#0x10]
373DEE:  LDR             R1, [R4,#0x10]
373DF0:  LDR             R2, [R0]
373DF2:  LDR             R2, [R2,#0x30]
373DF4:  POP.W           {R11}
373DF8:  POP.W           {R4-R7,LR}
373DFC:  BX              R2
