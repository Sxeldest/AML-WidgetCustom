; =========================================================
; Game Engine Function: _Z28SetVehicleAtomicVisibilityCBP7RwFramePv
; Address            : 0x5886F8 - 0x588720
; =========================================================

5886F8:  PUSH            {R4,R5,R7,LR}
5886FA:  ADD             R7, SP, #8
5886FC:  MOV             R5, R0
5886FE:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr - 0x588706)
588700:  MOV             R4, R1
588702:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr
588704:  MOV             R2, R4
588706:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwObject *,void *)
588708:  MOV             R0, R5
58870A:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58870E:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr - 0x588716)
588710:  MOV             R2, R4
588712:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr
588714:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwFrame *,void *)
588716:  MOV             R0, R5
588718:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58871C:  MOV             R0, R5
58871E:  POP             {R4,R5,R7,PC}
