; =========================================================
; Game Engine Function: sub_104D90
; Address            : 0x104D90 - 0x104DD0
; =========================================================

104D90:  PUSH            {R4,R6,R7,LR}
104D92:  ADD             R7, SP, #8
104D94:  MOV             R12, R1
104D96:  MOV             R1, R0
104D98:  LDR             R0, [R0,#0x5C]
104D9A:  CBZ             R0, locret_104DB6
104D9C:  LDR             R4, =(off_23494C - 0x104DA4)
104D9E:  LDR             R3, [R1,#4]
104DA0:  ADD             R4, PC; off_23494C
104DA2:  LDR             R4, [R4]; dword_23DF24
104DA4:  LDR             R3, [R3]
104DA6:  LDR             R1, [R4]
104DA8:  MOV             R4, #0x667D24
104DB0:  ADD             R4, R1
104DB2:  CMP             R3, R4
104DB4:  BNE             loc_104DB8
104DB6:  POP             {R4,R6,R7,PC}
104DB8:  MOV             R3, #0x4A4A9D
104DC0:  ADDS            R4, R1, R3
104DC2:  MOV             R1, R2
104DC4:  MOV             R2, R12
104DC6:  MOVS            R3, #0
104DC8:  MOV             R12, R4
104DCA:  POP.W           {R4,R6,R7,LR}
104DCE:  BX              R12
