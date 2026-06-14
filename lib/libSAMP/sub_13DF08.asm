; =========================================================
; Game Engine Function: sub_13DF08
; Address            : 0x13DF08 - 0x13DF22
; =========================================================

13DF08:  PUSH            {R4,R6,R7,LR}
13DF0A:  ADD             R7, SP, #8
13DF0C:  MOV             R4, R0
13DF0E:  LDR             R0, [R0]
13DF10:  CBZ             R0, loc_13DF1E
13DF12:  BL              sub_1492FC
13DF16:  BLX             j__ZdlPv; operator delete(void *)
13DF1A:  MOVS            R0, #0
13DF1C:  STR             R0, [R4]
13DF1E:  MOV             R0, R4
13DF20:  POP             {R4,R6,R7,PC}
