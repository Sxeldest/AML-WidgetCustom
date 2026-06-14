; =========================================================
; Game Engine Function: sub_10CC8C
; Address            : 0x10CC8C - 0x10CCA8
; =========================================================

10CC8C:  PUSH            {R4,R5,R7,LR}
10CC8E:  ADD             R7, SP, #8
10CC90:  MOV             R4, R0
10CC92:  LDR             R0, [R0,#4]
10CC94:  CBZ             R0, loc_10CC98
10CC96:  POP             {R4,R5,R7,PC}
10CC98:  MOVS            R0, #4; unsigned int
10CC9A:  BLX             j__Znwj; operator new(uint)
10CC9E:  MOV             R5, R0
10CCA0:  BL              sub_10C8A8
10CCA4:  STR             R5, [R4,#4]
10CCA6:  POP             {R4,R5,R7,PC}
