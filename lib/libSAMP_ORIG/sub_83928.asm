; =========================================================
; Game Engine Function: sub_83928
; Address            : 0x83928 - 0x8393E
; =========================================================

83928:  PUSH            {R4,R6,R7,LR}
8392A:  ADD             R7, SP, #8
8392C:  MOV             R4, R2
8392E:  BL              sub_8004C
83932:  LDR             R1, =(_ZTV13SetController - 0x8393A); `vtable for'SetController ...
83934:  STR             R4, [R0,#8]
83936:  ADD             R1, PC; `vtable for'SetController
83938:  ADDS            R1, #8
8393A:  STR             R1, [R0]
8393C:  POP             {R4,R6,R7,PC}
