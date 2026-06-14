; =========================================================
; Game Engine Function: _ZN7CCamera14ProcessFOVLerpEv
; Address            : 0x3E2370 - 0x3E2432
; =========================================================

3E2370:  PUSH            {R4,R6,R7,LR}
3E2372:  ADD             R7, SP, #8
3E2374:  VPUSH           {D8}
3E2378:  MOV             R4, R0
3E237A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E2380)
3E237C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E237E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3E2380:  VLDR            S0, [R0]
3E2384:  ADD.W           R0, R4, #0xC30
3E2388:  VCVT.F32.U32    S0, S0
3E238C:  VLDR            S2, [R0]
3E2390:  VCMPE.F32       S2, S0
3E2394:  VMRS            APSR_nzcv, FPSCR
3E2398:  BGE             loc_3E23AE
3E239A:  LDRB.W          R0, [R4,#0xC75]
3E239E:  CMP             R0, #0
3E23A0:  ITT NE
3E23A2:  MOVNE           R0, #1
3E23A4:  STRBNE.W        R0, [R4,#0xC3D]
3E23A8:  VPOP            {D8}
3E23AC:  POP             {R4,R6,R7,PC}
3E23AE:  ADDW            R0, R4, #0xC2C
3E23B2:  ADDW            R1, R4, #0xC34
3E23B6:  VLDR            S4, [R0]
3E23BA:  LDRB.W          R0, [R4,#0xC3C]
3E23BE:  VSUB.F32        S2, S2, S4
3E23C2:  VLDR            S16, [R1]
3E23C6:  VSUB.F32        S0, S0, S4
3E23CA:  MOVS            R1, #1
3E23CC:  CMP             R0, #0
3E23CE:  STRB.W          R1, [R4,#0xC3D]
3E23D2:  VDIV.F32        S0, S0, S2
3E23D6:  BEQ             loc_3E2410
3E23D8:  VLDR            S2, =180.0
3E23DC:  VLDR            S4, =270.0
3E23E0:  VMUL.F32        S0, S0, S2
3E23E4:  VSUB.F32        S0, S4, S0
3E23E8:  VLDR            S4, =3.1416
3E23EC:  VMUL.F32        S0, S0, S4
3E23F0:  VDIV.F32        S0, S0, S2
3E23F4:  VMOV            R0, S0; x
3E23F8:  BLX             sinf
3E23FC:  VMOV.F32        S0, #1.0
3E2400:  VMOV            S2, R0
3E2404:  VMOV.F32        S4, #0.5
3E2408:  VADD.F32        S0, S2, S0
3E240C:  VMUL.F32        S0, S0, S4
3E2410:  ADDW            R0, R4, #0xC38
3E2414:  VLDR            S2, [R0]
3E2418:  ADD.W           R0, R4, #0xC40
3E241C:  VSUB.F32        S2, S2, S16
3E2420:  VMUL.F32        S0, S0, S2
3E2424:  VADD.F32        S0, S16, S0
3E2428:  VSTR            S0, [R0]
3E242C:  VPOP            {D8}
3E2430:  POP             {R4,R6,R7,PC}
