; =========================================================
; Game Engine Function: sub_17FA18
; Address            : 0x17FA18 - 0x17FA34
; =========================================================

17FA18:  PUSH            {R4,R6,R7,LR}
17FA1A:  ADD             R7, SP, #8
17FA1C:  MOVS            R1, #0
17FA1E:  MOV             R4, R0
17FA20:  BL              sub_1848EA
17FA24:  LDR             R0, [R4,#8]
17FA26:  CBZ             R0, loc_17FA30
17FA28:  LDR             R0, [R4]; void *
17FA2A:  CBZ             R0, loc_17FA30
17FA2C:  BLX             j__ZdaPv; operator delete[](void *)
17FA30:  MOV             R0, R4
17FA32:  POP             {R4,R6,R7,PC}
