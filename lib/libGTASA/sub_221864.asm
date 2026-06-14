; =========================================================
; Game Engine Function: sub_221864
; Address            : 0x221864 - 0x221898
; =========================================================

221864:  PUSH            {R4,R6,R7,LR}
221866:  ADD             R7, SP, #8
221868:  MOV             R4, R0
22186A:  BLX             j__Z29_rxOpenGLAllInOnePipelineInitP14RxPipelineNode; _rxOpenGLAllInOnePipelineInit(RxPipelineNode *)
22186E:  MOV             R1, R0
221870:  MOVS            R0, #0
221872:  CMP             R1, #0
221874:  IT EQ
221876:  POPEQ           {R4,R6,R7,PC}
221878:  LDR             R2, =(_Z32_rxOpenGLDefaultAllInOneRenderCBP10RwResEntryPvhj_ptr - 0x221882)
22187A:  LDR             R3, =(sub_2218A4+1 - 0x221886)
22187C:  LDR             R1, [R4,#0x14]
22187E:  ADD             R2, PC; _Z32_rxOpenGLDefaultAllInOneRenderCBP10RwResEntryPvhj_ptr
221880:  LDR             R4, =(sub_221B54+1 - 0x22188A)
221882:  ADD             R3, PC; sub_2218A4
221884:  LDR             R2, [R2]; _rxOpenGLDefaultAllInOneRenderCB(RwResEntry *,void *,uchar,uint)
221886:  ADD             R4, PC; sub_221B54
221888:  STR             R3, [R1,#4]
22188A:  MOVS            R3, #1
22188C:  STR             R3, [R1]
22188E:  STRD.W          R0, R4, [R1,#8]
221892:  MOVS            R0, #1
221894:  STR             R2, [R1,#0x10]
221896:  POP             {R4,R6,R7,PC}
