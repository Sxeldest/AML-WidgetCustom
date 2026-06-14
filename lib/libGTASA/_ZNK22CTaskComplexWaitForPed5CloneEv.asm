; =========================================================
; Game Engine Function: _ZNK22CTaskComplexWaitForPed5CloneEv
; Address            : 0x53741C - 0x537468
; =========================================================

53741C:  PUSH            {R4-R7,LR}
53741E:  ADD             R7, SP, #0xC
537420:  PUSH.W          {R8,R9,R11}
537424:  MOV             R4, R0
537426:  MOVS            R0, #word_2C; this
537428:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53742C:  ADD.W           R9, R4, #0xC
537430:  MOV             R5, R0
537432:  LDM.W           R9, {R6,R8,R9}
537436:  LDRB            R4, [R4,#0x18]
537438:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53743C:  LDR             R0, =(_ZTV22CTaskComplexWaitForPed_ptr - 0x537446)
53743E:  MOVS            R1, #0
537440:  STRH            R1, [R5,#0x24]
537442:  ADD             R0, PC; _ZTV22CTaskComplexWaitForPed_ptr
537444:  STRD.W          R8, R9, [R5,#0x10]
537448:  STRB            R4, [R5,#0x18]
53744A:  LDR             R0, [R0]; `vtable for'CTaskComplexWaitForPed ...
53744C:  STRD.W          R1, R1, [R5,#0x1C]
537450:  MOV             R1, R5
537452:  ADDS            R0, #8
537454:  STR             R0, [R5]
537456:  STR.W           R6, [R1,#0xC]!; CEntity **
53745A:  MOV             R0, R6; this
53745C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
537460:  MOV             R0, R5
537462:  POP.W           {R8,R9,R11}
537466:  POP             {R4-R7,PC}
