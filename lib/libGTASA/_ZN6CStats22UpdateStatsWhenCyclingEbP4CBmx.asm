; =========================================================
; Game Engine Function: _ZN6CStats22UpdateStatsWhenCyclingEbP4CBmx
; Address            : 0x41B1A0 - 0x41B47A
; =========================================================

41B1A0:  PUSH            {R4-R7,LR}
41B1A2:  ADD             R7, SP, #0xC
41B1A4:  PUSH.W          {R11}
41B1A8:  VPUSH           {D8}; float
41B1AC:  MOV             R5, R1
41B1AE:  MOV             R4, R0
41B1B0:  ADD.W           R0, R5, #0x4A0
41B1B4:  VLDR            S0, [R0]
41B1B8:  VCMP.F32        S0, #0.0
41B1BC:  VMRS            APSR_nzcv, FPSCR
41B1C0:  BNE             loc_41B1C8
41B1C2:  CMP             R4, #1
41B1C4:  BNE.W           loc_41B2F0
41B1C8:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B1D0)
41B1CA:  CMP             R4, #0
41B1CC:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B1CE:  LDR             R6, [R0]; CStats::StatReactionValue ...
41B1D0:  ADD.W           R0, R6, #0x68 ; 'h'
41B1D4:  IT NE
41B1D6:  ADDNE.W         R0, R6, #0x6C ; 'l'
41B1DA:  VLDR            S0, [R0]
41B1DE:  VCVT.U32.F32    S0, S0
41B1E2:  VMOV            R0, S0; this
41B1E6:  BLX             j__ZN6CStats23UpdateFatAndMuscleStatsEj; CStats::UpdateFatAndMuscleStats(uint)
41B1EA:  LDR             R0, =(_ZN6CStats21m_CycleStaminaCounterE_ptr - 0x41B1F4)
41B1EC:  VLDR            S16, =1000.0
41B1F0:  ADD             R0, PC; _ZN6CStats21m_CycleStaminaCounterE_ptr
41B1F2:  VLDR            S0, [R6,#0x84]
41B1F6:  LDR             R0, [R0]; CStats::m_CycleStaminaCounter ...
41B1F8:  VMUL.F32        S0, S0, S16
41B1FC:  LDR             R0, [R0]; CStats::m_CycleStaminaCounter
41B1FE:  VMOV            S2, R0
41B202:  VCVT.F32.U32    S2, S2
41B206:  VCMPE.F32       S0, S2
41B20A:  VMRS            APSR_nzcv, FPSCR
41B20E:  BGE             loc_41B2C8
41B210:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B218)
41B212:  LDR             R1, =(_ZN6CStats21m_CycleStaminaCounterE_ptr - 0x41B21A)
41B214:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B216:  ADD             R1, PC; _ZN6CStats21m_CycleStaminaCounterE_ptr
41B218:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B21A:  LDR             R1, [R1]; CStats::m_CycleStaminaCounter ...
41B21C:  VLDR            S0, [R0]
41B220:  MOVS            R0, #0
41B222:  STR             R0, [R1]; CStats::m_CycleStaminaCounter
41B224:  VCMPE.F32       S0, #0.0
41B228:  VMRS            APSR_nzcv, FPSCR
41B22C:  BLE             loc_41B288
41B22E:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B236)
41B230:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B238)
41B232:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B234:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41B236:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B238:  LDR             R1, [R1]; CStats::StatTypesInt ...
41B23A:  VLDR            S2, [R0,#0x58]
41B23E:  LDR.W           R1, [R1,#(dword_9649E0 - 0x96492C)]; bool
41B242:  VADD.F32        S0, S0, S2
41B246:  CMP.W           R1, #0xFFFFFFFF
41B24A:  VMIN.F32        D0, D0, D8
41B24E:  VSTR            S0, [R0,#0x58]
41B252:  BGT             loc_41B278
41B254:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B262)
41B256:  VMOV.F32        S0, #-23.0
41B25A:  VLDR            S4, =0.0
41B25E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B260:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B262:  VLDR            S2, [R0,#0x54]
41B266:  VADD.F32        S0, S2, S0
41B26A:  VMAX.F32        D0, D0, D2
41B26E:  VSTR            S0, [R0,#0x54]
41B272:  MOVS            R0, #0; this
41B274:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B278:  MOVS            R0, #0; this
41B27A:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B27E:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B284)
41B280:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B282:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B284:  VLDR            S0, [R0]
41B288:  VMOV.F32        S2, #1.0
41B28C:  VCMPE.F32       S0, S2
41B290:  VMRS            APSR_nzcv, FPSCR
41B294:  BLE             loc_41B2F0
41B296:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41B29C)
41B298:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41B29A:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41B29C:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41B29E:  CBZ             R0, loc_41B2F0
41B2A0:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B2A6)
41B2A2:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B2A4:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B2A6:  VLDR            S2, [R0,#0x58]
41B2AA:  VCMPE.F32       S2, S16
41B2AE:  VMRS            APSR_nzcv, FPSCR
41B2B2:  BGE             loc_41B2F0
41B2B4:  VMOV            R2, S0; unsigned __int16
41B2B8:  MOVS            R3, #0x447A0000; float
41B2BE:  MOVS            R0, #(stderr+1); this
41B2C0:  MOVS            R1, #0x16; unsigned __int8
41B2C2:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41B2C6:  B               loc_41B2F0
41B2C8:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41B2D2)
41B2CA:  VLDR            S0, =50.0
41B2CE:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41B2D0:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
41B2D2:  VLDR            S2, [R1]
41B2D6:  LDR             R1, =(_ZN6CStats21m_CycleStaminaCounterE_ptr - 0x41B2E0)
41B2D8:  VDIV.F32        S0, S2, S0
41B2DC:  ADD             R1, PC; _ZN6CStats21m_CycleStaminaCounterE_ptr
41B2DE:  LDR             R1, [R1]; CStats::m_CycleStaminaCounter ...
41B2E0:  VMUL.F32        S0, S0, S16
41B2E4:  VCVT.U32.F32    S0, S0
41B2E8:  VMOV            R2, S0
41B2EC:  ADD             R0, R2
41B2EE:  STR             R0, [R1]; CStats::m_CycleStaminaCounter
41B2F0:  LDR             R1, =(_ZN6CStats19m_CycleSkillCounterE_ptr - 0x41B2F8)
41B2F2:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B2FE)
41B2F4:  ADD             R1, PC; _ZN6CStats19m_CycleSkillCounterE_ptr
41B2F6:  VLDR            S0, =1000.0
41B2FA:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B2FC:  LDR             R1, [R1]; CStats::m_CycleSkillCounter ...
41B2FE:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B300:  LDR             R6, [R1]; CStats::m_CycleSkillCounter
41B302:  VLDR            S2, [R0,#0x9C]
41B306:  VMOV            S4, R6
41B30A:  VMUL.F32        S2, S2, S0
41B30E:  VCVT.F32.U32    S4, S4
41B312:  VCMPE.F32       S2, S4
41B316:  VMRS            APSR_nzcv, FPSCR
41B31A:  BGE             loc_41B3BA
41B31C:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B324)
41B31E:  LDR             R1, =(_ZN6CStats19m_CycleSkillCounterE_ptr - 0x41B326)
41B320:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B322:  ADD             R1, PC; _ZN6CStats19m_CycleSkillCounterE_ptr
41B324:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B326:  LDR             R1, [R1]; CStats::m_CycleSkillCounter ...
41B328:  VLDR            S2, [R0,#0x18]
41B32C:  MOVS            R0, #0
41B32E:  STR             R0, [R1]; CStats::m_CycleSkillCounter
41B330:  VCMPE.F32       S2, #0.0
41B334:  VMRS            APSR_nzcv, FPSCR
41B338:  BLE             loc_41B372
41B33A:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B340)
41B33C:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41B33E:  LDR             R0, [R0]; CStats::StatTypesInt ...
41B340:  LDR.W           R1, [R0,#(dword_964AE4 - 0x96492C)]
41B344:  VCVT.S32.F32    S2, S2
41B348:  VMOV            R2, S2
41B34C:  ADD             R1, R2
41B34E:  VMOV            S2, R1; bool
41B352:  VCVT.F32.S32    S2, S2
41B356:  VMIN.F32        D0, D1, D0
41B35A:  VCVT.S32.F32    S0, S0
41B35E:  VSTR            S0, [R0,#0x1B8]
41B362:  MOVS            R0, #0; this
41B364:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B368:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B36E)
41B36A:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B36C:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B36E:  VLDR            S2, [R0,#0x18]
41B372:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41B378)
41B374:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41B376:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41B378:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41B37A:  CMP             R0, #0
41B37C:  BEQ             loc_41B470
41B37E:  VMOV.F32        S0, #1.0
41B382:  VCMPE.F32       S2, S0
41B386:  VMRS            APSR_nzcv, FPSCR
41B38A:  BLE             loc_41B470
41B38C:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B392)
41B38E:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41B390:  LDR             R0, [R0]; CStats::StatTypesInt ...
41B392:  LDR.W           R0, [R0,#(dword_964AE4 - 0x96492C)]
41B396:  CMP.W           R0, #0x3E8
41B39A:  BGE             loc_41B470
41B39C:  MOVS            R3, #0
41B39E:  VMOV            R2, S2; unsigned __int16
41B3A2:  MOVT            R3, #0x447A; float
41B3A6:  MOVS            R0, #(stderr+1); this
41B3A8:  MOVS            R1, #0xE6; unsigned __int8
41B3AA:  VPOP            {D8}
41B3AE:  POP.W           {R11}
41B3B2:  POP.W           {R4-R7,LR}
41B3B6:  B.W             sub_1A0900
41B3BA:  LDRB.W          R0, [R5,#0x818]
41B3BE:  VLDR            S2, [R5,#0x48]
41B3C2:  CMP             R0, #2
41B3C4:  BCS             loc_41B3F6
41B3C6:  VLDR            S6, [R5,#0x4C]
41B3CA:  VMUL.F32        S8, S2, S2
41B3CE:  VLDR            S4, [R5,#0x50]
41B3D2:  VMUL.F32        S10, S6, S6
41B3D6:  VMUL.F32        S12, S4, S4
41B3DA:  VADD.F32        S8, S8, S10
41B3DE:  VLDR            S10, =0.0025
41B3E2:  VADD.F32        S8, S8, S12
41B3E6:  VCMPE.F32       S8, S10
41B3EA:  VMRS            APSR_nzcv, FPSCR
41B3EE:  BLE             loc_41B3FE
41B3F0:  VMOV.F32        S2, #3.0
41B3F4:  B               loc_41B430
41B3F6:  VLDR            S6, [R5,#0x4C]
41B3FA:  VLDR            S4, [R5,#0x50]
41B3FE:  VMUL.F32        S6, S6, S6
41B402:  VMUL.F32        S2, S2, S2
41B406:  VMUL.F32        S4, S4, S4
41B40A:  VADD.F32        S2, S2, S6
41B40E:  VADD.F32        S2, S2, S4
41B412:  VLDR            S4, =0.04
41B416:  VCMPE.F32       S2, S4
41B41A:  VMRS            APSR_nzcv, FPSCR
41B41E:  BLE             loc_41B470
41B420:  VMOV.F32        S4, #1.5
41B424:  CMP             R4, #0
41B426:  VMOV.F32        S2, #1.0
41B42A:  IT NE
41B42C:  VMOVNE.F32      S2, S4
41B430:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41B43A)
41B432:  VLDR            S4, =50.0
41B436:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41B438:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
41B43A:  VLDR            S6, [R0]
41B43E:  VDIV.F32        S4, S6, S4
41B442:  VMUL.F32        S0, S4, S0
41B446:  VCVT.U32.F32    S0, S0
41B44A:  VCVT.F32.U32    S0, S0
41B44E:  VMUL.F32        S0, S2, S0
41B452:  VMOV            R0, S0; x
41B456:  BLX             ceilf
41B45A:  VMOV            S0, R0
41B45E:  LDR             R1, =(_ZN6CStats19m_CycleSkillCounterE_ptr - 0x41B468)
41B460:  VCVT.U32.F32    S0, S0
41B464:  ADD             R1, PC; _ZN6CStats19m_CycleSkillCounterE_ptr
41B466:  LDR             R0, [R1]; CStats::m_CycleSkillCounter ...
41B468:  VMOV            R1, S0
41B46C:  ADD             R1, R6
41B46E:  STR             R1, [R0]; CStats::m_CycleSkillCounter
41B470:  VPOP            {D8}
41B474:  POP.W           {R11}
41B478:  POP             {R4-R7,PC}
