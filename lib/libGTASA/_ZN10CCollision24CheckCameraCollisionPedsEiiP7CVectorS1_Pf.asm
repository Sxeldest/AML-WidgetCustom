; =========================================================
; Game Engine Function: _ZN10CCollision24CheckCameraCollisionPedsEiiP7CVectorS1_Pf
; Address            : 0x2DF5E0 - 0x2DF754
; =========================================================

2DF5E0:  PUSH            {R4-R7,LR}
2DF5E2:  ADD             R7, SP, #0xC
2DF5E4:  PUSH.W          {R8-R11}
2DF5E8:  SUB             SP, SP, #4
2DF5EA:  VPUSH           {D8}
2DF5EE:  SUB             SP, SP, #0x30
2DF5F0:  LDR             R6, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2DF602)
2DF5F2:  MOV             R9, R2
2DF5F4:  LDR             R2, =(gPedCylinderWidth_ptr - 0x2DF604)
2DF5F6:  AND.W           R0, R0, #0xF
2DF5FA:  BFI.W           R0, R1, #4, #4
2DF5FE:  ADD             R6, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2DF600:  ADD             R2, PC; gPedCylinderWidth_ptr
2DF602:  MOV.W           R8, #0
2DF606:  ADD.W           R0, R0, R0,LSL#1
2DF60A:  LDR             R1, [R2]; gPedCylinderWidth
2DF60C:  LDR             R2, [R6]; CWorld::ms_aRepeatSectors ...
2DF60E:  ADD.W           R0, R2, R0,LSL#2
2DF612:  VLDR            S16, [R1]
2DF616:  LDR             R5, [R0,#4]
2DF618:  LDRD.W          R0, R1, [R3]
2DF61C:  STRD.W          R0, R1, [SP,#0x58+var_38]
2DF620:  ADD             R0, SP, #0x58+var_38; this
2DF622:  STR.W           R8, [SP,#0x58+var_30]
2DF626:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2DF62A:  CMP             R5, #0
2DF62C:  BEQ.W           loc_2DF742
2DF630:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2DF640)
2DF632:  VMUL.F32        S16, S16, S16
2DF636:  LDR             R1, =(gpMadeInvisibleEntities_ptr - 0x2DF642)
2DF638:  MOV.W           R8, #0
2DF63C:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2DF63E:  ADD             R1, PC; gpMadeInvisibleEntities_ptr
2DF640:  LDR             R4, [R0]; CWorld::ms_nCurrentScanCode ...
2DF642:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x2DF648)
2DF644:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
2DF646:  LDR.W           R10, [R0]; CWorld::pIgnoreEntity ...
2DF64A:  LDR             R0, =(gNumEntitiesSetInvisible_ptr - 0x2DF650)
2DF64C:  ADD             R0, PC; gNumEntitiesSetInvisible_ptr
2DF64E:  LDR             R0, [R0]; gNumEntitiesSetInvisible
2DF650:  STR             R0, [SP,#0x58+var_4C]
2DF652:  LDR             R0, [R1]; gpMadeInvisibleEntities
2DF654:  STR             R0, [SP,#0x58+var_50]
2DF656:  LDR             R0, =(gNumEntitiesSetInvisible_ptr - 0x2DF65E)
2DF658:  LDR             R1, =(gpMadeInvisibleEntities_ptr - 0x2DF660)
2DF65A:  ADD             R0, PC; gNumEntitiesSetInvisible_ptr
2DF65C:  ADD             R1, PC; gpMadeInvisibleEntities_ptr
2DF65E:  LDR             R0, [R0]; gNumEntitiesSetInvisible
2DF660:  STR             R0, [SP,#0x58+var_54]
2DF662:  LDR             R0, [R1]; gpMadeInvisibleEntities
2DF664:  STR             R0, [SP,#0x58+var_58]
2DF666:  LDR             R6, [R5]
2DF668:  LDRH            R0, [R4]; CWorld::ms_nCurrentScanCode
2DF66A:  LDRH            R1, [R6,#0x30]
2DF66C:  CMP             R1, R0
2DF66E:  BEQ             loc_2DF73C
2DF670:  MOV             R11, R6
2DF672:  LDRB.W          R1, [R11,#0x1C]!
2DF676:  STRH            R0, [R6,#0x30]
2DF678:  TST.W           R1, #0x80
2DF67C:  ITT NE
2DF67E:  LDRNE.W         R0, [R10]; CWorld::pIgnoreEntity
2DF682:  CMPNE           R0, R6
2DF684:  BEQ             loc_2DF73C
2DF686:  MOV             R0, R6; this
2DF688:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
2DF68C:  CMP             R0, #0
2DF68E:  BNE             loc_2DF73C
2DF690:  ADD             R0, SP, #0x58+var_48; this
2DF692:  MOV             R1, R6
2DF694:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
2DF698:  VLDR            D16, [R9]
2DF69C:  VLDR            D17, [SP,#0x58+var_48]
2DF6A0:  VSUB.F32        D16, D16, D17
2DF6A4:  VMUL.F32        D0, D16, D16
2DF6A8:  VADD.F32        S0, S0, S1
2DF6AC:  VCMPE.F32       S0, S16
2DF6B0:  VMRS            APSR_nzcv, FPSCR
2DF6B4:  BGE             loc_2DF73C
2DF6B6:  MOV             R0, R6; CPed *
2DF6B8:  BLX             j__Z45GetNearestDistanceOfPedSphereToCameraNearClipP4CPed; GetNearestDistanceOfPedSphereToCameraNearClip(CPed *)
2DF6BC:  VMOV            S0, R0
2DF6C0:  VCMPE.F32       S0, #0.0
2DF6C4:  VMRS            APSR_nzcv, FPSCR
2DF6C8:  BGT             loc_2DF73C
2DF6CA:  LDR.W           R8, [SP,#0x58+var_4C]
2DF6CE:  LDR             R1, [SP,#0x58+var_50]
2DF6D0:  LDR.W           R0, [R8]
2DF6D4:  STR.W           R6, [R1,R0,LSL#2]
2DF6D8:  ADD.W           R1, R1, R0,LSL#2; CEntity **
2DF6DC:  MOV             R0, R6; this
2DF6DE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
2DF6E2:  LDR.W           R0, [R8]
2DF6E6:  MOVS            R1, #0; bool
2DF6E8:  ADDS            R0, #1
2DF6EA:  STR.W           R0, [R8]
2DF6EE:  LDR.W           R0, [R6,#0x440]; this
2DF6F2:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
2DF6F6:  CBZ             R0, loc_2DF72C
2DF6F8:  LDR             R0, [R0,#8]; this
2DF6FA:  CMP             R0, #0
2DF6FC:  ITTT NE
2DF6FE:  MOVNE           R1, R0
2DF700:  LDRNE.W         R2, [R1,#0x1C]!
2DF704:  TSTNE.W         R2, #0x80
2DF708:  BEQ             loc_2DF72C
2DF70A:  LDR             R3, [R1,#4]
2DF70C:  BIC.W           R2, R2, #0x80
2DF710:  STRD.W          R2, R3, [R1]
2DF714:  LDR             R6, [SP,#0x58+var_54]
2DF716:  LDR             R2, [SP,#0x58+var_58]
2DF718:  LDR             R1, [R6]
2DF71A:  STR.W           R0, [R2,R1,LSL#2]
2DF71E:  ADD.W           R1, R2, R1,LSL#2; CEntity **
2DF722:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
2DF726:  LDR             R0, [R6]
2DF728:  ADDS            R0, #1
2DF72A:  STR             R0, [R6]
2DF72C:  LDR.W           R0, [R11]
2DF730:  MOV.W           R8, #1
2DF734:  BIC.W           R0, R0, #0x80
2DF738:  STR.W           R0, [R11]
2DF73C:  LDR             R5, [R5,#4]
2DF73E:  CMP             R5, #0
2DF740:  BNE             loc_2DF666
2DF742:  AND.W           R0, R8, #1
2DF746:  ADD             SP, SP, #0x30 ; '0'
2DF748:  VPOP            {D8}
2DF74C:  ADD             SP, SP, #4
2DF74E:  POP.W           {R8-R11}
2DF752:  POP             {R4-R7,PC}
