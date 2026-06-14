; =========================================================
; Game Engine Function: sub_1060A8
; Address            : 0x1060A8 - 0x1060D6
; =========================================================

1060A8:  PUSH            {R4,R5,R7,LR}
1060AA:  ADD             R7, SP, #8
1060AC:  MOV             R4, R1
1060AE:  LDR             R1, =(aPixelVector - 0x1060B8); "pixel vector[" ...
1060B0:  MOV             R5, R0
1060B2:  MOV             R0, R4
1060B4:  ADD             R1, PC; "pixel vector["
1060B6:  ADD.W           R2, R1, #0xD
1060BA:  BL              sub_FFB40
1060BE:  LDR             R0, [R5,#8]
1060C0:  MOV             R1, R4
1060C2:  BL              sub_FE074
1060C6:  LDR             R1, =(asc_4D740 - 0x1060CE); "]" ...
1060C8:  MOV             R0, R4
1060CA:  ADD             R1, PC; "]"
1060CC:  ADDS            R2, R1, #1
1060CE:  POP.W           {R4,R5,R7,LR}
1060D2:  B.W             sub_FFB40
