; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseMobilePhoneC2Ei
; Address            : 0x4F0CB4 - 0x4F0CD6
; =========================================================

4F0CB4:  PUSH            {R4,R6,R7,LR}
4F0CB6:  ADD             R7, SP, #8
4F0CB8:  MOV             R4, R1
4F0CBA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F0CBE:  LDR             R1, =(_ZTV26CTaskComplexUseMobilePhone_ptr - 0x4F0CC8)
4F0CC0:  MOVS            R2, #0
4F0CC2:  STR             R4, [R0,#0xC]
4F0CC4:  ADD             R1, PC; _ZTV26CTaskComplexUseMobilePhone_ptr
4F0CC6:  STRH            R2, [R0,#0x18]
4F0CC8:  STRH            R2, [R0,#0x1C]
4F0CCA:  LDR             R1, [R1]; `vtable for'CTaskComplexUseMobilePhone ...
4F0CCC:  STRD.W          R2, R2, [R0,#0x10]
4F0CD0:  ADDS            R1, #8
4F0CD2:  STR             R1, [R0]
4F0CD4:  POP             {R4,R6,R7,PC}
