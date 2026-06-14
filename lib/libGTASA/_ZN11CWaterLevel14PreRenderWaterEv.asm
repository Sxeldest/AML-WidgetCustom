; =========================================================
; Game Engine Function: _ZN11CWaterLevel14PreRenderWaterEv
; Address            : 0x5964D0 - 0x5965EE
; =========================================================

5964D0:  PUSH            {R7,LR}
5964D2:  MOV             R7, SP
5964D4:  BLX.W           j__ZN5CGame23CanSeeWaterFromCurrAreaEv; CGame::CanSeeWaterFromCurrArea(void)
5964D8:  CMP             R0, #1
5964DA:  BNE.W           locret_5965EC
5964DE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5964E8)
5964E0:  VLDR            S2, =0.00024414
5964E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5964E6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5964E8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5964EA:  BFC.W           R0, #0x14, #0xC
5964EE:  VMOV            S0, R0
5964F2:  VCVT.F32.U32    S0, S0
5964F6:  VMUL.F32        S0, S0, S2
5964FA:  VMOV            R0, S0; float
5964FE:  BLX.W           j__Z16emu_SetWaterTimef; emu_SetWaterTime(float)
596502:  BLX.W           j__ZN11CWaterLevel17ScanThroughBlocksEv; CWaterLevel::ScanThroughBlocks(void)
596506:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x59650C)
596508:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
59650A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
59650C:  LDR             R0, [R0]; CTimer::m_FrameCounter
59650E:  AND.W           R0, R0, #0x1F; this
596512:  CMP             R0, #0x1D
596514:  IT EQ
596516:  BLXEQ.W         j__ZN11CWaterLevel26FindNearestWaterAndItsFlowEv; CWaterLevel::FindNearestWaterAndItsFlow(void)
59651A:  LDR             R0, =(_ZN11CWaterLevel14m_CurrentFlowXE_ptr - 0x596522)
59651C:  LDR             R1, =(_ZN11CWaterLevel21m_CurrentDesiredFlowXE_ptr - 0x596526)
59651E:  ADD             R0, PC; _ZN11CWaterLevel14m_CurrentFlowXE_ptr
596520:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x59652E)
596522:  ADD             R1, PC; _ZN11CWaterLevel21m_CurrentDesiredFlowXE_ptr
596524:  VLDR            S0, =0.001
596528:  LDR             R0, [R0]; CWaterLevel::m_CurrentFlowX ...
59652A:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
59652C:  LDR             R1, [R1]; CWaterLevel::m_CurrentDesiredFlowX ...
59652E:  VLDR            S4, [R0]
596532:  VLDR            S2, [R1]
596536:  LDR             R0, [R2]; CTimer::ms_fTimeStep ...
596538:  VSUB.F32        S6, S2, S4
59653C:  VLDR            S8, [R0]
596540:  VMUL.F32        S0, S8, S0
596544:  VABS.F32        S8, S6
596548:  VCMPE.F32       S8, S0
59654C:  VMRS            APSR_nzcv, FPSCR
596550:  BLT             loc_59656C
596552:  VCMPE.F32       S6, #0.0
596556:  VMRS            APSR_nzcv, FPSCR
59655A:  VNEG.F32        S2, S0
59655E:  VMOV.F32        S6, S0
596562:  IT LT
596564:  VMOVLT.F32      S6, S2
596568:  VADD.F32        S2, S4, S6
59656C:  LDR             R0, =(_ZN11CWaterLevel14m_CurrentFlowYE_ptr - 0x596574)
59656E:  LDR             R1, =(_ZN11CWaterLevel21m_CurrentDesiredFlowYE_ptr - 0x596576)
596570:  ADD             R0, PC; _ZN11CWaterLevel14m_CurrentFlowYE_ptr
596572:  ADD             R1, PC; _ZN11CWaterLevel21m_CurrentDesiredFlowYE_ptr
596574:  LDR             R0, [R0]; CWaterLevel::m_CurrentFlowY ...
596576:  LDR             R1, [R1]; CWaterLevel::m_CurrentDesiredFlowY ...
596578:  VLDR            S4, [R0]
59657C:  VLDR            S6, [R1]
596580:  LDR             R0, =(_ZN11CWaterLevel14m_CurrentFlowXE_ptr - 0x59658A)
596582:  VSUB.F32        S8, S6, S4
596586:  ADD             R0, PC; _ZN11CWaterLevel14m_CurrentFlowXE_ptr
596588:  LDR             R0, [R0]; CWaterLevel::m_CurrentFlowX ...
59658A:  VSTR            S2, [R0]
59658E:  VABS.F32        S10, S8
596592:  VCMPE.F32       S10, S0
596596:  VMRS            APSR_nzcv, FPSCR
59659A:  BLT             loc_5965B2
59659C:  VCMPE.F32       S8, #0.0
5965A0:  VMRS            APSR_nzcv, FPSCR
5965A4:  VNEG.F32        S2, S0
5965A8:  IT LT
5965AA:  VMOVLT.F32      S0, S2
5965AE:  VADD.F32        S6, S4, S0
5965B2:  LDR             R0, =(_ZN11CWaterLevel14m_CurrentFlowYE_ptr - 0x5965B8)
5965B4:  ADD             R0, PC; _ZN11CWaterLevel14m_CurrentFlowYE_ptr
5965B6:  LDR             R0, [R0]; CWaterLevel::m_CurrentFlowY ...
5965B8:  VSTR            S6, [R0]
5965BC:  MOV.W           R0, #0xFFFFFFFF; int
5965C0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5965C4:  LDR             R0, =(byte_A1DCAC - 0x5965CA)
5965C6:  ADD             R0, PC; byte_A1DCAC
5965C8:  LDRB            R0, [R0]
5965CA:  DMB.W           ISH
5965CE:  TST.W           R0, #1
5965D2:  IT NE
5965D4:  POPNE           {R7,PC}
5965D6:  LDR             R0, =(byte_A1DCAC - 0x5965DC)
5965D8:  ADD             R0, PC; byte_A1DCAC ; __guard *
5965DA:  BLX             j___cxa_guard_acquire
5965DE:  CBZ             R0, locret_5965EC
5965E0:  LDR             R0, =(byte_A1DCAC - 0x5965E6)
5965E2:  ADD             R0, PC; byte_A1DCAC ; __guard *
5965E4:  POP.W           {R7,LR}
5965E8:  B.W             sub_19B758
5965EC:  POP             {R7,PC}
