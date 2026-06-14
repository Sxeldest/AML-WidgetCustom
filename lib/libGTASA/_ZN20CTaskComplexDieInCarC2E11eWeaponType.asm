; =========================================================
; Game Engine Function: _ZN20CTaskComplexDieInCarC2E11eWeaponType
; Address            : 0x4EB024 - 0x4EB044
; =========================================================

4EB024:  PUSH            {R4,R6,R7,LR}
4EB026:  ADD             R7, SP, #8
4EB028:  MOV             R4, R1
4EB02A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EB02E:  LDR             R1, =(_ZTV20CTaskComplexDieInCar_ptr - 0x4EB038)
4EB030:  MOVS            R2, #0
4EB032:  STR             R4, [R0,#0xC]
4EB034:  ADD             R1, PC; _ZTV20CTaskComplexDieInCar_ptr
4EB036:  STRH            R2, [R0,#0x18]
4EB038:  STRD.W          R2, R2, [R0,#0x10]
4EB03C:  LDR             R1, [R1]; `vtable for'CTaskComplexDieInCar ...
4EB03E:  ADDS            R1, #8
4EB040:  STR             R1, [R0]
4EB042:  POP             {R4,R6,R7,PC}
