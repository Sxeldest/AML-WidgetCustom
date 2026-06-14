; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc
; Address            : 0x3856A4 - 0x3856C4
; =========================================================

3856A4:  PUSH            {R7,LR}
3856A6:  MOV             R7, SP
3856A8:  SUB             SP, SP, #8
3856AA:  LDR             R2, =(_ZN15CClumpModelInfo19FindFrameFromNameCBEP7RwFramePv_ptr - 0x3856B4)
3856AC:  STR             R1, [SP,#0x10+var_10]
3856AE:  MOVS            R1, #0
3856B0:  ADD             R2, PC; _ZN15CClumpModelInfo19FindFrameFromNameCBEP7RwFramePv_ptr
3856B2:  STR             R1, [SP,#0x10+var_C]
3856B4:  LDR             R0, [R0,#4]
3856B6:  LDR             R1, [R2]; CClumpModelInfo::FindFrameFromNameCB(RwFrame *,void *)
3856B8:  MOV             R2, SP
3856BA:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
3856BE:  LDR             R0, [SP,#0x10+var_C]
3856C0:  ADD             SP, SP, #8
3856C2:  POP             {R7,PC}
