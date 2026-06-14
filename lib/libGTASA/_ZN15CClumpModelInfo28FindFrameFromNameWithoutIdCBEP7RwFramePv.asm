; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv
; Address            : 0x3855C8 - 0x385610
; =========================================================

3855C8:  PUSH            {R4-R7,LR}
3855CA:  ADD             R7, SP, #0xC
3855CC:  PUSH.W          {R11}
3855D0:  MOV             R5, R1
3855D2:  MOV             R4, R0
3855D4:  BLX             j__ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame; CVisibilityPlugins::GetFrameHierarchyId(RwFrame *)
3855D8:  CBNZ            R0, loc_3855EC
3855DA:  MOV             R0, R4
3855DC:  LDR             R6, [R5]
3855DE:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3855E2:  MOV             R1, R0; char *
3855E4:  MOV             R0, R6; char *
3855E6:  BLX             strcasecmp
3855EA:  CBZ             R0, loc_38560A
3855EC:  LDR             R0, =(_ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv_ptr - 0x3855F4)
3855EE:  MOV             R2, R5
3855F0:  ADD             R0, PC; _ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv_ptr
3855F2:  LDR             R1, [R0]; CClumpModelInfo::FindFrameFromNameWithoutIdCB(RwFrame *,void *)
3855F4:  MOV             R0, R4
3855F6:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
3855FA:  LDR             R0, [R5,#4]
3855FC:  CMP             R0, #0
3855FE:  IT NE
385600:  MOVNE           R4, #0
385602:  MOV             R0, R4
385604:  POP.W           {R11}
385608:  POP             {R4-R7,PC}
38560A:  STR             R4, [R5,#4]
38560C:  MOVS            R4, #0
38560E:  B               loc_385602
