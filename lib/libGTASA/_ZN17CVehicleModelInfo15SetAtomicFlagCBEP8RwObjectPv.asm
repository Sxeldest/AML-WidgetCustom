; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv
; Address            : 0x388338 - 0x388348
; =========================================================

388338:  PUSH            {R4,R6,R7,LR}
38833A:  ADD             R7, SP, #8
38833C:  UXTH            R1, R1
38833E:  MOV             R4, R0
388340:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
388344:  MOV             R0, R4
388346:  POP             {R4,R6,R7,PC}
