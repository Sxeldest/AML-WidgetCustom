; =========================================================
; Game Engine Function: _ZNK13CEventInWater17TakesPriorityOverERK6CEvent
; Address            : 0x376C9C - 0x376CFC
; =========================================================

376C9C:  PUSH            {R4,R5,R7,LR}
376C9E:  ADD             R7, SP, #8
376CA0:  MOV             R4, R1
376CA2:  MOV             R5, R0
376CA4:  LDR             R0, [R4]
376CA6:  LDR             R1, [R0,#8]
376CA8:  MOV             R0, R4
376CAA:  BLX             R1
376CAC:  CMP             R0, #8
376CAE:  BEQ             loc_376CDA
376CB0:  LDR             R0, [R4]
376CB2:  LDR             R1, [R0,#8]
376CB4:  MOV             R0, R4
376CB6:  BLX             R1
376CB8:  CMP             R0, #9
376CBA:  BEQ             loc_376CDA
376CBC:  LDR             R0, [R4]
376CBE:  LDR             R1, [R0,#8]
376CC0:  MOV             R0, R4
376CC2:  BLX             R1
376CC4:  CMP             R0, #0x5D ; ']'
376CC6:  BNE             loc_376CDE
376CC8:  VMOV.F32        S0, #1.0
376CCC:  VLDR            S2, [R5,#0xC]
376CD0:  VCMPE.F32       S2, S0
376CD4:  VMRS            APSR_nzcv, FPSCR
376CD8:  BLE             loc_376CDE
376CDA:  MOVS            R0, #1
376CDC:  POP             {R4,R5,R7,PC}
376CDE:  LDR             R0, [R5]
376CE0:  LDR             R1, [R0,#0xC]
376CE2:  MOV             R0, R5
376CE4:  BLX             R1
376CE6:  MOV             R5, R0
376CE8:  LDR             R0, [R4]
376CEA:  LDR             R1, [R0,#0xC]
376CEC:  MOV             R0, R4
376CEE:  BLX             R1
376CF0:  MOV             R1, R0
376CF2:  MOVS            R0, #0
376CF4:  CMP             R5, R1
376CF6:  IT GE
376CF8:  MOVGE           R0, #1
376CFA:  POP             {R4,R5,R7,PC}
