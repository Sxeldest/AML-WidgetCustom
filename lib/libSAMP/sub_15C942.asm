; =========================================================
; Game Engine Function: sub_15C942
; Address            : 0x15C942 - 0x15C95E
; =========================================================

15C942:  PUSH            {R4,R6,R7,LR}
15C944:  ADD             R7, SP, #8
15C946:  MOV             R4, R0
15C948:  BL              sub_15C95E
15C94C:  CBZ             R0, loc_15C95A
15C94E:  MOV             R1, R0
15C950:  MOV             R0, R4
15C952:  BL              sub_15CA02
15C956:  MOVS            R0, #1
15C958:  POP             {R4,R6,R7,PC}
15C95A:  MOVS            R0, #0
15C95C:  POP             {R4,R6,R7,PC}
