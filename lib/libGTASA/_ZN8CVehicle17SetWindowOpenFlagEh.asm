; =========================================================
; Game Engine Function: _ZN8CVehicle17SetWindowOpenFlagEh
; Address            : 0x58C5AC - 0x58C5CE
; =========================================================

58C5AC:  PUSH            {R7,LR}
58C5AE:  MOV             R7, SP
58C5B0:  LDR             R0, [R0,#0x18]
58C5B2:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58C5B6:  CMP             R0, #0
58C5B8:  IT EQ
58C5BA:  POPEQ           {R7,PC}
58C5BC:  LDR             R1, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x58C5C6)
58C5BE:  MOV.W           R2, #0x1000
58C5C2:  ADD             R1, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
58C5C4:  LDR             R1, [R1]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
58C5C6:  POP.W           {R7,LR}
58C5CA:  B.W             j_j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; j_RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
