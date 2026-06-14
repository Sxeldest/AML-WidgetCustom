; =========================================================
; Game Engine Function: sub_12C4B0
; Address            : 0x12C4B0 - 0x12C4D4
; =========================================================

12C4B0:  PUSH            {R4,R6,R7,LR}
12C4B2:  ADD             R7, SP, #8
12C4B4:  LDR             R1, =(_ZTV11ButtonPanel - 0x12C4BE); `vtable for'ButtonPanel ...
12C4B6:  MOV             R4, R0
12C4B8:  LDR             R0, [R0,#0x6C]; void *
12C4BA:  ADD             R1, PC; `vtable for'ButtonPanel
12C4BC:  ADD.W           R1, R1, #8
12C4C0:  STR             R1, [R4]
12C4C2:  CBZ             R0, loc_12C4CA
12C4C4:  STR             R0, [R4,#0x70]
12C4C6:  BLX             j__ZdlPv; operator delete(void *)
12C4CA:  MOV             R0, R4
12C4CC:  POP.W           {R4,R6,R7,LR}
12C4D0:  B.W             sub_12BCE4
