; =========================================================
; Game Engine Function: _ZNK20CTaskSimpleGoToPoint5CloneEv
; Address            : 0x5273D4 - 0x527432
; =========================================================

5273D4:  PUSH            {R4-R7,LR}
5273D6:  ADD             R7, SP, #0xC
5273D8:  PUSH.W          {R8}
5273DC:  MOV             R4, R0
5273DE:  MOVS            R0, #word_2C; this
5273E0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5273E4:  LDR             R5, [R4,#8]
5273E6:  LDR             R6, [R4,#0x18]
5273E8:  LDRB.W          R8, [R4,#0x1D]
5273EC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5273F0:  LDR             R1, =(_ZTV15CTaskSimpleGoTo_ptr - 0x5273F8)
5273F2:  LDR             R2, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x5273FC)
5273F4:  ADD             R1, PC; _ZTV15CTaskSimpleGoTo_ptr
5273F6:  STR             R5, [R0,#8]
5273F8:  ADD             R2, PC; _ZTV20CTaskSimpleGoToPoint_ptr
5273FA:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoTo ...
5273FC:  LDR             R2, [R2]; `vtable for'CTaskSimpleGoToPoint ...
5273FE:  ADDS            R1, #8
527400:  STR             R1, [R0]
527402:  LDR             R1, [R4,#0x14]
527404:  LDRB            R5, [R0,#0x1D]
527406:  VLDR            D16, [R4,#0xC]
52740A:  LDRB            R3, [R0,#0x1C]
52740C:  STR             R1, [R0,#0x14]
52740E:  ADD.W           R1, R2, #8
527412:  STR             R1, [R0]
527414:  AND.W           R1, R8, #9
527418:  AND.W           R2, R5, #0xE0
52741C:  STR             R6, [R0,#0x18]
52741E:  ORRS            R1, R2
527420:  STRB            R1, [R0,#0x1D]
527422:  AND.W           R1, R3, #0xC0
527426:  STRB            R1, [R0,#0x1C]
527428:  VSTR            D16, [R0,#0xC]
52742C:  POP.W           {R8}
527430:  POP             {R4-R7,PC}
