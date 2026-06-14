; =========================================================
; Game Engine Function: _ZN7CCamera16ProcessMusicFadeEv
; Address            : 0x3DE4AC - 0x3DE5EA
; =========================================================

3DE4AC:  PUSH            {R4,R5,R7,LR}
3DE4AE:  ADD             R7, SP, #8
3DE4B0:  MOV             R4, R0
3DE4B2:  LDRB.W          R0, [R4,#0x50]
3DE4B6:  CMP             R0, #0
3DE4B8:  IT EQ
3DE4BA:  POPEQ           {R4,R5,R7,PC}
3DE4BC:  ADDW            R0, R4, #0xB94
3DE4C0:  VLDR            S0, [R0]
3DE4C4:  VCMPE.F32       S0, #0.0
3DE4C8:  VMRS            APSR_nzcv, FPSCR
3DE4CC:  BLE             loc_3DE4EA
3DE4CE:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DE4D8)
3DE4D0:  VLDR            S2, =-50.0
3DE4D4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DE4D6:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3DE4D8:  VLDR            S4, [R1]
3DE4DC:  VDIV.F32        S2, S4, S2
3DE4E0:  VADD.F32        S0, S0, S2
3DE4E4:  VSTR            S0, [R0]
3DE4E8:  B               loc_3DE5BE
3DE4EA:  LDRH.W          R0, [R4,#0xBC2]
3DE4EE:  CMP             R0, #1
3DE4F0:  BNE             loc_3DE53A
3DE4F2:  ADD.W           R0, R4, #0xB90
3DE4F6:  VLDR            S0, [R0]
3DE4FA:  VCMPE.F32       S0, #0.0
3DE4FE:  VMRS            APSR_nzcv, FPSCR
3DE502:  BLE             loc_3DE59E
3DE504:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DE50E)
3DE506:  VLDR            S2, =50.0
3DE50A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DE50C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3DE50E:  VLDR            S4, [R0]
3DE512:  ADDW            R0, R4, #0xB88
3DE516:  VDIV.F32        S2, S4, S2
3DE51A:  VDIV.F32        S0, S2, S0
3DE51E:  VLDR            S2, [R0]
3DE522:  VADD.F32        S0, S2, S0
3DE526:  VMOV.F32        S2, #1.0
3DE52A:  VSTR            S0, [R0]
3DE52E:  VCMPE.F32       S0, S2
3DE532:  VMRS            APSR_nzcv, FPSCR
3DE536:  BGE             loc_3DE5AA
3DE538:  B               loc_3DE5BE
3DE53A:  LDRH.W          R0, [R4,#0xBB8]
3DE53E:  CBNZ            R0, loc_3DE5BE
3DE540:  ADDW            R0, R4, #0xB88
3DE544:  VLDR            S0, [R0]
3DE548:  VCMPE.F32       S0, #0.0
3DE54C:  VMRS            APSR_nzcv, FPSCR
3DE550:  BGT             loc_3DE562
3DE552:  VLDR            S0, =0.0
3DE556:  MOV.W           R2, #0x100
3DE55A:  MOVS            R1, #0
3DE55C:  STRH.W          R2, [R4,#0x50]
3DE560:  STR             R1, [R0]
3DE562:  ADD.W           R1, R4, #0xB90
3DE566:  VLDR            S2, [R1]
3DE56A:  VCMPE.F32       S2, #0.0
3DE56E:  VMRS            APSR_nzcv, FPSCR
3DE572:  BLE             loc_3DE5B6
3DE574:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DE57E)
3DE576:  VLDR            S4, =-50.0
3DE57A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DE57C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3DE57E:  VLDR            S6, [R1]
3DE582:  VDIV.F32        S4, S6, S4
3DE586:  VDIV.F32        S2, S4, S2
3DE58A:  VADD.F32        S0, S0, S2
3DE58E:  VCMPE.F32       S0, #0.0
3DE592:  VSTR            S0, [R0]
3DE596:  VMRS            APSR_nzcv, FPSCR
3DE59A:  BLE             loc_3DE5BA
3DE59C:  B               loc_3DE5BE
3DE59E:  MOV.W           R0, #0x3F800000
3DE5A2:  STR.W           R0, [R4,#0xB88]
3DE5A6:  ADDW            R0, R4, #0xB88
3DE5AA:  MOVS            R1, #0
3DE5AC:  STRH.W          R1, [R4,#0x50]
3DE5B0:  MOV.W           R1, #0x3F800000
3DE5B4:  B               loc_3DE5BC
3DE5B6:  MOVS            R1, #0
3DE5B8:  STR             R1, [R0]
3DE5BA:  MOVS            R1, #0
3DE5BC:  STR             R1, [R0]
3DE5BE:  LDR             R0, =(AudioEngine_ptr - 0x3DE5C4)
3DE5C0:  ADD             R0, PC; AudioEngine_ptr
3DE5C2:  LDR             R0, [R0]; AudioEngine ; this
3DE5C4:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3DE5C8:  CBZ             R0, loc_3DE5CC
3DE5CA:  POP             {R4,R5,R7,PC}
3DE5CC:  LDR             R0, =(AudioEngine_ptr - 0x3DE5D6)
3DE5CE:  LDR.W           R1, [R4,#0xB88]; float
3DE5D2:  ADD             R0, PC; AudioEngine_ptr
3DE5D4:  LDR             R5, [R0]; AudioEngine
3DE5D6:  MOV             R0, R5; this
3DE5D8:  BLX             j__ZN12CAudioEngine26SetMusicFaderScalingFactorEf; CAudioEngine::SetMusicFaderScalingFactor(float)
3DE5DC:  LDR.W           R1, [R4,#0xB88]; float
3DE5E0:  MOV             R0, R5; this
3DE5E2:  POP.W           {R4,R5,R7,LR}
3DE5E6:  B.W             j_j__ZN12CAudioEngine28SetEffectsFaderScalingFactorEf; j_CAudioEngine::SetEffectsFaderScalingFactor(float)
