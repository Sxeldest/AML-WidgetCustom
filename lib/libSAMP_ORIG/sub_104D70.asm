; =========================================================
; Game Engine Function: sub_104D70
; Address            : 0x104D70 - 0x104D92
; =========================================================

104D70:  PUSH            {R4,R5,R7,LR}
104D72:  ADD             R7, SP, #8
104D74:  MOV             R4, R1
104D76:  LDR             R1, =(aOperator_39 - 0x104D80); "operator\"\" " ...
104D78:  MOV             R5, R0
104D7A:  MOV             R0, R4
104D7C:  ADD             R1, PC; "operator\"\" "
104D7E:  ADD.W           R2, R1, #0xB
104D82:  BL              sub_FFB40
104D86:  LDR             R0, [R5,#8]
104D88:  MOV             R1, R4
104D8A:  POP.W           {R4,R5,R7,LR}
104D8E:  B.W             sub_FE074
