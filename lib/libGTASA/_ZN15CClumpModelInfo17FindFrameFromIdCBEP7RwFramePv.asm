; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv
; Address            : 0x385614 - 0x38564E
; =========================================================

385614:  PUSH            {R4-R7,LR}
385616:  ADD             R7, SP, #0xC
385618:  PUSH.W          {R11}
38561C:  MOV             R5, R1
38561E:  MOV             R4, R0
385620:  LDR             R6, [R5]
385622:  BLX             j__ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame; CVisibilityPlugins::GetFrameHierarchyId(RwFrame *)
385626:  CMP             R6, R0
385628:  BNE             loc_385630
38562A:  STR             R4, [R5,#4]
38562C:  MOVS            R4, #0
38562E:  B               loc_385646
385630:  LDR             R0, =(_ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr - 0x385638)
385632:  MOV             R2, R5
385634:  ADD             R0, PC; _ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr
385636:  LDR             R1, [R0]; CClumpModelInfo::FindFrameFromIdCB(RwFrame *,void *)
385638:  MOV             R0, R4
38563A:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
38563E:  LDR             R0, [R5,#4]
385640:  CMP             R0, #0
385642:  IT NE
385644:  MOVNE           R4, #0
385646:  MOV             R0, R4
385648:  POP.W           {R11}
38564C:  POP             {R4-R7,PC}
