; =========================================================
; Game Engine Function: _Z20RpAnimBlendClumpInitP7RpClump
; Address            : 0x390798 - 0x3908B4
; =========================================================

390798:  PUSH            {R4-R7,LR}
39079A:  ADD             R7, SP, #0xC
39079C:  PUSH.W          {R8-R11}
3907A0:  SUB.W           SP, SP, #0x304
3907A4:  MOV             R5, R0
3907A6:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
3907AA:  CMP             R0, #0
3907AC:  BEQ             loc_39085A
3907AE:  LDR             R0, [R0,#0x18]
3907B0:  BLX             j_RpSkinGeometryGetSkin
3907B4:  CMP             R0, #0
3907B6:  BEQ             loc_39085A
3907B8:  MOV             R0, R5
3907BA:  BLX             j__Z23RpAnimBlendAllocateDataP7RpClump; RpAnimBlendAllocateData(RpClump *)
3907BE:  LDR             R0, =(ClumpOffset_ptr - 0x3907C4)
3907C0:  ADD             R0, PC; ClumpOffset_ptr
3907C2:  LDR             R0, [R0]; ClumpOffset
3907C4:  LDR             R0, [R0]
3907C6:  LDR.W           R8, [R5,R0]
3907CA:  MOV             R0, R5
3907CC:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
3907D0:  LDR             R0, [R0,#0x18]
3907D2:  BLX             j_RpSkinGeometryGetSkin
3907D6:  BLX             j_RpSkinGetNumBones
3907DA:  MOV             R10, R0
3907DC:  MOV             R0, R8; this
3907DE:  MOV             R1, R10; int
3907E0:  BLX             j__ZN19CAnimBlendClumpData16SetNumberOfBonesEi; CAnimBlendClumpData::SetNumberOfBones(int)
3907E4:  MOV             R0, R5
3907E6:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
3907EA:  MOV             R9, SP
3907EC:  MOV             R11, R0
3907EE:  MOV             R0, R9
3907F0:  MOV.W           R1, #0x300
3907F4:  BLX             j___aeabi_memclr8
3907F8:  MOV             R0, R5
3907FA:  MOV             R1, R9
3907FC:  BLX             j__Z27SkinGetBonePositionsToTableP7RpClumpP5RwV3d; SkinGetBonePositionsToTable(RpClump *,RwV3d *)
390800:  CMP.W           R10, #1
390804:  BLT             loc_390848
390806:  LDR.W           R0, [R8,#0x10]
39080A:  MOV             R1, SP
39080C:  MOVS            R2, #0
39080E:  MOVS            R3, #0
390810:  ADDS            R0, #0x10
390812:  LDR.W           R6, [R11,#0x20]
390816:  LDR.W           R5, [R11,#0x10]
39081A:  LDR             R4, [R6,#0x24]
39081C:  LDR             R5, [R5,R2]
39081E:  ADDS            R2, #0x10
390820:  STR             R5, [R0,#4]
390822:  MLA.W           R6, R4, R3, R6
390826:  ADDS            R3, #1
390828:  CMP             R10, R3
39082A:  ADD.W           R6, R6, #0x4C ; 'L'
39082E:  STR             R6, [R0]
390830:  VLDR            D16, [R1]
390834:  LDR             R6, [R1,#8]
390836:  ADD.W           R1, R1, #0xC
39083A:  STR.W           R6, [R0,#-4]
39083E:  VSTR            D16, [R0,#-0xC]
390842:  ADD.W           R0, R0, #0x18
390846:  BNE             loc_390812
390848:  LDR             R1, =(sub_390D24+1 - 0x390852)
39084A:  MOV             R0, R8
39084C:  MOVS            R2, #0
39084E:  ADD             R1, PC; sub_390D24
390850:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
390854:  LDR.W           R0, [R8,#0x10]
390858:  B               loc_3908A2
39085A:  MOVS            R0, #0
39085C:  STR             R0, [SP,#0x320+var_320]
39085E:  MOV             R0, R5
390860:  BLX             j__Z23RpAnimBlendAllocateDataP7RpClump; RpAnimBlendAllocateData(RpClump *)
390864:  LDR             R0, =(ClumpOffset_ptr - 0x39086E)
390866:  MOV             R2, SP
390868:  LDR             R1, =(sub_390D2C+1 - 0x390872)
39086A:  ADD             R0, PC; ClumpOffset_ptr
39086C:  LDR             R4, [R5,#4]
39086E:  ADD             R1, PC; sub_390D2C
390870:  LDR             R0, [R0]; ClumpOffset
390872:  LDR             R0, [R0]
390874:  LDR             R5, [R5,R0]
390876:  MOV             R0, R4
390878:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
39087C:  LDR             R1, [SP,#0x320+var_320]; int
39087E:  MOV             R0, R5; this
390880:  BLX             j__ZN19CAnimBlendClumpData16SetNumberOfBonesEi; CAnimBlendClumpData::SetNumberOfBones(int)
390884:  LDR             R1, =(sub_390D4C+1 - 0x39088E)
390886:  ADD             R2, SP, #0x320+var_20
390888:  LDR             R0, [R5,#0x10]
39088A:  ADD             R1, PC; sub_390D4C
39088C:  STR             R0, [SP,#0x320+var_20]
39088E:  MOV             R0, R4
390890:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
390894:  LDR             R1, =(loc_390D70+1 - 0x39089E)
390896:  MOV             R0, R5
390898:  MOVS            R2, #0
39089A:  ADD             R1, PC; loc_390D70
39089C:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
3908A0:  LDR             R0, [R5,#0x10]
3908A2:  LDRB            R1, [R0]
3908A4:  ORR.W           R1, R1, #8
3908A8:  STRB            R1, [R0]
3908AA:  ADD.W           SP, SP, #0x304
3908AE:  POP.W           {R8-R11}
3908B2:  POP             {R4-R7,PC}
