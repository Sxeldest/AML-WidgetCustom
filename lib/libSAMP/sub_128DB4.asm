; =========================================================
; Game Engine Function: sub_128DB4
; Address            : 0x128DB4 - 0x128DE0
; =========================================================

128DB4:  PUSH            {R4,R5,R7,LR}
128DB6:  ADD             R7, SP, #8
128DB8:  LDR             R0, =(off_23494C - 0x128DCA)
128DBA:  MOV             R5, #0x2D3FA2
128DC2:  MOVW            R1, #0x63E7
128DC6:  ADD             R0, PC; off_23494C
128DC8:  MOVS            R2, #0
128DCA:  MOVS            R3, #0
128DCC:  LDR             R4, [R0]; dword_23DF24
128DCE:  LDR             R0, [R4]
128DD0:  ADD             R0, R5
128DD2:  BL              sub_164250
128DD6:  LDR             R0, [R4]
128DD8:  MOVS            R1, #0xB3
128DDA:  ADD             R0, R5
128DDC:  STRB            R1, [R0,#0xA]
128DDE:  POP             {R4,R5,R7,PC}
