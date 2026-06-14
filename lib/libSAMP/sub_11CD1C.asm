; =========================================================
; Game Engine Function: sub_11CD1C
; Address            : 0x11CD1C - 0x11CD32
; =========================================================

11CD1C:  PUSH            {R4,R6,R7,LR}
11CD1E:  ADD             R7, SP, #8
11CD20:  MOV             R4, R0
11CD22:  LDR             R0, [R0,#4]
11CD24:  CBZ             R0, loc_11CD2E
11CD26:  BL              sub_11CEF0
11CD2A:  BLX             j__ZdlPv; operator delete(void *)
11CD2E:  MOV             R0, R4
11CD30:  POP             {R4,R6,R7,PC}
