; =========================================================
; Game Engine Function: _ZN15CClothesBuilder22ConstructGeometryArrayEPP10RpGeometryPjfff
; Address            : 0x4591B8 - 0x45935A
; =========================================================

4591B8:  PUSH            {R4-R7,LR}
4591BA:  ADD             R7, SP, #0xC
4591BC:  PUSH.W          {R8-R11}
4591C0:  SUB             SP, SP, #4
4591C2:  VPUSH           {D8-D10}
4591C6:  SUB             SP, SP, #0x38
4591C8:  STR             R0, [SP,#0x70+var_48]
4591CA:  VMOV            S18, R3
4591CE:  LDR             R0, =(gBoneIndices_ptr - 0x4591DE)
4591D0:  VMOV            S20, R2
4591D4:  VLDR            S16, [R7,#arg_0]
4591D8:  ADD             R5, SP, #0x70+var_40
4591DA:  ADD             R0, PC; gBoneIndices_ptr
4591DC:  MOV             R4, R1
4591DE:  MOV.W           R8, #0
4591E2:  LDR.W           R11, [R0]; gBoneIndices
4591E6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4591EC)
4591E8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4591EA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4591EC:  STR             R0, [SP,#0x70+var_4C]
4591EE:  LDR             R0, =(_ZN8CClothes17ms_clothesImageIdE_ptr - 0x4591F4)
4591F0:  ADD             R0, PC; _ZN8CClothes17ms_clothesImageIdE_ptr
4591F2:  LDR             R0, [R0]; CClothes::ms_clothesImageId ...
4591F4:  STR             R0, [SP,#0x70+var_50]
4591F6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4591FC)
4591F8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4591FA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4591FC:  STR             R0, [SP,#0x70+var_60]
4591FE:  LDR             R0, =(_ZN8CClothes17ms_clothesImageIdE_ptr - 0x459204)
459200:  ADD             R0, PC; _ZN8CClothes17ms_clothesImageIdE_ptr
459202:  LDR             R0, [R0]; CClothes::ms_clothesImageId ...
459204:  STR             R0, [SP,#0x70+var_64]
459206:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x45920C)
459208:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
45920A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
45920C:  STR             R0, [SP,#0x70+var_54]
45920E:  LDR             R0, =(_Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x459214)
459210:  ADD             R0, PC; _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr
459212:  LDR             R0, [R0]; FindAtomicFromNameCB(RpAtomic *,void *)
459214:  STR             R0, [SP,#0x70+var_58]
459216:  LDR             R0, =(gBoneIndices_ptr - 0x45921C)
459218:  ADD             R0, PC; gBoneIndices_ptr
45921A:  LDR             R0, [R0]; gBoneIndices
45921C:  STR             R0, [SP,#0x70+var_5C]
45921E:  LDR.W           R0, [R4,R8,LSL#2]; this
459222:  CMP             R0, #0
459224:  BEQ.W           loc_459334
459228:  LDR             R1, [SP,#0x70+var_4C]
45922A:  ADD.W           R9, R8, #0x180
45922E:  LDR.W           R1, [R1,R9,LSL#2]
459232:  LDRH            R2, [R1,#0x28]
459234:  ORR.W           R2, R2, #0x200; char *
459238:  STRH            R2, [R1,#0x28]
45923A:  LDR             R1, =(aDff - 0x459240); ".DFF"
45923C:  ADD             R1, PC; ".DFF"
45923E:  BLX             j__ZN7CKeyGen17AppendStringToKeyEjPKc; CKeyGen::AppendStringToKey(uint,char const*)
459242:  MOV             R1, R0; unsigned int
459244:  LDR             R0, =(unk_9A7560 - 0x45924E)
459246:  ADD             R3, SP, #0x70+var_44; unsigned int *
459248:  MOV             R2, R5; unsigned int *
45924A:  ADD             R0, PC; unk_9A7560 ; this
45924C:  BLX             j__ZN10CDirectory8FindItemEjRjS0_; CDirectory::FindItem(uint,uint &,uint &)
459250:  LDR             R0, [SP,#0x70+var_50]
459252:  LDR             R3, [R0]; int
459254:  MOVS            R0, #0x12
459256:  LDRD.W          R2, R1, [SP,#0x70+var_44]; int
45925A:  STR             R0, [SP,#0x70+var_70]; int
45925C:  MOV             R0, R9; this
45925E:  BLX             j__ZN10CStreaming11RequestFileEiiiii; CStreaming::RequestFile(int,int,int,int,int)
459262:  MOVS            R0, #(stderr+1); this
459264:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
459268:  CMP.W           R8, #8
45926C:  BGT             loc_4592B4
45926E:  ADD.W           R0, R4, R8,LSL#2
459272:  LDR             R0, [R0,#4]; this
459274:  CBZ             R0, loc_4592B4
459276:  LDR             R1, [SP,#0x70+var_60]
459278:  ADDW            R10, R8, #0x181
45927C:  LDR.W           R1, [R1,R10,LSL#2]
459280:  LDRH            R2, [R1,#0x28]
459282:  ORR.W           R2, R2, #0x200; char *
459286:  STRH            R2, [R1,#0x28]
459288:  LDR             R1, =(aDff - 0x45928E); ".DFF"
45928A:  ADD             R1, PC; ".DFF"
45928C:  BLX             j__ZN7CKeyGen17AppendStringToKeyEjPKc; CKeyGen::AppendStringToKey(uint,char const*)
459290:  MOV             R1, R0; unsigned int
459292:  LDR             R0, =(unk_9A7560 - 0x45929C)
459294:  ADD             R3, SP, #0x70+var_44; unsigned int *
459296:  MOV             R2, R5; unsigned int *
459298:  ADD             R0, PC; unk_9A7560 ; this
45929A:  BLX             j__ZN10CDirectory8FindItemEjRjS0_; CDirectory::FindItem(uint,uint &,uint &)
45929E:  LDR             R0, [SP,#0x70+var_64]
4592A0:  LDR             R3, [R0]; int
4592A2:  MOVS            R0, #0x12
4592A4:  LDRD.W          R2, R1, [SP,#0x70+var_44]; int
4592A8:  STR             R0, [SP,#0x70+var_70]; float
4592AA:  MOV             R0, R10; this
4592AC:  BLX             j__ZN10CStreaming11RequestFileEiiiii; CStreaming::RequestFile(int,int,int,int,int)
4592B0:  BLX             j__ZN10CStreaming19LoadRequestedModelsEv; CStreaming::LoadRequestedModels(void)
4592B4:  LDR             R0, [SP,#0x70+var_54]
4592B6:  MOV             R10, R5
4592B8:  LDR             R5, =(aNormal_1 - 0x4592C6); "normal"
4592BA:  ADR             R2, dword_459374; int
4592BC:  ADR             R3, aRipped; "ripped"
4592BE:  LDR.W           R6, [R0,R9,LSL#2]
4592C2:  ADD             R5, PC; "normal"
4592C4:  MOV             R1, R5; int
4592C6:  LDR             R0, [R6,#0x34]; int
4592C8:  VSTR            S20, [SP,#0x70+var_70]
4592CC:  VSTR            S18, [SP,#0x70+var_6C]
4592D0:  VSTR            S16, [SP,#0x70+var_68]
4592D4:  BLX             j__ZN15CClothesBuilder13BlendGeometryEP7RpClumpPKcS3_S3_fff; CClothesBuilder::BlendGeometry(RpClump *,char const*,char const*,char const*,float,float,float)
4592D8:  LDR             R1, [SP,#0x70+var_48]
4592DA:  MOV             R2, R10
4592DC:  STR.W           R0, [R1,R8,LSL#2]
4592E0:  LDR             R0, [R6,#0x34]
4592E2:  MOVS            R6, #0
4592E4:  LDR             R1, [SP,#0x70+var_58]
4592E6:  STR             R5, [SP,#0x70+var_40]
4592E8:  MOV             R5, R10
4592EA:  STR             R6, [SP,#0x70+var_3C]
4592EC:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
4592F0:  LDR             R0, [SP,#0x70+var_3C]
4592F2:  BLX             j_RpSkinAtomicGetHAnimHierarchy
4592F6:  LDR             R1, [R0,#4]
4592F8:  CMP             R1, #1
4592FA:  BLT             loc_45931E
4592FC:  MOV.W           R1, #0xFFFFFFFF
459300:  MOVS            R2, #0
459302:  LDR             R3, [R0,#0x10]
459304:  LDR.W           R3, [R3,R2,LSL#3]
459308:  STRH.W          R3, [R11,R2]
45930C:  ADDS            R3, R1, #2
45930E:  ADDS            R2, #2
459310:  LDR             R6, [R0,#4]
459312:  ADDS            R1, #1
459314:  CMP             R3, R6
459316:  BLT             loc_459302
459318:  CMP             R1, #0x3E ; '>'
45931A:  BGT             loc_45932C
45931C:  ADDS            R6, R1, #1
45931E:  LDR             R0, [SP,#0x70+var_5C]
459320:  MOVW            R1, #0xFFFF; int
459324:  ADD.W           R0, R0, R8,LSL#7
459328:  STRH.W          R1, [R0,R6,LSL#1]
45932C:  MOV             R0, R9; this
45932E:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
459332:  B               loc_45933C
459334:  LDR             R1, [SP,#0x70+var_48]
459336:  MOVS            R0, #0
459338:  STR.W           R0, [R1,R8,LSL#2]
45933C:  ADD.W           R8, R8, #1
459340:  ADD.W           R11, R11, #0x80
459344:  CMP.W           R8, #0xA
459348:  BNE.W           loc_45921E
45934C:  ADD             SP, SP, #0x38 ; '8'
45934E:  VPOP            {D8-D10}
459352:  ADD             SP, SP, #4
459354:  POP.W           {R8-R11}
459358:  POP             {R4-R7,PC}
