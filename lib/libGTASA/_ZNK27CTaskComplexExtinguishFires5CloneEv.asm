; =========================================================
; Game Engine Function: _ZNK27CTaskComplexExtinguishFires5CloneEv
; Address            : 0x54813C - 0x54815A
; =========================================================

54813C:  PUSH            {R7,LR}
54813E:  MOV             R7, SP
548140:  MOVS            R0, #word_10; this
548142:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
548146:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54814A:  LDR             R1, =(_ZTV27CTaskComplexExtinguishFires_ptr - 0x548154)
54814C:  MOVS            R2, #0
54814E:  STR             R2, [R0,#0xC]
548150:  ADD             R1, PC; _ZTV27CTaskComplexExtinguishFires_ptr
548152:  LDR             R1, [R1]; `vtable for'CTaskComplexExtinguishFires ...
548154:  ADDS            R1, #8
548156:  STR             R1, [R0]
548158:  POP             {R7,PC}
