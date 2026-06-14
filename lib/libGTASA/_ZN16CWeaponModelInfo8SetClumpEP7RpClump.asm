; =========================================================
; Game Engine Function: _ZN16CWeaponModelInfo8SetClumpEP7RpClump
; Address            : 0x3890F4 - 0x389140
; =========================================================

3890F4:  PUSH            {R4,R5,R7,LR}
3890F6:  ADD             R7, SP, #8
3890F8:  MOV             R4, R1
3890FA:  BLX             j__ZN15CClumpModelInfo8SetClumpEP7RpClump; CClumpModelInfo::SetClump(RpClump *)
3890FE:  LDR             R0, =(_ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr - 0x389106)
389100:  LDR             R2, =(_ZN18CVisibilityPlugins14RenderWeaponCBEP8RpAtomic_ptr - 0x389108)
389102:  ADD             R0, PC; _ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr
389104:  ADD             R2, PC; _ZN18CVisibilityPlugins14RenderWeaponCBEP8RpAtomic_ptr
389106:  LDR             R1, [R0]; CClumpModelInfo::SetAtomicRendererCB(RpAtomic *,void *)
389108:  MOV             R0, R4
38910A:  LDR             R2, [R2]; CVisibilityPlugins::RenderWeaponCB(RpAtomic *)
38910C:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
389110:  ADR             R1, aGunflash_0; "gunflash"
389112:  MOV             R0, R4
389114:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
389118:  CBZ             R0, locret_38913E
38911A:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
38911E:  MOV             R4, R0
389120:  CMP             R4, #0
389122:  IT EQ
389124:  POPEQ           {R4,R5,R7,PC}
389126:  MOV             R0, R4
389128:  MOVS            R1, #0
38912A:  MOVS            R5, #0
38912C:  BLX             j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
389130:  LDR             R0, [R4,#0x18]
389132:  MOV.W           R1, #0x41800000
389136:  STRB            R5, [R4,#2]
389138:  LDR             R0, [R0,#0x20]
38913A:  LDR             R0, [R0]
38913C:  STR             R1, [R0,#0xC]
38913E:  POP             {R4,R5,R7,PC}
