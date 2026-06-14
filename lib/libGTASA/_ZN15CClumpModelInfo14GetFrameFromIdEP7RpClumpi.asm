; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi
; Address            : 0x385680 - 0x3856A0
; =========================================================

385680:  PUSH            {R7,LR}
385682:  MOV             R7, SP
385684:  SUB             SP, SP, #8
385686:  LDR             R2, =(_ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr - 0x385690)
385688:  STR             R1, [SP,#0x10+var_10]
38568A:  MOVS            R1, #0
38568C:  ADD             R2, PC; _ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr
38568E:  STR             R1, [SP,#0x10+var_C]
385690:  LDR             R0, [R0,#4]
385692:  LDR             R1, [R2]; CClumpModelInfo::FindFrameFromIdCB(RwFrame *,void *)
385694:  MOV             R2, SP
385696:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
38569A:  LDR             R0, [SP,#0x10+var_C]
38569C:  ADD             SP, SP, #8
38569E:  POP             {R7,PC}
