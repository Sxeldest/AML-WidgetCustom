; =========================================================
; Game Engine Function: sub_104D60
; Address            : 0x104D60 - 0x104D8E
; =========================================================

104D60:  PUSH            {R4,R5,R7,LR}
104D62:  ADD             R7, SP, #8
104D64:  MOV             R4, R0
104D66:  LDR             R0, [R0,#0x5C]
104D68:  CBZ             R0, locret_104D8C
104D6A:  LDR             R0, [R4,#8]
104D6C:  MOV             R5, R1
104D6E:  BL              sub_1082F4
104D72:  CBZ             R0, locret_104D8C
104D74:  MOV             R0, R5
104D76:  BL              sub_108728
104D7A:  LDR             R1, [R4,#0x5C]
104D7C:  STR.W           R0, [R1,#0x55C]
104D80:  MOV             R0, R5
104D82:  BL              sub_108728
104D86:  LDR             R1, [R4,#0x5C]
104D88:  STR.W           R0, [R1,#0x560]
104D8C:  POP             {R4,R5,R7,PC}
