; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAt14ControlSubTaskEP4CPed
; Address            : 0x5472AC - 0x547318
; =========================================================

5472AC:  PUSH            {R4-R7,LR}
5472AE:  ADD             R7, SP, #0xC
5472B0:  PUSH.W          {R11}
5472B4:  MOV             R6, R0
5472B6:  MOV             R5, R1
5472B8:  LDR             R0, [R6,#0xC]
5472BA:  CBZ             R0, loc_5472E6
5472BC:  LDR             R4, [R6,#8]
5472BE:  LDR             R0, [R4]
5472C0:  LDR             R1, [R0,#0x14]
5472C2:  MOV             R0, R4
5472C4:  BLX             R1
5472C6:  CMP.W           R0, #0x390
5472CA:  BNE             loc_5472E8
5472CC:  LDRB            R0, [R6,#0x18]
5472CE:  CBZ             R0, loc_5472E8
5472D0:  LDRB            R0, [R6,#0x19]
5472D2:  CBZ             R0, loc_5472F0
5472D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5472DC)
5472D6:  MOVS            R1, #0
5472D8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5472DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5472DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5472DE:  STRB            R1, [R6,#0x19]
5472E0:  STR             R0, [R6,#0x10]
5472E2:  MOV             R1, R0
5472E4:  B               loc_5472FA
5472E6:  MOVS            R4, #0
5472E8:  MOV             R0, R4
5472EA:  POP.W           {R11}
5472EE:  POP             {R4-R7,PC}
5472F0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5472F8)
5472F2:  LDR             R1, [R6,#0x10]
5472F4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5472F6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5472F8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5472FA:  LDR             R2, [R6,#0x14]
5472FC:  ADD             R1, R2
5472FE:  CMP             R1, R0
547300:  BHI             loc_5472E8
547302:  LDR             R0, [R6,#8]
547304:  MOVS            R2, #1
547306:  MOVS            R3, #0
547308:  LDR             R1, [R0]
54730A:  LDR             R6, [R1,#0x1C]
54730C:  MOV             R1, R5
54730E:  BLX             R6
547310:  CMP             R0, #0
547312:  IT NE
547314:  MOVNE           R4, #0
547316:  B               loc_5472E8
