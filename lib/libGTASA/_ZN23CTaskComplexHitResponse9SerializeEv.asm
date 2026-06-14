; =========================================================
; Game Engine Function: _ZN23CTaskComplexHitResponse9SerializeEv
; Address            : 0x4F3408 - 0x4F3498
; =========================================================

4F3408:  PUSH            {R4-R7,LR}
4F340A:  ADD             R7, SP, #0xC
4F340C:  PUSH.W          {R11}
4F3410:  MOV             R4, R0
4F3412:  LDR             R0, [R4]
4F3414:  LDR             R1, [R0,#0x14]
4F3416:  MOV             R0, R4
4F3418:  BLX             R1
4F341A:  MOV             R5, R0
4F341C:  LDR             R0, =(UseDataFence_ptr - 0x4F3422)
4F341E:  ADD             R0, PC; UseDataFence_ptr
4F3420:  LDR             R0, [R0]; UseDataFence
4F3422:  LDRB            R0, [R0]
4F3424:  CMP             R0, #0
4F3426:  IT NE
4F3428:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F342C:  MOVS            R0, #4; byte_count
4F342E:  BLX             malloc
4F3432:  MOV             R6, R0
4F3434:  MOVS            R1, #byte_4; void *
4F3436:  STR             R5, [R6]
4F3438:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F343C:  MOV             R0, R6; p
4F343E:  BLX             free
4F3442:  LDR             R0, [R4]
4F3444:  LDR             R1, [R0,#0x14]
4F3446:  MOV             R0, R4
4F3448:  BLX             R1
4F344A:  CMP             R0, #0xE6
4F344C:  BNE             loc_4F3480
4F344E:  LDR             R0, =(UseDataFence_ptr - 0x4F3454)
4F3450:  ADD             R0, PC; UseDataFence_ptr
4F3452:  LDR             R0, [R0]; UseDataFence
4F3454:  LDRB            R0, [R0]
4F3456:  CMP             R0, #0
4F3458:  IT NE
4F345A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F345E:  MOVS            R0, #4; byte_count
4F3460:  BLX             malloc
4F3464:  MOV             R5, R0
4F3466:  LDR             R0, [R4,#0xC]
4F3468:  STR             R0, [R5]
4F346A:  MOV             R0, R5; this
4F346C:  MOVS            R1, #byte_4; void *
4F346E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3472:  MOV             R0, R5; p
4F3474:  POP.W           {R11}
4F3478:  POP.W           {R4-R7,LR}
4F347C:  B.W             j_free
4F3480:  LDR             R0, [R4]
4F3482:  LDR             R1, [R0,#0x14]
4F3484:  MOV             R0, R4
4F3486:  BLX             R1
4F3488:  MOV             R1, R0; int
4F348A:  MOVS            R0, #0xE6; int
4F348C:  POP.W           {R11}
4F3490:  POP.W           {R4-R7,LR}
4F3494:  B.W             sub_1941D4
