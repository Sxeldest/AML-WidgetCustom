; =========================================================
; Game Engine Function: sub_1FAEFC
; Address            : 0x1FAEFC - 0x1FAF0C
; =========================================================

1FAEFC:  PUSH            {R4,R6,R7,LR}
1FAEFE:  ADD             R7, SP, #8
1FAF00:  MOVS            R1, #0
1FAF02:  MOV             R4, R0
1FAF04:  BL              sub_1FAE74
1FAF08:  MOV             R0, R4
1FAF0A:  POP             {R4,R6,R7,PC}
