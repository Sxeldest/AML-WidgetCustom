; =========================================================
; Game Engine Function: sub_F5052
; Address            : 0xF5052 - 0xF50F2
; =========================================================

F5052:  PUSH            {R4-R7,LR}
F5054:  ADD             R7, SP, #0xC
F5056:  PUSH.W          {R11}
F505A:  SUB             SP, SP, #0x10
F505C:  CMP             R1, R0
F505E:  BEQ             loc_F50EA
F5060:  MOV             R5, R0
F5062:  LDR             R0, [R0,#0x10]
F5064:  MOV             R4, R1
F5066:  CMP             R0, R5
F5068:  BEQ             loc_F5076
F506A:  LDR             R1, [R4,#0x10]
F506C:  CMP             R4, R1
F506E:  BEQ             loc_F5092
F5070:  STR             R1, [R5,#0x10]
F5072:  STR             R0, [R4,#0x10]
F5074:  B               loc_F50EA
F5076:  LDR             R1, [R4,#0x10]
F5078:  CMP             R1, R4
F507A:  BEQ             loc_F50AC
F507C:  LDR             R1, [R0]
F507E:  LDR             R2, [R1,#0xC]
F5080:  MOV             R1, R4
F5082:  BLX             R2
F5084:  LDR             R0, [R5,#0x10]
F5086:  LDR             R1, [R0]
F5088:  LDR             R1, [R1,#0x10]
F508A:  BLX             R1
F508C:  LDR             R0, [R4,#0x10]
F508E:  STR             R0, [R5,#0x10]
F5090:  B               loc_F50E8
F5092:  LDR             R0, [R1]
F5094:  LDR             R2, [R0,#0xC]
F5096:  MOV             R0, R1
F5098:  MOV             R1, R5
F509A:  BLX             R2
F509C:  LDR             R0, [R4,#0x10]
F509E:  LDR             R1, [R0]
F50A0:  LDR             R1, [R1,#0x10]
F50A2:  BLX             R1
F50A4:  LDR             R0, [R5,#0x10]
F50A6:  STR             R0, [R4,#0x10]
F50A8:  STR             R5, [R5,#0x10]
F50AA:  B               loc_F50EA
F50AC:  LDR             R1, [R0]
F50AE:  LDR             R2, [R1,#0xC]
F50B0:  MOV             R1, SP
F50B2:  BLX             R2
F50B4:  LDR             R0, [R5,#0x10]
F50B6:  LDR             R1, [R0]
F50B8:  LDR             R1, [R1,#0x10]
F50BA:  BLX             R1
F50BC:  MOVS            R6, #0
F50BE:  STR             R6, [R5,#0x10]
F50C0:  LDR             R0, [R4,#0x10]
F50C2:  LDR             R1, [R0]
F50C4:  LDR             R2, [R1,#0xC]
F50C6:  MOV             R1, R5
F50C8:  BLX             R2
F50CA:  LDR             R0, [R4,#0x10]
F50CC:  LDR             R1, [R0]
F50CE:  LDR             R1, [R1,#0x10]
F50D0:  BLX             R1
F50D2:  LDR             R0, [SP,#0x20+var_20]
F50D4:  STR             R6, [R4,#0x10]
F50D6:  STR             R5, [R5,#0x10]
F50D8:  LDR             R2, [R0,#0xC]
F50DA:  MOV             R0, SP
F50DC:  MOV             R1, R4
F50DE:  BLX             R2
F50E0:  LDR             R0, [SP,#0x20+var_20]
F50E2:  LDR             R1, [R0,#0x10]
F50E4:  MOV             R0, SP
F50E6:  BLX             R1
F50E8:  STR             R4, [R4,#0x10]
F50EA:  ADD             SP, SP, #0x10
F50EC:  POP.W           {R11}
F50F0:  POP             {R4-R7,PC}
