; =========================================================
; Game Engine Function: sub_221094
; Address            : 0x221094 - 0x2210D0
; =========================================================

221094:  PUSH            {R4,R6,R7,LR}
221096:  ADD             R7, SP, #8
221098:  MOV             R4, R0
22109A:  BLX             j__Z29_rxOpenGLAllInOnePipelineInitP14RxPipelineNode; _rxOpenGLAllInOnePipelineInit(RxPipelineNode *)
22109E:  MOV             R1, R0
2210A0:  MOVS            R0, #0
2210A2:  CMP             R1, #0
2210A4:  IT EQ
2210A6:  POPEQ           {R4,R6,R7,PC}
2210A8:  LDR.W           R12, =(_Z32_rxOpenGLDefaultAllInOneRenderCBP10RwResEntryPvhj_ptr - 0x2210B4)
2210AC:  LDR             R3, =(_Z40_rxOpenGLDefaultAllInOneAtomicLightingCBPv_ptr - 0x2210B8)
2210AE:  LDR             R2, [R4,#0x14]
2210B0:  ADD             R12, PC; _Z32_rxOpenGLDefaultAllInOneRenderCBP10RwResEntryPvhj_ptr
2210B2:  LDR             R4, =(sub_221590+1 - 0x2210BC)
2210B4:  ADD             R3, PC; _Z40_rxOpenGLDefaultAllInOneAtomicLightingCBPv_ptr
2210B6:  LDR             R1, =(sub_2216FC+1 - 0x2210C2)
2210B8:  ADD             R4, PC; sub_221590
2210BA:  STR             R4, [R2,#4]
2210BC:  STR             R0, [R2]
2210BE:  ADD             R1, PC; sub_2216FC
2210C0:  ADD.W           R0, R2, #8
2210C4:  LDR.W           R4, [R12]; _rxOpenGLDefaultAllInOneRenderCB(RwResEntry *,void *,uchar,uint)
2210C8:  LDR             R3, [R3]; _rxOpenGLDefaultAllInOneAtomicLightingCB(void *)
2210CA:  STM             R0!, {R1,R3,R4}
2210CC:  MOVS            R0, #1
2210CE:  POP             {R4,R6,R7,PC}
