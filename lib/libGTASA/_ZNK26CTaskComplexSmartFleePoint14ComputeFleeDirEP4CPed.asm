; =========================================================
; Game Engine Function: _ZNK26CTaskComplexSmartFleePoint14ComputeFleeDirEP4CPed
; Address            : 0x5136D6 - 0x51370E
; =========================================================

5136D6:  PUSH            {R7,LR}
5136D8:  MOV             R7, SP
5136DA:  LDR             R2, [R1,#0x14]; float
5136DC:  VLDR            S0, [R0,#0x18]
5136E0:  VLDR            S2, [R0,#0x1C]
5136E4:  ADD.W           R0, R2, #0x30 ; '0'
5136E8:  CMP             R2, #0
5136EA:  IT EQ
5136EC:  ADDEQ           R0, R1, #4
5136EE:  VLDR            S4, [R0]
5136F2:  VLDR            S6, [R0,#4]
5136F6:  VSUB.F32        S0, S4, S0
5136FA:  VSUB.F32        S2, S6, S2
5136FE:  VMOV            R0, S0; this
513702:  VMOV            R1, S2; float
513706:  BLX             j__ZN8CGeneral24GetNodeHeadingFromVectorEff; CGeneral::GetNodeHeadingFromVector(float,float)
51370A:  UXTB            R0, R0
51370C:  POP             {R7,PC}
