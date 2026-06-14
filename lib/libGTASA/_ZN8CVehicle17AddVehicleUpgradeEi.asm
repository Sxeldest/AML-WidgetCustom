; =========================================================
; Game Engine Function: _ZN8CVehicle17AddVehicleUpgradeEi
; Address            : 0x58C5FC - 0x58C7CA
; =========================================================

58C5FC:  PUSH            {R4-R7,LR}
58C5FE:  ADD             R7, SP, #0xC
58C600:  PUSH.W          {R8-R10}
58C604:  SUB             SP, SP, #0x10
58C606:  MOV             R10, R0
58C608:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58C612)
58C60A:  MOV             R4, R1
58C60C:  ADD             R3, SP, #0x28+var_24; int *
58C60E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58C610:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58C612:  LDR.W           R6, [R0,R4,LSL#2]
58C616:  MOV.W           R0, #0xFFFFFFFF
58C61A:  STR             R0, [SP,#0x28+var_24]
58C61C:  LDRH            R0, [R6,#0x28]
58C61E:  UBFX.W          R2, R0, #0xA, #5; int
58C622:  MOV             R0, R10; this
58C624:  BLX             j__ZN8CVehicle22SetVehicleUpgradeFlagsEiiRi; CVehicle::SetVehicleUpgradeFlags(int,int,int &)
58C628:  MOVW            R5, #0xFFFF
58C62C:  CMP             R0, #1
58C62E:  BNE             loc_58C634
58C630:  LDR             R6, [SP,#0x28+var_24]
58C632:  B               loc_58C798
58C634:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x58C63C)
58C636:  SXTH            R1, R4; __int16
58C638:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr
58C63A:  LDR             R0, [R0]; this
58C63C:  BLX             j__ZNK17CVehicleModelInfo18CLinkedUpgradeList16FindOtherUpgradeEs; CVehicleModelInfo::CLinkedUpgradeList::FindOtherUpgrade(short)
58C640:  MOV             R8, R0
58C642:  LDRH            R0, [R6,#0x28]
58C644:  TST.W           R0, #0x100
58C648:  UBFX.W          R9, R0, #0xA, #5
58C64C:  BNE             loc_58C670
58C64E:  LDR             R1, =(_Z13FindUpgradeCBP8RpAtomicPv_ptr - 0x58C65C)
58C650:  MOVS            R0, #0
58C652:  STRD.W          R9, R0, [SP,#0x28+var_20]
58C656:  ADD             R2, SP, #0x28+var_20
58C658:  ADD             R1, PC; _Z13FindUpgradeCBP8RpAtomicPv_ptr
58C65A:  LDR.W           R0, [R10,#0x18]
58C65E:  LDR             R1, [R1]; FindUpgradeCB(RpAtomic *,void *)
58C660:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
58C664:  LDR             R0, [SP,#0x28+var_1C]
58C666:  CBZ             R0, loc_58C698
58C668:  BLX.W           j__ZN18CVisibilityPlugins17GetModelInfoIndexEP8RpAtomic; CVisibilityPlugins::GetModelInfoIndex(RpAtomic *)
58C66C:  MOV             R6, R0
58C66E:  B               loc_58C75C
58C670:  LDR.W           R0, [R10,#0x18]
58C674:  MOV             R1, R9
58C676:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58C67A:  LDR             R1, =(_Z24FindReplacementUpgradeCBP8RwObjectPv_ptr - 0x58C688)
58C67C:  MOVS            R2, #0
58C67E:  STRD.W          R9, R2, [SP,#0x28+var_20]
58C682:  ADD             R2, SP, #0x28+var_20
58C684:  ADD             R1, PC; _Z24FindReplacementUpgradeCBP8RwObjectPv_ptr
58C686:  LDR             R1, [R1]; FindReplacementUpgradeCB(RwObject *,void *)
58C688:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58C68C:  LDR             R0, [SP,#0x28+var_1C]
58C68E:  CBZ             R0, loc_58C6B6
58C690:  BLX.W           j__ZN18CVisibilityPlugins17GetModelInfoIndexEP8RpAtomic; CVisibilityPlugins::GetModelInfoIndex(RpAtomic *)
58C694:  MOV             R6, R0
58C696:  B               loc_58C6BA
58C698:  AND.W           R0, R9, #0x1F
58C69C:  CMP             R0, #0xF
58C69E:  BEQ             loc_58C71E
58C6A0:  CMP             R0, #0x11
58C6A2:  BEQ             loc_58C72C
58C6A4:  CMP             R0, #0x10
58C6A6:  BNE             loc_58C734
58C6A8:  LDRB.W          R0, [R10,#0x392]
58C6AC:  LSLS            R0, R0, #0x1E
58C6AE:  BPL             loc_58C734
58C6B0:  LDR             R0, =(MI_HYDRAULICS_ptr - 0x58C6B6)
58C6B2:  ADD             R0, PC; MI_HYDRAULICS_ptr
58C6B4:  B               loc_58C758
58C6B6:  MOV.W           R6, #0xFFFFFFFF
58C6BA:  MOV             R0, R10; this
58C6BC:  MOV             R1, R4; int
58C6BE:  MOV             R2, R9; int
58C6C0:  STR             R6, [SP,#0x28+var_24]
58C6C2:  BLX             j__ZN8CVehicle21AddReplacementUpgradeEii; CVehicle::AddReplacementUpgrade(int,int)
58C6C6:  CMP.W           R9, #2
58C6CA:  BNE             loc_58C768
58C6CC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58C6D8)
58C6CE:  MOVS            R2, #5; int
58C6D0:  LDRSH.W         R1, [R10,#0x26]
58C6D4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58C6D6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58C6D8:  LDR.W           R0, [R0,R1,LSL#2]
58C6DC:  MOV             R1, R4; int
58C6DE:  LDR             R0, [R0,#0x58]
58C6E0:  STR.W           R0, [R10,#0x45C]
58C6E4:  MOV             R0, R10; this
58C6E6:  BLX             j__ZN8CVehicle21AddReplacementUpgradeEii; CVehicle::AddReplacementUpgrade(int,int)
58C6EA:  MOV             R0, R10; this
58C6EC:  MOV             R1, R4; int
58C6EE:  MOVS            R2, #4; int
58C6F0:  BLX             j__ZN8CVehicle21AddReplacementUpgradeEii; CVehicle::AddReplacementUpgrade(int,int)
58C6F4:  MOV             R0, R10; this
58C6F6:  MOV             R1, R4; int
58C6F8:  MOVS            R2, #7; int
58C6FA:  BLX             j__ZN8CVehicle21AddReplacementUpgradeEii; CVehicle::AddReplacementUpgrade(int,int)
58C6FE:  LDR.W           R0, [R10,#0x5A4]
58C702:  CBNZ            R0, loc_58C768
58C704:  LDR             R0, =(MI_OFFROAD_WHEEL_ptr - 0x58C70A)
58C706:  ADD             R0, PC; MI_OFFROAD_WHEEL_ptr
58C708:  LDR             R0, [R0]; MI_OFFROAD_WHEEL
58C70A:  LDRH            R0, [R0]
58C70C:  CMP             R0, R4
58C70E:  BNE             loc_58C73A
58C710:  LDR.W           R0, [R10,#0x390]
58C714:  ORR.W           R0, R0, #0x100000
58C718:  STR.W           R0, [R10,#0x390]
58C71C:  B               loc_58C768
58C71E:  LDRB.W          R0, [R10,#0x392]
58C722:  LSLS            R0, R0, #0x1C
58C724:  BPL             loc_58C734
58C726:  LDR             R0, =(MI_NITRO_BOTTLE_SMALL_ptr - 0x58C72C)
58C728:  ADD             R0, PC; MI_NITRO_BOTTLE_SMALL_ptr
58C72A:  B               loc_58C758
58C72C:  LDRB.W          R0, [R10,#0x432]
58C730:  LSLS            R0, R0, #0x1B
58C732:  BMI             loc_58C754
58C734:  MOV.W           R6, #0xFFFFFFFF
58C738:  B               loc_58C75C
58C73A:  LDR.W           R0, [R10,#0x388]
58C73E:  LDRB.W          R0, [R0,#0xD2]
58C742:  LSLS            R0, R0, #0x1B
58C744:  ITTT PL
58C746:  LDRPL.W         R0, [R10,#0x390]
58C74A:  BICPL.W         R0, R0, #0x100000
58C74E:  STRPL.W         R0, [R10,#0x390]
58C752:  B               loc_58C768
58C754:  LDR             R0, =(MI_STEREO_UPGRADE_ptr - 0x58C75A)
58C756:  ADD             R0, PC; MI_STEREO_UPGRADE_ptr
58C758:  LDR             R0, [R0]
58C75A:  LDRH            R6, [R0]
58C75C:  MOV             R0, R10; this
58C75E:  MOV             R1, R4; int
58C760:  MOV             R2, R9; int
58C762:  STR             R6, [SP,#0x28+var_24]
58C764:  BLX             j__ZN8CVehicle10AddUpgradeEii; CVehicle::AddUpgrade(int,int)
58C768:  UXTH.W          R0, R8
58C76C:  CMP             R0, R5
58C76E:  BEQ             loc_58C798
58C770:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58C776)
58C772:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58C774:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58C776:  LDR.W           R0, [R0,R8,LSL#2]
58C77A:  LDRH            R0, [R0,#0x28]
58C77C:  TST.W           R0, #0x100
58C780:  UBFX.W          R2, R0, #0xA, #5; int
58C784:  BNE             loc_58C790
58C786:  MOV             R0, R10; this
58C788:  MOV             R1, R8; int
58C78A:  BLX             j__ZN8CVehicle10AddUpgradeEii; CVehicle::AddUpgrade(int,int)
58C78E:  B               loc_58C798
58C790:  MOV             R0, R10; this
58C792:  MOV             R1, R8; int
58C794:  BLX             j__ZN8CVehicle21AddReplacementUpgradeEii; CVehicle::AddReplacementUpgrade(int,int)
58C798:  ADDW            R0, R10, #0x43E
58C79C:  MOVS            R1, #0
58C79E:  LDRSH.W         R2, [R0,R1,LSL#1]
58C7A2:  CMP             R6, R2
58C7A4:  BNE             loc_58C7AC
58C7A6:  STRH.W          R5, [R0,R1,LSL#1]
58C7AA:  B               loc_58C7B2
58C7AC:  UXTH            R2, R2
58C7AE:  CMP             R2, R5
58C7B0:  BNE             loc_58C7BA
58C7B2:  STRH.W          R4, [R0,R1,LSL#1]
58C7B6:  MOV.W           R4, #0xFFFFFFFF
58C7BA:  ADDS            R1, #1
58C7BC:  CMP             R1, #0xF
58C7BE:  BNE             loc_58C79E
58C7C0:  MOV             R0, R6
58C7C2:  ADD             SP, SP, #0x10
58C7C4:  POP.W           {R8-R10}
58C7C8:  POP             {R4-R7,PC}
