; =========================================================
; Game Engine Function: _ZN28CTaskComplexHitByGunResponse9SerializeEv
; Address            : 0x4F34E4 - 0x4F3574
; =========================================================

4F34E4:  PUSH            {R4-R7,LR}
4F34E6:  ADD             R7, SP, #0xC
4F34E8:  PUSH.W          {R11}
4F34EC:  MOV             R4, R0
4F34EE:  LDR             R0, [R4]
4F34F0:  LDR             R1, [R0,#0x14]
4F34F2:  MOV             R0, R4
4F34F4:  BLX             R1
4F34F6:  MOV             R5, R0
4F34F8:  LDR             R0, =(UseDataFence_ptr - 0x4F34FE)
4F34FA:  ADD             R0, PC; UseDataFence_ptr
4F34FC:  LDR             R0, [R0]; UseDataFence
4F34FE:  LDRB            R0, [R0]
4F3500:  CMP             R0, #0
4F3502:  IT NE
4F3504:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3508:  MOVS            R0, #4; byte_count
4F350A:  BLX             malloc
4F350E:  MOV             R6, R0
4F3510:  MOVS            R1, #byte_4; void *
4F3512:  STR             R5, [R6]
4F3514:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3518:  MOV             R0, R6; p
4F351A:  BLX             free
4F351E:  LDR             R0, [R4]
4F3520:  LDR             R1, [R0,#0x14]
4F3522:  MOV             R0, R4
4F3524:  BLX             R1
4F3526:  CMP             R0, #0xE7
4F3528:  BNE             loc_4F355C
4F352A:  LDR             R0, =(UseDataFence_ptr - 0x4F3530)
4F352C:  ADD             R0, PC; UseDataFence_ptr
4F352E:  LDR             R0, [R0]; UseDataFence
4F3530:  LDRB            R0, [R0]
4F3532:  CMP             R0, #0
4F3534:  IT NE
4F3536:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F353A:  MOVS            R0, #4; byte_count
4F353C:  BLX             malloc
4F3540:  MOV             R5, R0
4F3542:  LDR             R0, [R4,#0xC]
4F3544:  STR             R0, [R5]
4F3546:  MOV             R0, R5; this
4F3548:  MOVS            R1, #byte_4; void *
4F354A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F354E:  MOV             R0, R5; p
4F3550:  POP.W           {R11}
4F3554:  POP.W           {R4-R7,LR}
4F3558:  B.W             j_free
4F355C:  LDR             R0, [R4]
4F355E:  LDR             R1, [R0,#0x14]
4F3560:  MOV             R0, R4
4F3562:  BLX             R1
4F3564:  MOV             R1, R0; int
4F3566:  MOVS            R0, #0xE7; int
4F3568:  POP.W           {R11}
4F356C:  POP.W           {R4-R7,LR}
4F3570:  B.W             sub_1941D4
