; =========================================================
; Game Engine Function: _ZN7CCamera11ProcessFadeEv
; Address            : 0x3DE38C - 0x3DE490
; =========================================================

3DE38C:  LDRB.W          R1, [R0,#0x4F]
3DE390:  CMP             R1, #0
3DE392:  IT EQ
3DE394:  BXEQ            LR
3DE396:  LDRH.W          R1, [R0,#0xBB8]
3DE39A:  CBZ             R1, loc_3DE3BE
3DE39C:  CMP             R1, #1
3DE39E:  BNE             loc_3DE3F6
3DE3A0:  ADDW            R1, R0, #0xB8C
3DE3A4:  VLDR            S0, [R1]
3DE3A8:  VCMP.F32        S0, #0.0
3DE3AC:  VMRS            APSR_nzcv, FPSCR
3DE3B0:  BNE             loc_3DE400
3DE3B2:  MOVS            R1, #0
3DE3B4:  STR.W           R1, [R0,#0xB84]
3DE3B8:  ADDW            R1, R0, #0xB84
3DE3BC:  B               loc_3DE438
3DE3BE:  ADDW            R1, R0, #0xB84
3DE3C2:  VLDR            S0, =255.0
3DE3C6:  VLDR            S2, [R1]
3DE3CA:  VCMPE.F32       S2, S0
3DE3CE:  VMRS            APSR_nzcv, FPSCR
3DE3D2:  ITT GE
3DE3D4:  MOVGE           R2, #0
3DE3D6:  STRBGE.W        R2, [R0,#0x4F]
3DE3DA:  ADDW            R0, R0, #0xB8C
3DE3DE:  VLDR            S4, [R0]
3DE3E2:  VCMP.F32        S4, #0.0
3DE3E6:  VMRS            APSR_nzcv, FPSCR
3DE3EA:  BNE             loc_3DE446
3DE3EC:  MOVS            R0, #0x437F0000
3DE3F2:  STR             R0, [R1]
3DE3F4:  B               loc_3DE472
3DE3F6:  ADDW            R0, R0, #0xB84
3DE3FA:  VLDR            S2, [R0]
3DE3FE:  B               loc_3DE47E
3DE400:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DE40A)
3DE402:  VLDR            S2, =-50.0
3DE406:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DE408:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3DE40A:  VLDR            S4, [R1]
3DE40E:  ADDW            R1, R0, #0xB84
3DE412:  VDIV.F32        S2, S4, S2
3DE416:  VLDR            S4, =255.0
3DE41A:  VMUL.F32        S2, S2, S4
3DE41E:  VDIV.F32        S0, S2, S0
3DE422:  VLDR            S2, [R1]
3DE426:  VADD.F32        S2, S2, S0
3DE42A:  VCMPE.F32       S2, #0.0
3DE42E:  VSTR            S2, [R1]
3DE432:  VMRS            APSR_nzcv, FPSCR
3DE436:  BGT             loc_3DE47E
3DE438:  MOVS            R2, #0
3DE43A:  VLDR            S2, =0.0
3DE43E:  STRB.W          R2, [R0,#0x4F]
3DE442:  STR             R2, [R1]
3DE444:  B               loc_3DE47E
3DE446:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DE450)
3DE448:  VLDR            S6, =50.0
3DE44C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DE44E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3DE450:  VLDR            S8, [R0]
3DE454:  VDIV.F32        S6, S8, S6
3DE458:  VMUL.F32        S6, S6, S0
3DE45C:  VDIV.F32        S4, S6, S4
3DE460:  VADD.F32        S2, S2, S4
3DE464:  VCMPE.F32       S2, S0
3DE468:  VSTR            S2, [R1]
3DE46C:  VMRS            APSR_nzcv, FPSCR
3DE470:  BLT             loc_3DE47E
3DE472:  VMOV.F32        S2, S0
3DE476:  MOVS            R0, #0x437F0000
3DE47C:  STR             R0, [R1]
3DE47E:  VCVT.U32.F32    S0, S2
3DE482:  LDR             R0, =(_ZN5CDraw9FadeValueE_ptr - 0x3DE488)
3DE484:  ADD             R0, PC; _ZN5CDraw9FadeValueE_ptr
3DE486:  LDR             R0, [R0]; CDraw::FadeValue ...
3DE488:  VMOV            R1, S0
3DE48C:  STRB            R1, [R0]; CDraw::FadeValue
3DE48E:  BX              LR
