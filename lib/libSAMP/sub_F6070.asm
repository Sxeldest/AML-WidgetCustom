; =========================================================
; Game Engine Function: sub_F6070
; Address            : 0xF6070 - 0xF60A2
; =========================================================

F6070:  PUSH            {R4,R6,R7,LR}
F6072:  ADD             R7, SP, #8
F6074:  MOV             R4, R0
F6076:  LDR             R0, [R0]
F6078:  LDR             R1, [R0,#4]
F607A:  MOV             R0, R4
F607C:  BLX             R1
F607E:  LDR             R0, =(off_2400CC - 0xF6084)
F6080:  ADD             R0, PC; off_2400CC
F6082:  LDR             R1, [R0]
F6084:  CBZ             R1, loc_F609E
F6086:  LDR             R0, =(off_23494C - 0xF6094)
F6088:  MOV             R2, #0x66ED18
F6090:  ADD             R0, PC; off_23494C
F6092:  LDR             R0, [R0]; dword_23DF24
F6094:  LDR             R0, [R0]
F6096:  ADD             R0, R2
F6098:  MOVS            R2, #0
F609A:  BL              sub_164196
F609E:  MOV             R0, R4
F60A0:  POP             {R4,R6,R7,PC}
