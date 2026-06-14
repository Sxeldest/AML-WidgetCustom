; =========================================================
; Game Engine Function: _ZN16CAtomicModelInfo14CreateInstanceEv
; Address            : 0x384A7E - 0x384AB2
; =========================================================

384A7E:  PUSH            {R4,R5,R7,LR}
384A80:  ADD             R7, SP, #8
384A82:  MOV             R4, R0
384A84:  LDR             R0, [R4,#0x34]
384A86:  CBZ             R0, loc_384AAC
384A88:  MOV             R0, R4; this
384A8A:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
384A8E:  LDR             R0, [R4,#0x34]
384A90:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
384A94:  MOV             R5, R0
384A96:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
384A9A:  MOV             R1, R0
384A9C:  MOV             R0, R5
384A9E:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
384AA2:  MOV             R0, R4; this
384AA4:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
384AA8:  MOV             R0, R5
384AAA:  POP             {R4,R5,R7,PC}
384AAC:  MOVS            R5, #0
384AAE:  MOV             R0, R5
384AB0:  POP             {R4,R5,R7,PC}
