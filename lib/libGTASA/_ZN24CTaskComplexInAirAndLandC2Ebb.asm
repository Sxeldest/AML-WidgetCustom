; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLandC2Ebb
; Address            : 0x52BDA8 - 0x52BDC8
; =========================================================

52BDA8:  PUSH            {R4,R5,R7,LR}
52BDAA:  ADD             R7, SP, #8
52BDAC:  MOV             R4, R2
52BDAE:  MOV             R5, R1
52BDB0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52BDB4:  LDR             R1, =(_ZTV24CTaskComplexInAirAndLand_ptr - 0x52BDBE)
52BDB6:  MOVS            R2, #0
52BDB8:  STRB            R5, [R0,#0xC]
52BDBA:  ADD             R1, PC; _ZTV24CTaskComplexInAirAndLand_ptr
52BDBC:  STRB            R4, [R0,#0xD]
52BDBE:  STRB            R2, [R0,#0xE]
52BDC0:  LDR             R1, [R1]; `vtable for'CTaskComplexInAirAndLand ...
52BDC2:  ADDS            R1, #8
52BDC4:  STR             R1, [R0]
52BDC6:  POP             {R4,R5,R7,PC}
