; =========================================================
; Game Engine Function: _ZN23CTaskComplexHitResponseC2Ei
; Address            : 0x4ECEC0 - 0x4ECED8
; =========================================================

4ECEC0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexHitResponse::CTaskComplexHitResponse(int)'
4ECEC2:  ADD             R7, SP, #8
4ECEC4:  MOV             R4, R1
4ECEC6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ECECA:  LDR             R1, =(_ZTV23CTaskComplexHitResponse_ptr - 0x4ECED2)
4ECECC:  STR             R4, [R0,#0xC]
4ECECE:  ADD             R1, PC; _ZTV23CTaskComplexHitResponse_ptr
4ECED0:  LDR             R1, [R1]; `vtable for'CTaskComplexHitResponse ...
4ECED2:  ADDS            R1, #8
4ECED4:  STR             R1, [R0]
4ECED6:  POP             {R4,R6,R7,PC}
