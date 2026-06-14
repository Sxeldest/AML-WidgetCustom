; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePoint17CreateNextSubTaskEP4CPed
; Address            : 0x513824 - 0x513894
; =========================================================

513824:  PUSH            {R4,R5,R7,LR}
513826:  ADD             R7, SP, #8
513828:  MOV             R5, R0
51382A:  MOV             R4, R1
51382C:  LDR             R0, [R5,#8]
51382E:  LDR             R1, [R0]
513830:  LDR             R1, [R1,#0x14]
513832:  BLX             R1
513834:  CMP             R0, #0xCB
513836:  BEQ             loc_513882
513838:  CMP             R0, #0xF4
51383A:  BEQ             loc_513886
51383C:  MOVW            R1, #0x2CA
513840:  CMP             R0, R1
513842:  ITT NE
513844:  MOVNE           R0, #0
513846:  POPNE           {R4,R5,R7,PC}
513848:  LDR             R0, [R4,#0x14]
51384A:  VLDR            S0, [R5,#0x18]
51384E:  ADD.W           R1, R0, #0x30 ; '0'
513852:  CMP             R0, #0
513854:  VLDR            S2, [R5,#0x1C]
513858:  IT EQ
51385A:  ADDEQ           R1, R4, #4
51385C:  VLDR            S4, [R1]
513860:  VLDR            S6, [R1,#4]
513864:  VSUB.F32        S0, S4, S0
513868:  VSUB.F32        S2, S6, S2
51386C:  VMOV            R0, S0; this
513870:  VMOV            R1, S2; float
513874:  BLX             j__ZN8CGeneral24GetNodeHeadingFromVectorEff; CGeneral::GetNodeHeadingFromVector(float,float)
513878:  STRB.W          R0, [R5,#0x40]
51387C:  MOV.W           R1, #0x390
513880:  B               loc_51388A
513882:  MOVS            R1, #0xF4
513884:  B               loc_51388A
513886:  MOVW            R1, #0x516; int
51388A:  MOV             R0, R5; this
51388C:  MOV             R2, R4; CPed *
51388E:  POP.W           {R4,R5,R7,LR}
513892:  B               _ZN26CTaskComplexSmartFleePoint13CreateSubTaskEiP4CPed; CTaskComplexSmartFleePoint::CreateSubTask(int,CPed *)
