; =========================================================
; Game Engine Function: _ZN8CTrailer14ProcessControlEv
; Address            : 0x57B304 - 0x57B3E2
; =========================================================

57B304:  PUSH            {R4,R6,R7,LR}
57B306:  ADD             R7, SP, #8
57B308:  MOV             R4, R0
57B30A:  BLX             j__ZN11CAutomobile14ProcessControlEv; CAutomobile::ProcessControl(void)
57B30E:  LDRB            R0, [R4,#0x1C]
57B310:  LSLS            R0, R0, #0x19
57B312:  BMI             locret_57B3E0
57B314:  ADD.W           R0, R4, #0xA00
57B318:  VLDR            S2, =-1000.0
57B31C:  VLDR            S0, [R0]
57B320:  VCMP.F32        S0, S2
57B324:  VMRS            APSR_nzcv, FPSCR
57B328:  IT EQ
57B32A:  POPEQ           {R4,R6,R7,PC}
57B32C:  LDR.W           R1, [R4,#0x4D0]
57B330:  VCMPE.F32       S0, #0.0
57B334:  VMRS            APSR_nzcv, FPSCR
57B338:  BLE             loc_57B360
57B33A:  CBZ             R1, loc_57B360
57B33C:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57B346)
57B33E:  VLDR            S2, =-0.002
57B342:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57B344:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57B346:  VLDR            S4, [R1]
57B34A:  VMUL.F32        S2, S4, S2
57B34E:  VLDR            S4, =0.0
57B352:  VADD.F32        S0, S0, S2
57B356:  VMAX.F32        D0, D0, D2
57B35A:  VSTR            S0, [R0]
57B35E:  B               loc_57B3B0
57B360:  VMOV.F32        S2, #1.0
57B364:  VCMPE.F32       S0, S2
57B368:  VMRS            APSR_nzcv, FPSCR
57B36C:  BGE             loc_57B3B0
57B36E:  CBNZ            R1, loc_57B3B0
57B370:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57B37A)
57B372:  VLDR            S6, =0.1
57B376:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57B378:  VCMPE.F32       S0, S6
57B37C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57B37E:  VMRS            APSR_nzcv, FPSCR
57B382:  VLDR            S4, [R1]
57B386:  BLE             loc_57B39A
57B388:  VLDR            S6, =0.002
57B38C:  VMUL.F32        S4, S4, S6
57B390:  VADD.F32        S0, S0, S4
57B394:  VMIN.F32        D0, D0, D1
57B398:  B               loc_57B3A6
57B39A:  VLDR            S2, =0.0005
57B39E:  VMUL.F32        S2, S4, S2
57B3A2:  VADD.F32        S0, S0, S2
57B3A6:  MOVS            R1, #0
57B3A8:  VSTR            S0, [R0]
57B3AC:  STRB.W          R1, [R4,#0xBC]
57B3B0:  LDRB.W          R1, [R4,#0x3A]
57B3B4:  AND.W           R1, R1, #0xF0
57B3B8:  CMP             R1, #0x50 ; 'P'
57B3BA:  BNE             loc_57B3D2
57B3BC:  LDR             R1, =(TRAILER_TOWED_MINRATIO_ptr - 0x57B3C2)
57B3BE:  ADD             R1, PC; TRAILER_TOWED_MINRATIO_ptr
57B3C0:  LDR             R1, [R1]; TRAILER_TOWED_MINRATIO
57B3C2:  VLDR            S2, [R1]
57B3C6:  VCMPE.F32       S2, S0
57B3CA:  VMRS            APSR_nzcv, FPSCR
57B3CE:  IT GT
57B3D0:  MOVGT           R0, R1
57B3D2:  LDR             R0, [R0]
57B3D4:  STR.W           R0, [R4,#0xA04]
57B3D8:  STR.W           R0, [R4,#0x9F4]
57B3DC:  STR.W           R0, [R4,#0x9F8]
57B3E0:  POP             {R4,R6,R7,PC}
