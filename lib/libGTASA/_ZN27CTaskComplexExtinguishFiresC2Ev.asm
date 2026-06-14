; =========================================================
; Game Engine Function: _ZN27CTaskComplexExtinguishFiresC2Ev
; Address            : 0x547808 - 0x547820
; =========================================================

547808:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexExtinguishFires::CTaskComplexExtinguishFires(void)'
54780A:  MOV             R7, SP
54780C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
547810:  LDR             R1, =(_ZTV27CTaskComplexExtinguishFires_ptr - 0x54781A)
547812:  MOVS            R2, #0
547814:  STR             R2, [R0,#0xC]
547816:  ADD             R1, PC; _ZTV27CTaskComplexExtinguishFires_ptr
547818:  LDR             R1, [R1]; `vtable for'CTaskComplexExtinguishFires ...
54781A:  ADDS            R1, #8
54781C:  STR             R1, [R0]
54781E:  POP             {R7,PC}
