; =========================================================
; Game Engine Function: _ZN28CTaskComplexHitByGunResponseC2Ei
; Address            : 0x4ECFD8 - 0x4ECFF0
; =========================================================

4ECFD8:  PUSH            {R4,R6,R7,LR}
4ECFDA:  ADD             R7, SP, #8
4ECFDC:  MOV             R4, R1
4ECFDE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ECFE2:  LDR             R1, =(_ZTV28CTaskComplexHitByGunResponse_ptr - 0x4ECFEA)
4ECFE4:  STR             R4, [R0,#0xC]
4ECFE6:  ADD             R1, PC; _ZTV28CTaskComplexHitByGunResponse_ptr
4ECFE8:  LDR             R1, [R1]; `vtable for'CTaskComplexHitByGunResponse ...
4ECFEA:  ADDS            R1, #8
4ECFEC:  STR             R1, [R0]
4ECFEE:  POP             {R4,R6,R7,PC}
