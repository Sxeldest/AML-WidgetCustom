; =========================================================
; Game Engine Function: _Z12PluginAttachv
; Address            : 0x3F5B58 - 0x3F5BCC
; =========================================================

3F5B58:  PUSH            {R7,LR}
3F5B5A:  MOV             R7, SP
3F5B5C:  BLX             j__Z19RpWorldPluginAttachv; RpWorldPluginAttach(void)
3F5B60:  CBZ             R0, loc_3F5BC8
3F5B62:  BLX             j_RpSkinPluginAttach
3F5B66:  CBZ             R0, loc_3F5BC8
3F5B68:  BLX             j__Z16RtAnimInitializev; RtAnimInitialize(void)
3F5B6C:  CBZ             R0, loc_3F5BC8
3F5B6E:  BLX             j__Z19RpHAnimPluginAttachv; RpHAnimPluginAttach(void)
3F5B72:  CBZ             R0, loc_3F5BC8
3F5B74:  BLX             j__Z20NodeNamePluginAttachv; NodeNamePluginAttach(void)
3F5B78:  CBZ             R0, loc_3F5BC8
3F5B7A:  BLX             j__ZN18CVisibilityPlugins12PluginAttachEv; CVisibilityPlugins::PluginAttach(void)
3F5B7E:  CBZ             R0, loc_3F5BC8
3F5B80:  BLX             j__Z23RpAnimBlendPluginAttachv; RpAnimBlendPluginAttach(void)
3F5B84:  CBZ             R0, loc_3F5BC8
3F5B86:  BLX             j__ZN9CTxdStore12PluginAttachEv; CTxdStore::PluginAttach(void)
3F5B8A:  CMP             R0, #1
3F5B8C:  BNE             loc_3F5BC8
3F5B8E:  BLX             j__Z19RpMatFXPluginAttachv; RpMatFXPluginAttach(void)
3F5B92:  CBZ             R0, loc_3F5BC8
3F5B94:  BLX             j__Z20RpUVAnimPluginAttachv; RpUVAnimPluginAttach(void)
3F5B98:  CBZ             R0, loc_3F5BC8
3F5B9A:  BLX             j__ZN23CCustomBuildingRenderer12PluginAttachEv; CCustomBuildingRenderer::PluginAttach(void)
3F5B9E:  CBZ             R0, loc_3F5BC8
3F5BA0:  BLX             j__ZN14CCarFXRenderer15RegisterPluginsEv; CCarFXRenderer::RegisterPlugins(void)
3F5BA4:  CBZ             R0, loc_3F5BC8
3F5BA6:  BLX             j__Z21BreakablePluginAttachv; BreakablePluginAttach(void)
3F5BAA:  CBZ             R0, loc_3F5BC8
3F5BAC:  BLX             j__ZN16CCollisionPlugin12PluginAttachEv; CCollisionPlugin::PluginAttach(void)
3F5BB0:  CMP             R0, #1
3F5BB2:  BNE             loc_3F5BC8
3F5BB4:  BLX             j__ZN9C2dEffect12PluginAttachEv; C2dEffect::PluginAttach(void)
3F5BB8:  CMP             R0, #1
3F5BBA:  BNE             loc_3F5BC8
3F5BBC:  BLX             j__Z20PipelinePluginAttachv; PipelinePluginAttach(void)
3F5BC0:  CMP             R0, #0
3F5BC2:  IT NE
3F5BC4:  MOVNE           R0, #1
3F5BC6:  POP             {R7,PC}
3F5BC8:  MOVS            R0, #0
3F5BCA:  POP             {R7,PC}
