; =========================================================
; Game Engine Function: _Z32RtAnimInterpolatorSetCurrentTimeP18RtAnimInterpolatorf
; Address            : 0x1EB75C - 0x1EB78E
; =========================================================

1EB75C:  PUSH            {R7,LR}
1EB75E:  MOV             R7, SP
1EB760:  VLDR            S0, [R0,#4]
1EB764:  VMOV            S2, R1
1EB768:  VSUB.F32        S0, S2, S0
1EB76C:  VMOV            R1, S0
1EB770:  VCMPE.F32       S0, #0.0
1EB774:  VMRS            APSR_nzcv, FPSCR
1EB778:  BGE             loc_1EB786
1EB77A:  EOR.W           R1, R1, #0x80000000
1EB77E:  BLX             j__Z29RtAnimInterpolatorSubAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorSubAnimTime(RtAnimInterpolator *,float)
1EB782:  MOVS            R0, #1
1EB784:  POP             {R7,PC}
1EB786:  BLX             j__Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf; RtAnimInterpolatorAddAnimTime(RtAnimInterpolator *,float)
1EB78A:  MOVS            R0, #1
1EB78C:  POP             {R7,PC}
