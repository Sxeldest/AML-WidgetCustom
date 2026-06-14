; =========================================================
; Game Engine Function: _ZN7CCamera26Find3rdPersonQuickAimPitchEv
; Address            : 0x3D3430 - 0x3D34BA
; =========================================================

3D3430:  PUSH            {R4,R6,R7,LR}
3D3432:  ADD             R7, SP, #8
3D3434:  VPUSH           {D8}
3D3438:  LDRB.W          R1, [R0,#0x57]
3D343C:  VMOV.F32        S0, #0.5
3D3440:  VLDR            S4, =3.1416
3D3444:  VMOV.F32        S6, #1.0
3D3448:  ADD.W           R1, R1, R1,LSL#5
3D344C:  ADD.W           R4, R0, R1,LSL#4
3D3450:  LDR             R0, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3D345A)
3D3452:  VLDR            S2, [R4,#0x1FC]
3D3456:  ADD             R0, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3D3458:  VMUL.F32        S2, S2, S0
3D345C:  LDR             R0, [R0]; CDraw::ms_fAspectRatio ...
3D345E:  VLDR            S8, [R0]
3D3462:  LDR             R0, =(_ZN7CCamera22m_f3rdPersonCHairMultYE_ptr - 0x3D3468)
3D3464:  ADD             R0, PC; _ZN7CCamera22m_f3rdPersonCHairMultYE_ptr
3D3466:  VMUL.F32        S2, S2, S4
3D346A:  VLDR            S4, =180.0
3D346E:  LDR             R0, [R0]; CCamera::m_f3rdPersonCHairMultY ...
3D3470:  VDIV.F32        S2, S2, S4
3D3474:  VDIV.F32        S4, S6, S8
3D3478:  VLDR            S6, [R0]
3D347C:  VMOV            R0, S2; x
3D3480:  VSUB.F32        S0, S0, S6
3D3484:  VADD.F32        S0, S0, S0
3D3488:  VMUL.F32        S16, S0, S4
3D348C:  BLX             tanf
3D3490:  VMOV            S0, R0
3D3494:  VMUL.F32        S0, S0, S16
3D3498:  VLDR            S16, [R4,#0x1F4]
3D349C:  VMOV            R0, S0; x
3D34A0:  BLX             atanf
3D34A4:  VMOV            S0, R0
3D34A8:  VADD.F32        S0, S16, S0
3D34AC:  VMOV            R0, S0
3D34B0:  EOR.W           R0, R0, #0x80000000
3D34B4:  VPOP            {D8}
3D34B8:  POP             {R4,R6,R7,PC}
