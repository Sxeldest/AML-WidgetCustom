; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo19FindFrameFromNameCBEP7RwFramePv
; Address            : 0x385584 - 0x3855C4
; =========================================================

385584:  PUSH            {R4-R7,LR}
385586:  ADD             R7, SP, #0xC
385588:  PUSH.W          {R11}
38558C:  MOV             R5, R1
38558E:  MOV             R4, R0
385590:  LDR             R6, [R5]
385592:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
385596:  MOV             R1, R0; char *
385598:  MOV             R0, R6; char *
38559A:  BLX             strcasecmp
38559E:  CBZ             R0, loc_3855B8
3855A0:  LDR             R0, =(_ZN15CClumpModelInfo19FindFrameFromNameCBEP7RwFramePv_ptr - 0x3855A8)
3855A2:  MOV             R2, R5
3855A4:  ADD             R0, PC; _ZN15CClumpModelInfo19FindFrameFromNameCBEP7RwFramePv_ptr
3855A6:  LDR             R1, [R0]; CClumpModelInfo::FindFrameFromNameCB(RwFrame *,void *)
3855A8:  MOV             R0, R4
3855AA:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
3855AE:  LDR             R0, [R5,#4]
3855B0:  CMP             R0, #0
3855B2:  IT NE
3855B4:  MOVNE           R4, #0
3855B6:  B               loc_3855BC
3855B8:  STR             R4, [R5,#4]
3855BA:  MOVS            R4, #0
3855BC:  MOV             R0, R4
3855BE:  POP.W           {R11}
3855C2:  POP             {R4-R7,PC}
