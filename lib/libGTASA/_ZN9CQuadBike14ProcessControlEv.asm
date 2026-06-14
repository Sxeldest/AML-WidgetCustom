; =========================================================
; Game Engine Function: _ZN9CQuadBike14ProcessControlEv
; Address            : 0x57A280 - 0x57A54C
; =========================================================

57A280:  PUSH            {R4-R7,LR}
57A282:  ADD             R7, SP, #0xC
57A284:  PUSH.W          {R8,R9,R11}
57A288:  VPUSH           {D8-D15}
57A28C:  SUB             SP, SP, #0x28
57A28E:  MOV             R4, R0
57A290:  LDRB.W          R0, [R4,#0x3A]
57A294:  CMP             R0, #7
57A296:  BHI.W           loc_57A534
57A29A:  LDR             R0, =(bDoQuadDamping_ptr - 0x57A2A0)
57A29C:  ADD             R0, PC; bDoQuadDamping_ptr
57A29E:  LDR             R0, [R0]; bDoQuadDamping
57A2A0:  LDRB            R0, [R0]
57A2A2:  CMP             R0, #0
57A2A4:  BEQ.W           loc_57A534
57A2A8:  LDR             R0, =(vecQuadResistance_ptr - 0x57A2B4)
57A2AA:  ADD.W           R1, R4, #0x54 ; 'T'; CMatrix *
57A2AE:  LDR             R2, [R4,#0x14]
57A2B0:  ADD             R0, PC; vecQuadResistance_ptr
57A2B2:  LDR             R0, [R0]; vecQuadResistance
57A2B4:  VLDR            S20, [R0,#4]
57A2B8:  LDR             R5, [R0]
57A2BA:  ADD             R0, SP, #0x80+var_64; CVector *
57A2BC:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
57A2C0:  VMOV.F32        S16, #1.0
57A2C4:  ADD.W           R0, R4, #0x7E8
57A2C8:  VLDR            S0, [R0]
57A2CC:  VCMP.F32        S0, S16
57A2D0:  VMRS            APSR_nzcv, FPSCR
57A2D4:  BNE             loc_57A354
57A2D6:  ADD.W           R0, R4, #0x7F0
57A2DA:  VLDR            S0, [R0]
57A2DE:  VCMP.F32        S0, S16
57A2E2:  VMRS            APSR_nzcv, FPSCR
57A2E6:  BNE             loc_57A354
57A2E8:  ADDW            R0, R4, #0x7EC
57A2EC:  MOV             R9, #0x3F7EB852
57A2F4:  VLDR            S0, [R0]
57A2F8:  VCMPE.F32       S0, S16
57A2FC:  VMRS            APSR_nzcv, FPSCR
57A300:  BLT             loc_57A316
57A302:  ADDW            R0, R4, #0x7F4
57A306:  VLDR            S0, [R0]
57A30A:  VCMPE.F32       S0, S16
57A30E:  VMRS            APSR_nzcv, FPSCR
57A312:  BGE.W           loc_57A546
57A316:  LDR             R0, [R4,#0x14]
57A318:  VLDR            S18, =0.995
57A31C:  VLDR            S0, [R0,#0x18]
57A320:  VCMPE.F32       S0, #0.0
57A324:  VMRS            APSR_nzcv, FPSCR
57A328:  BLE             loc_57A3D2
57A32A:  LDR.W           R0, [R4,#0x99C]
57A32E:  VMOV            S4, R5
57A332:  VLDR            S6, =0.07
57A336:  VLDR            S2, [R0,#0x2C]
57A33A:  VSUB.F32        S0, S2, S0
57A33E:  VMOV.F32        S2, #0.25
57A342:  VABS.F32        S0, S0
57A346:  VMUL.F32        S0, S0, S2
57A34A:  VMIN.F32        D0, D0, D3
57A34E:  VSUB.F32        S0, S4, S0
57A352:  B               loc_57A3CA
57A354:  VMOV.F32        S18, #0.5
57A358:  ADDW            R0, R4, #0x80C
57A35C:  VLDR            S0, [R0]
57A360:  VCMP.F32        S0, S16
57A364:  VMRS            APSR_nzcv, FPSCR
57A368:  BNE             loc_57A3D0
57A36A:  ADDW            R0, R4, #0x814
57A36E:  VLDR            S0, [R0]
57A372:  VCMP.F32        S0, S16
57A376:  VMRS            APSR_nzcv, FPSCR
57A37A:  BNE             loc_57A3D0
57A37C:  LDR             R0, [R4,#0x14]
57A37E:  VLDR            S18, =0.995
57A382:  VLDR            S0, [R0,#0x18]
57A386:  VCMPE.F32       S0, #0.0
57A38A:  VMRS            APSR_nzcv, FPSCR
57A38E:  BGE             loc_57A3D0
57A390:  LDR.W           R0, [R4,#0x99C]
57A394:  VLDR            S4, =0.1
57A398:  VLDR            S2, [R0,#0x30]
57A39C:  VSUB.F32        S0, S2, S0
57A3A0:  VLDR            S2, =0.3
57A3A4:  VABS.F32        S0, S0
57A3A8:  VMUL.F32        S0, S0, S2
57A3AC:  VLDR            S2, =0.9
57A3B0:  VCMPE.F32       S0, S4
57A3B4:  VMRS            APSR_nzcv, FPSCR
57A3B8:  VADD.F32        S2, S0, S2
57A3BC:  VMOV            S0, R5
57A3C0:  IT GT
57A3C2:  VMOVGT.F32      S2, S16
57A3C6:  VMUL.F32        S0, S2, S0
57A3CA:  VMOV            R9, S0
57A3CE:  B               loc_57A3D2
57A3D0:  MOV             R9, R5
57A3D2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57A3DE)
57A3D4:  ADD.W           R6, R4, #0xA8
57A3D8:  LDR             R5, [R4,#0x14]
57A3DA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57A3DC:  MOV             R2, R6
57A3DE:  VLDR            S22, [SP,#0x80+var_64]
57A3E2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
57A3E4:  MOV             R1, R5; CVector *
57A3E6:  VLDR            S24, [SP,#0x80+var_60]
57A3EA:  VLDR            S26, [R4,#0x94]
57A3EE:  LDR.W           R8, [R0]; CTimer::ms_fTimeStep
57A3F2:  ADD             R0, SP, #0x80+var_70; CMatrix *
57A3F4:  VLDR            S28, [R5,#0x20]
57A3F8:  VLDR            S30, [R5,#0x24]
57A3FC:  VLDR            S17, [R5,#0x28]
57A400:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
57A404:  VMUL.F32        S0, S24, S24
57A408:  MOV             R1, R8; y
57A40A:  VADD.F32        S0, S0, S16
57A40E:  VDIV.F32        S0, S16, S0
57A412:  VMUL.F32        S0, S20, S0
57A416:  VMOV            R0, S0; x
57A41A:  BLX             powf
57A41E:  VMOV            S0, R0
57A422:  VLDR            S6, [SP,#0x80+var_70]
57A426:  VLDR            S8, [SP,#0x80+var_6C]
57A42A:  VMUL.F32        S0, S24, S0
57A42E:  VLDR            S10, [SP,#0x80+var_68]
57A432:  VSUB.F32        S0, S0, S24
57A436:  VMUL.F32        S2, S28, S0
57A43A:  VMUL.F32        S4, S0, S30
57A43E:  VMUL.F32        S0, S0, S17
57A442:  VMUL.F32        S2, S2, S26
57A446:  VMUL.F32        S4, S4, S26
57A44A:  VMUL.F32        S0, S0, S26
57A44E:  VMOV            R0, S2
57A452:  VLDR            S2, [R5,#4]
57A456:  VMOV            R2, S4
57A45A:  VLDR            S4, [R5,#8]
57A45E:  VMOV            R3, S0
57A462:  VLDR            S0, [R5]
57A466:  VADD.F32        S4, S4, S10
57A46A:  VADD.F32        S0, S0, S6
57A46E:  VADD.F32        S2, S2, S8
57A472:  VSTR            S0, [SP,#0x80+var_80]
57A476:  VSTR            S2, [SP,#0x80+var_7C]
57A47A:  VSTR            S4, [SP,#0x80+var_78]
57A47E:  EOR.W           R1, R0, #0x80000000
57A482:  MOV             R0, R4
57A484:  EOR.W           R2, R2, #0x80000000
57A488:  EOR.W           R3, R3, #0x80000000
57A48C:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
57A490:  LDR             R5, [R4,#0x14]
57A492:  ADD             R0, SP, #0x80+var_70; CMatrix *
57A494:  MOV             R2, R6
57A496:  VLDR            S20, [R4,#0x94]
57A49A:  MOV             R1, R5; CVector *
57A49C:  VLDR            S24, [R5,#0x20]
57A4A0:  VLDR            S26, [R5,#0x24]
57A4A4:  VLDR            S28, [R5,#0x28]
57A4A8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
57A4AC:  VMUL.F32        S0, S18, S22
57A4B0:  MOV             R1, R8; y
57A4B2:  VMOV            S2, R9
57A4B6:  VMUL.F32        S0, S22, S0
57A4BA:  VADD.F32        S0, S0, S16
57A4BE:  VDIV.F32        S0, S16, S0
57A4C2:  VMUL.F32        S0, S0, S2
57A4C6:  VMOV            R0, S0; x
57A4CA:  BLX             powf
57A4CE:  VMOV            S0, R0
57A4D2:  VLDR            S6, [SP,#0x80+var_70]
57A4D6:  VLDR            S8, [SP,#0x80+var_6C]
57A4DA:  MOV             R0, R4
57A4DC:  VMUL.F32        S0, S22, S0
57A4E0:  VLDR            S10, [SP,#0x80+var_68]
57A4E4:  VSUB.F32        S0, S0, S22
57A4E8:  VMUL.F32        S2, S0, S24
57A4EC:  VMUL.F32        S4, S0, S26
57A4F0:  VMUL.F32        S0, S0, S28
57A4F4:  VMUL.F32        S2, S2, S20
57A4F8:  VMUL.F32        S4, S4, S20
57A4FC:  VMUL.F32        S0, S0, S20
57A500:  VMOV            R1, S2
57A504:  VLDR            S2, [R5,#0x14]
57A508:  VMOV            R2, S4
57A50C:  VLDR            S4, [R5,#0x18]
57A510:  VMOV            R3, S0
57A514:  VLDR            S0, [R5,#0x10]
57A518:  VADD.F32        S4, S4, S10
57A51C:  VADD.F32        S0, S0, S6
57A520:  VADD.F32        S2, S2, S8
57A524:  VSTR            S0, [SP,#0x80+var_80]
57A528:  VSTR            S2, [SP,#0x80+var_7C]
57A52C:  VSTR            S4, [SP,#0x80+var_78]
57A530:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
57A534:  MOV             R0, R4; this
57A536:  BLX             j__ZN11CAutomobile14ProcessControlEv; CAutomobile::ProcessControl(void)
57A53A:  ADD             SP, SP, #0x28 ; '('
57A53C:  VPOP            {D8-D15}
57A540:  POP.W           {R8,R9,R11}
57A544:  POP             {R4-R7,PC}
57A546:  VLDR            S18, =0.995
57A54A:  B               loc_57A3D2
