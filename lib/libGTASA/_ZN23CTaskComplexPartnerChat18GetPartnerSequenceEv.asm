; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChat18GetPartnerSequenceEv
; Address            : 0x535454 - 0x535750
; =========================================================

535454:  PUSH            {R4-R7,LR}
535456:  ADD             R7, SP, #0xC
535458:  PUSH.W          {R8-R11}
53545C:  SUB             SP, SP, #4
53545E:  VPUSH           {D8-D9}
535462:  SUB             SP, SP, #0x18
535464:  MOV             R5, R0
535466:  MOVS            R0, #dword_40; this
535468:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53546C:  MOV             R9, R0
53546E:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
535472:  MOVS            R0, #word_28; this
535474:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535478:  MOV             R4, R0
53547A:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x535486)
53547C:  LDR             R1, [R5,#0x38]; CEntity *
53547E:  MOVW            R3, #0x126F
535482:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
535484:  MOVT            R3, #0x3A83; float
535488:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
53548A:  LDR             R2, [R0]; float
53548C:  MOV             R0, R4; this
53548E:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
535492:  MOV             R0, R9; this
535494:  MOV             R1, R4; CTask *
535496:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
53549A:  LDRSB.W         R0, [R5,#0x5B]
53549E:  LSLS            R0, R0, #4
5354A0:  VMOV            S0, R0
5354A4:  VCVT.F32.S32    S0, S0
5354A8:  VLDR            S2, [R5,#0x40]
5354AC:  VLDR            S4, [R5,#0x44]
5354B0:  VLDR            S6, [R5,#0x48]
5354B4:  VADD.F32        S0, S2, S0
5354B8:  VLDR            S2, =0.0078125
5354BC:  VADD.F32        S0, S4, S0
5354C0:  VMOV.F32        S4, #1.0
5354C4:  VADD.F32        S0, S6, S0
5354C8:  VCVT.S32.F32    S0, S0
5354CC:  VMOV            R0, S0
5354D0:  AND.W           R0, R0, #0x7F
5354D4:  VMOV            S0, R0
5354D8:  VCVT.F32.S32    S0, S0
5354DC:  VMUL.F32        S0, S0, S2
5354E0:  VSUB.F32        S2, S4, S0
5354E4:  VLDR            S4, =3000.0
5354E8:  VMUL.F32        S0, S0, S4
5354EC:  VMUL.F32        S2, S2, S4
5354F0:  VLDR            S4, =3500.0
5354F4:  VADD.F32        S0, S0, S4
5354F8:  VADD.F32        S2, S2, S4
5354FC:  VCVT.S32.F32    S16, S0
535500:  LDRB.W          R0, [R5,#0x58]
535504:  CMP             R0, #0
535506:  VCVT.S32.F32    S18, S2
53550A:  BEQ             loc_5355DE
53550C:  LDRB.W          R0, [R5,#0x72]
535510:  CMP             R0, #0
535512:  BEQ             loc_5355F8
535514:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr - 0x53551C)
535516:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr - 0x535522)
535518:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr
53551A:  LDRSB.W         R2, [R5,#0x5B]
53551E:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr
535520:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_Conversation ...
535522:  RSB.W           R2, R2, #3
535526:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_ConversationLength ...
535528:  LDRH.W          R8, [R0,R2,LSL#2]
53552C:  ADD.W           R0, R0, R2,LSL#2
535530:  LDRSH.W         R1, [R1]; unsigned int
535534:  LDRH            R0, [R0,#2]
535536:  CMP             R2, R1
535538:  STR             R0, [SP,#0x48+var_34]
53553A:  ITT EQ
53553C:  MOVEQ           R0, #0
53553E:  STRBEQ.W        R0, [R5,#0x5B]
535542:  MOVS            R0, #dword_20; this
535544:  LDRB.W          R10, [R5,#0x58]
535548:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53554C:  MOV             R6, R0
53554E:  LDRSB.W         R11, [R5,#0x5B]
535552:  LDR             R4, [R5,#0x38]
535554:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
535558:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x535564)
53555A:  MOV             R1, R6
53555C:  CMP.W           R10, #0
535560:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
535562:  LDR             R0, [R0]; `vtable for'CTaskComplexChat ...
535564:  ADD.W           R0, R0, #8
535568:  STR             R0, [R6]
53556A:  BEQ             loc_535666
53556C:  STR.W           R4, [R1,#0x10]!; CEntity **
535570:  MOVS            R0, #1
535572:  CMP             R4, #0
535574:  STRB.W          R0, [R1,#-4]
535578:  STR.W           R11, [R1,#4]
53557C:  STRH.W          R8, [R1,#8]
535580:  ITT NE
535582:  MOVNE           R0, R4; this
535584:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535588:  MOV.W           R10, #0
53558C:  MOV             R0, R9; this
53558E:  MOV             R1, R6; CTask *
535590:  STR.W           R10, [R6,#0x1C]
535594:  STRB.W          R10, [R6,#0x1A]
535598:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
53559C:  MOVS            R0, #dword_20; this
53559E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5355A2:  LDR             R6, [R5,#0x38]
5355A4:  MOV             R4, R0
5355A6:  LDRSB.W         R5, [R5,#0x5B]
5355AA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5355AE:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x5355BC)
5355B0:  MOV             R1, R4
5355B2:  STRB.W          R10, [R4,#0xC]
5355B6:  CMP             R6, #0
5355B8:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
5355BA:  LDR             R0, [R0]; `vtable for'CTaskComplexChat ...
5355BC:  ADD.W           R0, R0, #8
5355C0:  STR             R0, [R4]
5355C2:  STR             R5, [R4,#0x14]
5355C4:  STRH.W          R8, [R4,#0x18]
5355C8:  STR.W           R6, [R1,#0x10]!; CEntity **
5355CC:  ITT NE
5355CE:  MOVNE           R0, R6; this
5355D0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5355D4:  STR.W           R10, [R4,#0x1C]
5355D8:  STRB.W          R10, [R4,#0x1A]
5355DC:  B               loc_535738
5355DE:  LDR             R0, [R5,#0x38]
5355E0:  MOVW            R1, #0x4B4; int
5355E4:  LDR.W           R0, [R0,#0x440]; this
5355E8:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
5355EC:  LDRB.W          R0, [R0,#0x72]
5355F0:  STRB.W          R0, [R5,#0x72]
5355F4:  CMP             R0, #0
5355F6:  BNE             loc_535514
5355F8:  VMOV            R4, S16
5355FC:  LDRB.W          R0, [R5,#0x58]
535600:  VMOV            R6, S18
535604:  CMP             R0, #0
535606:  BEQ             loc_5356D8
535608:  MOVS            R0, #dword_34; this
53560A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53560E:  MOV             R5, R0
535610:  LDR             R0, =(aChat - 0x53561A); "Chat"
535612:  MOVS            R3, #0
535614:  MOVS            R1, #0
535616:  ADD             R0, PC; "Chat"
535618:  MOVT            R3, #0xC080
53561C:  MOV.W           R2, #0x1A0
535620:  STRD.W          R3, R4, [SP,#0x48+var_48]; float
535624:  STRD.W          R2, R0, [SP,#0x48+var_40]; int
535628:  MOV             R0, R5; int
53562A:  STR             R1, [SP,#0x48+var_38]; int
53562C:  MOVS            R1, #0; int
53562E:  MOVS            R2, #0xC; int
535630:  MOV.W           R3, #0x40800000; int
535634:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
535638:  LDR             R0, =(_ZTV15CTaskSimpleChat_ptr - 0x535640)
53563A:  MOV             R1, R5; CTask *
53563C:  ADD             R0, PC; _ZTV15CTaskSimpleChat_ptr
53563E:  LDR             R0, [R0]; `vtable for'CTaskSimpleChat ...
535640:  ADDS            R0, #8
535642:  STR             R0, [R5]
535644:  MOV             R0, R9; this
535646:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
53564A:  MOVS            R0, #dword_20; this
53564C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535650:  MOV             R4, R0
535652:  MOV.W           R0, #0x41000000
535656:  STR             R0, [SP,#0x48+var_48]; float
535658:  MOV             R0, R4; this
53565A:  MOV             R1, R6; int
53565C:  MOVS            R2, #0; bool
53565E:  MOVS            R3, #0; bool
535660:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
535664:  B               loc_535738
535666:  STR.W           R4, [R1,#0x10]!; CEntity **
53566A:  MOV.W           R10, #0
53566E:  CMP             R4, #0
535670:  STRB.W          R10, [R1,#-4]
535674:  STR.W           R11, [R1,#4]
535678:  LDR.W           R8, [SP,#0x48+var_34]
53567C:  STRH.W          R8, [R1,#8]
535680:  ITT NE
535682:  MOVNE           R0, R4; this
535684:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535688:  MOV             R0, R9; this
53568A:  MOV             R1, R6; CTask *
53568C:  STR.W           R10, [R6,#0x1C]
535690:  STRB.W          R10, [R6,#0x1A]
535694:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535698:  MOVS            R0, #dword_20; this
53569A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53569E:  LDR             R6, [R5,#0x38]
5356A0:  MOV             R4, R0
5356A2:  LDRSB.W         R5, [R5,#0x5B]
5356A6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5356AA:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x5356B6)
5356AC:  MOVS            R1, #1
5356AE:  STRB            R1, [R4,#0xC]
5356B0:  MOV             R1, R4
5356B2:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
5356B4:  CMP             R6, #0
5356B6:  LDR             R0, [R0]; `vtable for'CTaskComplexChat ...
5356B8:  ADD.W           R0, R0, #8
5356BC:  STR             R0, [R4]
5356BE:  STR             R5, [R4,#0x14]
5356C0:  STRH.W          R8, [R4,#0x18]
5356C4:  STR.W           R6, [R1,#0x10]!; CEntity **
5356C8:  ITT NE
5356CA:  MOVNE           R0, R6; this
5356CC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5356D0:  MOVS            R0, #0
5356D2:  STR             R0, [R4,#0x1C]
5356D4:  STRB            R0, [R4,#0x1A]
5356D6:  B               loc_535738
5356D8:  MOVS            R0, #dword_20; this
5356DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5356DE:  MOV             R5, R0
5356E0:  MOV.W           R0, #0x41000000
5356E4:  STR             R0, [SP,#0x48+var_48]; float
5356E6:  MOV             R0, R5; this
5356E8:  MOV             R1, R4; int
5356EA:  MOVS            R2, #0; bool
5356EC:  MOVS            R3, #0; bool
5356EE:  MOV.W           R8, #0
5356F2:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5356F6:  MOV             R0, R9; this
5356F8:  MOV             R1, R5; CTask *
5356FA:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5356FE:  MOVS            R0, #dword_34; this
535700:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535704:  MOV             R4, R0
535706:  LDR             R0, =(aChat - 0x535712); "Chat"
535708:  MOVS            R2, #0
53570A:  MOV.W           R1, #0x1A0
53570E:  ADD             R0, PC; "Chat"
535710:  MOVT            R2, #0xC080
535714:  STRD.W          R2, R6, [SP,#0x48+var_48]; float
535718:  MOVS            R2, #0xC; int
53571A:  STRD.W          R1, R0, [SP,#0x48+var_40]; int
53571E:  MOV             R0, R4; int
535720:  MOVS            R1, #0; int
535722:  MOV.W           R3, #0x40800000; int
535726:  STR.W           R8, [SP,#0x48+var_38]; int
53572A:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
53572E:  LDR             R0, =(_ZTV15CTaskSimpleChat_ptr - 0x535734)
535730:  ADD             R0, PC; _ZTV15CTaskSimpleChat_ptr
535732:  LDR             R0, [R0]; `vtable for'CTaskSimpleChat ...
535734:  ADDS            R0, #8
535736:  STR             R0, [R4]
535738:  MOV             R0, R9; this
53573A:  MOV             R1, R4; CTask *
53573C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535740:  MOV             R0, R9
535742:  ADD             SP, SP, #0x18
535744:  VPOP            {D8-D9}
535748:  ADD             SP, SP, #4
53574A:  POP.W           {R8-R11}
53574E:  POP             {R4-R7,PC}
