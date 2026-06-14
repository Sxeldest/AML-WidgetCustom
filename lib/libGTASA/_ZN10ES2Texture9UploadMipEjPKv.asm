; =========================================================
; Game Engine Function: _ZN10ES2Texture9UploadMipEjPKv
; Address            : 0x1D1460 - 0x1D164C
; =========================================================

1D1460:  PUSH            {R4-R7,LR}
1D1462:  ADD             R7, SP, #0xC
1D1464:  PUSH.W          {R8-R10}
1D1468:  MOV             R8, R2
1D146A:  MOV             R6, R1
1D146C:  MOV             R4, R0
1D146E:  BLX             j__ZNK9RQTexture10GetMipSizeEj; RQTexture::GetMipSize(uint)
1D1472:  MOV             R5, R0
1D1474:  LDR             R0, =(renderQueue_ptr - 0x1D147C)
1D1476:  MOVS            R3, #0x16
1D1478:  ADD             R0, PC; renderQueue_ptr
1D147A:  LDR             R1, [R0]; renderQueue
1D147C:  LDR             R2, [R1]
1D147E:  LDR.W           R12, [R2,#0x264]
1D1482:  LDRD.W          LR, R0, [R2,#0x270]
1D1486:  STR.W           R3, [R2,#0x278]
1D148A:  STR             R3, [R0]
1D148C:  LDR.W           R0, [R2,#0x274]
1D1490:  ADDS            R0, #4
1D1492:  STR.W           R0, [R2,#0x274]
1D1496:  LDR             R0, [R1]
1D1498:  LDR.W           R2, [R0,#0x274]
1D149C:  STR             R4, [R2]
1D149E:  LDR.W           R2, [R0,#0x274]
1D14A2:  ADDS            R2, #4
1D14A4:  STR.W           R2, [R0,#0x274]
1D14A8:  LDR             R0, [R1]
1D14AA:  LDR.W           R2, [R0,#0x274]
1D14AE:  STR             R6, [R2]
1D14B0:  LDR.W           R2, [R0,#0x274]
1D14B4:  ADDS            R2, #4
1D14B6:  STR.W           R2, [R0,#0x274]
1D14BA:  LDR             R0, [R1]
1D14BC:  LDR.W           R1, [R0,#0x274]
1D14C0:  STR             R5, [R1]
1D14C2:  LDR.W           R1, [R0,#0x274]
1D14C6:  ADDS            R1, #4
1D14C8:  STR.W           R1, [R0,#0x274]
1D14CC:  ADD.W           R0, LR, R5
1D14D0:  ADDS            R0, #0x43 ; 'C'
1D14D2:  CMP             R0, R12
1D14D4:  BLS             loc_1D157E
1D14D6:  LDR             R0, =(renderQueue_ptr - 0x1D14DE)
1D14D8:  MOVS            R3, #0
1D14DA:  ADD             R0, PC; renderQueue_ptr
1D14DC:  LDR             R0, [R0]; renderQueue
1D14DE:  LDR             R1, [R0]
1D14E0:  LDR.W           R2, [R1,#0x274]
1D14E4:  STR             R3, [R2]
1D14E6:  LDR.W           R2, [R1,#0x274]
1D14EA:  ADDS            R2, #4
1D14EC:  STR.W           R2, [R1,#0x274]
1D14F0:  LDR             R1, [R0]
1D14F2:  LDR.W           R2, [R1,#0x274]
1D14F6:  ADDS            R2, #3
1D14F8:  BIC.W           R2, R2, #3
1D14FC:  STR.W           R2, [R1,#0x274]
1D1500:  STR.W           R8, [R2]
1D1504:  LDR.W           R2, [R1,#0x274]
1D1508:  ADDS            R2, #4
1D150A:  STR.W           R2, [R1,#0x274]
1D150E:  LDR             R4, [R0]
1D1510:  LDRB.W          R0, [R4,#0x259]
1D1514:  CMP             R0, #0
1D1516:  ITT NE
1D1518:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D151C:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D1520:  LDRD.W          R1, R2, [R4,#0x270]
1D1524:  ADD.W           R0, R4, #0x270
1D1528:  DMB.W           ISH
1D152C:  SUBS            R1, R2, R1
1D152E:  LDREX.W         R2, [R0]
1D1532:  ADD             R2, R1
1D1534:  STREX.W         R3, R2, [R0]
1D1538:  CMP             R3, #0
1D153A:  BNE             loc_1D152E
1D153C:  DMB.W           ISH
1D1540:  LDRB.W          R0, [R4,#0x259]
1D1544:  CMP             R0, #0
1D1546:  ITT NE
1D1548:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D154C:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D1550:  LDRB.W          R0, [R4,#0x258]
1D1554:  CMP             R0, #0
1D1556:  ITT EQ
1D1558:  MOVEQ           R0, R4; this
1D155A:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D155E:  LDR.W           R1, [R4,#0x270]
1D1562:  LDR.W           R0, [R4,#0x264]
1D1566:  ADD.W           R1, R1, #0x400
1D156A:  CMP             R1, R0
1D156C:  ITT HI
1D156E:  MOVHI           R0, R4; this
1D1570:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D1574:  LDR             R0, =(renderQueue_ptr - 0x1D157A)
1D1576:  ADD             R0, PC; renderQueue_ptr
1D1578:  LDR             R0, [R0]; renderQueue
1D157A:  LDR             R0, [R0]
1D157C:  B               loc_1D163A
1D157E:  LDR             R0, =(renderQueue_ptr - 0x1D158E)
1D1580:  ADDS            R2, R5, #3
1D1582:  BIC.W           R6, R2, #3
1D1586:  ANDS.W          R9, R5, #3
1D158A:  ADD             R0, PC; renderQueue_ptr
1D158C:  MOV             R2, R6
1D158E:  LDR.W           R10, [R0]; renderQueue
1D1592:  LDR.W           R0, [R10]
1D1596:  LDR.W           R1, [R0,#0x274]
1D159A:  IT EQ
1D159C:  MOVEQ           R2, R5
1D159E:  STR             R2, [R1]
1D15A0:  MOV             R2, R5; size_t
1D15A2:  LDR.W           R1, [R0,#0x274]
1D15A6:  ADDS            R1, #4
1D15A8:  STR.W           R1, [R0,#0x274]
1D15AC:  LDR.W           R4, [R10]
1D15B0:  MOV             R1, R8; void *
1D15B2:  LDR.W           R0, [R4,#0x274]
1D15B6:  ADDS            R0, #3
1D15B8:  BIC.W           R0, R0, #3; void *
1D15BC:  STR.W           R0, [R4,#0x274]
1D15C0:  BLX             memcpy_1
1D15C4:  LDR.W           R0, [R4,#0x274]
1D15C8:  CMP.W           R9, #0
1D15CC:  IT EQ
1D15CE:  MOVEQ           R6, R5
1D15D0:  ADD             R0, R6
1D15D2:  STR.W           R0, [R4,#0x274]
1D15D6:  LDR.W           R4, [R10]
1D15DA:  LDRB.W          R0, [R4,#0x259]
1D15DE:  CMP             R0, #0
1D15E0:  ITT NE
1D15E2:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D15E6:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D15EA:  LDRD.W          R1, R2, [R4,#0x270]
1D15EE:  ADD.W           R0, R4, #0x270
1D15F2:  DMB.W           ISH
1D15F6:  SUBS            R1, R2, R1
1D15F8:  LDREX.W         R2, [R0]
1D15FC:  ADD             R2, R1
1D15FE:  STREX.W         R3, R2, [R0]
1D1602:  CMP             R3, #0
1D1604:  BNE             loc_1D15F8
1D1606:  DMB.W           ISH
1D160A:  LDRB.W          R0, [R4,#0x259]
1D160E:  CMP             R0, #0
1D1610:  ITT NE
1D1612:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D1616:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D161A:  LDRB.W          R0, [R4,#0x258]
1D161E:  CMP             R0, #0
1D1620:  ITT EQ
1D1622:  MOVEQ           R0, R4; this
1D1624:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D1628:  LDR.W           R1, [R4,#0x270]
1D162C:  LDR.W           R0, [R4,#0x264]
1D1630:  ADD.W           R1, R1, #0x400
1D1634:  CMP             R1, R0
1D1636:  BLS             loc_1D1646
1D1638:  MOV             R0, R4; this
1D163A:  POP.W           {R8-R10}
1D163E:  POP.W           {R4-R7,LR}
1D1642:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
1D1646:  POP.W           {R8-R10}
1D164A:  POP             {R4-R7,PC}
