; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForBusC2Ev
; Address            : 0x4EE4C0 - 0x4EE4D8
; =========================================================

4EE4C0:  PUSH            {R7,LR}
4EE4C2:  MOV             R7, SP
4EE4C4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EE4C8:  LDR             R1, =(_ZTV22CTaskComplexWaitForBus_ptr - 0x4EE4D2)
4EE4CA:  MOVS            R2, #0
4EE4CC:  STR             R2, [R0,#0xC]
4EE4CE:  ADD             R1, PC; _ZTV22CTaskComplexWaitForBus_ptr
4EE4D0:  LDR             R1, [R1]; `vtable for'CTaskComplexWaitForBus ...
4EE4D2:  ADDS            R1, #8
4EE4D4:  STR             R1, [R0]
4EE4D6:  POP             {R7,PC}
