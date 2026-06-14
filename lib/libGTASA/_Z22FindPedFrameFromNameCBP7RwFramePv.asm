; =========================================================
; Game Engine Function: _Z22FindPedFrameFromNameCBP7RwFramePv
; Address            : 0x38689C - 0x3868DE
; =========================================================

38689C:  PUSH            {R4-R7,LR}
38689E:  ADD             R7, SP, #0xC
3868A0:  PUSH.W          {R11}
3868A4:  MOV             R5, R1
3868A6:  MOV             R4, R0
3868A8:  LDR             R6, [R5]
3868AA:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3868AE:  ADDS            R2, R6, #1
3868B0:  ADDS            R1, R0, #1; char *
3868B2:  MOV             R0, R2; char *
3868B4:  BLX             strcasecmp
3868B8:  CBZ             R0, loc_3868D2
3868BA:  LDR             R0, =(_Z22FindPedFrameFromNameCBP7RwFramePv_ptr - 0x3868C2)
3868BC:  MOV             R2, R5
3868BE:  ADD             R0, PC; _Z22FindPedFrameFromNameCBP7RwFramePv_ptr
3868C0:  LDR             R1, [R0]; FindPedFrameFromNameCB(RwFrame *,void *)
3868C2:  MOV             R0, R4
3868C4:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
3868C8:  LDR             R0, [R5,#4]
3868CA:  CMP             R0, #0
3868CC:  IT NE
3868CE:  MOVNE           R4, #0
3868D0:  B               loc_3868D6
3868D2:  STR             R4, [R5,#4]
3868D4:  MOVS            R4, #0
3868D6:  MOV             R0, R4
3868D8:  POP.W           {R11}
3868DC:  POP             {R4-R7,PC}
