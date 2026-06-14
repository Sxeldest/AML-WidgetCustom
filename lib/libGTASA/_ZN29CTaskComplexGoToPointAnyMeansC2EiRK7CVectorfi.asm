; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeansC2EiRK7CVectorfi
; Address            : 0x52477C - 0x5247BC
; =========================================================

52477C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoToPointAnyMeans::CTaskComplexGoToPointAnyMeans(int, CVector const&, float, int)'
52477E:  ADD             R7, SP, #0xC
524780:  PUSH.W          {R11}
524784:  MOV             R4, R3
524786:  MOV             R5, R2
524788:  MOV             R6, R1
52478A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52478E:  LDR             R1, =(_ZTV29CTaskComplexGoToPointAnyMeans_ptr - 0x524798)
524790:  MOVS            R3, #0
524792:  LDR             R2, [R7,#arg_0]
524794:  ADD             R1, PC; _ZTV29CTaskComplexGoToPointAnyMeans_ptr
524796:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAnyMeans ...
524798:  ADDS            R1, #8
52479A:  STR             R1, [R0]
52479C:  VLDR            D16, [R5]
5247A0:  LDR             R1, [R5,#8]
5247A2:  STRD.W          R1, R6, [R0,#0x14]
5247A6:  STRD.W          R4, R3, [R0,#0x1C]
5247AA:  STRD.W          R2, R3, [R0,#0x24]
5247AE:  STR             R3, [R0,#0x2C]
5247B0:  STRH            R3, [R0,#0x30]
5247B2:  VSTR            D16, [R0,#0xC]
5247B6:  POP.W           {R11}
5247BA:  POP             {R4-R7,PC}
