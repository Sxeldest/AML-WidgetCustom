; =========================================================
; Game Engine Function: sub_F5CEC
; Address            : 0xF5CEC - 0xF5D60
; =========================================================

F5CEC:  PUSH            {R4,R5,R7,LR}
F5CEE:  ADD             R7, SP, #8
F5CF0:  SUB             SP, SP, #0x20
F5CF2:  MOV             R4, R0
F5CF4:  LDR             R0, =(off_23494C - 0xF5CFE)
F5CF6:  MOVW            R2, #0x2C1E
F5CFA:  ADD             R0, PC; off_23494C
F5CFC:  MOVT            R2, #0x95
F5D00:  LDR             R5, [R0]; dword_23DF24
F5D02:  LDR             R0, [R5]
F5D04:  LDRB            R3, [R0,R2]
F5D06:  CBNZ            R3, loc_F5D5C
F5D08:  ADD             R0, R2
F5D0A:  LDRB            R0, [R0,#1]
F5D0C:  CBNZ            R0, loc_F5D5C
F5D0E:  LDR             R0, =(unk_92D08 - 0xF5D1A)
F5D10:  ADD.W           R1, R1, #0x2B0
F5D14:  ADD             R2, SP, #0x28+var_18
F5D16:  ADD             R0, PC; unk_92D08
F5D18:  VLDR            D16, [R0]
F5D1C:  LDR             R0, [R0,#(dword_92D10 - 0x92D08)]
F5D1E:  STR             R0, [SP,#0x28+var_10]
F5D20:  ADD             R0, SP, #0x28+var_24
F5D22:  VSTR            D16, [SP,#0x28+var_18]
F5D26:  BL              sub_108FB2
F5D2A:  LDR             R0, [SP,#0x28+var_24]
F5D2C:  STR.W           R0, [R4,#0x174]
F5D30:  LDR             R0, [SP,#0x28+var_20]
F5D32:  LDR             R1, [R5]
F5D34:  STR.W           R0, [R4,#0x178]
F5D38:  MOV             R0, #0x9FC93C
F5D40:  LDR             R2, [SP,#0x28+var_1C]
F5D42:  LDR             R0, [R1,R0]
F5D44:  STR.W           R2, [R4,#0x17C]
F5D48:  MOV             R2, #0x1D5AB9
F5D50:  ADD             R2, R1
F5D52:  MOV             R1, #0x3E4CCCCD
F5D5A:  BLX             R2
F5D5C:  ADD             SP, SP, #0x20 ; ' '
F5D5E:  POP             {R4,R5,R7,PC}
