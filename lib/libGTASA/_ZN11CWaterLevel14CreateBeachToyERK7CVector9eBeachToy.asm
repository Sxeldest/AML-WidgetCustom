; =========================================================
; Game Engine Function: _ZN11CWaterLevel14CreateBeachToyERK7CVector9eBeachToy
; Address            : 0x59C344 - 0x59C4A4
; =========================================================

59C344:  PUSH            {R4-R7,LR}
59C346:  ADD             R7, SP, #0xC
59C348:  PUSH.W          {R8}
59C34C:  MOV             R4, R0
59C34E:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x59C354)
59C350:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
59C352:  LDR             R0, [R0]; CObject::nNoTempObjects ...
59C354:  LDRH            R0, [R0]; CObject::nNoTempObjects
59C356:  CMP             R0, #0x95
59C358:  BHI.W           loc_59C42C
59C35C:  CMP             R1, #5
59C35E:  BEQ             loc_59C3AC
59C360:  LDR             R0, =(MI_BEACHBALL_ptr - 0x59C368)
59C362:  CMP             R1, #0xB
59C364:  ADD             R0, PC; MI_BEACHBALL_ptr
59C366:  LDR             R0, [R0]; MI_BEACHBALL
59C368:  LDRH            R6, [R0]
59C36A:  BNE             loc_59C38E
59C36C:  BLX.W           rand
59C370:  ADDS            R0, #3
59C372:  AND.W           R0, R0, #7
59C376:  CMP             R0, #7
59C378:  ITTE NE
59C37A:  ADRNE           R1, dword_59C4AC
59C37C:  LDRNE.W         R1, [R1,R0,LSL#2]
59C380:  MOVEQ           R1, #7; unsigned int
59C382:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x59C388)
59C384:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
59C386:  LDR             R0, [R0]; CObject::nNoTempObjects ...
59C388:  LDRH            R0, [R0]; CObject::nNoTempObjects
59C38A:  CMP             R0, #0x91
59C38C:  BCS             loc_59C42C
59C38E:  SUBS            R0, R1, #1; switch 10 cases
59C390:  MOV.W           R8, #0
59C394:  CMP             R0, #9
59C396:  BHI             def_59C398; jumptable 0059C398 default case, case 5
59C398:  TBB.W           [PC,R0]; switch jump
59C39C:  DCB 5; jump table for switch statement
59C39D:  DCB 0x15
59C39E:  DCB 0x1B
59C39F:  DCB 0x18
59C3A0:  DCB 0x33
59C3A1:  DCB 0x21
59C3A2:  DCB 0x24
59C3A3:  DCB 0x27
59C3A4:  DCB 0x2A
59C3A5:  DCB 0x2D
59C3A6:  LDR             R0, =(MI_BEACHBALL_ptr - 0x59C3AC); jumptable 0059C398 case 1
59C3A8:  ADD             R0, PC; MI_BEACHBALL_ptr
59C3AA:  B               loc_59C3D6
59C3AC:  BLX.W           rand
59C3B0:  AND.W           R0, R0, #7
59C3B4:  SUBS            R0, #1; switch 7 cases
59C3B6:  CMP             R0, #6
59C3B8:  BHI             def_59C3BA; jumptable 0059C398 case 3
59C3BA:  TBB.W           [PC,R0]; switch jump
59C3BE:  DCB 4; jump table for switch statement
59C3BF:  DCB 0xA
59C3C0:  DCB 7
59C3C1:  DCB 0xA
59C3C2:  DCB 7
59C3C3:  DCB 0xA
59C3C4:  DCB 4
59C3C5:  ALIGN 2
59C3C6:  LDR             R0, =(MI_LOUNGE_WOOD_UP_ptr - 0x59C3CC); jumptable 0059C398 case 2
59C3C8:  ADD             R0, PC; MI_LOUNGE_WOOD_UP_ptr
59C3CA:  B               loc_59C3D6
59C3CC:  LDR             R0, =(MI_LOUNGE_WOOD_DN_ptr - 0x59C3D2); jumptable 0059C398 case 4
59C3CE:  ADD             R0, PC; MI_LOUNGE_WOOD_DN_ptr
59C3D0:  B               loc_59C3D6
59C3D2:  LDR             R0, =(MI_LOUNGE_TOWEL_UP_ptr - 0x59C3D8); jumptable 0059C398 case 3
59C3D4:  ADD             R0, PC; MI_LOUNGE_TOWEL_UP_ptr
59C3D6:  LDR             R0, [R0]
59C3D8:  MOV.W           R8, #0
59C3DC:  B               loc_59C400
59C3DE:  LDR             R0, =(MI_LOTION_ptr - 0x59C3E4); jumptable 0059C398 case 6
59C3E0:  ADD             R0, PC; MI_LOTION_ptr
59C3E2:  B               loc_59C3FA
59C3E4:  LDR             R0, =(MI_BEACHTOWEL01_ptr - 0x59C3EA); jumptable 0059C398 case 7
59C3E6:  ADD             R0, PC; MI_BEACHTOWEL01_ptr
59C3E8:  B               loc_59C3FA
59C3EA:  LDR             R0, =(MI_BEACHTOWEL02_ptr - 0x59C3F0); jumptable 0059C398 case 8
59C3EC:  ADD             R0, PC; MI_BEACHTOWEL02_ptr
59C3EE:  B               loc_59C3FA
59C3F0:  LDR             R0, =(MI_BEACHTOWEL03_ptr - 0x59C3F6); jumptable 0059C398 case 9
59C3F2:  ADD             R0, PC; MI_BEACHTOWEL03_ptr
59C3F4:  B               loc_59C3FA
59C3F6:  LDR             R0, =(MI_BEACHTOWEL04_ptr - 0x59C3FC); jumptable 0059C398 case 10
59C3F8:  ADD             R0, PC; MI_BEACHTOWEL04_ptr
59C3FA:  LDR             R0, [R0]
59C3FC:  MOV.W           R8, #1
59C400:  LDRH            R6, [R0]
59C402:  MOV.W           R0, #(elf_hash_bucket+0x88); jumptable 0059C398 default case, case 5
59C406:  BLX.W           j__ZN7CObjectnwEj; CObject::operator new(uint)
59C40A:  MOV             R1, R6; int
59C40C:  MOVS            R2, #1; bool
59C40E:  MOV             R5, R0
59C410:  BLX.W           j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
59C414:  CBZ             R5, loc_59C42C
59C416:  LDRD.W          R2, R1, [R4]
59C41A:  LDR             R3, [R5,#0x14]
59C41C:  LDR             R0, [R4,#8]
59C41E:  CBZ             R3, loc_59C430
59C420:  STR             R2, [R3,#0x30]
59C422:  LDR             R2, [R5,#0x14]
59C424:  STR             R1, [R2,#0x34]
59C426:  LDR             R1, [R5,#0x14]
59C428:  ADDS            R1, #0x38 ; '8'
59C42A:  B               loc_59C438
59C42C:  MOVS            R5, #0
59C42E:  B               loc_59C49C
59C430:  STRD.W          R2, R1, [R5,#4]
59C434:  ADD.W           R1, R5, #0xC
59C438:  STR             R0, [R1]
59C43A:  LDR             R0, [R5,#0x18]
59C43C:  CBZ             R0, loc_59C452
59C43E:  LDR             R1, [R0,#4]
59C440:  LDR             R0, [R5,#0x14]
59C442:  ADDS            R1, #0x10
59C444:  CBZ             R0, loc_59C44C
59C446:  BLX.W           j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
59C44A:  B               loc_59C452
59C44C:  ADDS            R0, R5, #4
59C44E:  BLX.W           j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
59C452:  MOVS            R0, #0
59C454:  VMOV.I32        Q8, #0
59C458:  STRD.W          R0, R0, [R5,#0x58]
59C45C:  MOVS            R0, #3
59C45E:  STRB.W          R0, [R5,#0x140]
59C462:  ADD.W           R1, R5, #0x48 ; 'H'
59C466:  LDR             R0, [R5]
59C468:  VST1.32         {D16-D17}, [R1]
59C46C:  MOV             R1, R8
59C46E:  LDR             R2, [R0,#0x14]
59C470:  MOV             R0, R5
59C472:  BLX             R2
59C474:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x59C47C)
59C476:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59C47E)
59C478:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
59C47A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59C47C:  LDR             R0, [R0]; CObject::nNoTempObjects ...
59C47E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
59C480:  LDRH            R2, [R0]; CObject::nNoTempObjects
59C482:  LDR             R1, [R1]; CEntity *
59C484:  ADDS            R2, #1
59C486:  STRH            R2, [R0]; CObject::nNoTempObjects
59C488:  MOV             R0, #0x2932E00
59C490:  ADD             R0, R1
59C492:  STR.W           R0, [R5,#0x154]
59C496:  MOV             R0, R5; this
59C498:  BLX.W           j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
59C49C:  MOV             R0, R5
59C49E:  POP.W           {R8}
59C4A2:  POP             {R4-R7,PC}
