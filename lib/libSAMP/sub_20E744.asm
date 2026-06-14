; =========================================================
; Game Engine Function: sub_20E744
; Address            : 0x20E744 - 0x20E75E
; =========================================================

20E744:  CMP             R0, R1
20E746:  BEQ             sub_20E75E
20E748:  CMP             R1, R2
20E74A:  BEQ             loc_20E75C
20E74C:  PUSH            {R7,LR}
20E74E:  MOV             R7, SP
20E750:  BL              sub_20E7A6
20E754:  MOV             R2, R0
20E756:  POP.W           {R7,LR}
20E75A:  B               sub_20E75E
20E75C:  MOV             R2, R0
