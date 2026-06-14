; =========================================================
; Game Engine Function: _ZN22CDamageAtomicModelInfo14CreateInstanceEv
; Address            : 0x384EDC - 0x384F34
; =========================================================

384EDC:  PUSH            {R4,R5,R7,LR}
384EDE:  ADD             R7, SP, #8
384EE0:  MOV             R5, R0
384EE2:  LDR             R0, =(_ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr - 0x384EE8)
384EE4:  ADD             R0, PC; _ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr
384EE6:  LDR             R0, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion ...
384EE8:  LDRB            R0, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion
384EEA:  CBZ             R0, loc_384F06
384EEC:  LDR             R0, [R5,#0x38]
384EEE:  CBZ             R0, loc_384F2E
384EF0:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
384EF4:  MOV             R4, R0
384EF6:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
384EFA:  MOV             R1, R0
384EFC:  MOV             R0, R4
384EFE:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
384F02:  MOV             R0, R4
384F04:  POP             {R4,R5,R7,PC}
384F06:  LDR             R0, [R5,#0x34]
384F08:  CBZ             R0, loc_384F2E
384F0A:  MOV             R0, R5; this
384F0C:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
384F10:  LDR             R0, [R5,#0x34]
384F12:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
384F16:  MOV             R4, R0
384F18:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
384F1C:  MOV             R1, R0
384F1E:  MOV             R0, R4
384F20:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
384F24:  MOV             R0, R5; this
384F26:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
384F2A:  MOV             R0, R4
384F2C:  POP             {R4,R5,R7,PC}
384F2E:  MOVS            R4, #0
384F30:  MOV             R0, R4
384F32:  POP             {R4,R5,R7,PC}
