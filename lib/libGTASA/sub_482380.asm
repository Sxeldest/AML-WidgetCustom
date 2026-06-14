; =========================================================
; Game Engine Function: sub_482380
; Address            : 0x482380 - 0x4823AA
; =========================================================

482380:  PUSH            {R4-R7,LR}
482382:  ADD             R7, SP, #0xC
482384:  PUSH.W          {R11}
482388:  MOV             R5, R0
48238A:  LDR             R0, =(dword_9ECCC0 - 0x482392)
48238C:  MOV             R4, R1
48238E:  ADD             R0, PC; dword_9ECCC0
482390:  LDR             R0, [R0]
482392:  ADDS            R6, R2, R0
482394:  MOV             R0, R5; int
482396:  MOV             R2, R4; size_t
482398:  MOV             R1, R6; void *
48239A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
48239E:  MOVS            R0, #0
4823A0:  STRB            R0, [R6,R4]
4823A2:  MOV             R0, R5
4823A4:  POP.W           {R11}
4823A8:  POP             {R4-R7,PC}
