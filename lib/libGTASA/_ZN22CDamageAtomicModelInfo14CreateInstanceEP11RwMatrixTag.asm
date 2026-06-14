; =========================================================
; Game Engine Function: _ZN22CDamageAtomicModelInfo14CreateInstanceEP11RwMatrixTag
; Address            : 0x384E04 - 0x384ED8
; =========================================================

384E04:  PUSH            {R4-R7,LR}
384E06:  ADD             R7, SP, #0xC
384E08:  PUSH.W          {R11}
384E0C:  MOV             R6, R0
384E0E:  LDR             R0, =(_ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr - 0x384E16)
384E10:  MOV             R5, R1
384E12:  ADD             R0, PC; _ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr
384E14:  LDR             R0, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion ...
384E16:  LDRB            R0, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion
384E18:  CBZ             R0, loc_384E6E
384E1A:  LDR             R0, [R6,#0x38]
384E1C:  CMP             R0, #0
384E1E:  BEQ             loc_384ECE
384E20:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
384E24:  MOV             R4, R0
384E26:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
384E2A:  MOV             R1, R0
384E2C:  MOV             R0, R5
384E2E:  VLD1.32         {D16-D17}, [R0]!
384E32:  ADD.W           R2, R5, #0x30 ; '0'
384E36:  VLD1.32         {D18-D19}, [R2]
384E3A:  ADD.W           R2, R5, #0x20 ; ' '
384E3E:  VLD1.32         {D22-D23}, [R0]
384E42:  ADD.W           R0, R1, #0x40 ; '@'
384E46:  VLD1.32         {D20-D21}, [R2]
384E4A:  VST1.32         {D18-D19}, [R0]
384E4E:  ADD.W           R0, R1, #0x30 ; '0'
384E52:  VST1.32         {D20-D21}, [R0]
384E56:  ADD.W           R0, R1, #0x10
384E5A:  VST1.32         {D16-D17}, [R0]
384E5E:  ADD.W           R0, R1, #0x20 ; ' '
384E62:  VST1.32         {D22-D23}, [R0]
384E66:  MOV             R0, R4
384E68:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
384E6C:  B               loc_384ED0
384E6E:  LDR             R0, [R6,#0x34]
384E70:  CBZ             R0, loc_384ECE
384E72:  MOV             R0, R6; this
384E74:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
384E78:  LDR             R0, [R6,#0x34]
384E7A:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
384E7E:  MOV             R4, R0
384E80:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
384E84:  MOV             R1, R0
384E86:  MOV             R0, R5
384E88:  VLD1.32         {D16-D17}, [R0]!
384E8C:  ADD.W           R2, R5, #0x30 ; '0'
384E90:  VLD1.32         {D18-D19}, [R2]
384E94:  ADD.W           R2, R5, #0x20 ; ' '
384E98:  VLD1.32         {D22-D23}, [R0]
384E9C:  ADD.W           R0, R1, #0x40 ; '@'
384EA0:  VLD1.32         {D20-D21}, [R2]
384EA4:  VST1.32         {D18-D19}, [R0]
384EA8:  ADD.W           R0, R1, #0x30 ; '0'
384EAC:  VST1.32         {D20-D21}, [R0]
384EB0:  ADD.W           R0, R1, #0x10
384EB4:  VST1.32         {D16-D17}, [R0]
384EB8:  ADD.W           R0, R1, #0x20 ; ' '
384EBC:  VST1.32         {D22-D23}, [R0]
384EC0:  MOV             R0, R4
384EC2:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
384EC6:  MOV             R0, R6; this
384EC8:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
384ECC:  B               loc_384ED0
384ECE:  MOVS            R4, #0
384ED0:  MOV             R0, R4
384ED2:  POP.W           {R11}
384ED6:  POP             {R4-R7,PC}
