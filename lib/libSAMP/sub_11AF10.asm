; =========================================================
; Game Engine Function: sub_11AF10
; Address            : 0x11AF10 - 0x11AF58
; =========================================================

11AF10:  PUSH            {R4,R5,R7,LR}
11AF12:  ADD             R7, SP, #8
11AF14:  MOV             R4, R0
11AF16:  LDR             R0, [R0,#0x10]
11AF18:  MOV             R5, R1
11AF1A:  MOVS            R1, #0
11AF1C:  CMP             R4, R0
11AF1E:  STR             R1, [R4,#0x10]
11AF20:  BEQ             loc_11AF28
11AF22:  CBZ             R0, loc_11AF32
11AF24:  MOVS            R1, #5
11AF26:  B               loc_11AF2A
11AF28:  MOVS            R1, #4
11AF2A:  LDR             R2, [R0]
11AF2C:  LDR.W           R1, [R2,R1,LSL#2]
11AF30:  BLX             R1
11AF32:  LDR             R0, [R5,#0x10]
11AF34:  CBZ             R0, loc_11AF42
11AF36:  CMP             R5, R0
11AF38:  BEQ             loc_11AF48
11AF3A:  STR             R0, [R4,#0x10]
11AF3C:  MOVS            R0, #0
11AF3E:  STR             R0, [R5,#0x10]
11AF40:  B               loc_11AF54
11AF42:  MOVS            R0, #0
11AF44:  STR             R0, [R4,#0x10]
11AF46:  B               loc_11AF54
11AF48:  STR             R4, [R4,#0x10]
11AF4A:  LDR             R0, [R5,#0x10]
11AF4C:  LDR             R1, [R0]
11AF4E:  LDR             R2, [R1,#0xC]
11AF50:  MOV             R1, R4
11AF52:  BLX             R2
11AF54:  MOV             R0, R4
11AF56:  POP             {R4,R5,R7,PC}
