; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv
; Address            : 0x388348 - 0x388358
; =========================================================

388348:  PUSH            {R4,R6,R7,LR}
38834A:  ADD             R7, SP, #8
38834C:  UXTH            R1, R1
38834E:  MOV             R4, R0
388350:  BLX             j__ZN18CVisibilityPlugins15ClearAtomicFlagEP8RpAtomict; CVisibilityPlugins::ClearAtomicFlag(RpAtomic *,ushort)
388354:  MOV             R0, R4
388356:  POP             {R4,R6,R7,PC}
