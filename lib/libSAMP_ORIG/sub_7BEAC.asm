; =========================================================
; Game Engine Function: sub_7BEAC
; Address            : 0x7BEAC - 0x7BED4
; =========================================================

7BEAC:  PUSH            {R4,R6,R7,LR}
7BEAE:  ADD             R7, SP, #8
7BEB0:  MOV             R4, R0
7BEB2:  LDRB            R0, [R0,#8]
7BEB4:  CBZ             R0, locret_7BED2
7BEB6:  LDR.W           R0, [R4,#0x84]
7BEBA:  CMP             R0, #0
7BEBC:  ITT NE
7BEBE:  LDRNE           R1, [R4,#0x70]
7BEC0:  BLNE            sub_75410
7BEC4:  LDR             R0, [R4]
7BEC6:  LDR             R1, [R4,#0x70]
7BEC8:  LDR             R2, [R0,#4]
7BECA:  MOV             R0, R4
7BECC:  POP.W           {R4,R6,R7,LR}
7BED0:  BX              R2
7BED2:  POP             {R4,R6,R7,PC}
