; =========================================================
; Game Engine Function: sub_F5178
; Address            : 0xF5178 - 0xF51A4
; =========================================================

F5178:  PUSH            {R4,R6,R7,LR}
F517A:  ADD             R7, SP, #8
F517C:  MOV             R4, R0
F517E:  LDR             R0, [R1,#0x10]
F5180:  CBZ             R0, loc_F518E
F5182:  CMP             R1, R0
F5184:  BEQ             loc_F5194
F5186:  LDR             R1, [R0]
F5188:  LDR             R1, [R1,#8]
F518A:  BLX             R1
F518C:  B               loc_F5190
F518E:  MOVS            R0, #0
F5190:  STR             R0, [R4,#0x10]
F5192:  B               loc_F51A0
F5194:  STR             R4, [R4,#0x10]
F5196:  LDR             R0, [R1,#0x10]
F5198:  LDR             R1, [R0]
F519A:  LDR             R2, [R1,#0xC]
F519C:  MOV             R1, R4
F519E:  BLX             R2
F51A0:  MOV             R0, R4
F51A2:  POP             {R4,R6,R7,PC}
