; =========================================================
; Game Engine Function: sub_1876AE
; Address            : 0x1876AE - 0x1876C8
; =========================================================

1876AE:  PUSH            {R4,R5,R7,LR}
1876B0:  ADD             R7, SP, #8
1876B2:  MOV             R5, R1
1876B4:  MOV             R4, R0
1876B6:  BL              sub_187734
1876BA:  CBZ             R5, locret_1876C6
1876BC:  MOV             R0, R4
1876BE:  POP.W           {R4,R5,R7,LR}
1876C2:  B.W             sub_187396
1876C6:  POP             {R4,R5,R7,PC}
