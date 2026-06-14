; =========================================================
; Game Engine Function: _ZNK23CTaskInteriorBeInOffice5CloneEv
; Address            : 0x528E98 - 0x528EBE
; =========================================================

528E98:  PUSH            {R4,R6,R7,LR}
528E9A:  ADD             R7, SP, #8
528E9C:  MOV             R4, R0
528E9E:  MOVS            R0, #off_18; this
528EA0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528EA4:  LDR             R4, [R4,#0xC]
528EA6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528EAA:  LDR             R1, =(_ZTV23CTaskInteriorBeInOffice_ptr - 0x528EB6)
528EAC:  MOVS            R2, #0
528EAE:  STRD.W          R4, R2, [R0,#0xC]
528EB2:  ADD             R1, PC; _ZTV23CTaskInteriorBeInOffice_ptr
528EB4:  STR             R2, [R0,#0x14]
528EB6:  LDR             R1, [R1]; `vtable for'CTaskInteriorBeInOffice ...
528EB8:  ADDS            R1, #8
528EBA:  STR             R1, [R0]
528EBC:  POP             {R4,R6,R7,PC}
