; =========================================================
; Game Engine Function: sub_104D9C
; Address            : 0x104D9C - 0x104DBC
; =========================================================

104D9C:  PUSH            {R4,R5,R7,LR}
104D9E:  ADD             R7, SP, #8
104DA0:  MOV             R4, R1
104DA2:  LDR             R1, =(asc_4E514 - 0x104DAC); "::" ...
104DA4:  MOV             R5, R0
104DA6:  MOV             R0, R4
104DA8:  ADD             R1, PC; "::"
104DAA:  ADDS            R2, R1, #2
104DAC:  BL              sub_FFB40
104DB0:  LDR             R0, [R5,#8]
104DB2:  MOV             R1, R4
104DB4:  POP.W           {R4,R5,R7,LR}
104DB8:  B.W             sub_FE074
