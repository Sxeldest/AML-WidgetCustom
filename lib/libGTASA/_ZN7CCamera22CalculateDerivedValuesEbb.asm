; =========================================================
; Game Engine Function: _ZN7CCamera22CalculateDerivedValuesEbb
; Address            : 0x3DE734 - 0x3DE80C
; =========================================================

3DE734:  PUSH            {R4-R7,LR}
3DE736:  ADD             R7, SP, #0xC
3DE738:  PUSH.W          {R8}
3DE73C:  VPUSH           {D8-D9}
3DE740:  SUB             SP, SP, #0x48
3DE742:  MOV             R6, R1
3DE744:  MOV             R4, R0
3DE746:  MOV             R5, SP
3DE748:  ADDW            R1, R4, #0x8FC
3DE74C:  MOV             R0, R5; CMatrix *
3DE74E:  MOV             R8, R2
3DE750:  BLX             j__Z6InvertRK7CMatrix; Invert(CMatrix const&)
3DE754:  ADDW            R0, R4, #0x9D4
3DE758:  MOV             R1, R5
3DE75A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DE75E:  MOV             R0, R5; this
3DE760:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3DE764:  MOV             R0, R4; this
3DE766:  MOV             R1, R6; bool
3DE768:  BLX             j__ZN7CCamera22CalculateFrustumPlanesEb; CCamera::CalculateFrustumPlanes(bool)
3DE76C:  ADDW            R0, R4, #0x90C
3DE770:  VLDR            S16, [R0]
3DE774:  VCMP.F32        S16, #0.0
3DE778:  VMRS            APSR_nzcv, FPSCR
3DE77C:  BNE             loc_3DE7A0
3DE77E:  ADD.W           R1, R4, #0x910
3DE782:  VLDR            S18, [R1]
3DE786:  VCMP.F32        S18, #0.0
3DE78A:  VMRS            APSR_nzcv, FPSCR
3DE78E:  BNE             loc_3DE7A0
3DE790:  MOVW            R1, #0xB717
3DE794:  VLDR            S16, =0.0001
3DE798:  MOVT            R1, #0x38D1
3DE79C:  STR             R1, [R0]
3DE79E:  B               loc_3DE7C4
3DE7A0:  CMP.W           R8, #0
3DE7A4:  BEQ             loc_3DE7C0
3DE7A6:  ADD.W           R0, R4, #0x910
3DE7AA:  VLDR            S18, [R0]
3DE7AE:  VMOV            R0, S16; y
3DE7B2:  VMOV            R1, S18; x
3DE7B6:  BLX             atan2f
3DE7BA:  STR.W           R0, [R4,#0x14C]
3DE7BE:  B               loc_3DE7C4
3DE7C0:  VLDR            S18, [R0,#4]
3DE7C4:  VMUL.F32        S0, S18, S18
3DE7C8:  VSTR            S16, [R4,#0xD8]
3DE7CC:  VMUL.F32        S2, S16, S16
3DE7D0:  VSTR            S18, [R4,#0xDC]
3DE7D4:  VADD.F32        S0, S2, S0
3DE7D8:  VSQRT.F32       S0, S0
3DE7DC:  VCMP.F32        S0, #0.0
3DE7E0:  VMRS            APSR_nzcv, FPSCR
3DE7E4:  BNE             loc_3DE7F0
3DE7E6:  MOV.W           R0, #0x3F800000
3DE7EA:  STR.W           R0, [R4,#0xD8]
3DE7EE:  B               loc_3DE800
3DE7F0:  VDIV.F32        S2, S18, S0
3DE7F4:  VDIV.F32        S0, S16, S0
3DE7F8:  VSTR            S0, [R4,#0xD8]
3DE7FC:  VSTR            S2, [R4,#0xDC]
3DE800:  ADD             SP, SP, #0x48 ; 'H'
3DE802:  VPOP            {D8-D9}
3DE806:  POP.W           {R8}
3DE80A:  POP             {R4-R7,PC}
