; =========================================================
; Game Engine Function: _ZN16CAtomicModelInfo14CreateInstanceEP11RwMatrixTag
; Address            : 0x384A08 - 0x384A7E
; =========================================================

384A08:  PUSH            {R4-R7,LR}
384A0A:  ADD             R7, SP, #0xC
384A0C:  PUSH.W          {R11}
384A10:  MOV             R4, R0
384A12:  MOV             R6, R1
384A14:  LDR             R0, [R4,#0x34]
384A16:  CBZ             R0, loc_384A74
384A18:  MOV             R0, R4; this
384A1A:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
384A1E:  LDR             R0, [R4,#0x34]
384A20:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
384A24:  MOV             R5, R0
384A26:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
384A2A:  MOV             R1, R0
384A2C:  MOV             R0, R6
384A2E:  VLD1.32         {D16-D17}, [R0]!
384A32:  ADD.W           R2, R6, #0x30 ; '0'
384A36:  VLD1.32         {D18-D19}, [R2]
384A3A:  ADD.W           R2, R6, #0x20 ; ' '
384A3E:  VLD1.32         {D22-D23}, [R0]
384A42:  ADD.W           R0, R1, #0x40 ; '@'
384A46:  VLD1.32         {D20-D21}, [R2]
384A4A:  VST1.32         {D18-D19}, [R0]
384A4E:  ADD.W           R0, R1, #0x30 ; '0'
384A52:  VST1.32         {D20-D21}, [R0]
384A56:  ADD.W           R0, R1, #0x10
384A5A:  VST1.32         {D16-D17}, [R0]
384A5E:  ADD.W           R0, R1, #0x20 ; ' '
384A62:  VST1.32         {D22-D23}, [R0]
384A66:  MOV             R0, R5
384A68:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
384A6C:  MOV             R0, R4; this
384A6E:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
384A72:  B               loc_384A76
384A74:  MOVS            R5, #0
384A76:  MOV             R0, R5
384A78:  POP.W           {R11}
384A7C:  POP             {R4-R7,PC}
