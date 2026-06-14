; =========================================================
; Game Engine Function: sub_11C010
; Address            : 0x11C010 - 0x11C03C
; =========================================================

11C010:  PUSH            {R4,R6,R7,LR}
11C012:  ADD             R7, SP, #8
11C014:  MOV             R4, R0
11C016:  LDR             R0, [R1,#0x10]
11C018:  CBZ             R0, loc_11C026
11C01A:  CMP             R1, R0
11C01C:  BEQ             loc_11C02C
11C01E:  LDR             R1, [R0]
11C020:  LDR             R1, [R1,#8]
11C022:  BLX             R1
11C024:  B               loc_11C028
11C026:  MOVS            R0, #0
11C028:  STR             R0, [R4,#0x10]
11C02A:  B               loc_11C038
11C02C:  STR             R4, [R4,#0x10]
11C02E:  LDR             R0, [R1,#0x10]
11C030:  LDR             R1, [R0]
11C032:  LDR             R2, [R1,#0xC]
11C034:  MOV             R1, R4
11C036:  BLX             R2
11C038:  MOV             R0, R4
11C03A:  POP             {R4,R6,R7,PC}
