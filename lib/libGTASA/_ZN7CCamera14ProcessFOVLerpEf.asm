; =========================================================
; Game Engine Function: _ZN7CCamera14ProcessFOVLerpEf
; Address            : 0x3E2444 - 0x3E24C2
; =========================================================

3E2444:  PUSH            {R4,R6,R7,LR}
3E2446:  ADD             R7, SP, #8
3E2448:  VPUSH           {D8}
3E244C:  MOV             R4, R0
3E244E:  VMOV            S0, R1
3E2452:  ADDW            R1, R4, #0xC34
3E2456:  LDRB.W          R0, [R4,#0xC3C]
3E245A:  VLDR            S16, [R1]
3E245E:  MOVS            R1, #1
3E2460:  CMP             R0, #0
3E2462:  STRB.W          R1, [R4,#0xC3D]
3E2466:  BEQ             loc_3E24A0
3E2468:  VLDR            S2, =180.0
3E246C:  VLDR            S4, =270.0
3E2470:  VMUL.F32        S0, S0, S2
3E2474:  VSUB.F32        S0, S4, S0
3E2478:  VLDR            S4, =3.1416
3E247C:  VMUL.F32        S0, S0, S4
3E2480:  VDIV.F32        S0, S0, S2
3E2484:  VMOV            R0, S0; x
3E2488:  BLX             sinf
3E248C:  VMOV.F32        S0, #1.0
3E2490:  VMOV            S2, R0
3E2494:  VMOV.F32        S4, #0.5
3E2498:  VADD.F32        S0, S2, S0
3E249C:  VMUL.F32        S0, S0, S4
3E24A0:  ADDW            R0, R4, #0xC38
3E24A4:  VLDR            S2, [R0]
3E24A8:  ADD.W           R0, R4, #0xC40
3E24AC:  VSUB.F32        S2, S2, S16
3E24B0:  VMUL.F32        S0, S0, S2
3E24B4:  VADD.F32        S0, S16, S0
3E24B8:  VSTR            S0, [R0]
3E24BC:  VPOP            {D8}
3E24C0:  POP             {R4,R6,R7,PC}
