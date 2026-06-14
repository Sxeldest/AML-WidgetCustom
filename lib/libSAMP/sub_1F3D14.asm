; =========================================================
; Game Engine Function: sub_1F3D14
; Address            : 0x1F3D14 - 0x1F3D24
; =========================================================

1F3D14:  PUSH            {R4,R6,R7,LR}
1F3D16:  ADD             R7, SP, #8
1F3D18:  MOVS            R1, #0
1F3D1A:  MOV             R4, R0
1F3D1C:  BL              sub_1F3F4C
1F3D20:  MOV             R0, R4
1F3D22:  POP             {R4,R6,R7,PC}
