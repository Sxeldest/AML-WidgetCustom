; =========================================================
; Game Engine Function: _ZN25CTaskComplexTreatAccidentC2EP9CAccident
; Address            : 0x5104CC - 0x5104E4
; =========================================================

5104CC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexTreatAccident::CTaskComplexTreatAccident(CAccident *)'
5104CE:  ADD             R7, SP, #8
5104D0:  MOV             R4, R1
5104D2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5104D6:  LDR             R1, =(_ZTV25CTaskComplexTreatAccident_ptr - 0x5104DE)
5104D8:  STR             R4, [R0,#0xC]
5104DA:  ADD             R1, PC; _ZTV25CTaskComplexTreatAccident_ptr
5104DC:  LDR             R1, [R1]; `vtable for'CTaskComplexTreatAccident ...
5104DE:  ADDS            R1, #8
5104E0:  STR             R1, [R0]
5104E2:  POP             {R4,R6,R7,PC}
