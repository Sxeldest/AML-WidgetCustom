; =========================================================
; Game Engine Function: sub_13AE4C
; Address            : 0x13AE4C - 0x13AE68
; =========================================================

13AE4C:  PUSH            {R4,R6,R7,LR}
13AE4E:  ADD             R7, SP, #8
13AE50:  LDR             R1, [R0,#8]
13AE52:  MOV             R4, R0
13AE54:  BL              sub_13AE68
13AE58:  LDR             R0, [R4]; void *
13AE5A:  MOVS            R1, #0
13AE5C:  STR             R1, [R4]
13AE5E:  CBZ             R0, loc_13AE64
13AE60:  BLX             j__ZdlPv; operator delete(void *)
13AE64:  MOV             R0, R4
13AE66:  POP             {R4,R6,R7,PC}
