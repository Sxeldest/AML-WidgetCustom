; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeKickedOnGround9StartAnimEP4CPed
; Address            : 0x4DF1CC - 0x4DF274
; =========================================================

4DF1CC:  PUSH            {R4-R7,LR}
4DF1CE:  ADD             R7, SP, #0xC
4DF1D0:  PUSH.W          {R11}
4DF1D4:  SUB             SP, SP, #0x10
4DF1D6:  MOV             R5, R1
4DF1D8:  MOV             R4, R0
4DF1DA:  BLX             j__ZN13CLocalisation15KickingWhenDownEv; CLocalisation::KickingWhenDown(void)
4DF1DE:  CMP             R0, #0
4DF1E0:  BEQ             loc_4DF268
4DF1E2:  LDR             R0, [R5,#0x18]
4DF1E4:  MOV.W           R1, #0x800
4DF1E8:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
4DF1EC:  LDR             R1, [R5,#0x18]
4DF1EE:  CMP             R0, #0
4DF1F0:  MOV.W           R2, #0x27 ; '''
4DF1F4:  MOV.W           R3, #0x41000000
4DF1F8:  IT EQ
4DF1FA:  MOVEQ           R2, #0x24 ; '$'; unsigned int
4DF1FC:  MOVS            R6, #0
4DF1FE:  MOV             R0, R1; int
4DF200:  MOVS            R1, #0; int
4DF202:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DF206:  MOVS            R1, #0; float
4DF208:  STR             R0, [R4,#0xC]
4DF20A:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DF20E:  LDR             R0, [R4,#0xC]
4DF210:  LDRH            R1, [R0,#0x2E]
4DF212:  ORR.W           R1, R1, #1
4DF216:  STRH            R1, [R0,#0x2E]
4DF218:  LDR             R0, [R4,#0xC]; this
4DF21A:  LDRH            R1, [R0,#0x2E]
4DF21C:  BIC.W           R1, R1, #8
4DF220:  STRH            R1, [R0,#0x2E]
4DF222:  BLX             j__ZN13CLocalisation15KickingWhenDownEv; CLocalisation::KickingWhenDown(void)
4DF226:  CBZ             R0, loc_4DF258
4DF228:  STRD.W          R6, R6, [SP,#0x20+var_1C]
4DF22C:  STR             R6, [SP,#0x20+var_14]
4DF22E:  LDR             R0, [R5,#0x18]
4DF230:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4DF234:  MOV             R6, R0
4DF236:  LDR.W           R0, [R5,#0x49C]
4DF23A:  LDR             R1, [R0,#0x14]
4DF23C:  MOV             R0, R6
4DF23E:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4DF242:  MOV             R5, R0
4DF244:  MOV             R0, R6
4DF246:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4DF24A:  ADD.W           R3, R0, R5,LSL#6
4DF24E:  ADD             R0, SP, #0x20+var_1C
4DF250:  MOVS            R2, #1
4DF252:  MOV             R1, R0
4DF254:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
4DF258:  LDR             R1, =(_ZN27CTaskSimpleBeKickedOnGround28FinishAnimBeKickedOnGroundCBEP21CAnimBlendAssociationPv_ptr - 0x4DF262)
4DF25A:  MOV             R2, R4; void *
4DF25C:  LDR             R0, [R4,#0xC]; this
4DF25E:  ADD             R1, PC; _ZN27CTaskSimpleBeKickedOnGround28FinishAnimBeKickedOnGroundCBEP21CAnimBlendAssociationPv_ptr
4DF260:  LDR             R1, [R1]; CTaskSimpleBeKickedOnGround::FinishAnimBeKickedOnGroundCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF262:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF266:  B               loc_4DF26C
4DF268:  MOVS            R0, #1
4DF26A:  STRB            R0, [R4,#8]
4DF26C:  ADD             SP, SP, #0x10
4DF26E:  POP.W           {R11}
4DF272:  POP             {R4-R7,PC}
