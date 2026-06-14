; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseWaterCannonC2EP5CFire
; Address            : 0x511F78 - 0x511F90
; =========================================================

511F78:  PUSH            {R4,R6,R7,LR}
511F7A:  ADD             R7, SP, #8
511F7C:  MOV             R4, R1
511F7E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
511F82:  LDR             R1, =(_ZTV26CTaskComplexUseWaterCannon_ptr - 0x511F8A)
511F84:  STR             R4, [R0,#0xC]
511F86:  ADD             R1, PC; _ZTV26CTaskComplexUseWaterCannon_ptr
511F88:  LDR             R1, [R1]; `vtable for'CTaskComplexUseWaterCannon ...
511F8A:  ADDS            R1, #8
511F8C:  STR             R1, [R0]
511F8E:  POP             {R4,R6,R7,PC}
