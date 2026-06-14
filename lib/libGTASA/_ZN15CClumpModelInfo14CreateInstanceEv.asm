; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo14CreateInstanceEv
; Address            : 0x385474 - 0x385512
; =========================================================

385474:  PUSH            {R4-R7,LR}
385476:  ADD             R7, SP, #0xC
385478:  PUSH.W          {R11}
38547C:  MOV             R4, R0
38547E:  LDR             R0, [R4,#0x34]
385480:  CMP             R0, #0
385482:  BEQ             loc_385508
385484:  MOV             R0, R4; this
385486:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
38548A:  LDR             R0, [R4,#0x34]
38548C:  BLX             j__Z12RpClumpCloneP7RpClump; RpClumpClone(RpClump *)
385490:  MOV             R5, R0
385492:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
385496:  CBZ             R0, loc_3854D0
385498:  LDR             R0, [R0,#0x18]
38549A:  BLX             j_RpSkinGeometryGetSkin
38549E:  CBZ             R0, loc_3854D0
3854A0:  LDRB.W          R0, [R4,#0x29]
3854A4:  LSLS            R0, R0, #0x1E
3854A6:  BMI             loc_3854D0
3854A8:  MOV             R0, R5
3854AA:  BLX             j__Z25GetAnimHierarchyFromClumpP7RpClump; GetAnimHierarchyFromClump(RpClump *)
3854AE:  LDR             R1, =(sub_3853FA+1 - 0x3854BA)
3854B0:  MOV             R6, R0
3854B2:  MOV             R0, R5
3854B4:  MOV             R2, R6
3854B6:  ADD             R1, PC; sub_3853FA
3854B8:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
3854BC:  MOV             R0, R6
3854BE:  BLX             j__Z38RpAnimBlendCreateAnimationForHierarchyP16RpHAnimHierarchy; RpAnimBlendCreateAnimationForHierarchy(RpHAnimHierarchy *)
3854C2:  MOV             R1, R0
3854C4:  LDR             R0, [R6,#0x20]
3854C6:  BLX             j__Z32RtAnimInterpolatorSetCurrentAnimP18RtAnimInterpolatorP15RtAnimAnimation; RtAnimInterpolatorSetCurrentAnim(RtAnimInterpolator *,RtAnimAnimation *)
3854CA:  MOV.W           R0, #0x3000
3854CE:  STR             R0, [R6]
3854D0:  LDRB.W          R0, [R4,#0x29]
3854D4:  LSLS            R0, R0, #0x1F
3854D6:  BEQ             loc_385500
3854D8:  MOV             R0, R5
3854DA:  BLX             j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
3854DE:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x3854E6)
3854E0:  LDR             R2, [R4,#0x38]
3854E2:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
3854E4:  LDR             R0, [R4,#4]
3854E6:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
3854E8:  ADD.W           R1, R1, R2,LSL#5
3854EC:  BLX             j__ZN12CAnimManager12GetAnimationEjPK10CAnimBlock; CAnimManager::GetAnimation(uint,CAnimBlock const*)
3854F0:  MOV             R1, R0
3854F2:  CBZ             R1, loc_385500
3854F4:  MOV             R0, R5
3854F6:  MOVS            R2, #2
3854F8:  MOV.W           R3, #0x3F800000
3854FC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClumpP19CAnimBlendHierarchyif; CAnimManager::BlendAnimation(RpClump *,CAnimBlendHierarchy *,int,float)
385500:  MOV             R0, R4; this
385502:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
385506:  B               loc_38550A
385508:  MOVS            R5, #0
38550A:  MOV             R0, R5
38550C:  POP.W           {R11}
385510:  POP             {R4-R7,PC}
