; =========================================================
; Game Engine Function: _ZN7CCurves17CalcCorrectedDistEfffPf
; Address            : 0x30357C - 0x303622
; =========================================================

30357C:  PUSH            {R4,R5,R7,LR}
30357E:  ADD             R7, SP, #8
303580:  VPUSH           {D8-D12}
303584:  VLDR            S0, =0.00001
303588:  VMOV            S16, R1
30358C:  MOV             R4, R3
30358E:  VCMPE.F32       S16, S0
303592:  VMRS            APSR_nzcv, FPSCR
303596:  BGE             loc_3035A2
303598:  VLDR            S2, =0.0
30359C:  VMOV.F32        S0, #0.5
3035A0:  B               loc_303614
3035A2:  VMOV            S18, R0
3035A6:  VLDR            S2, =6.2832
3035AA:  VMOV.F32        S6, #-2.0
3035AE:  VMUL.F32        S4, S18, S2
3035B2:  VMOV            S0, R2
3035B6:  VMOV.F32        S8, #1.0
3035BA:  VDIV.F32        S2, S16, S2
3035BE:  VDIV.F32        S4, S4, S16
3035C2:  VMUL.F32        S6, S0, S6
3035C6:  VMOV            R0, S4; x
3035CA:  VMOV.F32        S20, #0.5
3035CE:  VMUL.F32        S22, S2, S0
3035D2:  VADD.F32        S4, S6, S8
3035D6:  VADD.F32        S4, S4, S8
3035DA:  VMUL.F32        S24, S4, S20
3035DE:  BLX             sinf
3035E2:  VDIV.F32        S0, S18, S16
3035E6:  MOV             R5, R0
3035E8:  VLDR            S2, =3.1416
3035EC:  VMUL.F32        S0, S0, S2
3035F0:  VMOV            R0, S0; x
3035F4:  BLX             cosf
3035F8:  VMOV            S0, R0
3035FC:  VMOV            S2, R5
303600:  VMUL.F32        S0, S0, S20
303604:  VMUL.F32        S4, S24, S18
303608:  VMUL.F32        S2, S22, S2
30360C:  VSUB.F32        S0, S20, S0
303610:  VADD.F32        S2, S4, S2
303614:  VMOV            R0, S2
303618:  VSTR            S0, [R4]
30361C:  VPOP            {D8-D12}
303620:  POP             {R4,R5,R7,PC}
