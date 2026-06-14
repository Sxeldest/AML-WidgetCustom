; =========================================================
; Game Engine Function: _ZNK15CEventEscalator17TakesPriorityOverERK6CEvent
; Address            : 0x377E08 - 0x377E2C
; =========================================================

377E08:  PUSH            {R4,R5,R7,LR}
377E0A:  ADD             R7, SP, #8
377E0C:  MOV             R4, R0
377E0E:  LDR             R0, [R1]
377E10:  LDR             R2, [R0,#8]
377E12:  MOV             R0, R1
377E14:  BLX             R2
377E16:  MOV             R5, R0
377E18:  LDR             R0, [R4]
377E1A:  LDR             R1, [R0,#8]
377E1C:  MOV             R0, R4
377E1E:  BLX             R1
377E20:  MOVS            R1, #0
377E22:  CMP             R5, R0
377E24:  IT NE
377E26:  MOVNE           R1, #1
377E28:  MOV             R0, R1
377E2A:  POP             {R4,R5,R7,PC}
