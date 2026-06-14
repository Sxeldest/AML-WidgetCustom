; =========================================================
; Game Engine Function: sub_1F2A50
; Address            : 0x1F2A50 - 0x1F2A6C
; =========================================================

1F2A50:  PUSH            {R4,R6,R7,LR}
1F2A52:  ADD             R7, SP, #8
1F2A54:  MOV             R4, R0
1F2A56:  BL              sub_1EE5C6
1F2A5A:  MOVS            R0, #0
1F2A5C:  STRD.W          R0, R0, [R4,#0xC]
1F2A60:  STR.W           R0, [R4,#0x15]
1F2A64:  STR.W           R0, [R4,#0x11]
1F2A68:  MOV             R0, R4
1F2A6A:  POP             {R4,R6,R7,PC}
