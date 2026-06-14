; =========================================================
; Game Engine Function: _ZN18CTaskComplexOnFireC2Ev
; Address            : 0x4EF58C - 0x4EF5A0
; =========================================================

4EF58C:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexOnFire::CTaskComplexOnFire(void)'
4EF58E:  MOV             R7, SP
4EF590:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF594:  LDR             R1, =(_ZTV18CTaskComplexOnFire_ptr - 0x4EF59A)
4EF596:  ADD             R1, PC; _ZTV18CTaskComplexOnFire_ptr
4EF598:  LDR             R1, [R1]; `vtable for'CTaskComplexOnFire ...
4EF59A:  ADDS            R1, #8
4EF59C:  STR             R1, [R0]
4EF59E:  POP             {R7,PC}
