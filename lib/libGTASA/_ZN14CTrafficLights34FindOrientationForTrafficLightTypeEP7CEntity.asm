; =========================================================
; Game Engine Function: _ZN14CTrafficLights34FindOrientationForTrafficLightTypeEP7CEntity
; Address            : 0x3638A8 - 0x363906
; =========================================================

3638A8:  PUSH            {R4,R5,R7,LR}
3638AA:  ADD             R7, SP, #8
3638AC:  VPUSH           {D8}
3638B0:  MOV             R4, R0
3638B2:  LDR             R1, [R4,#0x14]
3638B4:  CBZ             R1, loc_3638BC
3638B6:  VLDR            S16, [R1,#0x10]
3638BA:  B               loc_3638E6
3638BC:  MOV             R0, R4; this
3638BE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3638C2:  ADDS            R5, R4, #4
3638C4:  LDR             R1, [R4,#0x14]; CMatrix *
3638C6:  MOV             R0, R5; this
3638C8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3638CC:  LDR             R1, [R4,#0x14]
3638CE:  CMP             R1, #0
3638D0:  VLDR            S16, [R1,#0x10]
3638D4:  BNE             loc_3638E6
3638D6:  MOV             R0, R4; this
3638D8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3638DC:  LDR             R1, [R4,#0x14]; CMatrix *
3638DE:  MOV             R0, R5; this
3638E0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3638E4:  LDR             R1, [R4,#0x14]
3638E6:  VMOV            R0, S16; this
3638EA:  LDR             R1, [R1,#0x14]; float
3638EC:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3638F0:  VLDR            S0, =57.296
3638F4:  VMOV            S2, R0
3638F8:  VMUL.F32        S0, S2, S0
3638FC:  VMOV            R0, S0
363900:  VPOP            {D8}
363904:  POP             {R4,R5,R7,PC}
