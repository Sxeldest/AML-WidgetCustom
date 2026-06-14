; =========================================================
; Game Engine Function: sub_1238B8
; Address            : 0x1238B8 - 0x1238CE
; =========================================================

1238B8:  PUSH            {R4,R6,R7,LR}
1238BA:  ADD             R7, SP, #8
1238BC:  MOV             R4, R0
1238BE:  LDR             R0, [R0,#4]
1238C0:  CBZ             R0, loc_1238CA
1238C2:  BL              sub_123AA4
1238C6:  BLX             j__ZdlPv; operator delete(void *)
1238CA:  MOV             R0, R4
1238CC:  POP             {R4,R6,R7,PC}
