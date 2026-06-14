; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler24ComputeResponsePedFriendERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B5358 - 0x4B548C
; =========================================================

4B5358:  PUSH            {R4-R7,LR}
4B535A:  ADD             R7, SP, #0xC
4B535C:  PUSH.W          {R8}
4B5360:  LDR             R4, [R0,#0x10]
4B5362:  MOV             R5, R1
4B5364:  CMP             R4, #0
4B5366:  BEQ.W           loc_4B5484
4B536A:  LDRSH.W         R8, [R0,#0xA]
4B536E:  MOV.W           R0, #0xFFFFFFFF; int
4B5372:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4B5376:  LDR.W           R0, [R0,#0x444]
4B537A:  MOV.W           R6, #0x2D4
4B537E:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B5386)
4B5380:  LDR             R0, [R0,#0x38]
4B5382:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B5384:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B5386:  MLA.W           R0, R0, R6, R1
4B538A:  CMP             R0, R5
4B538C:  BEQ             loc_4B5484
4B538E:  MOV.W           R0, #0xFFFFFFFF; int
4B5392:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4B5396:  LDR.W           R0, [R0,#0x444]
4B539A:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B53A0)
4B539C:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B539E:  LDR             R0, [R0,#0x38]
4B53A0:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B53A2:  MLA.W           R1, R0, R6, R1
4B53A6:  LDR             R1, [R1,#0xC]
4B53A8:  CMP             R1, R4
4B53AA:  BEQ             loc_4B5484
4B53AC:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B53B6)
4B53AE:  MOV.W           R1, #0x2D4
4B53B2:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B53B4:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B53B6:  MLA.W           R2, R0, R1, R2
4B53BA:  LDR             R2, [R2,#0x10]
4B53BC:  CMP             R2, R4
4B53BE:  BEQ             loc_4B5484
4B53C0:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B53C6)
4B53C2:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B53C4:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B53C6:  MLA.W           R1, R0, R1, R2
4B53CA:  LDR             R1, [R1,#0x14]
4B53CC:  CMP             R1, R4
4B53CE:  BEQ             loc_4B5484
4B53D0:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B53DA)
4B53D2:  MOV.W           R1, #0x2D4
4B53D6:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B53D8:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B53DA:  MLA.W           R2, R0, R1, R2
4B53DE:  LDR             R2, [R2,#0x18]
4B53E0:  CMP             R2, R4
4B53E2:  BEQ             loc_4B5484
4B53E4:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B53EA)
4B53E6:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B53E8:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B53EA:  MLA.W           R1, R0, R1, R2
4B53EE:  LDR             R1, [R1,#0x1C]
4B53F0:  CMP             R1, R4
4B53F2:  BEQ             loc_4B5484
4B53F4:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B53FE)
4B53F6:  MOV.W           R1, #0x2D4
4B53FA:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B53FC:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B53FE:  MLA.W           R2, R0, R1, R2
4B5402:  LDR             R2, [R2,#0x20]
4B5404:  CMP             R2, R4
4B5406:  BEQ             loc_4B5484
4B5408:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B540E)
4B540A:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B540C:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B540E:  MLA.W           R1, R0, R1, R2
4B5412:  LDR             R1, [R1,#0x24]
4B5414:  CMP             R1, R4
4B5416:  BEQ             loc_4B5484
4B5418:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B5422)
4B541A:  MOV.W           R2, #(elf_hash_bucket+0x1D8); CPed *
4B541E:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B5420:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B5422:  MLA.W           R0, R0, R2, R1
4B5426:  LDR             R0, [R0,#0x28]
4B5428:  CMP             R0, R4
4B542A:  ITT NE
4B542C:  LDRNE           R0, [R5]
4B542E:  CMPNE           R4, R0
4B5430:  BEQ             loc_4B5484
4B5432:  LDR             R0, [R5,#0xC]
4B5434:  CMP             R0, R4
4B5436:  ITT NE
4B5438:  LDRNE           R0, [R5,#0x10]
4B543A:  CMPNE           R0, R4
4B543C:  BEQ             loc_4B5484
4B543E:  LDR             R0, [R5,#0x14]
4B5440:  CMP             R0, R4
4B5442:  ITT NE
4B5444:  LDRNE           R0, [R5,#0x18]
4B5446:  CMPNE           R0, R4
4B5448:  BEQ             loc_4B5484
4B544A:  LDR             R0, [R5,#0x1C]
4B544C:  CMP             R0, R4
4B544E:  ITT NE
4B5450:  LDRNE           R0, [R5,#0x20]
4B5452:  CMPNE           R0, R4
4B5454:  BEQ             loc_4B5484
4B5456:  LDR             R0, [R5,#0x24]
4B5458:  CMP             R0, R4
4B545A:  ITT NE
4B545C:  LDRNE           R0, [R5,#0x28]
4B545E:  CMPNE           R0, R4
4B5460:  BEQ             loc_4B5484
4B5462:  MOVW            R0, #0x5E3
4B5466:  CMP             R8, R0
4B5468:  BEQ             loc_4B547C
4B546A:  MOVW            R0, #0x5E2
4B546E:  CMP             R8, R0
4B5470:  BNE             loc_4B5484
4B5472:  MOV             R0, R5; this
4B5474:  MOV             R1, R4; CPedGroup *
4B5476:  BLX             j__ZN18CGroupEventHandler21ComputeDoDealResponseEP9CPedGroupP4CPedS3_; CGroupEventHandler::ComputeDoDealResponse(CPedGroup *,CPed *,CPed *)
4B547A:  B               loc_4B5484
4B547C:  MOV             R0, R5; this
4B547E:  MOV             R1, R4; CPedGroup *
4B5480:  BLX             j__ZN18CGroupEventHandler20ComputeGreetResponseEP9CPedGroupP4CPedS3_; CGroupEventHandler::ComputeGreetResponse(CPedGroup *,CPed *,CPed *)
4B5484:  MOVS            R0, #0
4B5486:  POP.W           {R8}
4B548A:  POP             {R4-R7,PC}
