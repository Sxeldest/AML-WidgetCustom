; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins27RenderReallyDrawLastObjectsEv
; Address            : 0x5D6E74 - 0x5D6EEC
; =========================================================

5D6E74:  PUSH            {R4,R5,R7,LR}
5D6E76:  ADD             R7, SP, #8
5D6E78:  MOVS            R0, #1
5D6E7A:  MOVS            R1, #0
5D6E7C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6E80:  MOVS            R0, #6
5D6E82:  MOVS            R1, #1
5D6E84:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6E88:  MOVS            R0, #8
5D6E8A:  MOVS            R1, #1
5D6E8C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6E90:  MOVS            R0, #0xC
5D6E92:  MOVS            R1, #1
5D6E94:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6E98:  MOVS            R0, #0xA
5D6E9A:  MOVS            R1, #5
5D6E9C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6EA0:  MOVS            R0, #0xB
5D6EA2:  MOVS            R1, #6
5D6EA4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6EA8:  MOVS            R0, #0xE
5D6EAA:  MOVS            R1, #1
5D6EAC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6EB0:  MOVS            R0, #0x14
5D6EB2:  MOVS            R1, #1
5D6EB4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D6EB8:  BLX.W           j__Z17SetAmbientColoursv; SetAmbientColours(void)
5D6EBC:  BLX.W           j__Z21DeActivateDirectionalv; DeActivateDirectional(void)
5D6EC0:  LDR             R0, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D6EC6)
5D6EC2:  ADD             R0, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D6EC4:  LDR             R0, [R0]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D6EC6:  LDR             R4, [R0,#(dword_A840E4 - 0xA840C4)]
5D6EC8:  CMP             R4, R0
5D6ECA:  BEQ             loc_5D6EE0
5D6ECC:  LDR             R0, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D6ED2)
5D6ECE:  ADD             R0, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D6ED0:  LDR             R5, [R0]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D6ED2:  LDRD.W          R0, R2, [R4]
5D6ED6:  LDR             R1, [R4,#8]
5D6ED8:  BLX             R2
5D6EDA:  LDR             R4, [R4,#0xC]
5D6EDC:  CMP             R4, R5
5D6EDE:  BNE             loc_5D6ED2
5D6EE0:  MOVS            R0, #0xE
5D6EE2:  MOVS            R1, #0
5D6EE4:  POP.W           {R4,R5,R7,LR}
5D6EE8:  B.W             sub_192888
