; =========================================================
; Game Engine Function: _ZN16CTaskComplexJump18CreateFirstSubTaskEP4CPed
; Address            : 0x52E2CC - 0x52E322
; =========================================================

52E2CC:  PUSH            {R4-R7,LR}
52E2CE:  ADD             R7, SP, #0xC
52E2D0:  PUSH.W          {R8}
52E2D4:  MOV             R6, R0
52E2D6:  MOVS            R0, #word_2C; this
52E2D8:  MOV             R8, R1
52E2DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52E2DE:  MOV             R4, R0
52E2E0:  LDR             R5, [R6,#0xC]
52E2E2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52E2E6:  LDR             R0, =(_ZTV15CTaskSimpleJump_ptr - 0x52E2F4)
52E2E8:  MOVS            R1, #0; CPed *
52E2EA:  CMP             R5, #1
52E2EC:  STRD.W          R1, R1, [R4,#0x1C]
52E2F0:  ADD             R0, PC; _ZTV15CTaskSimpleJump_ptr
52E2F2:  IT NE
52E2F4:  MOVNE           R5, #0
52E2F6:  STRB.W          R5, [R4,#0x24]
52E2FA:  LDR             R0, [R0]; `vtable for'CTaskSimpleJump ...
52E2FC:  STRB.W          R1, [R4,#0x25]
52E300:  STR             R1, [R4,#0x28]
52E302:  ADDS            R0, #8
52E304:  STR             R0, [R4]
52E306:  LDRB            R0, [R6,#0x10]
52E308:  CBNZ            R0, loc_52E314
52E30A:  MOV             R0, R8; this
52E30C:  BLX             j__ZN10CPedGroups16IsInPlayersGroupEPK4CPed; CPedGroups::IsInPlayersGroup(CPed const*)
52E310:  CMP             R0, #1
52E312:  BNE             loc_52E31A
52E314:  MOVS            R0, #1
52E316:  STRB.W          R0, [R4,#0x25]
52E31A:  MOV             R0, R4
52E31C:  POP.W           {R8}
52E320:  POP             {R4-R7,PC}
