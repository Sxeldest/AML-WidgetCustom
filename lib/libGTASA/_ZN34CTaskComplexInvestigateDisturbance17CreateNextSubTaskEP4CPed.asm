; =========================================================
; Game Engine Function: _ZN34CTaskComplexInvestigateDisturbance17CreateNextSubTaskEP4CPed
; Address            : 0x526480 - 0x52665C
; =========================================================

526480:  PUSH            {R4-R7,LR}
526482:  ADD             R7, SP, #0xC
526484:  PUSH.W          {R8}
526488:  SUB             SP, SP, #0x10
52648A:  MOV             R5, R0
52648C:  MOV             R6, R1
52648E:  LDR             R0, [R5,#8]
526490:  LDR             R1, [R0]
526492:  LDR             R1, [R1,#0x14]
526494:  BLX             R1
526496:  MOVW            R1, #0x38A; unsigned int
52649A:  MOVS            R4, #0
52649C:  CMP             R0, R1
52649E:  BGT             loc_5264B0
5264A0:  CMP.W           R0, #0x190
5264A4:  BEQ             loc_5264DE
5264A6:  MOVW            R1, #0x387
5264AA:  CMP             R0, R1
5264AC:  BEQ             loc_5264C0
5264AE:  B               loc_526652
5264B0:  CMP.W           R0, #0x398
5264B4:  BEQ             loc_526524
5264B6:  MOVW            R1, #0x38B; unsigned int
5264BA:  CMP             R0, R1
5264BC:  BNE.W           loc_526652
5264C0:  MOVS            R0, #dword_20; this
5264C2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5264C6:  LDR.W           R1, [R6,#0x4E0]
5264CA:  MOV             R4, R0
5264CC:  MOVS            R0, #0
5264CE:  MOVS            R2, #4
5264D0:  STR             R0, [SP,#0x20+var_20]
5264D2:  MOV             R0, R4
5264D4:  MOV.W           R3, #0x40800000
5264D8:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
5264DC:  B               loc_526652
5264DE:  MOVS            R5, #0
5264E0:  MOV             R0, R6; this
5264E2:  MOVS            R1, #0xCE; unsigned __int16
5264E4:  MOVS            R2, #0; unsigned int
5264E6:  MOV.W           R3, #0x3F800000; float
5264EA:  STRD.W          R5, R5, [SP,#0x20+var_20]; unsigned __int8
5264EE:  STR             R5, [SP,#0x20+var_18]; unsigned __int8
5264F0:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5264F4:  MOVS            R0, #dword_20; this
5264F6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5264FA:  MOV             R4, R0
5264FC:  LDR             R0, =(aScratchhead - 0x526508); "ScratchHead"
5264FE:  MOVW            R1, #0x1A5
526502:  MOVS            R2, #0x87
526504:  ADD             R0, PC; "ScratchHead"
526506:  MOV.W           R3, #0x40800000
52650A:  STRD.W          R1, R0, [SP,#0x20+var_20]
52650E:  MOV             R0, R4
526510:  MOVS            R1, #0
526512:  STR             R5, [SP,#0x20+var_18]
526514:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
526518:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x52651E)
52651A:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
52651C:  LDR             R0, [R0]; `vtable for'CTaskSimpleScratchHead ...
52651E:  ADDS            R0, #8
526520:  STR             R0, [R4]
526522:  B               loc_526652
526524:  LDR             R0, [R5,#0x18]
526526:  CMP             R0, #0
526528:  BEQ             loc_5265BC
52652A:  MOVS            R0, #dword_58; this
52652C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526530:  MOV             R4, R0
526532:  LDR.W           R8, [R5,#0x18]
526536:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52653A:  ADR             R2, dword_526660
52653C:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorFixedPos_ptr - 0x526550)
52653E:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE_ptr - 0x526552)
526540:  MOV.W           R3, #0x3E8
526544:  VLD1.64         {D16-D17}, [R2@128]
526548:  ADD.W           R2, R4, #0x18
52654C:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorFixedPos_ptr
52654E:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE_ptr
526550:  VST1.32         {D16-D17}, [R2]
526554:  MOVW            R2, #0xC350
526558:  MOV             R6, R4
52655A:  CMP.W           R8, #0
52655E:  STRD.W          R2, R3, [R4,#0x10]
526562:  MOV.W           R2, #0
526566:  MOV.W           R3, #6
52656A:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorFixedPos ...
52656C:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorFixedPos> ...
52656E:  STRH            R2, [R4,#0x30]
526570:  ADD.W           R0, R0, #8
526574:  STRH            R2, [R4,#0x3C]
526576:  ADD.W           R1, R1, #8
52657A:  STRD.W          R2, R2, [R4,#0x28]
52657E:  STRD.W          R2, R2, [R4,#0x34]
526582:  STRD.W          R2, R2, [R4,#0x48]
526586:  STR             R3, [R4,#0x50]
526588:  LDRB.W          R3, [R4,#0x54]
52658C:  STR             R1, [R4]
52658E:  MOV             R1, R4
526590:  STR             R0, [R4,#0x40]
526592:  AND.W           R0, R3, #0xF0
526596:  ORR.W           R0, R0, #3
52659A:  STRB.W          R0, [R4,#0x54]
52659E:  STR.W           R2, [R6,#0x44]!
5265A2:  STR.W           R8, [R1,#0xC]!; CEntity **
5265A6:  ITT NE
5265A8:  MOVNE           R0, R8; this
5265AA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5265AE:  VLDR            D16, [R5,#0xC]
5265B2:  LDR             R0, [R5,#0x14]
5265B4:  STR             R0, [R6,#8]
5265B6:  VSTR            D16, [R6]
5265BA:  B               loc_526652
5265BC:  MOVS            R0, #word_28; this
5265BE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5265C2:  MOV             R4, R0
5265C4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5265C8:  LDR             R0, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x5265D4)
5265CA:  MOVS            R1, #4
5265CC:  VLDR            S0, [R4,#0x10]
5265D0:  ADD             R0, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
5265D2:  STR             R1, [R4,#0xC]
5265D4:  LDRB.W          R1, [R4,#0x24]
5265D8:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAndStandStill ...
5265DA:  ADDS            R0, #8
5265DC:  STR             R0, [R4]
5265DE:  BIC.W           R0, R1, #0x1B
5265E2:  STRB.W          R0, [R4,#0x24]
5265E6:  VLDR            S2, [R5,#0xC]
5265EA:  VCMP.F32        S0, S2
5265EE:  VMRS            APSR_nzcv, FPSCR
5265F2:  BNE             loc_52662A
5265F4:  VLDR            S0, [R5,#0x10]
5265F8:  VLDR            S2, [R4,#0x14]
5265FC:  VCMP.F32        S2, S0
526600:  VMRS            APSR_nzcv, FPSCR
526604:  BNE             loc_52662A
526606:  VLDR            S0, [R5,#0x14]
52660A:  VLDR            S2, [R4,#0x18]
52660E:  VCMP.F32        S2, S0
526612:  VMRS            APSR_nzcv, FPSCR
526616:  BNE             loc_52662A
526618:  VMOV.F32        S0, #2.0
52661C:  VLDR            S2, [R4,#0x20]
526620:  VCMP.F32        S2, S0
526624:  VMRS            APSR_nzcv, FPSCR
526628:  BEQ             loc_526652
52662A:  ADD.W           R1, R5, #0xC
52662E:  ADD.W           R2, R4, #0x10
526632:  ORR.W           R0, R0, #4
526636:  VLDR            D16, [R1]
52663A:  LDR             R1, [R1,#8]
52663C:  STR             R1, [R2,#8]
52663E:  MOV.W           R1, #0x40000000
526642:  VSTR            D16, [R2]
526646:  MOV.W           R2, #0x3F000000
52664A:  STRD.W          R2, R1, [R4,#0x1C]
52664E:  STRB.W          R0, [R4,#0x24]
526652:  MOV             R0, R4
526654:  ADD             SP, SP, #0x10
526656:  POP.W           {R8}
52665A:  POP             {R4-R7,PC}
