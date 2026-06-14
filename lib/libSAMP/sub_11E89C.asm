; =========================================================
; Game Engine Function: sub_11E89C
; Address            : 0x11E89C - 0x11E8B2
; =========================================================

11E89C:  PUSH            {R4,R6,R7,LR}
11E89E:  ADD             R7, SP, #8
11E8A0:  MOV             R4, R0
11E8A2:  LDR             R0, [R0,#4]
11E8A4:  CBZ             R0, loc_11E8AE
11E8A6:  BL              sub_11EE60
11E8AA:  BLX             j__ZdlPv; operator delete(void *)
11E8AE:  MOV             R0, R4
11E8B0:  POP             {R4,R6,R7,PC}
