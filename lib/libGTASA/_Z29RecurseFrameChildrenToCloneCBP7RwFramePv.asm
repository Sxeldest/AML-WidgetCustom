; =========================================================
; Game Engine Function: _Z29RecurseFrameChildrenToCloneCBP7RwFramePv
; Address            : 0x4ACF48 - 0x4ACF92
; =========================================================

4ACF48:  PUSH            {R4-R7,LR}
4ACF4A:  ADD             R7, SP, #0xC
4ACF4C:  PUSH.W          {R11}
4ACF50:  MOV             R4, R1
4ACF52:  MOV             R5, R0
4ACF54:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
4ACF58:  MOV             R6, R0
4ACF5A:  MOV             R0, R4
4ACF5C:  MOV             R1, R6
4ACF5E:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
4ACF62:  ADD.W           R1, R5, #0x10
4ACF66:  MOV             R0, R6
4ACF68:  MOVS            R2, #0
4ACF6A:  BLX             j__Z16RwFrameTransformP7RwFramePK11RwMatrixTag15RwOpCombineType; RwFrameTransform(RwFrame *,RwMatrixTag const*,RwOpCombineType)
4ACF6E:  LDR             R0, =(_Z20CloneAtomicToFrameCBP8RwObjectPv_ptr - 0x4ACF76)
4ACF70:  MOV             R2, R6
4ACF72:  ADD             R0, PC; _Z20CloneAtomicToFrameCBP8RwObjectPv_ptr
4ACF74:  LDR             R1, [R0]; CloneAtomicToFrameCB(RwObject *,void *)
4ACF76:  MOV             R0, R5
4ACF78:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
4ACF7C:  LDR             R0, =(_Z29RecurseFrameChildrenToCloneCBP7RwFramePv_ptr - 0x4ACF84)
4ACF7E:  MOV             R2, R6
4ACF80:  ADD             R0, PC; _Z29RecurseFrameChildrenToCloneCBP7RwFramePv_ptr
4ACF82:  LDR             R1, [R0]; RecurseFrameChildrenToCloneCB(RwFrame *,void *)
4ACF84:  MOV             R0, R5
4ACF86:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
4ACF8A:  MOV             R0, R6
4ACF8C:  POP.W           {R11}
4ACF90:  POP             {R4-R7,PC}
