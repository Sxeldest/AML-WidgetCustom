; =========================================================
; Game Engine Function: sub_1F3308
; Address            : 0x1F3308 - 0x1F331E
; =========================================================

1F3308:  PUSH            {R4,R6,R7,LR}
1F330A:  ADD             R7, SP, #8
1F330C:  MOV             R4, R0
1F330E:  LDRB            R0, [R4,#0x10]
1F3310:  CMP             R0, #2
1F3312:  BHI             locret_1F331C
1F3314:  MOV             R0, R4
1F3316:  BL              sub_1F2F78
1F331A:  B               loc_1F330E
1F331C:  POP             {R4,R6,R7,PC}
