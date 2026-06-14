; =========================================================
; Game Engine Function: sub_390D2C
; Address            : 0x390D2C - 0x390D48
; =========================================================

390D2C:  PUSH            {R4,R6,R7,LR}
390D2E:  ADD             R7, SP, #8
390D30:  MOV             R2, R1
390D32:  LDR             R1, =(sub_390D2C+1 - 0x390D3C)
390D34:  MOV             R4, R0
390D36:  LDR             R0, [R2]
390D38:  ADD             R1, PC; sub_390D2C
390D3A:  ADDS            R0, #1
390D3C:  STR             R0, [R2]
390D3E:  MOV             R0, R4
390D40:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
390D44:  MOV             R0, R4
390D46:  POP             {R4,R6,R7,PC}
