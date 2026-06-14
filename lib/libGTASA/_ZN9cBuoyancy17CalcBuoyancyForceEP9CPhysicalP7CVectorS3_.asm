; =========================================================
; Game Engine Function: _ZN9cBuoyancy17CalcBuoyancyForceEP9CPhysicalP7CVectorS3_
; Address            : 0x5704DC - 0x57056C
; =========================================================

5704DC:  PUSH            {R4-R7,LR}
5704DE:  ADD             R7, SP, #0xC
5704E0:  PUSH.W          {R8,R9,R11}
5704E4:  SUB             SP, SP, #0x10
5704E6:  MOV             R5, R0
5704E8:  MOV             R9, R3
5704EA:  LDRB.W          R0, [R5,#0x98]
5704EE:  MOV             R4, R2
5704F0:  MOV             R8, R1
5704F2:  MOVS            R6, #0
5704F4:  CBZ             R0, loc_570562
5704F6:  ADD.W           R1, R5, #0xC; CVector *
5704FA:  ADD.W           R2, R5, #0xC0
5704FE:  MOV             R0, SP; CMatrix *
570500:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
570504:  VLDR            D16, [SP,#0x28+var_28]
570508:  LDR             R1, [SP,#0x28+var_20]
57050A:  STR             R1, [R4,#8]
57050C:  VSTR            D16, [R4]
570510:  STRD.W          R6, R6, [R9]
570514:  MOVS            R6, #1
570516:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x570524)
570518:  VLDR            S0, [R5,#0x6C]
57051C:  VLDR            S2, [R5,#0xBC]
570520:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
570522:  VMUL.F32        S0, S2, S0
570526:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
570528:  VLDR            S2, [R0]
57052C:  VMUL.F32        S0, S0, S2
570530:  VMOV.F32        S2, #4.0
570534:  VSTR            S0, [R9,#8]
570538:  VLDR            S4, [R8,#0x50]
57053C:  VMUL.F32        S8, S0, S2
570540:  VLDR            S6, [R8,#0x90]
570544:  VMUL.F32        S2, S4, S6
570548:  VCMPE.F32       S2, S8
57054C:  VMRS            APSR_nzcv, FPSCR
570550:  ITTTT GT
570552:  VLDRGT          S4, =0.0
570556:  VSUBGT.F32      S0, S0, S2
57055A:  VMAXGT.F32      D0, D0, D2
57055E:  VSTRGT          S0, [R9,#8]
570562:  MOV             R0, R6
570564:  ADD             SP, SP, #0x10
570566:  POP.W           {R8,R9,R11}
57056A:  POP             {R4-R7,PC}
