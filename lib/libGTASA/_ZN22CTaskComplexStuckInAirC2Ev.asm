; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAirC2Ev
; Address            : 0x5323B4 - 0x5323C8
; =========================================================

5323B4:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexStuckInAir::CTaskComplexStuckInAir(void)'
5323B6:  MOV             R7, SP
5323B8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5323BC:  LDR             R1, =(_ZTV22CTaskComplexStuckInAir_ptr - 0x5323C2)
5323BE:  ADD             R1, PC; _ZTV22CTaskComplexStuckInAir_ptr
5323C0:  LDR             R1, [R1]; `vtable for'CTaskComplexStuckInAir ...
5323C2:  ADDS            R1, #8
5323C4:  STR             R1, [R0]
5323C6:  POP             {R7,PC}
