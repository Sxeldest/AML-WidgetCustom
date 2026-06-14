; =========================================================
; Game Engine Function: sub_390D4C
; Address            : 0x390D4C - 0x390D6C
; =========================================================

390D4C:  PUSH            {R4,R6,R7,LR}
390D4E:  ADD             R7, SP, #8
390D50:  MOV             R2, R1
390D52:  MOV             R4, R0
390D54:  LDR             R0, [R2]
390D56:  LDR             R1, =(sub_390D4C+1 - 0x390D5E)
390D58:  STR             R4, [R0,#0x10]
390D5A:  ADD             R1, PC; sub_390D4C
390D5C:  LDR             R0, [R2]
390D5E:  ADDS            R0, #0x18
390D60:  STR             R0, [R2]
390D62:  MOV             R0, R4
390D64:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
390D68:  MOV             R0, R4
390D6A:  POP             {R4,R6,R7,PC}
