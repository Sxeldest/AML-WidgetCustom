; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv
; Address            : 0x387E70 - 0x387E9E
; =========================================================

387E70:  PUSH            {R4,R5,R7,LR}
387E72:  ADD             R7, SP, #8
387E74:  MOV             R5, R0
387E76:  LDR             R0, =(_ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv_ptr - 0x387E7E)
387E78:  MOV             R4, R1
387E7A:  ADD             R0, PC; _ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv_ptr
387E7C:  MOV             R2, R4
387E7E:  LDR             R1, [R0]; CVehicleModelInfo::CollapseFramesCB(RwFrame *,void *)
387E80:  MOV             R0, R5
387E82:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
387E86:  LDR             R0, =(_ZN17CVehicleModelInfo13MoveObjectsCBEP8RwObjectPv_ptr - 0x387E8E)
387E88:  MOV             R2, R4
387E8A:  ADD             R0, PC; _ZN17CVehicleModelInfo13MoveObjectsCBEP8RwObjectPv_ptr
387E8C:  LDR             R1, [R0]; CVehicleModelInfo::MoveObjectsCB(RwObject *,void *)
387E8E:  MOV             R0, R5
387E90:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
387E94:  MOV             R0, R5
387E96:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
387E9A:  MOV             R0, R5
387E9C:  POP             {R4,R5,R7,PC}
