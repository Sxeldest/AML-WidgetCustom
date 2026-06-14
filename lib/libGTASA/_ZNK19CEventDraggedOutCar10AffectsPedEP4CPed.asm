; =========================================================
; Game Engine Function: _ZNK19CEventDraggedOutCar10AffectsPedEP4CPed
; Address            : 0x371A94 - 0x371AB2
; =========================================================

371A94:  PUSH            {R4,R6,R7,LR}
371A96:  ADD             R7, SP, #8
371A98:  MOV             R4, R0
371A9A:  MOV             R0, R1; this
371A9C:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
371AA0:  CMP             R0, #1
371AA2:  ITT NE
371AA4:  MOVNE           R0, #0
371AA6:  POPNE           {R4,R6,R7,PC}
371AA8:  LDR             R0, [R4,#0x10]
371AAA:  CMP             R0, #0
371AAC:  IT NE
371AAE:  MOVNE           R0, #1
371AB0:  POP             {R4,R6,R7,PC}
