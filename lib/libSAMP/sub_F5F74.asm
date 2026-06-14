; =========================================================
; Game Engine Function: sub_F5F74
; Address            : 0xF5F74 - 0xF5FB6
; =========================================================

F5F74:  PUSH            {R4,R6,R7,LR}
F5F76:  ADD             R7, SP, #8
F5F78:  SUB             SP, SP, #8
F5F7A:  MOV             R4, R0
F5F7C:  LDRD.W          R0, R12, [R7,#arg_0]
F5F80:  STRD.W          R0, R12, [SP,#0x10+var_10]
F5F84:  MOV             R0, R4
F5F86:  BL              sub_F5FC8
F5F8A:  LDR             R0, =(off_2400CC - 0xF5F90)
F5F8C:  ADD             R0, PC; off_2400CC
F5F8E:  LDR             R0, [R0]
F5F90:  CBNZ            R0, loc_F5FB0
F5F92:  LDR             R0, =(off_23494C - 0xF5FA0)
F5F94:  MOV             R3, #0x66ED18
F5F9C:  ADD             R0, PC; off_23494C
F5F9E:  LDR             R0, [R0]; dword_23DF24
F5FA0:  LDR             R0, [R0]
F5FA2:  LDR             R1, =(sub_F601C+1 - 0xF5FAC)
F5FA4:  LDR             R2, =(off_2400CC - 0xF5FAE)
F5FA6:  ADD             R0, R3
F5FA8:  ADD             R1, PC; sub_F601C
F5FAA:  ADD             R2, PC; off_2400CC
F5FAC:  BL              sub_164196
F5FB0:  MOV             R0, R4
F5FB2:  ADD             SP, SP, #8
F5FB4:  POP             {R4,R6,R7,PC}
