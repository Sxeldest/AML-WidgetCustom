; =========================================================
; Game Engine Function: _ZNK31CTaskSimpleWaitUntilPedIsOutCar5CloneEv
; Address            : 0x50744C - 0x507498
; =========================================================

50744C:  PUSH            {R4-R7,LR}
50744E:  ADD             R7, SP, #0xC
507450:  PUSH.W          {R11}
507454:  MOV             R6, R0
507456:  MOVS            R0, #dword_1C; this
507458:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50745C:  MOV             R4, R0
50745E:  LDR             R5, [R6,#8]
507460:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
507464:  LDR             R0, =(_ZTV31CTaskSimpleWaitUntilPedIsOutCar_ptr - 0x507470)
507466:  MOVS            R1, #1
507468:  STRB            R1, [R4,#0xC]
50746A:  MOV             R1, R4
50746C:  ADD             R0, PC; _ZTV31CTaskSimpleWaitUntilPedIsOutCar_ptr
50746E:  CMP             R5, #0
507470:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsOutCar ...
507472:  ADD.W           R0, R0, #8
507476:  STR             R0, [R4]
507478:  STR.W           R5, [R1,#8]!; CEntity **
50747C:  VLDR            D16, [R6,#0x10]
507480:  LDR             R0, [R6,#0x18]
507482:  STR             R0, [R4,#0x18]
507484:  VSTR            D16, [R4,#0x10]
507488:  ITT NE
50748A:  MOVNE           R0, R5; this
50748C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
507490:  MOV             R0, R4
507492:  POP.W           {R11}
507496:  POP             {R4-R7,PC}
