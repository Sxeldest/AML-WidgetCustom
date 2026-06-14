; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo16FillFrameArrayCBEP7RwFramePv
; Address            : 0x385654 - 0x38567A
; =========================================================

385654:  PUSH            {R4,R5,R7,LR}
385656:  ADD             R7, SP, #8
385658:  MOV             R5, R1
38565A:  MOV             R4, R0
38565C:  BLX             j__ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame; CVisibilityPlugins::GetFrameHierarchyId(RwFrame *)
385660:  CMP             R0, #1
385662:  MOV             R2, R5
385664:  IT GE
385666:  STRGE.W         R4, [R5,R0,LSL#2]
38566A:  LDR             R0, =(_ZN15CClumpModelInfo16FillFrameArrayCBEP7RwFramePv_ptr - 0x385670)
38566C:  ADD             R0, PC; _ZN15CClumpModelInfo16FillFrameArrayCBEP7RwFramePv_ptr
38566E:  LDR             R1, [R0]; CClumpModelInfo::FillFrameArrayCB(RwFrame *,void *)
385670:  MOV             R0, R4
385672:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
385676:  MOV             R0, R4
385678:  POP             {R4,R5,R7,PC}
