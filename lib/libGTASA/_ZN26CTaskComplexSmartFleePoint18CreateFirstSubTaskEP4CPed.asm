; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePoint18CreateFirstSubTaskEP4CPed
; Address            : 0x513894 - 0x51390C
; =========================================================

513894:  PUSH            {R4,R5,R7,LR}
513896:  ADD             R7, SP, #8
513898:  MOV             R4, R1
51389A:  MOV             R5, R0
51389C:  LDR             R1, [R4,#0x14]
51389E:  ADDS            R0, R4, #4
5138A0:  CMP             R1, #0
5138A2:  MOV             R2, R0
5138A4:  IT NE
5138A6:  ADDNE.W         R2, R1, #0x30 ; '0'; float
5138AA:  VLDR            D16, [R2]
5138AE:  LDR             R1, [R2,#8]
5138B0:  STR             R1, [R5,#0x14]
5138B2:  VSTR            D16, [R5,#0xC]
5138B6:  LDRB.W          R1, [R4,#0x485]
5138BA:  LSLS            R1, R1, #0x1F
5138BC:  ITT NE
5138BE:  LDRNE.W         R1, [R4,#0x590]
5138C2:  CMPNE           R1, #0
5138C4:  BNE             loc_5138FE
5138C6:  LDR             R1, [R4,#0x14]
5138C8:  VLDR            S0, [R5,#0x18]
5138CC:  CMP             R1, #0
5138CE:  VLDR            S2, [R5,#0x1C]
5138D2:  IT NE
5138D4:  ADDNE.W         R0, R1, #0x30 ; '0'
5138D8:  VLDR            S4, [R0]
5138DC:  VLDR            S6, [R0,#4]
5138E0:  VSUB.F32        S0, S4, S0
5138E4:  VSUB.F32        S2, S6, S2
5138E8:  VMOV            R0, S0; this
5138EC:  VMOV            R1, S2; float
5138F0:  BLX             j__ZN8CGeneral24GetNodeHeadingFromVectorEff; CGeneral::GetNodeHeadingFromVector(float,float)
5138F4:  MOV.W           R1, #0x390
5138F8:  STRB.W          R0, [R5,#0x40]
5138FC:  B               loc_513902
5138FE:  MOVW            R1, #0x2CA; int
513902:  MOV             R0, R5; this
513904:  MOV             R2, R4; CPed *
513906:  POP.W           {R4,R5,R7,LR}
51390A:  B               _ZN26CTaskComplexSmartFleePoint13CreateSubTaskEiP4CPed; CTaskComplexSmartFleePoint::CreateSubTask(int,CPed *)
