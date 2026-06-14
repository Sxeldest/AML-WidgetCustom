; =========================================================
; Game Engine Function: _ZN13FxInfoTrail_c8GetValueEffffhPv
; Address            : 0x36B610 - 0x36B660
; =========================================================

36B610:  PUSH            {R7,LR}
36B612:  MOV             R7, SP
36B614:  SUB             SP, SP, #0x40
36B616:  VMOV            S2, R1
36B61A:  VLDR            S0, [R7,#8]
36B61E:  LDRB            R1, [R0,#6]
36B620:  ADDS            R0, #8; this
36B622:  VDIV.F32        S0, S2, S0
36B626:  CMP             R1, #0
36B628:  MOV             R1, SP; float *
36B62A:  VMOV            S2, R2
36B62E:  IT EQ
36B630:  VMOVEQ.F32      S2, S0
36B634:  VMOV            R2, S2; float
36B638:  BLX             j__ZN18FxInterpInfoU255_c6GetValEPff; FxInterpInfoU255_c::GetVal(float *,float)
36B63C:  LDR             R0, [R7,#0x10]
36B63E:  MOVS            R2, #1
36B640:  LDR             R1, [SP,#0x48+var_48]
36B642:  VLDR            S0, =0.1
36B646:  STRD.W          R2, R1, [R0,#0x2C]
36B64A:  VLDR            S2, [SP,#0x48+var_44]
36B64E:  VCMPE.F32       S2, S0
36B652:  VMRS            APSR_nzcv, FPSCR
36B656:  ITT GT
36B658:  MOVGT           R1, #2
36B65A:  STRGT           R1, [R0,#0x2C]
36B65C:  ADD             SP, SP, #0x40 ; '@'
36B65E:  POP             {R7,PC}
