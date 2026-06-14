; =========================================================
; Game Engine Function: _ZN7CPickup19GiveUsAPickUpObjectEPP7CObjecti
; Address            : 0x31D4C0 - 0x31D728
; =========================================================

31D4C0:  PUSH            {R4-R7,LR}
31D4C2:  ADD             R7, SP, #0xC
31D4C4:  PUSH.W          {R11}
31D4C8:  VPUSH           {D8-D10}
31D4CC:  MOV             R5, R0
31D4CE:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x31D4D8)
31D4D0:  MOV             R4, R1
31D4D2:  MOVS            R1, #0
31D4D4:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
31D4D6:  STR             R1, [R4]
31D4D8:  MOV             R6, R2
31D4DA:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
31D4DC:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus
31D4DE:  CMP             R0, #2
31D4E0:  BEQ.W           loc_31D71E
31D4E4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31D4EC)
31D4E6:  LDRH            R1, [R5,#0x18]
31D4E8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31D4EA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31D4EC:  LDR.W           R0, [R0,R1,LSL#2]
31D4F0:  LDR             R1, [R0]
31D4F2:  LDR             R1, [R1,#0x14]
31D4F4:  BLX             R1
31D4F6:  CMP             R0, #4
31D4F8:  BNE             loc_31D50E
31D4FA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31D502)
31D4FC:  LDRH            R1, [R5,#0x18]
31D4FE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31D500:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31D502:  LDR.W           R0, [R0,R1,LSL#2]
31D506:  MOVS            R1, #1
31D508:  LDR             R0, [R0,#0x3C]
31D50A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
31D50E:  CMP             R6, #0
31D510:  BLT             loc_31D530
31D512:  MOV             R0, R6; this
31D514:  BLX             j__ZN6CPools31MakeSureSlotInObjectPoolIsEmptyEi; CPools::MakeSureSlotInObjectPoolIsEmpty(int)
31D518:  LDR             R0, [R4]
31D51A:  CBNZ            R0, loc_31D540
31D51C:  LSLS            R1, R6, #8; unsigned int
31D51E:  MOV.W           R0, #(elf_hash_bucket+0x88); this
31D522:  BLX             j__ZN7CObjectnwEji; CObject::operator new(uint,int)
31D526:  LDRH            R1, [R5,#0x18]; int
31D528:  MOVS            R2, #0; bool
31D52A:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
31D52E:  B               loc_31D538
31D530:  LDRH            R0, [R5,#0x18]; this
31D532:  MOVS            R1, #0; int
31D534:  BLX             j__ZN7CObject6CreateEib; CObject::Create(int,bool)
31D538:  CMP             R0, #0
31D53A:  STR             R0, [R4]
31D53C:  BEQ.W           loc_31D71E
31D540:  MOVS            R1, #5
31D542:  VMOV.F32        S4, #0.125
31D546:  STRB.W          R1, [R0,#0x140]
31D54A:  LDRSH.W         R0, [R5,#0x10]
31D54E:  LDRSH.W         R1, [R5,#0x12]
31D552:  LDRSH.W         R2, [R5,#0x14]
31D556:  VMOV            S6, R0
31D55A:  VMOV            S2, R1
31D55E:  VMOV            S0, R2
31D562:  VCVT.F32.S32    S0, S0
31D566:  VCVT.F32.S32    S2, S2
31D56A:  VCVT.F32.S32    S6, S6
31D56E:  LDR             R0, [R4]
31D570:  LDR             R1, [R0,#0x14]
31D572:  VMUL.F32        S0, S0, S4
31D576:  CMP             R1, #0
31D578:  VMUL.F32        S2, S2, S4
31D57C:  VMUL.F32        S4, S6, S4
31D580:  BEQ             loc_31D592
31D582:  VSTR            S4, [R1,#0x30]
31D586:  LDR             R1, [R0,#0x14]
31D588:  VSTR            S2, [R1,#0x34]
31D58C:  LDR             R0, [R0,#0x14]
31D58E:  ADDS            R0, #0x38 ; '8'
31D590:  B               loc_31D59C
31D592:  VSTR            S4, [R0,#4]
31D596:  VSTR            S2, [R0,#8]
31D59A:  ADDS            R0, #0xC
31D59C:  LDR             R1, =(MI_OYSTER_ptr - 0x31D5A6)
31D59E:  VSTR            S0, [R0]
31D5A2:  ADD             R1, PC; MI_OYSTER_ptr
31D5A4:  LDR             R6, [R4]
31D5A6:  LDR             R0, [R1]; MI_OYSTER
31D5A8:  LDRSH.W         R1, [R6,#0x26]
31D5AC:  LDRH            R0, [R0]
31D5AE:  CMP             R1, R0
31D5B0:  ITTTT EQ
31D5B2:  LDREQ           R0, [R6,#0x1C]
31D5B4:  ORREQ.W         R0, R0, #0x100000
31D5B8:  STREQ           R0, [R6,#0x1C]
31D5BA:  LDREQ           R6, [R4]
31D5BC:  LDR             R0, [R6,#0x14]; this
31D5BE:  CBZ             R0, loc_31D604
31D5C0:  MOVW            R3, #0xFDB
31D5C4:  MOVS            R1, #0; x
31D5C6:  MOVT            R3, #0xBFC9; float
31D5CA:  MOVS            R2, #0; float
31D5CC:  VLDR            S16, [R0,#0x30]
31D5D0:  VLDR            S18, [R0,#0x34]
31D5D4:  VLDR            S20, [R0,#0x38]
31D5D8:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
31D5DC:  LDR             R0, [R6,#0x14]
31D5DE:  VLDR            S0, [R0,#0x30]
31D5E2:  VLDR            S2, [R0,#0x34]
31D5E6:  VLDR            S4, [R0,#0x38]
31D5EA:  VADD.F32        S0, S16, S0
31D5EE:  VADD.F32        S2, S18, S2
31D5F2:  VADD.F32        S4, S20, S4
31D5F6:  VSTR            S0, [R0,#0x30]
31D5FA:  VSTR            S2, [R0,#0x34]
31D5FE:  VSTR            S4, [R0,#0x38]
31D602:  B               loc_31D60E
31D604:  MOV             R0, #0xBFC90FDB
31D60C:  STR             R0, [R6,#0x10]
31D60E:  LDR             R2, [R4]
31D610:  LDR             R0, [R2,#0x18]
31D612:  CBZ             R0, loc_31D628
31D614:  LDR             R1, [R0,#4]
31D616:  LDR             R0, [R2,#0x14]
31D618:  ADDS            R1, #0x10
31D61A:  CBZ             R0, loc_31D622
31D61C:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
31D620:  B               loc_31D628
31D622:  ADDS            R0, R2, #4
31D624:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
31D628:  LDR             R0, [R4]; this
31D62A:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
31D62E:  LDR             R0, [R4]
31D630:  LDR             R1, [R0,#0x44]
31D632:  BIC.W           R1, R1, #2
31D636:  STR             R1, [R0,#0x44]
31D638:  LDR             R0, [R4]
31D63A:  LDR             R1, [R0,#0x44]
31D63C:  ORR.W           R1, R1, #0x800000
31D640:  STR             R1, [R0,#0x44]
31D642:  LDR             R0, [R4]
31D644:  LDRD.W          R1, R2, [R0,#0x1C]
31D648:  BIC.W           R1, R1, #1
31D64C:  STRD.W          R1, R2, [R0,#0x1C]
31D650:  LDR             R0, [R4]
31D652:  LDR.W           R1, [R0,#0x144]
31D656:  ORR.W           R1, R1, #1
31D65A:  STR.W           R1, [R0,#0x144]
31D65E:  LDR             R0, [R4]
31D660:  LDRB            R1, [R5,#0x1D]
31D662:  LDR.W           R2, [R0,#0x144]
31D666:  LSRS            R1, R1, #1
31D668:  BFI.W           R2, R1, #1, #1
31D66C:  STR.W           R2, [R0,#0x144]
31D670:  LDR             R0, [R4]
31D672:  LDRD.W          R1, R2, [R0,#0x1C]
31D676:  ORR.W           R1, R1, #0x200000
31D67A:  STRD.W          R1, R2, [R0,#0x1C]
31D67E:  MOV             R0, R5; this
31D680:  BLX             j__ZN7CPickup23PickUpShouldBeInvisibleEv; CPickup::PickUpShouldBeInvisible(void)
31D684:  LDR             R1, [R4]
31D686:  LDR.W           R2, [R1,#0x144]
31D68A:  BIC.W           R2, R2, #0x2000000
31D68E:  ORR.W           R0, R2, R0,LSL#25
31D692:  STR.W           R0, [R1,#0x144]
31D696:  LDR             R0, [R4]
31D698:  LDRD.W          R1, R2, [R0,#0x1C]
31D69C:  ORR.W           R1, R1, #0x80000000
31D6A0:  STRD.W          R1, R2, [R0,#0x1C]
31D6A4:  LDR             R0, [R4]; this
31D6A6:  MOV             R1, R4; CEntity **
31D6A8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
31D6AC:  LDR             R0, =(MI_PICKUP_BONUS_ptr - 0x31D6B2)
31D6AE:  ADD             R0, PC; MI_PICKUP_BONUS_ptr
31D6B0:  LDR             R1, [R0]; MI_PICKUP_BONUS
31D6B2:  LDRH            R0, [R5,#0x18]
31D6B4:  LDRH            R1, [R1]
31D6B6:  CMP             R0, R1
31D6B8:  BEQ             loc_31D6CA
31D6BA:  LDR             R1, =(MI_PICKUP_CLOTHES_ptr - 0x31D6C0)
31D6BC:  ADD             R1, PC; MI_PICKUP_CLOTHES_ptr
31D6BE:  LDR             R1, [R1]; MI_PICKUP_CLOTHES
31D6C0:  LDRH            R1, [R1]
31D6C2:  CMP             R0, R1
31D6C4:  BEQ             loc_31D6CA
31D6C6:  MOVS            R0, #0
31D6C8:  B               loc_31D6CC
31D6CA:  LDR             R0, [R5,#8]
31D6CC:  LDR             R1, [R4]
31D6CE:  STRB.W          R0, [R1,#0x141]
31D6D2:  LDRB            R0, [R5,#0x1C]
31D6D4:  CMP             R0, #0x12
31D6D6:  BEQ             loc_31D6F6
31D6D8:  CMP             R0, #7
31D6DA:  BNE             loc_31D71E
31D6DC:  LDR             R0, [R4]
31D6DE:  LDR.W           R1, [R0,#0x144]
31D6E2:  ORR.W           R1, R1, #8
31D6E6:  STR.W           R1, [R0,#0x144]
31D6EA:  LDR             R0, [R4]
31D6EC:  LDR             R1, [R0,#0x44]
31D6EE:  ORR.W           R1, R1, #0x20000000
31D6F2:  STR             R1, [R0,#0x44]
31D6F4:  B               loc_31D71E
31D6F6:  LDR             R0, [R4]
31D6F8:  LDR.W           R1, [R0,#0x144]
31D6FC:  ORR.W           R1, R1, #4
31D700:  STR.W           R1, [R0,#0x144]
31D704:  LDR             R0, [R5,#8]
31D706:  MOV             R1, #0x66666667
31D70E:  SMMUL.W         R0, R0, R1
31D712:  LDR             R1, [R4]
31D714:  LSRS            R2, R0, #1
31D716:  ADD.W           R0, R2, R0,LSR#31
31D71A:  STRH.W          R0, [R1,#0x142]
31D71E:  VPOP            {D8-D10}
31D722:  POP.W           {R11}
31D726:  POP             {R4-R7,PC}
