; =========================================================
; Game Engine Function: sub_10D180
; Address            : 0x10D180 - 0x10D1AC
; =========================================================

10D180:  PUSH            {R4,R6,R7,LR}
10D182:  ADD             R7, SP, #8
10D184:  MOV             R4, R0
10D186:  LDR             R0, [R1,#0x10]
10D188:  CBZ             R0, loc_10D196
10D18A:  CMP             R1, R0
10D18C:  BEQ             loc_10D19C
10D18E:  LDR             R1, [R0]
10D190:  LDR             R1, [R1,#8]
10D192:  BLX             R1
10D194:  B               loc_10D198
10D196:  MOVS            R0, #0
10D198:  STR             R0, [R4,#0x10]
10D19A:  B               loc_10D1A8
10D19C:  STR             R4, [R4,#0x10]
10D19E:  LDR             R0, [R1,#0x10]
10D1A0:  LDR             R1, [R0]
10D1A2:  LDR             R2, [R1,#0xC]
10D1A4:  MOV             R1, R4
10D1A6:  BLX             R2
10D1A8:  MOV             R0, R4
10D1AA:  POP             {R4,R6,R7,PC}
