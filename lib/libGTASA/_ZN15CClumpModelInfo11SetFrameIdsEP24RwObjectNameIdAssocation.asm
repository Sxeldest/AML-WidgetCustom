; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo11SetFrameIdsEP24RwObjectNameIdAssocation
; Address            : 0x3856DC - 0x385736
; =========================================================

3856DC:  PUSH            {R4-R7,LR}
3856DE:  ADD             R7, SP, #0xC
3856E0:  PUSH.W          {R8,R9,R11}
3856E4:  SUB             SP, SP, #8
3856E6:  MOV             R4, R0
3856E8:  LDR             R0, [R1]
3856EA:  CBZ             R0, loc_38572E
3856EC:  LDR             R0, =(_ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv_ptr - 0x3856FC)
3856EE:  ADD.W           R6, R1, #8
3856F2:  MOV.W           R9, #0
3856F6:  MOV             R8, SP
3856F8:  ADD             R0, PC; _ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv_ptr
3856FA:  LDR             R5, [R0]; CClumpModelInfo::FindFrameFromNameWithoutIdCB(RwFrame *,void *)
3856FC:  LDRB            R0, [R6]
3856FE:  LSLS            R0, R0, #0x1F
385700:  BNE             loc_385726
385702:  STR.W           R9, [SP,#0x20+var_1C]
385706:  MOV             R1, R5
385708:  LDR.W           R0, [R6,#-8]
38570C:  MOV             R2, R8
38570E:  STR             R0, [SP,#0x20+var_20]
385710:  LDR             R0, [R4,#0x34]
385712:  LDR             R0, [R0,#4]
385714:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
385718:  LDR             R0, [SP,#0x20+var_1C]
38571A:  CMP             R0, #0
38571C:  ITT NE
38571E:  LDRNE.W         R1, [R6,#-4]
385722:  BLXNE           j__ZN18CVisibilityPlugins19SetFrameHierarchyIdEP7RwFramej; CVisibilityPlugins::SetFrameHierarchyId(RwFrame *,uint)
385726:  LDR             R0, [R6,#4]
385728:  ADDS            R6, #0xC
38572A:  CMP             R0, #0
38572C:  BNE             loc_3856FC
38572E:  ADD             SP, SP, #8
385730:  POP.W           {R8,R9,R11}
385734:  POP             {R4-R7,PC}
