; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPackD2Ev
; Address            : 0x530BEC - 0x530C60
; =========================================================

530BEC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleJetPack::~CTaskSimpleJetPack()'
530BEE:  ADD             R7, SP, #8
530BF0:  MOV             R4, R0
530BF2:  LDR             R0, =(_ZTV18CTaskSimpleJetPack_ptr - 0x530BF8)
530BF4:  ADD             R0, PC; _ZTV18CTaskSimpleJetPack_ptr
530BF6:  LDR             R1, [R0]; `vtable for'CTaskSimpleJetPack ...
530BF8:  LDR             R0, [R4,#0x40]
530BFA:  ADDS            R1, #8
530BFC:  STR             R1, [R4]
530BFE:  CBZ             R0, loc_530C30
530C00:  BLX             j__ZN18CVisibilityPlugins17GetClumpModelInfoEP7RpClump; CVisibilityPlugins::GetClumpModelInfo(RpClump *)
530C04:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
530C08:  LDR             R0, [R4,#0x40]
530C0A:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
530C0E:  CBZ             R0, loc_530C26
530C10:  LDR             R0, [R0,#0x18]
530C12:  BLX             j_RpSkinGeometryGetSkin
530C16:  CBZ             R0, loc_530C26
530C18:  LDR             R1, =(_Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr - 0x530C22)
530C1A:  MOVS            R2, #0
530C1C:  LDR             R0, [R4,#0x40]
530C1E:  ADD             R1, PC; _Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr
530C20:  LDR             R1, [R1]; AtomicRemoveAnimFromSkinCB(RpAtomic *,void *)
530C22:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
530C26:  LDR             R0, [R4,#0x40]
530C28:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
530C2C:  MOVS            R0, #0
530C2E:  STR             R0, [R4,#0x40]
530C30:  LDR             R0, [R4,#0x64]; this
530C32:  CBZ             R0, loc_530C3C
530C34:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530C38:  MOVS            R0, #0
530C3A:  STR             R0, [R4,#0x64]
530C3C:  LDR             R0, [R4,#0x68]; this
530C3E:  CBZ             R0, loc_530C48
530C40:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530C44:  MOVS            R0, #0
530C46:  STR             R0, [R4,#0x68]
530C48:  MOV             R1, R4
530C4A:  LDR.W           R0, [R1,#0x60]!; CEntity **
530C4E:  CMP             R0, #0
530C50:  IT NE
530C52:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
530C56:  MOV             R0, R4; this
530C58:  POP.W           {R4,R6,R7,LR}
530C5C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
