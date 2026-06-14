; =========================================================
; Game Engine Function: sub_1F0AF4
; Address            : 0x1F0AF4 - 0x1F0B04
; =========================================================

1F0AF4:  PUSH            {R4,R6,R7,LR}
1F0AF6:  ADD             R7, SP, #8
1F0AF8:  MOVS            R1, #0
1F0AFA:  MOV             R4, R0
1F0AFC:  BL              sub_1F3478
1F0B00:  MOV             R0, R4
1F0B02:  POP             {R4,R6,R7,PC}
