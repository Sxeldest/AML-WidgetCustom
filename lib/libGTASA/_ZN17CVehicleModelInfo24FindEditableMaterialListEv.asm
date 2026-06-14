; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo24FindEditableMaterialListEv
; Address            : 0x38782C - 0x387934
; =========================================================

38782C:  PUSH            {R4-R7,LR}
38782E:  ADD             R7, SP, #0xC
387830:  PUSH.W          {R8-R10}
387834:  SUB             SP, SP, #0x18
387836:  LDR             R1, =(_ZN17CVehicleModelInfo25GetEditableMaterialListCBEP8RpAtomicPv_ptr - 0x387846)
387838:  VMOV.I32        Q8, #0
38783C:  MOV             R4, R0
38783E:  MOV             R2, SP
387840:  ADDS            R0, R2, #4
387842:  ADD             R1, PC; _ZN17CVehicleModelInfo25GetEditableMaterialListCBEP8RpAtomicPv_ptr
387844:  MOV.W           R9, #0
387848:  VST1.32         {D16-D17}, [R0]
38784C:  STR.W           R9, [SP,#0x30+var_1C]
387850:  STR             R4, [SP,#0x30+var_30]
387852:  LDR             R0, [R4,#0x34]
387854:  LDR             R1, [R1]; CVehicleModelInfo::GetEditableMaterialListCB(RpAtomic *,void *)
387856:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
38785A:  LDR             R0, [R4,#0x74]
38785C:  LDRSB.W         R1, [R0,#0x324]
387860:  CMP             R1, #1
387862:  BLT             loc_3878AA
387864:  LDR             R1, =(_ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv_ptr - 0x38786E)
387866:  MOVS            R6, #0
387868:  MOV             R10, SP
38786A:  ADD             R1, PC; _ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv_ptr
38786C:  LDR             R5, [R1]; CVehicleModelInfo::GetEditableMaterialListCB(RpMaterial *,void *)
38786E:  LDR             R1, =(_ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv_ptr - 0x387874)
387870:  ADD             R1, PC; _ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv_ptr
387872:  LDR.W           R8, [R1]; CVehicleModelInfo::GetEditableMaterialListCB(RpMaterial *,void *)
387876:  ADD.W           R0, R0, R6,LSL#2
38787A:  MOV             R1, R5
38787C:  MOV             R2, R10
38787E:  LDR.W           R0, [R0,#0x2F4]
387882:  LDR             R0, [R0,#0x18]
387884:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
387888:  LDR             R0, [R4,#0x74]
38788A:  ADD.W           R1, R0, R6,LSL#2
38788E:  LDR.W           R1, [R1,#0x30C]
387892:  CBZ             R1, loc_3878A0
387894:  LDR             R0, [R1,#0x18]
387896:  MOV             R1, R8
387898:  MOV             R2, R10
38789A:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
38789E:  LDR             R0, [R4,#0x74]
3878A0:  LDRSB.W         R1, [R0,#0x324]
3878A4:  ADDS            R6, #1
3878A6:  CMP             R6, R1
3878A8:  BLT             loc_387876
3878AA:  LDR             R3, [SP,#0x30+var_2C]
3878AC:  LDR             R6, =(dword_93207C - 0x3878B6)
3878AE:  ADD.W           R0, R4, R3,LSL#2
3878B2:  ADD             R6, PC; dword_93207C
3878B4:  STR.W           R9, [R0,#0x78]
3878B8:  LDR             R2, [SP,#0x30+var_28]
3878BA:  ADD.W           R0, R4, R2,LSL#2
3878BE:  STR.W           R9, [R0,#0x13C]
3878C2:  LDR             R1, [SP,#0x30+var_24]
3878C4:  ADD.W           R0, R4, R1,LSL#2
3878C8:  STR.W           R9, [R0,#0x1C0]
3878CC:  LDR             R0, [SP,#0x30+var_20]
3878CE:  ADD.W           R5, R4, R0,LSL#2
3878D2:  STR.W           R9, [R5,#0x204]
3878D6:  LDR             R6, [R6]
3878D8:  CMP             R3, R6
3878DA:  BLE             loc_3878E2
3878DC:  LDR             R6, =(dword_93207C - 0x3878E2)
3878DE:  ADD             R6, PC; dword_93207C
3878E0:  STR             R3, [R6]
3878E2:  LDR             R3, =(dword_932080 - 0x3878E8)
3878E4:  ADD             R3, PC; dword_932080
3878E6:  LDR             R3, [R3]
3878E8:  CMP             R2, R3
3878EA:  BLE             loc_3878F2
3878EC:  LDR             R3, =(dword_932080 - 0x3878F2)
3878EE:  ADD             R3, PC; dword_932080
3878F0:  STR             R2, [R3]
3878F2:  LDR             R2, =(dword_932084 - 0x3878F8)
3878F4:  ADD             R2, PC; dword_932084
3878F6:  LDR             R2, [R2]
3878F8:  CMP             R1, R2
3878FA:  BLE             loc_387902
3878FC:  LDR             R2, =(dword_932084 - 0x387902)
3878FE:  ADD             R2, PC; dword_932084
387900:  STR             R1, [R2]
387902:  LDR             R1, =(dword_932088 - 0x387908)
387904:  ADD             R1, PC; dword_932088
387906:  LDR             R1, [R1]
387908:  CMP             R0, R1
38790A:  BLE             loc_387912
38790C:  LDR             R1, =(dword_932088 - 0x387912)
38790E:  ADD             R1, PC; dword_932088
387910:  STR             R0, [R1]
387912:  LDR             R1, =(dword_93208C - 0x38791A)
387914:  LDR             R0, [SP,#0x30+var_1C]
387916:  ADD             R1, PC; dword_93208C
387918:  LDR             R1, [R1]
38791A:  CMP             R0, R1
38791C:  BLE             loc_387924
38791E:  LDR             R1, =(dword_93208C - 0x387924)
387920:  ADD             R1, PC; dword_93208C
387922:  STR             R0, [R1]
387924:  MOV.W           R0, #0xFFFFFFFF
387928:  STR.W           R0, [R4,#0x36A]
38792C:  ADD             SP, SP, #0x18
38792E:  POP.W           {R8-R10}
387932:  POP             {R4-R7,PC}
