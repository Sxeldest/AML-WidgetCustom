; =========================================================
; Game Engine Function: _ZN13CAEDataStream10FillBufferEPvj
; Address            : 0x395368 - 0x3953AE
; =========================================================

395368:  PUSH            {R4-R7,LR}
39536A:  ADD             R7, SP, #0xC
39536C:  PUSH.W          {R11}
395370:  MOV             R4, R0
395372:  MOV             R6, R1
395374:  LDR             R1, [R4,#0x10]
395376:  LDR             R3, [R4,#0x18]
395378:  LDR             R0, [R4,#4]; this
39537A:  SUBS            R5, R3, R1
39537C:  MOV             R1, R6; ptr
39537E:  CMP             R5, R2
395380:  IT HI
395382:  MOVHI           R5, R2
395384:  MOV             R2, R5; n
395386:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
39538A:  LDRB.W          R0, [R4,#0x20]
39538E:  CBZ             R0, loc_3953A0
395390:  LDR             R0, =(AEStreamTransformer_ptr - 0x39539C)
395392:  MOV             R1, R6; void *
395394:  LDR             R3, [R4,#0x10]; unsigned int
395396:  MOV             R2, R5; unsigned int
395398:  ADD             R0, PC; AEStreamTransformer_ptr
39539A:  LDR             R0, [R0]; AEStreamTransformer ; this
39539C:  BLX             j__ZN20CAEStreamTransformer15TransformBufferEPvmm; CAEStreamTransformer::TransformBuffer(void *,ulong,ulong)
3953A0:  LDR             R0, [R4,#0x10]
3953A2:  ADD             R0, R5
3953A4:  STR             R0, [R4,#0x10]
3953A6:  MOV             R0, R5
3953A8:  POP.W           {R11}
3953AC:  POP             {R4-R7,PC}
