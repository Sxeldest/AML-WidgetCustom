; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo14CreateInstanceEv
; Address            : 0x3879D8 - 0x387B30
; =========================================================

3879D8:  PUSH            {R4-R7,LR}
3879DA:  ADD             R7, SP, #0xC
3879DC:  PUSH.W          {R8-R10}
3879E0:  MOV             R5, R0
3879E2:  BLX             j__ZN15CClumpModelInfo14CreateInstanceEv; CClumpModelInfo::CreateInstance(void)
3879E6:  MOV             R4, R0
3879E8:  LDR             R0, [R5,#0x74]
3879EA:  LDRB.W          R0, [R0,#0x324]
3879EE:  CBZ             R0, loc_387A02
3879F0:  LDR             R0, [R5,#0x54]
3879F2:  CMP             R0, #5
3879F4:  BLT             loc_387A0E
3879F6:  SUBS            R0, #9
3879F8:  CMP             R0, #1
3879FA:  BLS             loc_387A0E
3879FC:  LDR.W           R8, [R4,#4]
387A00:  B               loc_387A22
387A02:  LDR             R0, =(_ZN17CVehicleModelInfo12ms_compsUsedE_ptr - 0x387A0A)
387A04:  MOVS            R6, #0xFF
387A06:  ADD             R0, PC; _ZN17CVehicleModelInfo12ms_compsUsedE_ptr
387A08:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsUsed ...
387A0A:  STRB            R6, [R0]; CVehicleModelInfo::ms_compsUsed
387A0C:  B               loc_387B12
387A0E:  MOV             R0, R4
387A10:  MOVS            R1, #1
387A12:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
387A16:  MOV             R8, R0
387A18:  CMP.W           R8, #0
387A1C:  IT EQ
387A1E:  LDREQ.W         R8, [R4,#4]
387A22:  MOV             R0, R5; this
387A24:  BLX             j__ZN17CVehicleModelInfo15ChooseComponentEv; CVehicleModelInfo::ChooseComponent(void)
387A28:  MOV             R6, R0
387A2A:  ADDS            R0, R6, #1
387A2C:  BEQ             loc_387A96
387A2E:  LDR             R0, [R5,#0x74]
387A30:  ADD.W           R0, R0, R6,LSL#2
387A34:  LDR.W           R0, [R0,#0x2F4]
387A38:  CBZ             R0, loc_387A96
387A3A:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
387A3E:  MOV             R10, R0
387A40:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
387A44:  MOV             R9, R0
387A46:  LDR             R0, [R5,#0x74]
387A48:  MOVS            R2, #0
387A4A:  ADD.W           R0, R0, R6,LSL#2
387A4E:  LDR.W           R0, [R0,#0x2F4]
387A52:  LDR             R0, [R0,#4]
387A54:  ADD.W           R1, R0, #0x10
387A58:  MOV             R0, R9
387A5A:  BLX             j__Z16RwFrameTransformP7RwFramePK11RwMatrixTag15RwOpCombineType; RwFrameTransform(RwFrame *,RwMatrixTag const*,RwOpCombineType)
387A5E:  MOV             R0, R10
387A60:  MOV             R1, R9
387A62:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387A66:  MOV             R0, R4
387A68:  MOV             R1, R10
387A6A:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
387A6E:  LDR             R0, [R5,#0x74]
387A70:  ADD.W           R0, R0, R6,LSL#2
387A74:  LDR.W           R0, [R0,#0x30C]
387A78:  CBZ             R0, loc_387A8E
387A7A:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
387A7E:  MOV             R1, R9
387A80:  MOV             R10, R0
387A82:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387A86:  MOV             R0, R4
387A88:  MOV             R1, R10
387A8A:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
387A8E:  MOV             R0, R8
387A90:  MOV             R1, R9
387A92:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
387A96:  LDR             R0, =(_ZN17CVehicleModelInfo12ms_compsUsedE_ptr - 0x387A9C)
387A98:  ADD             R0, PC; _ZN17CVehicleModelInfo12ms_compsUsedE_ptr
387A9A:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsUsed ...
387A9C:  STRB            R6, [R0]; CVehicleModelInfo::ms_compsUsed
387A9E:  MOV             R0, R5; this
387AA0:  BLX             j__ZN17CVehicleModelInfo21ChooseSecondComponentEv; CVehicleModelInfo::ChooseSecondComponent(void)
387AA4:  MOV             R6, R0
387AA6:  ADDS            R0, R6, #1
387AA8:  BEQ             loc_387B12
387AAA:  LDR             R0, [R5,#0x74]
387AAC:  ADD.W           R0, R0, R6,LSL#2
387AB0:  LDR.W           R0, [R0,#0x2F4]
387AB4:  CBZ             R0, loc_387B12
387AB6:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
387ABA:  MOV             R10, R0
387ABC:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
387AC0:  MOV             R9, R0
387AC2:  LDR             R0, [R5,#0x74]
387AC4:  MOVS            R2, #0
387AC6:  ADD.W           R0, R0, R6,LSL#2
387ACA:  LDR.W           R0, [R0,#0x2F4]
387ACE:  LDR             R0, [R0,#4]
387AD0:  ADD.W           R1, R0, #0x10
387AD4:  MOV             R0, R9
387AD6:  BLX             j__Z16RwFrameTransformP7RwFramePK11RwMatrixTag15RwOpCombineType; RwFrameTransform(RwFrame *,RwMatrixTag const*,RwOpCombineType)
387ADA:  MOV             R0, R10
387ADC:  MOV             R1, R9
387ADE:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387AE2:  MOV             R0, R4
387AE4:  MOV             R1, R10
387AE6:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
387AEA:  LDR             R0, [R5,#0x74]
387AEC:  ADD.W           R0, R0, R6,LSL#2
387AF0:  LDR.W           R0, [R0,#0x30C]
387AF4:  CBZ             R0, loc_387B0A
387AF6:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
387AFA:  MOV             R1, R9
387AFC:  MOV             R5, R0
387AFE:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387B02:  MOV             R0, R4
387B04:  MOV             R1, R5
387B06:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
387B0A:  MOV             R0, R8
387B0C:  MOV             R1, R9
387B0E:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
387B12:  LDR             R0, =(_ZN17CVehicleModelInfo12ms_compsUsedE_ptr - 0x387B1C)
387B14:  MOVS            R2, #0
387B16:  LDR             R1, =(_ZN17CVehicleModelInfo25SetEnvironmentMapAtomicCBEP8RpAtomicPv_ptr - 0x387B1E)
387B18:  ADD             R0, PC; _ZN17CVehicleModelInfo12ms_compsUsedE_ptr
387B1A:  ADD             R1, PC; _ZN17CVehicleModelInfo25SetEnvironmentMapAtomicCBEP8RpAtomicPv_ptr
387B1C:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsUsed ...
387B1E:  LDR             R1, [R1]; CVehicleModelInfo::SetEnvironmentMapAtomicCB(RpAtomic *,void *)
387B20:  STRB            R6, [R0,#(byte_9317E9 - 0x9317E8)]
387B22:  MOV             R0, R4
387B24:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
387B28:  MOV             R0, R4
387B2A:  POP.W           {R8-R10}
387B2E:  POP             {R4-R7,PC}
