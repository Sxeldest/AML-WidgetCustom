; =========================================================
; Game Engine Function: sub_10C010
; Address            : 0x10C010 - 0x10C0B0
; =========================================================

10C010:  PUSH            {R4-R7,LR}
10C012:  ADD             R7, SP, #0xC
10C014:  PUSH.W          {R11}
10C018:  SUB             SP, SP, #0x10
10C01A:  CMP             R1, R0
10C01C:  BEQ             loc_10C0A8
10C01E:  MOV             R5, R0
10C020:  LDR             R0, [R0,#0x10]
10C022:  MOV             R4, R1
10C024:  CMP             R0, R5
10C026:  BEQ             loc_10C034
10C028:  LDR             R1, [R4,#0x10]
10C02A:  CMP             R4, R1
10C02C:  BEQ             loc_10C050
10C02E:  STR             R1, [R5,#0x10]
10C030:  STR             R0, [R4,#0x10]
10C032:  B               loc_10C0A8
10C034:  LDR             R1, [R4,#0x10]
10C036:  CMP             R1, R4
10C038:  BEQ             loc_10C06A
10C03A:  LDR             R1, [R0]
10C03C:  LDR             R2, [R1,#0xC]
10C03E:  MOV             R1, R4
10C040:  BLX             R2
10C042:  LDR             R0, [R5,#0x10]
10C044:  LDR             R1, [R0]
10C046:  LDR             R1, [R1,#0x10]
10C048:  BLX             R1
10C04A:  LDR             R0, [R4,#0x10]
10C04C:  STR             R0, [R5,#0x10]
10C04E:  B               loc_10C0A6
10C050:  LDR             R0, [R1]
10C052:  LDR             R2, [R0,#0xC]
10C054:  MOV             R0, R1
10C056:  MOV             R1, R5
10C058:  BLX             R2
10C05A:  LDR             R0, [R4,#0x10]
10C05C:  LDR             R1, [R0]
10C05E:  LDR             R1, [R1,#0x10]
10C060:  BLX             R1
10C062:  LDR             R0, [R5,#0x10]
10C064:  STR             R0, [R4,#0x10]
10C066:  STR             R5, [R5,#0x10]
10C068:  B               loc_10C0A8
10C06A:  LDR             R1, [R0]
10C06C:  LDR             R2, [R1,#0xC]
10C06E:  MOV             R1, SP
10C070:  BLX             R2
10C072:  LDR             R0, [R5,#0x10]
10C074:  LDR             R1, [R0]
10C076:  LDR             R1, [R1,#0x10]
10C078:  BLX             R1
10C07A:  MOVS            R6, #0
10C07C:  STR             R6, [R5,#0x10]
10C07E:  LDR             R0, [R4,#0x10]
10C080:  LDR             R1, [R0]
10C082:  LDR             R2, [R1,#0xC]
10C084:  MOV             R1, R5
10C086:  BLX             R2
10C088:  LDR             R0, [R4,#0x10]
10C08A:  LDR             R1, [R0]
10C08C:  LDR             R1, [R1,#0x10]
10C08E:  BLX             R1
10C090:  LDR             R0, [SP,#0x20+var_20]
10C092:  STR             R6, [R4,#0x10]
10C094:  STR             R5, [R5,#0x10]
10C096:  LDR             R2, [R0,#0xC]
10C098:  MOV             R0, SP
10C09A:  MOV             R1, R4
10C09C:  BLX             R2
10C09E:  LDR             R0, [SP,#0x20+var_20]
10C0A0:  LDR             R1, [R0,#0x10]
10C0A2:  MOV             R0, SP
10C0A4:  BLX             R1
10C0A6:  STR             R4, [R4,#0x10]
10C0A8:  ADD             SP, SP, #0x10
10C0AA:  POP.W           {R11}
10C0AE:  POP             {R4-R7,PC}
