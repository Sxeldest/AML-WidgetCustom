; =========================================================
; Game Engine Function: _ZNK24CTaskComplexUseEntryExit5CloneEv
; Address            : 0x526FE8 - 0x527014
; =========================================================

526FE8:  PUSH            {R4,R6,R7,LR}
526FEA:  ADD             R7, SP, #8
526FEC:  MOV             R4, R0
526FEE:  MOVS            R0, #off_18; this
526FF0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526FF4:  LDR             R4, [R4,#0xC]
526FF6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
526FFA:  LDR             R1, =(_ZTV24CTaskComplexUseEntryExit_ptr - 0x527006)
526FFC:  MOVS            R2, #0
526FFE:  STRD.W          R4, R2, [R0,#0xC]
527002:  ADD             R1, PC; _ZTV24CTaskComplexUseEntryExit_ptr
527004:  LDRB            R2, [R0,#0x14]
527006:  LDR             R1, [R1]; `vtable for'CTaskComplexUseEntryExit ...
527008:  ADDS            R1, #8
52700A:  STR             R1, [R0]
52700C:  AND.W           R1, R2, #0xFE
527010:  STRB            R1, [R0,#0x14]
527012:  POP             {R4,R6,R7,PC}
