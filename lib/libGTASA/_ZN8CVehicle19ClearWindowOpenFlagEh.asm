; =========================================================
; Game Engine Function: _ZN8CVehicle19ClearWindowOpenFlagEh
; Address            : 0x58C5D4 - 0x58C5F6
; =========================================================

58C5D4:  PUSH            {R7,LR}
58C5D6:  MOV             R7, SP
58C5D8:  LDR             R0, [R0,#0x18]
58C5DA:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58C5DE:  CMP             R0, #0
58C5E0:  IT EQ
58C5E2:  POPEQ           {R7,PC}
58C5E4:  LDR             R1, =(_ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv_ptr - 0x58C5EE)
58C5E6:  MOV.W           R2, #0x1000
58C5EA:  ADD             R1, PC; _ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv_ptr
58C5EC:  LDR             R1, [R1]; CVehicleModelInfo::ClearAtomicFlagCB(RwObject *,void *)
58C5EE:  POP.W           {R7,LR}
58C5F2:  B.W             j_j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; j_RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
