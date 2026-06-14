; =========================================================
; Game Engine Function: _ZN6CWorld6RemoveEP7CEntity
; Address            : 0x4232BC - 0x4232E6
; =========================================================

4232BC:  PUSH            {R4,R6,R7,LR}
4232BE:  ADD             R7, SP, #8
4232C0:  MOV             R4, R0
4232C2:  LDR             R0, [R4]
4232C4:  LDR             R1, [R0,#0x10]
4232C6:  MOV             R0, R4
4232C8:  BLX             R1
4232CA:  LDRB.W          R0, [R4,#0x3A]
4232CE:  AND.W           R0, R0, #7
4232D2:  SUBS            R0, #2
4232D4:  UXTB            R0, R0
4232D6:  CMP             R0, #2
4232D8:  IT HI
4232DA:  POPHI           {R4,R6,R7,PC}
4232DC:  MOV             R0, R4; this
4232DE:  POP.W           {R4,R6,R7,LR}
4232E2:  B.W             sub_18E9C4
