; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarMelee32CalculateSearchPositionAndRangesEP4CPed
; Address            : 0x4E6530 - 0x4E65AC
; =========================================================

4E6530:  PUSH            {R4,R6,R7,LR}
4E6532:  ADD             R7, SP, #8
4E6534:  MOV             R4, R0
4E6536:  LDR             R0, [R4,#0x10]
4E6538:  LDR             R2, [R0,#0x14]
4E653A:  ADD.W           R3, R2, #0x30 ; '0'
4E653E:  CMP             R2, #0
4E6540:  IT EQ
4E6542:  ADDEQ           R3, R0, #4
4E6544:  VLDR            D16, [R3]
4E6548:  LDR             R2, [R3,#8]
4E654A:  STR             R2, [R4,#0x1C]
4E654C:  VSTR            D16, [R4,#0x14]
4E6550:  LDR             R2, [R1,#0x14]
4E6552:  VLDR            S0, [R4,#0x14]
4E6556:  ADD.W           R3, R2, #0x30 ; '0'
4E655A:  CMP             R2, #0
4E655C:  VLDR            S2, [R4,#0x18]
4E6560:  IT EQ
4E6562:  ADDEQ           R3, R1, #4
4E6564:  VLDR            S6, [R3,#4]
4E6568:  VLDR            S4, [R3]
4E656C:  VSUB.F32        S2, S6, S2
4E6570:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4E657E)
4E6572:  VSUB.F32        S0, S4, S0
4E6576:  LDRSH.W         R0, [R0,#0x26]
4E657A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4E657C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4E657E:  VMOV            R2, S2
4E6582:  LDR.W           R1, [R1,R0,LSL#2]
4E6586:  VMOV            R0, S0; y
4E658A:  VLDR            S0, =0.35
4E658E:  LDR             R1, [R1,#0x2C]
4E6590:  VLDR            S2, [R1,#0x24]
4E6594:  VADD.F32        S0, S2, S0
4E6598:  VSTR            S0, [R4,#0x20]
4E659C:  VSTR            S0, [R4,#0x28]
4E65A0:  EOR.W           R1, R2, #0x80000000; x
4E65A4:  BLX             atan2f
4E65A8:  STR             R0, [R4,#0x24]
4E65AA:  POP             {R4,R6,R7,PC}
