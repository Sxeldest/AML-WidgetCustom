; =========================================================
; Game Engine Function: _ZN14CTrafficLights20FindTrafficLightTypeEP7CEntity
; Address            : 0x3636E8 - 0x36378A
; =========================================================

3636E8:  PUSH            {R4,R5,R7,LR}
3636EA:  ADD             R7, SP, #8
3636EC:  VPUSH           {D8}
3636F0:  MOV             R4, R0
3636F2:  LDR             R1, [R4,#0x14]
3636F4:  CBZ             R1, loc_3636FC
3636F6:  VLDR            S16, [R1,#0x10]
3636FA:  B               loc_363726
3636FC:  MOV             R0, R4; this
3636FE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363702:  ADDS            R5, R4, #4
363704:  LDR             R1, [R4,#0x14]; CMatrix *
363706:  MOV             R0, R5; this
363708:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
36370C:  LDR             R1, [R4,#0x14]
36370E:  CMP             R1, #0
363710:  VLDR            S16, [R1,#0x10]
363714:  BNE             loc_363726
363716:  MOV             R0, R4; this
363718:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
36371C:  LDR             R1, [R4,#0x14]; CMatrix *
36371E:  MOV             R0, R5; this
363720:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
363724:  LDR             R1, [R4,#0x14]
363726:  VMOV            R0, S16; this
36372A:  LDR             R1, [R1,#0x14]; float
36372C:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
363730:  VLDR            S0, =57.296
363734:  VMOV            S2, R0
363738:  VMUL.F32        S0, S2, S0
36373C:  VLDR            S2, =60.0
363740:  VCMPE.F32       S0, S2
363744:  VMRS            APSR_nzcv, FPSCR
363748:  BLE             loc_363760
36374A:  VLDR            S2, =150.0
36374E:  VCMPE.F32       S0, S2
363752:  VMRS            APSR_nzcv, FPSCR
363756:  ITTT LT
363758:  MOVLT           R0, #1
36375A:  VPOPLT          {D8}
36375E:  POPLT           {R4,R5,R7,PC}
363760:  VLDR            S2, =330.0
363764:  MOVS            R0, #2
363766:  VLDR            S4, =240.0
36376A:  MOVS            R1, #2
36376C:  VCMPE.F32       S0, S2
363770:  VMRS            APSR_nzcv, FPSCR
363774:  VCMPE.F32       S0, S4
363778:  IT LT
36377A:  MOVLT           R0, #1
36377C:  VMRS            APSR_nzcv, FPSCR
363780:  IT LE
363782:  MOVLE           R0, R1
363784:  VPOP            {D8}
363788:  POP             {R4,R5,R7,PC}
