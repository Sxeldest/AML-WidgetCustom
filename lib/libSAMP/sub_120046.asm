; =========================================================
; Game Engine Function: sub_120046
; Address            : 0x120046 - 0x1200E6
; =========================================================

120046:  PUSH            {R4-R7,LR}
120048:  ADD             R7, SP, #0xC
12004A:  PUSH.W          {R11}
12004E:  SUB             SP, SP, #0x10
120050:  CMP             R1, R0
120052:  BEQ             loc_1200DE
120054:  MOV             R5, R0
120056:  LDR             R0, [R0,#0x10]
120058:  MOV             R4, R1
12005A:  CMP             R0, R5
12005C:  BEQ             loc_12006A
12005E:  LDR             R1, [R4,#0x10]
120060:  CMP             R4, R1
120062:  BEQ             loc_120086
120064:  STR             R1, [R5,#0x10]
120066:  STR             R0, [R4,#0x10]
120068:  B               loc_1200DE
12006A:  LDR             R1, [R4,#0x10]
12006C:  CMP             R1, R4
12006E:  BEQ             loc_1200A0
120070:  LDR             R1, [R0]
120072:  LDR             R2, [R1,#0xC]
120074:  MOV             R1, R4
120076:  BLX             R2
120078:  LDR             R0, [R5,#0x10]
12007A:  LDR             R1, [R0]
12007C:  LDR             R1, [R1,#0x10]
12007E:  BLX             R1
120080:  LDR             R0, [R4,#0x10]
120082:  STR             R0, [R5,#0x10]
120084:  B               loc_1200DC
120086:  LDR             R0, [R1]
120088:  LDR             R2, [R0,#0xC]
12008A:  MOV             R0, R1
12008C:  MOV             R1, R5
12008E:  BLX             R2
120090:  LDR             R0, [R4,#0x10]
120092:  LDR             R1, [R0]
120094:  LDR             R1, [R1,#0x10]
120096:  BLX             R1
120098:  LDR             R0, [R5,#0x10]
12009A:  STR             R0, [R4,#0x10]
12009C:  STR             R5, [R5,#0x10]
12009E:  B               loc_1200DE
1200A0:  LDR             R1, [R0]
1200A2:  LDR             R2, [R1,#0xC]
1200A4:  MOV             R1, SP
1200A6:  BLX             R2
1200A8:  LDR             R0, [R5,#0x10]
1200AA:  LDR             R1, [R0]
1200AC:  LDR             R1, [R1,#0x10]
1200AE:  BLX             R1
1200B0:  MOVS            R6, #0
1200B2:  STR             R6, [R5,#0x10]
1200B4:  LDR             R0, [R4,#0x10]
1200B6:  LDR             R1, [R0]
1200B8:  LDR             R2, [R1,#0xC]
1200BA:  MOV             R1, R5
1200BC:  BLX             R2
1200BE:  LDR             R0, [R4,#0x10]
1200C0:  LDR             R1, [R0]
1200C2:  LDR             R1, [R1,#0x10]
1200C4:  BLX             R1
1200C6:  LDR             R0, [SP,#0x20+var_20]
1200C8:  STR             R6, [R4,#0x10]
1200CA:  STR             R5, [R5,#0x10]
1200CC:  LDR             R2, [R0,#0xC]
1200CE:  MOV             R0, SP
1200D0:  MOV             R1, R4
1200D2:  BLX             R2
1200D4:  LDR             R0, [SP,#0x20+var_20]
1200D6:  LDR             R1, [R0,#0x10]
1200D8:  MOV             R0, SP
1200DA:  BLX             R1
1200DC:  STR             R4, [R4,#0x10]
1200DE:  ADD             SP, SP, #0x10
1200E0:  POP.W           {R11}
1200E4:  POP             {R4-R7,PC}
