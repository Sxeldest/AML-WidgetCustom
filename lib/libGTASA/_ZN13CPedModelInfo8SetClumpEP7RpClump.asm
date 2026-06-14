; =========================================================
; Game Engine Function: _ZN13CPedModelInfo8SetClumpEP7RpClump
; Address            : 0x386674 - 0x3866B4
; =========================================================

386674:  PUSH            {R4,R5,R7,LR}
386676:  ADD             R7, SP, #8
386678:  MOV             R4, R1
38667A:  MOV             R5, R0
38667C:  BLX             j__ZN15CClumpModelInfo8SetClumpEP7RpClump; CClumpModelInfo::SetClump(RpClump *)
386680:  LDR             R0, =(_ZN13CPedModelInfo9m_pPedIdsE_ptr - 0x386686)
386682:  ADD             R0, PC; _ZN13CPedModelInfo9m_pPedIdsE_ptr
386684:  LDR             R1, [R0]; CPedModelInfo::m_pPedIds ...
386686:  MOV             R0, R5
386688:  BLX             j__ZN15CClumpModelInfo11SetFrameIdsEP24RwObjectNameIdAssocation; CClumpModelInfo::SetFrameIds(RwObjectNameIdAssocation *)
38668C:  LDR             R0, [R5,#0x4C]
38668E:  CBNZ            R0, loc_386698
386690:  MOV             R0, R5
386692:  MOV             R1, R4
386694:  BLX             j__ZN13CPedModelInfo24CreateHitColModelSkinnedEP7RpClump; CPedModelInfo::CreateHitColModelSkinned(RpClump *)
386698:  LDR             R1, =(_ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr - 0x3866A0)
38669A:  LDR             R2, =(_ZN18CVisibilityPlugins11RenderPedCBEP8RpAtomic_ptr - 0x3866A4)
38669C:  ADD             R1, PC; _ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr
38669E:  LDR             R0, [R5,#0x34]
3866A0:  ADD             R2, PC; _ZN18CVisibilityPlugins11RenderPedCBEP8RpAtomic_ptr
3866A2:  LDR             R1, [R1]; CClumpModelInfo::SetAtomicRendererCB(RpAtomic *,void *)
3866A4:  LDR             R2, [R2]; CVisibilityPlugins::RenderPedCB(RpAtomic *)
3866A6:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
3866AA:  MOV             R0, R4
3866AC:  POP.W           {R4,R5,R7,LR}
3866B0:  B.W             j_j__Z25GetAnimHierarchyFromClumpP7RpClump; j_GetAnimHierarchyFromClump(RpClump *)
