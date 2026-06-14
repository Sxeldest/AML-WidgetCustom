; =========================================================
; Game Engine Function: _Z18MoveColModelMemoryR9CColModelb
; Address            : 0x3F4438 - 0x3F458A
; =========================================================

3F4438:  PUSH            {R4-R7,LR}
3F443A:  ADD             R7, SP, #0xC
3F443C:  PUSH.W          {R8}
3F4440:  MOV             R4, R0
3F4442:  MOV             R8, R1
3F4444:  LDR             R5, [R4,#0x2C]
3F4446:  CMP             R5, #0
3F4448:  BEQ             loc_3F44F8
3F444A:  LDRB.W          R0, [R4,#0x29]
3F444E:  LSLS            R0, R0, #0x1E
3F4450:  BMI             loc_3F4500
3F4452:  LDR             R0, [R5,#8]; this
3F4454:  CBZ             R0, loc_3F4472
3F4456:  LDR             R1, =(dword_9595B8 - 0x3F445C)
3F4458:  ADD             R1, PC; dword_9595B8 ; void *
3F445A:  LDR             R2, [R1]
3F445C:  ADDS            R2, #1
3F445E:  STR             R2, [R1]
3F4460:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F4464:  LDR             R1, [R5,#8]
3F4466:  CMP             R0, R1
3F4468:  ITT NE
3F446A:  STRNE           R0, [R5,#8]
3F446C:  CMPNE.W         R8, #0
3F4470:  BNE             loc_3F4554
3F4472:  LDR             R0, [R5,#0x10]; this
3F4474:  CBZ             R0, loc_3F4492
3F4476:  LDR             R1, =(dword_9595B8 - 0x3F447C)
3F4478:  ADD             R1, PC; dword_9595B8 ; void *
3F447A:  LDR             R2, [R1]
3F447C:  ADDS            R2, #1
3F447E:  STR             R2, [R1]
3F4480:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F4484:  LDR             R1, [R5,#0x10]
3F4486:  CMP             R0, R1
3F4488:  ITT NE
3F448A:  STRNE           R0, [R5,#0x10]
3F448C:  CMPNE.W         R8, #0
3F4490:  BNE             loc_3F4554
3F4492:  LDR             R0, [R5,#0xC]; this
3F4494:  CBZ             R0, loc_3F44B2
3F4496:  LDR             R1, =(dword_9595B8 - 0x3F449C)
3F4498:  ADD             R1, PC; dword_9595B8 ; void *
3F449A:  LDR             R2, [R1]
3F449C:  ADDS            R2, #1
3F449E:  STR             R2, [R1]
3F44A0:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F44A4:  LDR             R1, [R5,#0xC]
3F44A6:  CMP             R0, R1
3F44A8:  ITT NE
3F44AA:  STRNE           R0, [R5,#0xC]
3F44AC:  CMPNE.W         R8, #0
3F44B0:  BNE             loc_3F4554
3F44B2:  LDR             R0, [R5,#0x14]; this
3F44B4:  CBZ             R0, loc_3F44D2
3F44B6:  LDR             R1, =(dword_9595B8 - 0x3F44BC)
3F44B8:  ADD             R1, PC; dword_9595B8 ; void *
3F44BA:  LDR             R2, [R1]
3F44BC:  ADDS            R2, #1
3F44BE:  STR             R2, [R1]
3F44C0:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F44C4:  LDR             R1, [R5,#0x14]
3F44C6:  CMP             R0, R1
3F44C8:  ITT NE
3F44CA:  STRNE           R0, [R5,#0x14]
3F44CC:  CMPNE.W         R8, #0
3F44D0:  BNE             loc_3F4554
3F44D2:  LDR             R0, [R5,#0x18]; this
3F44D4:  CMP             R0, #0
3F44D6:  BEQ             loc_3F455C
3F44D8:  LDR             R1, =(dword_9595B8 - 0x3F44DE)
3F44DA:  ADD             R1, PC; dword_9595B8 ; void *
3F44DC:  LDR             R2, [R1]
3F44DE:  ADDS            R2, #1
3F44E0:  STR             R2, [R1]
3F44E2:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F44E6:  LDR             R1, [R5,#0x18]; void *
3F44E8:  CMP             R0, R1
3F44EA:  BEQ             loc_3F455C
3F44EC:  CMP.W           R8, #0
3F44F0:  MOV             R6, R5
3F44F2:  STR             R0, [R5,#0x18]
3F44F4:  BNE             loc_3F4554
3F44F6:  B               loc_3F455E
3F44F8:  MOVS            R0, #0
3F44FA:  POP.W           {R8}
3F44FE:  POP             {R4-R7,PC}
3F4500:  MOV             R0, R5; this
3F4502:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F4506:  MOV             R6, R0
3F4508:  CMP             R5, R6
3F450A:  BEQ             loc_3F455C
3F450C:  STR             R6, [R4,#0x2C]
3F450E:  SUBS            R0, R6, R5
3F4510:  LDR             R1, [R6,#8]
3F4512:  CMP             R1, #0
3F4514:  ITT NE
3F4516:  ADDNE           R1, R0
3F4518:  STRNE           R1, [R6,#8]
3F451A:  LDR             R1, [R6,#0xC]
3F451C:  CMP             R1, #0
3F451E:  ITT NE
3F4520:  ADDNE           R1, R0
3F4522:  STRNE           R1, [R6,#0xC]
3F4524:  LDR             R1, [R6,#0x10]
3F4526:  CMP             R1, #0
3F4528:  ITT NE
3F452A:  ADDNE           R1, R0
3F452C:  STRNE           R1, [R6,#0x10]
3F452E:  LDR             R1, [R6,#0x14]
3F4530:  CMP             R1, #0
3F4532:  ITT NE
3F4534:  ADDNE           R1, R0
3F4536:  STRNE           R1, [R6,#0x14]
3F4538:  LDR             R1, [R6,#0x18]
3F453A:  CMP             R1, #0
3F453C:  ITT NE
3F453E:  ADDNE           R0, R1
3F4540:  STRNE           R0, [R6,#0x18]
3F4542:  LDR             R0, [R6,#0x1C]
3F4544:  CBZ             R0, loc_3F454E
3F4546:  MOV             R0, R6; this
3F4548:  BLX             j__ZN14CCollisionData10GetLinkPtrEv; CCollisionData::GetLinkPtr(void)
3F454C:  STR             R6, [R0]
3F454E:  CMP.W           R8, #0
3F4552:  BEQ             loc_3F455E
3F4554:  MOVS            R0, #1
3F4556:  POP.W           {R8}
3F455A:  POP             {R4-R7,PC}
3F455C:  MOV             R6, R5
3F455E:  LDR             R0, [R6,#0x1C]; this
3F4560:  CBZ             R0, loc_3F457E
3F4562:  LDR             R1, =(dword_9595B8 - 0x3F4568)
3F4564:  ADD             R1, PC; dword_9595B8 ; void *
3F4566:  LDR             R2, [R1]
3F4568:  ADDS            R2, #1
3F456A:  STR             R2, [R1]
3F456C:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F4570:  LDR             R1, [R6,#0x1C]
3F4572:  CMP             R0, R1
3F4574:  ITTE NE
3F4576:  STRNE           R0, [R6,#0x1C]
3F4578:  MOVNE           R0, #1
3F457A:  MOVEQ           R0, #0
3F457C:  B               loc_3F4580
3F457E:  MOVS            R0, #0
3F4580:  AND.W           R0, R0, R8
3F4584:  POP.W           {R8}
3F4588:  POP             {R4-R7,PC}
