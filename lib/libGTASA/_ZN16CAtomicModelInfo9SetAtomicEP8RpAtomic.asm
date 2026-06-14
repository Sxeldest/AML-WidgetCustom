; =========================================================
; Game Engine Function: _ZN16CAtomicModelInfo9SetAtomicEP8RpAtomic
; Address            : 0x3848BC - 0x384964
; =========================================================

3848BC:  PUSH            {R4,R5,R7,LR}
3848BE:  ADD             R7, SP, #8
3848C0:  MOV             R4, R0
3848C2:  MOV             R5, R1
3848C4:  LDR             R0, [R4,#0x34]
3848C6:  CBZ             R0, loc_3848E8
3848C8:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x3848D0)
3848CA:  LDR             R2, [R0,#0x18]
3848CC:  ADD             R1, PC; g2dEffectPluginOffset_ptr
3848CE:  LDR             R1, [R1]; g2dEffectPluginOffset
3848D0:  LDR             R0, [R1]
3848D2:  LDR             R1, [R2,R0]
3848D4:  CMP             R1, #0
3848D6:  ITE NE
3848D8:  LDRNE           R1, [R1]
3848DA:  MOVEQ           R1, #0
3848DC:  LDRB.W          R2, [R4,#0x23]
3848E0:  SUBS            R1, R2, R1
3848E2:  STRB.W          R1, [R4,#0x23]
3848E6:  B               loc_3848F0
3848E8:  LDR             R0, =(g2dEffectPluginOffset_ptr - 0x3848EE)
3848EA:  ADD             R0, PC; g2dEffectPluginOffset_ptr
3848EC:  LDR             R0, [R0]; g2dEffectPluginOffset
3848EE:  LDR             R0, [R0]
3848F0:  STR             R5, [R4,#0x34]
3848F2:  LDR             R1, [R5,#0x18]
3848F4:  LDR             R0, [R1,R0]
3848F6:  CMP             R0, #0
3848F8:  ITE NE
3848FA:  LDRNE           R0, [R0]
3848FC:  MOVEQ           R0, #0
3848FE:  LDRB.W          R1, [R4,#0x23]
384902:  ADD             R0, R1
384904:  STRB.W          R0, [R4,#0x23]
384908:  MOV             R0, R4; this
38490A:  BLX             j__ZN14CBaseModelInfo19AddTexDictionaryRefEv; CBaseModelInfo::AddTexDictionaryRef(void)
38490E:  LDR             R0, [R4]
384910:  LDR             R1, [R0,#0x3C]
384912:  MOV             R0, R4
384914:  BLX             R1
384916:  ADDS            R0, #1
384918:  BEQ             loc_384926
38491A:  LDR             R0, [R4]
38491C:  LDR             R1, [R0,#0x3C]
38491E:  MOV             R0, R4
384920:  BLX             R1
384922:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
384926:  MOV             R0, R5
384928:  BLX             j__ZN23CCustomBuildingRenderer22IsCBPCPipelineAttachedEP8RpAtomic; CCustomBuildingRenderer::IsCBPCPipelineAttached(RpAtomic *)
38492C:  CBZ             R0, loc_384936
38492E:  MOV             R0, R5
384930:  BLX             j__ZN23CCustomBuildingRenderer11AtomicSetupEP8RpAtomic; CCustomBuildingRenderer::AtomicSetup(RpAtomic *)
384934:  B               loc_384948
384936:  MOV             R0, R5
384938:  BLX             j__ZN14CCarFXRenderer22IsCCPCPipelineAttachedEP8RpAtomic; CCarFXRenderer::IsCCPCPipelineAttached(RpAtomic *)
38493C:  CMP             R0, #0
38493E:  ITTT NE
384940:  MOVNE           R0, R5
384942:  MOVNE           R1, #0
384944:  BLXNE           j__ZN14CCarFXRenderer37SetCustomFXAtomicRenderPipelinesVMICBEP8RpAtomicPv; CCarFXRenderer::SetCustomFXAtomicRenderPipelinesVMICB(RpAtomic *,void *)
384948:  LDRH            R0, [R4,#0x28]
38494A:  AND.W           R1, R0, #0xF800
38494E:  CMP.W           R1, #0x3000
384952:  BNE             loc_38495C
384954:  MOV             R0, R5
384956:  BLX             j__ZN11CTagManager11SetupAtomicEP8RpAtomic; CTagManager::SetupAtomic(RpAtomic *)
38495A:  LDRH            R0, [R4,#0x28]
38495C:  ORR.W           R0, R0, #1
384960:  STRH            R0, [R4,#0x28]
384962:  POP             {R4,R5,R7,PC}
