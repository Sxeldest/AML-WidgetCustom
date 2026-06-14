; =========================================================
; Game Engine Function: sub_167F9C
; Address            : 0x167F9C - 0x16800A
; =========================================================

167F9C:  PUSH            {R4,R5,R7,LR}
167F9E:  ADD             R7, SP, #8
167FA0:  MOV             R4, R0
167FA2:  LDR             R0, =(dword_381B58 - 0x167FA8)
167FA4:  ADD             R0, PC; dword_381B58
167FA6:  LDR             R5, [R0]
167FA8:  MOV             R0, R4
167FAA:  BL              sub_168010
167FAE:  LDR             R0, [R4,#0x50]
167FB0:  MOV             R1, R4
167FB2:  BL              sub_166ECC
167FB6:  LDR.W           R0, [R4,#0x2FC]
167FBA:  MOVS            R1, #1
167FBC:  VLDR            S2, [R5,#0xE4]
167FC0:  VLDR            S0, [R5,#0xE0]
167FC4:  VLDR            S6, [R0,#0x10]
167FC8:  VLDR            S4, [R0,#0xC]
167FCC:  MOVW            R0, #0x1B16
167FD0:  VSUB.F32        S2, S2, S6
167FD4:  STRB            R1, [R5,R0]
167FD6:  VSUB.F32        S0, S0, S4
167FDA:  MOVW            R0, #0x19F0
167FDE:  ADD             R0, R5
167FE0:  VSTR            S2, [R0]
167FE4:  MOVW            R0, #0x19EC
167FE8:  ADD             R0, R5
167FEA:  VSTR            S0, [R0]
167FEE:  LDRB            R0, [R4,#8]
167FF0:  LSLS            R0, R0, #0x1D
167FF2:  ITTTT PL
167FF4:  LDRPL.W         R0, [R4,#0x2FC]
167FF8:  LDRBPL          R0, [R0,#8]
167FFA:  MOVSPL.W        R0, R0,LSL#29
167FFE:  MOVWPL          R0, #0x19B8
168002:  ITT PL
168004:  ADDPL           R0, R5
168006:  STRPL           R4, [R0]
168008:  POP             {R4,R5,R7,PC}
