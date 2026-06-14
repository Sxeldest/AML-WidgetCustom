; =========================================================
; Game Engine Function: _ZN8CGarages28SetTargetCarForMissionGarageEsP11CAutomobile
; Address            : 0x3138D4 - 0x313916
; =========================================================

3138D4:  PUSH            {R4,R5,R7,LR}
3138D6:  ADD             R7, SP, #8
3138D8:  MOV             R4, R0
3138DA:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x3138E4)
3138DC:  MOVS            R5, #0xD8
3138DE:  CMP             R1, #0
3138E0:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
3138E2:  LDR             R0, [R0]; CGarages::aGarages ...
3138E4:  SMLABB.W        R0, R4, R5, R0
3138E8:  ADD.W           R2, R0, #0x40 ; '@'
3138EC:  BEQ             loc_313910
3138EE:  STR             R1, [R2]
3138F0:  MOV             R0, R1; this
3138F2:  MOV             R1, R2; CEntity **
3138F4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3138F8:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x3138FE)
3138FA:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
3138FC:  LDR             R0, [R0]; CGarages::aGarages ...
3138FE:  SMLABB.W        R0, R4, R5, R0
313902:  LDRB.W          R1, [R0,#0x4D]!
313906:  CMP             R1, #5
313908:  ITT EQ
31390A:  MOVEQ           R1, #0
31390C:  STRBEQ          R1, [R0]
31390E:  POP             {R4,R5,R7,PC}
313910:  MOVS            R0, #0
313912:  STR             R0, [R2]
313914:  POP             {R4,R5,R7,PC}
