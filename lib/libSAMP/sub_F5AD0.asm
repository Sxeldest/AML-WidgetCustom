; =========================================================
; Game Engine Function: sub_F5AD0
; Address            : 0xF5AD0 - 0xF5B20
; =========================================================

F5AD0:  PUSH            {R4,R5,R7,LR}
F5AD2:  ADD             R7, SP, #8
F5AD4:  LDR             R0, =(off_23494C - 0xF5AE2)
F5AD6:  MOV             R5, #0x670328
F5ADE:  ADD             R0, PC; off_23494C
F5AE0:  LDR             R4, [R0]; dword_23DF24
F5AE2:  LDR             R0, [R4]
F5AE4:  LDR             R1, =(sub_F5B3C+1 - 0xF5AEE)
F5AE6:  LDR             R2, =(off_2400BC - 0xF5AF2)
F5AE8:  ADD             R0, R5
F5AEA:  ADD             R1, PC; sub_F5B3C
F5AEC:  ADDS            R0, #0xC8
F5AEE:  ADD             R2, PC; off_2400BC
F5AF0:  BL              sub_164196
F5AF4:  LDR             R0, [R4]
F5AF6:  LDR             R1, =(sub_F5CA8+1 - 0xF5B00)
F5AF8:  LDR             R2, =(off_2400C0 - 0xF5B02)
F5AFA:  ADD             R0, R5
F5AFC:  ADD             R1, PC; sub_F5CA8
F5AFE:  ADD             R2, PC; off_2400C0
F5B00:  BL              sub_164196
F5B04:  LDR             R0, [R4]
F5B06:  MOVW            R3, #0xF174
F5B0A:  LDR             R1, =(sub_F5CC8+1 - 0xF5B18)
F5B0C:  MOVT            R3, #0x66 ; 'f'
F5B10:  LDR             R2, =(off_2400C4 - 0xF5B1A)
F5B12:  ADD             R0, R3
F5B14:  ADD             R1, PC; sub_F5CC8
F5B16:  ADD             R2, PC; off_2400C4
F5B18:  POP.W           {R4,R5,R7,LR}
F5B1C:  B.W             sub_164196
