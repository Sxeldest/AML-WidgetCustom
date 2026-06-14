; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRopeC2Ei
; Address            : 0x511AEC - 0x511B12
; =========================================================

511AEC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexUseSwatRope::CTaskComplexUseSwatRope(int)'
511AEE:  ADD             R7, SP, #8
511AF0:  MOV             R4, R1
511AF2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
511AF6:  LDR             R1, =(_ZTV23CTaskComplexUseSwatRope_ptr - 0x511B00)
511AF8:  MOVS            R3, #0
511AFA:  LDRB            R2, [R0,#0x14]
511AFC:  ADD             R1, PC; _ZTV23CTaskComplexUseSwatRope_ptr
511AFE:  STRD.W          R4, R3, [R0,#0xC]
511B02:  STR             R3, [R0,#0x18]
511B04:  AND.W           R2, R2, #0xFE
511B08:  LDR             R1, [R1]; `vtable for'CTaskComplexUseSwatRope ...
511B0A:  STRB            R2, [R0,#0x14]
511B0C:  ADDS            R1, #8
511B0E:  STR             R1, [R0]
511B10:  POP             {R4,R6,R7,PC}
