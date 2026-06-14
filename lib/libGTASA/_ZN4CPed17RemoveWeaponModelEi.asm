; =========================================================
; Game Engine Function: _ZN4CPed17RemoveWeaponModelEi
; Address            : 0x4A4D84 - 0x4A4E30
; =========================================================

4A4D84:  PUSH            {R4-R7,LR}
4A4D86:  ADD             R7, SP, #0xC
4A4D88:  PUSH.W          {R11}
4A4D8C:  MOV             R4, R0
4A4D8E:  MOV             R5, R1
4A4D90:  LDR.W           R0, [R4,#0x59C]
4A4D94:  CMP             R0, #1
4A4D96:  BHI             loc_4A4DBC
4A4D98:  LDRSB.W         R0, [R4,#0x71C]
4A4D9C:  RSB.W           R0, R0, R0,LSL#3
4A4DA0:  ADD.W           R0, R4, R0,LSL#2
4A4DA4:  LDR.W           R1, [R0,#0x5BC]; FxSystem_c *
4A4DA8:  CBZ             R1, loc_4A4DBC
4A4DAA:  ADDW            R6, R0, #0x5BC
4A4DAE:  LDR             R0, =(g_fxMan_ptr - 0x4A4DB4)
4A4DB0:  ADD             R0, PC; g_fxMan_ptr
4A4DB2:  LDR             R0, [R0]; g_fxMan ; this
4A4DB4:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
4A4DB8:  MOVS            R0, #0
4A4DBA:  STR             R0, [R6]
4A4DBC:  LDR.W           R0, [R4,#0x500]
4A4DC0:  CBZ             R0, loc_4A4E18
4A4DC2:  ADDS            R1, R5, #1
4A4DC4:  BEQ             loc_4A4DDC
4A4DC6:  BLX             j__ZN18CVisibilityPlugins17GetClumpModelInfoEP7RpClump; CVisibilityPlugins::GetClumpModelInfo(RpClump *)
4A4DCA:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4A4DD0)
4A4DCC:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4A4DCE:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4A4DD0:  LDR.W           R1, [R1,R5,LSL#2]
4A4DD4:  CMP             R0, R1
4A4DD6:  BNE             loc_4A4E18
4A4DD8:  LDR.W           R0, [R4,#0x500]
4A4DDC:  BLX             j__ZN18CVisibilityPlugins17GetClumpModelInfoEP7RpClump; CVisibilityPlugins::GetClumpModelInfo(RpClump *)
4A4DE0:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
4A4DE4:  LDR.W           R0, [R4,#0x500]
4A4DE8:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
4A4DEC:  CBZ             R0, loc_4A4E06
4A4DEE:  LDR             R0, [R0,#0x18]
4A4DF0:  BLX             j_RpSkinGeometryGetSkin
4A4DF4:  CBZ             R0, loc_4A4E06
4A4DF6:  LDR             R1, =(_Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr - 0x4A4E02)
4A4DF8:  MOVS            R2, #0
4A4DFA:  LDR.W           R0, [R4,#0x500]
4A4DFE:  ADD             R1, PC; _Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr
4A4E00:  LDR             R1, [R1]; AtomicRemoveAnimFromSkinCB(RpAtomic *,void *)
4A4E02:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
4A4E06:  LDR.W           R0, [R4,#0x500]
4A4E0A:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
4A4E0E:  MOVS            R0, #0
4A4E10:  STR.W           R0, [R4,#0x500]
4A4E14:  STR.W           R0, [R4,#0x504]
4A4E18:  MOVS            R0, #0
4A4E1A:  MOV.W           R1, #0xFFFFFFFF
4A4E1E:  STRH.W          R0, [R4,#0x510]
4A4E22:  STR.W           R1, [R4,#0x748]
4A4E26:  STRH.W          R0, [R4,#0x514]
4A4E2A:  POP.W           {R11}
4A4E2E:  POP             {R4-R7,PC}
