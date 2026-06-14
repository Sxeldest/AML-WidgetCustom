; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObject14ControlSubTaskEP4CPed
; Address            : 0x50E3D0 - 0x50E54E
; =========================================================

50E3D0:  PUSH            {R4-R7,LR}
50E3D2:  ADD             R7, SP, #0xC
50E3D4:  PUSH.W          {R11}
50E3D8:  SUB             SP, SP, #8
50E3DA:  MOV             R4, R0
50E3DC:  MOV             R5, R1
50E3DE:  LDR             R0, [R4,#0x1C]
50E3E0:  CMP             R0, #0
50E3E2:  BEQ.W           loc_50E518
50E3E6:  LDR             R0, [R4,#8]
50E3E8:  LDR             R1, [R0]
50E3EA:  LDR             R1, [R1,#0x14]
50E3EC:  BLX             R1
50E3EE:  MOVW            R1, #0x389
50E3F2:  CMP             R0, R1
50E3F4:  BNE             loc_50E428
50E3F6:  LDRB.W          R0, [R4,#0x2C]
50E3FA:  CBZ             R0, loc_50E428
50E3FC:  LDRB.W          R0, [R4,#0x2D]
50E400:  CBZ             R0, loc_50E416
50E402:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50E40A)
50E404:  MOVS            R1, #0
50E406:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50E408:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
50E40A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
50E40C:  STRB.W          R1, [R4,#0x2D]
50E410:  STR             R0, [R4,#0x24]
50E412:  MOV             R1, R0
50E414:  B               loc_50E420
50E416:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50E41E)
50E418:  LDR             R1, [R4,#0x24]
50E41A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50E41C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
50E41E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
50E420:  LDR             R2, [R4,#0x28]
50E422:  ADD             R1, R2
50E424:  CMP             R1, R0
50E426:  BLS             loc_50E518
50E428:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x50E432)
50E42A:  LDR.W           R1, [R5,#0x440]
50E42E:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
50E430:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
50E432:  LDR.W           R1, [R1,#0x278]
50E436:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
50E438:  CMP             R1, R0
50E43A:  BGT             loc_50E518
50E43C:  LDR             R0, [R4,#8]
50E43E:  LDR             R1, [R0]
50E440:  LDR             R1, [R1,#0x14]
50E442:  BLX             R1
50E444:  CMP             R0, #0xCB
50E446:  BEQ             loc_50E544
50E448:  LDR             R6, [R4,#0x1C]
50E44A:  LDR             R1, [R6,#0x14]
50E44C:  CBZ             R1, loc_50E454
50E44E:  MOV             R2, R6
50E450:  MOV             R0, R1
50E452:  B               loc_50E468
50E454:  MOV             R0, R6; this
50E456:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
50E45A:  LDR             R1, [R6,#0x14]; CMatrix *
50E45C:  ADDS            R0, R6, #4; this
50E45E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
50E462:  LDR             R2, [R4,#0x1C]
50E464:  LDR             R0, [R6,#0x14]
50E466:  LDR             R1, [R2,#0x14]
50E468:  ADD.W           R3, R1, #0x30 ; '0'
50E46C:  CMP             R1, #0
50E46E:  VLDR            S0, [R4,#0x30]
50E472:  IT EQ
50E474:  ADDEQ           R3, R2, #4
50E476:  VLDR            S2, [R3]
50E47A:  VLDR            D16, [R4,#0x34]
50E47E:  VSUB.F32        S0, S0, S2
50E482:  VLDR            D17, [R3,#4]
50E486:  VSUB.F32        D16, D16, D17
50E48A:  VMUL.F32        D1, D16, D16
50E48E:  VMUL.F32        S0, S0, S0
50E492:  VADD.F32        S0, S0, S2
50E496:  VADD.F32        S0, S0, S3
50E49A:  VLDR            S2, =0.0625
50E49E:  VCMPE.F32       S0, S2
50E4A2:  VMRS            APSR_nzcv, FPSCR
50E4A6:  BGT             loc_50E518
50E4A8:  VLDR            S0, [R0,#0x10]
50E4AC:  VLDR            S6, [R4,#0x3C]
50E4B0:  VLDR            S2, [R0,#0x14]
50E4B4:  VLDR            S8, [R4,#0x40]
50E4B8:  VMUL.F32        S0, S6, S0
50E4BC:  VLDR            S4, [R0,#0x18]
50E4C0:  VMUL.F32        S2, S8, S2
50E4C4:  VLDR            S10, [R4,#0x44]
50E4C8:  VMUL.F32        S4, S10, S4
50E4CC:  VADD.F32        S0, S0, S2
50E4D0:  VADD.F32        S2, S0, S4
50E4D4:  VLDR            S0, =0.9
50E4D8:  VCMPE.F32       S2, S0
50E4DC:  VMRS            APSR_nzcv, FPSCR
50E4E0:  BLT             loc_50E518
50E4E2:  VLDR            S2, [R0]
50E4E6:  VLDR            S8, [R4,#0x48]
50E4EA:  VLDR            S4, [R0,#4]
50E4EE:  VLDR            S10, [R4,#0x4C]
50E4F2:  VMUL.F32        S2, S8, S2
50E4F6:  VLDR            S6, [R0,#8]
50E4FA:  VMUL.F32        S4, S10, S4
50E4FE:  VLDR            S12, [R4,#0x50]
50E502:  VMUL.F32        S6, S12, S6
50E506:  VADD.F32        S2, S2, S4
50E50A:  VADD.F32        S2, S2, S6
50E50E:  VCMPE.F32       S2, S0
50E512:  VMRS            APSR_nzcv, FPSCR
50E516:  BGE             loc_50E544
50E518:  LDR             R0, [R4,#8]
50E51A:  MOVS            R2, #1
50E51C:  MOVS            R3, #0
50E51E:  LDR             R1, [R0]
50E520:  LDR             R6, [R1,#0x1C]
50E522:  MOV             R1, R5
50E524:  BLX             R6
50E526:  CMP             R0, #1
50E528:  BNE             loc_50E544
50E52A:  MOVS            R0, #dword_20; this
50E52C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E530:  MOV.W           R1, #0x41000000
50E534:  MOVS            R2, #0; bool
50E536:  STR             R1, [SP,#0x18+var_18]; float
50E538:  MOV.W           R1, #0x1F4; int
50E53C:  MOVS            R3, #0; bool
50E53E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
50E542:  B               loc_50E546
50E544:  LDR             R0, [R4,#8]
50E546:  ADD             SP, SP, #8
50E548:  POP.W           {R11}
50E54C:  POP             {R4-R7,PC}
