; =========================================================
; Game Engine Function: _ZN26CTaskComplexDragPedFromCar14ControlSubTaskEP4CPed
; Address            : 0x4F7340 - 0x4F7392
; =========================================================

4F7340:  PUSH            {R4,R5,R7,LR}
4F7342:  ADD             R7, SP, #8
4F7344:  MOV             R5, R0
4F7346:  MOV             R4, R1
4F7348:  LDRB.W          R0, [R5,#0x28]
4F734C:  CBZ             R0, loc_4F735A
4F734E:  MOV             R0, R5; this
4F7350:  MOV             R1, R4; CPed *
4F7352:  POP.W           {R4,R5,R7,LR}
4F7356:  B.W             _ZN20CTaskComplexEnterCar14ControlSubTaskEP4CPed; CTaskComplexEnterCar::ControlSubTask(CPed *)
4F735A:  LDR             R0, [R5,#0x50]
4F735C:  CMP             R0, #0
4F735E:  BEQ             loc_4F734E
4F7360:  LDRB.W          R0, [R0,#0x485]
4F7364:  LSLS            R0, R0, #0x1F
4F7366:  BNE             loc_4F734E
4F7368:  LDR             R0, [R5,#8]
4F736A:  MOVS            R2, #1
4F736C:  MOVS            R3, #0
4F736E:  LDR             R1, [R0]
4F7370:  LDR.W           R12, [R1,#0x1C]
4F7374:  MOV             R1, R4
4F7376:  BLX             R12
4F7378:  CMP             R0, #0
4F737A:  BEQ             loc_4F734E
4F737C:  MOVS            R0, #byte_8; this
4F737E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F7382:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F7386:  LDR             R1, =(_ZTV15CTaskSimpleNone_ptr - 0x4F738C)
4F7388:  ADD             R1, PC; _ZTV15CTaskSimpleNone_ptr
4F738A:  LDR             R1, [R1]; `vtable for'CTaskSimpleNone ...
4F738C:  ADDS            R1, #8
4F738E:  STR             R1, [R0]
4F7390:  POP             {R4,R5,R7,PC}
