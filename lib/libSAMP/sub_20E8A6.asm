; =========================================================
; Game Engine Function: sub_20E8A6
; Address            : 0x20E8A6 - 0x20E8C0
; =========================================================

20E8A6:  CMP             R0, R1
20E8A8:  BEQ             sub_20E8C0
20E8AA:  CMP             R1, R2
20E8AC:  BEQ             loc_20E8BE
20E8AE:  PUSH            {R7,LR}
20E8B0:  MOV             R7, SP
20E8B2:  BL              sub_20E90E
20E8B6:  MOV             R2, R0
20E8B8:  POP.W           {R7,LR}
20E8BC:  B               sub_20E8C0
20E8BE:  MOV             R2, R0
