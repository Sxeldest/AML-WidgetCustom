; =========================================================
; Game Engine Function: _ZN11CAutomobile10SetTowLinkEP8CVehicleb
; Address            : 0x55E708 - 0x55E8BE
; =========================================================

55E708:  PUSH            {R4-R7,LR}
55E70A:  ADD             R7, SP, #0xC
55E70C:  PUSH.W          {R8,R9,R11}
55E710:  SUB             SP, SP, #0x18
55E712:  MOV             R5, R1
55E714:  MOV             R9, R2
55E716:  MOV             R4, R0
55E718:  CBZ             R5, loc_55E720
55E71A:  LDR.W           R0, [R4,#0x4D0]
55E71E:  CBZ             R0, loc_55E72C
55E720:  MOVS            R6, #0
55E722:  MOV             R0, R6
55E724:  ADD             SP, SP, #0x18
55E726:  POP.W           {R8,R9,R11}
55E72A:  POP             {R4-R7,PC}
55E72C:  LDRB.W          R0, [R4,#0x3A]
55E730:  MOVS            R6, #0
55E732:  LSRS            R1, R0, #3
55E734:  CMP             R1, #0xA
55E736:  BHI             loc_55E722
55E738:  MOVS            R2, #1
55E73A:  LSL.W           R1, R2, R1
55E73E:  MOVW            R2, #0x41C
55E742:  TST             R1, R2
55E744:  BEQ             loc_55E722
55E746:  AND.W           R1, R0, #0xF8; CVehicle *
55E74A:  ADD.W           R8, R4, #0x4D0
55E74E:  CMP             R1, #0x10
55E750:  BNE             loc_55E75C
55E752:  MOV             R0, R4; this
55E754:  BLX             j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
55E758:  LDRB.W          R0, [R4,#0x3A]
55E75C:  MOVS            R1, #0xA
55E75E:  STR.W           R5, [R4,#0x4D0]
55E762:  BFI.W           R0, R1, #3, #0x1D
55E766:  STRB.W          R0, [R4,#0x3A]
55E76A:  MOV             R0, R5; this
55E76C:  MOV             R1, R8; CEntity **
55E76E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
55E772:  ADDW            R1, R5, #0x4D4; CEntity **
55E776:  MOV             R0, R4; this
55E778:  STR.W           R4, [R5,#0x4D4]
55E77C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
55E780:  MOV             R0, R4; this
55E782:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
55E786:  LDR.W           R0, [R4,#0x4D0]; this
55E78A:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
55E78E:  MOV             R0, R4; this
55E790:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
55E794:  LDR.W           R0, [R4,#0x4D0]; this
55E798:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
55E79C:  CMP.W           R9, #1
55E7A0:  BNE             loc_55E7EA
55E7A2:  MOVS            R0, #0
55E7A4:  MOVW            R1, #0x213
55E7A8:  STRD.W          R0, R0, [SP,#0x30+var_20]
55E7AC:  STRD.W          R0, R0, [SP,#0x30+var_30]
55E7B0:  STRD.W          R0, R0, [SP,#0x30+var_28]
55E7B4:  LDRSH.W         R0, [R5,#0x26]
55E7B8:  CMP             R0, R1
55E7BA:  ITT NE
55E7BC:  MOVWNE          R1, #0x20D
55E7C0:  CMPNE           R0, R1
55E7C2:  BNE             loc_55E7D4
55E7C4:  LDR             R0, =(TOWTRUCK_HOIST_UP_LIMIT_ptr - 0x55E7CE)
55E7C6:  LDR.W           R1, [R8]
55E7CA:  ADD             R0, PC; TOWTRUCK_HOIST_UP_LIMIT_ptr
55E7CC:  LDR             R0, [R0]; TOWTRUCK_HOIST_UP_LIMIT
55E7CE:  LDRH            R0, [R0]
55E7D0:  STRH.W          R0, [R1,#0x880]
55E7D4:  LDR             R0, [R5,#0x14]
55E7D6:  CBZ             R0, loc_55E7F8
55E7D8:  LDRD.W          R2, R1, [R0,#0x10]; x
55E7DC:  EOR.W           R0, R2, #0x80000000; y
55E7E0:  BLX             atan2f
55E7E4:  VMOV            S0, R0
55E7E8:  B               loc_55E7FC
55E7EA:  MOV             R0, R4; this
55E7EC:  MOVS            R1, #1; bool
55E7EE:  MOVS            R2, #0; bool
55E7F0:  MOVS            R6, #1
55E7F2:  BLX             j__ZN8CVehicle17UpdateTrailerLinkEbb; CVehicle::UpdateTrailerLink(bool,bool)
55E7F6:  B               loc_55E722
55E7F8:  VLDR            S0, [R5,#0x10]
55E7FC:  LDR             R0, [R4,#0x14]; this
55E7FE:  CBZ             R0, loc_55E80A
55E800:  VMOV            R1, S0; x
55E804:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
55E808:  B               loc_55E80E
55E80A:  VSTR            S0, [R4,#0x10]
55E80E:  LDR             R0, [R4]
55E810:  MOV             R1, SP
55E812:  MOVS            R2, #1
55E814:  MOV             R3, R4
55E816:  LDR.W           R6, [R0,#0xF0]
55E81A:  MOV             R0, R4
55E81C:  BLX             R6
55E81E:  CMP             R0, #1
55E820:  BNE.W           loc_55E720
55E824:  LDR             R0, [R5]
55E826:  ADD             R1, SP, #0x30+var_24
55E828:  MOVS            R2, #1
55E82A:  MOV             R3, R4
55E82C:  LDR.W           R6, [R0,#0xF4]
55E830:  MOV             R0, R5
55E832:  BLX             R6
55E834:  CMP             R0, #1
55E836:  BNE.W           loc_55E720
55E83A:  LDR             R1, [R4,#0x14]
55E83C:  VLDR            S0, [SP,#0x30+var_30]
55E840:  ADD.W           R0, R1, #0x30 ; '0'
55E844:  CMP             R1, #0
55E846:  VLDR            S2, [SP,#0x30+var_2C]
55E84A:  MOV             R2, R0
55E84C:  VLDR            S4, [SP,#0x30+var_28]
55E850:  IT EQ
55E852:  ADDEQ           R2, R4, #4
55E854:  CMP             R1, #0
55E856:  VLDR            S6, [R2]
55E85A:  VLDR            S8, [R2,#4]
55E85E:  VLDR            S10, [R2,#8]
55E862:  VSUB.F32        S0, S0, S6
55E866:  VSUB.F32        S2, S2, S8
55E86A:  VLDR            S8, [SP,#0x30+var_20]
55E86E:  VSUB.F32        S6, S4, S10
55E872:  VLDR            S4, [SP,#0x30+var_24]
55E876:  VLDR            S10, [SP,#0x30+var_1C]
55E87A:  VSTR            S0, [SP,#0x30+var_30]
55E87E:  VSUB.F32        S4, S4, S0
55E882:  VSTR            S2, [SP,#0x30+var_2C]
55E886:  VSUB.F32        S2, S8, S2
55E88A:  VSUB.F32        S0, S10, S6
55E88E:  VSTR            S6, [SP,#0x30+var_28]
55E892:  BEQ             loc_55E8A4
55E894:  VSTR            S4, [R0]
55E898:  LDR             R0, [R4,#0x14]
55E89A:  VSTR            S2, [R0,#0x34]
55E89E:  LDR             R0, [R4,#0x14]
55E8A0:  ADDS            R0, #0x38 ; '8'
55E8A2:  B               loc_55E8B0
55E8A4:  ADD.W           R0, R4, #0xC
55E8A8:  VSTR            S4, [R4,#4]
55E8AC:  VSTR            S2, [R4,#8]
55E8B0:  VSTR            S0, [R0]
55E8B4:  MOV             R0, R4; this
55E8B6:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
55E8BA:  MOVS            R6, #1
55E8BC:  B               loc_55E722
