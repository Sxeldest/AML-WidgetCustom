; =========================================================
; Game Engine Function: sub_1060E4
; Address            : 0x1060E4 - 0x10611A
; =========================================================

1060E4:  PUSH            {R4,R5,R7,LR}
1060E6:  ADD             R7, SP, #8
1060E8:  MOV             R5, R0
1060EA:  LDR             R0, [R0,#8]
1060EC:  MOV             R4, R1
1060EE:  BL              sub_FE074
1060F2:  LDR             R1, =(aVector_0 - 0x1060FA); " vector[" ...
1060F4:  MOV             R0, R4
1060F6:  ADD             R1, PC; " vector["
1060F8:  ADD.W           R2, R1, #8
1060FC:  BL              sub_FFB40
106100:  LDR             R0, [R5,#0xC]
106102:  CBZ             R0, loc_10610A
106104:  MOV             R1, R4
106106:  BL              sub_FE074
10610A:  LDR             R1, =(asc_4D740 - 0x106112); "]" ...
10610C:  MOV             R0, R4
10610E:  ADD             R1, PC; "]"
106110:  ADDS            R2, R1, #1
106112:  POP.W           {R4,R5,R7,LR}
106116:  B.W             sub_FFB40
