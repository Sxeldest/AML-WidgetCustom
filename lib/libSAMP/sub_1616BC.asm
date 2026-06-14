; =========================================================
; Game Engine Function: sub_1616BC
; Address            : 0x1616BC - 0x1616E2
; =========================================================

1616BC:  PUSH            {R4-R7,LR}
1616BE:  ADD             R7, SP, #0xC
1616C0:  PUSH.W          {R8}
1616C4:  MOV             R8, R3
1616C6:  MOV             R5, R2
1616C8:  MOV             R6, R1
1616CA:  MOVS            R0, #1
1616CC:  BL              sub_F0ED8
1616D0:  LDR             R1, [R0]
1616D2:  LDR             R4, [R1,#0xC]
1616D4:  MOV             R1, R6
1616D6:  MOV             R2, R5
1616D8:  MOV             R3, R8
1616DA:  BLX             R4
1616DC:  POP.W           {R8}
1616E0:  POP             {R4-R7,PC}
