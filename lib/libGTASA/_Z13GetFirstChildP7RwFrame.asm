; =========================================================
; Game Engine Function: _Z13GetFirstChildP7RwFrame
; Address            : 0x5D0DA4 - 0x5D0DC0
; =========================================================

5D0DA4:  PUSH            {R7,LR}
5D0DA6:  MOV             R7, SP
5D0DA8:  SUB             SP, SP, #8
5D0DAA:  LDR             R1, =(_Z21GetFirstFrameCallbackP7RwFramePv_ptr - 0x5D0DB6)
5D0DAC:  MOVS            R2, #0
5D0DAE:  STR             R2, [SP,#0x10+var_C]
5D0DB0:  ADD             R2, SP, #0x10+var_C
5D0DB2:  ADD             R1, PC; _Z21GetFirstFrameCallbackP7RwFramePv_ptr
5D0DB4:  LDR             R1, [R1]; GetFirstFrameCallback(RwFrame *,void *)
5D0DB6:  BLX.W           j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
5D0DBA:  LDR             R0, [SP,#0x10+var_C]
5D0DBC:  ADD             SP, SP, #8
5D0DBE:  POP             {R7,PC}
