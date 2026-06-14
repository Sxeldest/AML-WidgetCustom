; =========================================================
; Game Engine Function: _Z13TrainHitStuffR8CPtrListP7CEntity
; Address            : 0x57F428 - 0x57F4B4
; =========================================================

57F428:  PUSH            {R4-R7,LR}
57F42A:  ADD             R7, SP, #0xC
57F42C:  PUSH.W          {R8-R11}
57F430:  SUB             SP, SP, #4
57F432:  LDR             R6, [R0]
57F434:  MOV             R4, R1
57F436:  CBZ             R6, loc_57F4AC
57F438:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x57F442)
57F43A:  MOV.W           R9, #0
57F43E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE1_ptr
57F440:  LDR.W           R8, [R0]; MI_OBJECTFORMAGNOCRANE1
57F444:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x57F44A)
57F446:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE2_ptr
57F448:  LDR.W           R10, [R0]; MI_OBJECTFORMAGNOCRANE2
57F44C:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x57F452)
57F44E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE3_ptr
57F450:  LDR.W           R11, [R0]; MI_OBJECTFORMAGNOCRANE3
57F454:  LDRD.W          R5, R6, [R6]
57F458:  CMP             R5, R4
57F45A:  BEQ             loc_57F4A8
57F45C:  LDR             R0, [R5,#0x44]
57F45E:  LDRB.W          R1, [R5,#0x3A]
57F462:  ORR.W           R0, R0, #0x800
57F466:  STR             R0, [R5,#0x44]
57F468:  AND.W           R0, R1, #7
57F46C:  CMP             R0, #4
57F46E:  BNE             loc_57F4A8
57F470:  LDR             R0, [R5,#0x1C]
57F472:  TST.W           R0, #0x40004
57F476:  BEQ             loc_57F4A8
57F478:  LDRSH.W         R0, [R5,#0x26]
57F47C:  LDRH.W          R1, [R8]
57F480:  CMP             R0, R1
57F482:  ITT NE
57F484:  LDRHNE.W        R1, [R10]
57F488:  CMPNE           R0, R1
57F48A:  BEQ             loc_57F494
57F48C:  LDRH.W          R1, [R11]
57F490:  CMP             R0, R1
57F492:  BNE             loc_57F4A8
57F494:  LDR             R0, [R5]
57F496:  MOVS            R1, #0
57F498:  LDR             R2, [R0,#0x14]
57F49A:  MOV             R0, R5
57F49C:  BLX             R2
57F49E:  MOV             R0, R5; this
57F4A0:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
57F4A4:  STRB.W          R9, [R5,#0xBC]
57F4A8:  CMP             R6, #0
57F4AA:  BNE             loc_57F454
57F4AC:  ADD             SP, SP, #4
57F4AE:  POP.W           {R8-R11}
57F4B2:  POP             {R4-R7,PC}
