; =========================================================
; Game Engine Function: _ZN11FxInfoDir_c8GetValueEffffhPv
; Address            : 0x36B754 - 0x36B7B4
; =========================================================

36B754:  PUSH            {R4,R5,R7,LR}
36B756:  ADD             R7, SP, #8
36B758:  SUB             SP, SP, #0x40
36B75A:  VMOV            S2, R1
36B75E:  VLDR            S0, [R7,#arg_0]
36B762:  LDRB            R1, [R0,#6]
36B764:  ADDS            R0, #8; this
36B766:  VDIV.F32        S0, S2, S0
36B76A:  CMP             R1, #0
36B76C:  MOV             R1, SP; float *
36B76E:  VMOV            S2, R2
36B772:  IT EQ
36B774:  VMOVEQ.F32      S2, S0
36B778:  VMOV            R2, S2; float
36B77C:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36B780:  LDR             R4, [R7,#arg_8]
36B782:  MOVS            R5, #1
36B784:  ADD.W           R3, R4, #0x7C ; '|'
36B788:  STRB.W          R5, [R4,#0x79]
36B78C:  LDMFD.W         SP, {R0-R2}
36B790:  STM             R3!, {R0-R2}
36B792:  ADD.W           R0, R4, #0x7C ; '|'
36B796:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
36B79A:  VLDR            S0, =0.001
36B79E:  VMOV            S2, R0
36B7A2:  VCMPE.F32       S2, S0
36B7A6:  VMRS            APSR_nzcv, FPSCR
36B7AA:  IT LT
36B7AC:  STRBLT.W        R5, [R4,#0x7A]
36B7B0:  ADD             SP, SP, #0x40 ; '@'
36B7B2:  POP             {R4,R5,R7,PC}
