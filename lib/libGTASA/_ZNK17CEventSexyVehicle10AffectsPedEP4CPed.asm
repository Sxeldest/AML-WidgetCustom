; =========================================================
; Game Engine Function: _ZNK17CEventSexyVehicle10AffectsPedEP4CPed
; Address            : 0x374A1C - 0x374A3A
; =========================================================

374A1C:  PUSH            {R4,R6,R7,LR}
374A1E:  ADD             R7, SP, #8
374A20:  MOV             R4, R0
374A22:  MOV             R0, R1; this
374A24:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
374A28:  CMP             R0, #1
374A2A:  ITT NE
374A2C:  MOVNE           R0, #0
374A2E:  POPNE           {R4,R6,R7,PC}
374A30:  LDR             R0, [R4,#0xC]
374A32:  CMP             R0, #0
374A34:  IT NE
374A36:  MOVNE           R0, #1
374A38:  POP             {R4,R6,R7,PC}
