; =========================================================
; Game Engine Function: _Z19RemoveAllUpgradesCBP8RpAtomicPv
; Address            : 0x58D208 - 0x58D22E
; =========================================================

58D208:  PUSH            {R4,R5,R7,LR}
58D20A:  ADD             R7, SP, #8
58D20C:  MOV             R4, R0
58D20E:  BLX             j__ZN18CVisibilityPlugins12GetModelInfoEP8RpAtomic; CVisibilityPlugins::GetModelInfo(RpAtomic *)
58D212:  MOV             R5, R0
58D214:  CBZ             R5, loc_58D22A
58D216:  LDR             R0, [R4,#0x3C]
58D218:  MOV             R1, R4
58D21A:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
58D21E:  MOV             R0, R4
58D220:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
58D224:  MOV             R0, R5; this
58D226:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
58D22A:  MOV             R0, R4
58D22C:  POP             {R4,R5,R7,PC}
