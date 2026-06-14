; =========================================================
; Game Engine Function: sub_104DD2
; Address            : 0x104DD2 - 0x104DF6
; =========================================================

104DD2:  PUSH            {R4,R5,R7,LR}
104DD4:  ADD             R7, SP, #8
104DD6:  MOV             R5, R0
104DD8:  LDR             R0, [R0,#8]
104DDA:  MOV             R4, R1
104DDC:  BL              sub_FE074
104DE0:  LDRD.W          R1, R2, [R5,#0xC]
104DE4:  MOV             R0, R4
104DE6:  BL              sub_FFB40
104DEA:  LDR             R0, [R5,#0x14]
104DEC:  MOV             R1, R4
104DEE:  POP.W           {R4,R5,R7,LR}
104DF2:  B.W             sub_FE074
