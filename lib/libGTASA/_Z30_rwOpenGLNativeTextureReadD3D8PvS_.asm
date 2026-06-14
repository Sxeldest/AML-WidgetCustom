; =========================================================
; Game Engine Function: _Z30_rwOpenGLNativeTextureReadD3D8PvS_
; Address            : 0x1B1548 - 0x1B19EE
; =========================================================

1B1548:  PUSH            {R4-R7,LR}
1B154A:  ADD             R7, SP, #0xC
1B154C:  PUSH.W          {R8-R11}
1B1550:  SUB             SP, SP, #0x8C
1B1552:  MOV             R11, R0
1B1554:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B1560)
1B1558:  MOV             R5, R1
1B155A:  MOVS            R2, #0x44 ; 'D'; size_t
1B155C:  ADD             R0, PC; __stack_chk_guard_ptr
1B155E:  LDR             R0, [R0]; __stack_chk_guard
1B1560:  LDR             R0, [R0]
1B1562:  STR             R0, [SP,#0xA8+var_20]
1B1564:  MOVS            R0, #8
1B1566:  STR             R0, [SP,#0xA8+var_68]
1B1568:  ADD             R0, SP, #0xA8+var_68
1B156A:  ADDS            R1, R0, #4; void *
1B156C:  MOV             R0, R11; int
1B156E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B1572:  CMP             R0, #0x44 ; 'D'
1B1574:  BNE             loc_1B158A
1B1576:  ADD             R1, SP, #0xA8+var_80; void *
1B1578:  MOV             R0, R11; int
1B157A:  MOVS            R2, #0x10; size_t
1B157C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B1580:  CMP             R0, #0x10
1B1582:  BNE             loc_1B158A
1B1584:  LDRB.W          R0, [SP,#0x37]
1B1588:  CBZ             R0, loc_1B15A8
1B158A:  MOVS            R0, #0
1B158C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1B1596)
1B1590:  LDR             R2, [SP,#0xA8+var_20]
1B1592:  ADD             R1, PC; __stack_chk_guard_ptr
1B1594:  LDR             R1, [R1]; __stack_chk_guard
1B1596:  LDR             R1, [R1]
1B1598:  SUBS            R1, R1, R2
1B159A:  ITTT EQ
1B159C:  ADDEQ           SP, SP, #0x8C
1B159E:  POPEQ.W         {R8-R11}
1B15A2:  POPEQ           {R4-R7,PC}
1B15A4:  BLX             __stack_chk_fail
1B15A8:  LDR             R6, [SP,#0xA8+var_80]
1B15AA:  LDRB.W          R3, [SP,#0x36]
1B15AE:  AND.W           R4, R6, #0xFF00
1B15B2:  CMP             R3, #5
1B15B4:  BHI             loc_1B15F8
1B15B6:  MOVS            R0, #1
1B15B8:  LSLS            R0, R3
1B15BA:  TST.W           R0, #0x26
1B15BE:  BNE             loc_1B1638
1B15C0:  TST.W           R0, #0x11
1B15C4:  BEQ             loc_1B15F8
1B15C6:  TST.W           R6, #0xF00
1B15CA:  BEQ             loc_1B1616
1B15CC:  AND.W           R0, R6, #0x9F00
1B15D0:  TST.W           R6, #0x4000
1B15D4:  IT NE
1B15D6:  ORRNE.W         R4, R0, #0x2000
1B15DA:  TST.W           R4, #0x2000
1B15DE:  BNE             loc_1B161C
1B15E0:  MOV             R0, R4
1B15E2:  BFC.W           R0, #0xC, #0x14
1B15E6:  CMP.W           R0, #0x400
1B15EA:  IT NE
1B15EC:  CMPNE.W         R0, #0x600
1B15F0:  BNE             loc_1B1638
1B15F2:  ORR.W           R4, R4, #0x600
1B15F6:  B               loc_1B1638
1B15F8:  MOVS            R0, #0
1B15FA:  STR             R0, [SP,#0xA8+byte_count]
1B15FC:  MOVS            R0, #0x8000000D; int
1B1602:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1B1606:  STR             R0, [SP,#0xA8+var_6C]
1B1608:  ADD             R0, SP, #0xA8+byte_count
1B160A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1B160E:  LDRB.W          R3, [SP,#0x36]
1B1612:  LDR             R6, [SP,#0xA8+var_80]
1B1614:  B               loc_1B1638
1B1616:  AND.W           R0, R6, #0xDA00
1B161A:  B               loc_1B1634
1B161C:  AND.W           R0, R4, #0xF00
1B1620:  CMP.W           R0, #0x600
1B1624:  BNE             loc_1B1630
1B1626:  AND.W           R0, R4, #0xD900
1B162A:  ORR.W           R4, R0, #0x600
1B162E:  B               loc_1B1638
1B1630:  AND.W           R0, R4, #0xDA00
1B1634:  ORR.W           R4, R0, #0x500
1B1638:  ORRS            R3, R4
1B163A:  LDRH.W          R0, [SP,#0xA8+var_78]; int
1B163E:  LDRH.W          R1, [SP,#0xA8+var_78+2]; int
1B1642:  ORR.W           R3, R3, #0x9000; int
1B1646:  LDRB.W          R2, [SP,#0x34]; int
1B164A:  ORR.W           R6, R6, #0x9000
1B164E:  STR             R6, [SP,#0xA8+var_80]
1B1650:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1B1654:  MOV             R4, R0
1B1656:  CMP             R4, #0
1B1658:  BEQ             loc_1B158A
1B165A:  STR             R5, [SP,#0xA8+var_A8]
1B165C:  LDRB.W          R9, [R4,#0x22]
1B1660:  LDR             R0, [SP,#0xA8+var_80]
1B1662:  STR             R4, [SP,#0xA8+var_94]
1B1664:  CMP.W           R0, R9,LSL#8
1B1668:  BNE.W           loc_1B1780
1B166C:  LDRH.W          R0, [SP,#0xA8+var_78]
1B1670:  LDR             R1, [R4,#0xC]
1B1672:  CMP             R1, R0
1B1674:  BNE.W           loc_1B1780
1B1678:  LDRH.W          R0, [SP,#0xA8+var_78+2]
1B167C:  LDR             R1, [R4,#0x10]
1B167E:  CMP             R1, R0
1B1680:  BNE             loc_1B1780
1B1682:  ORR.W           R0, R9, #0xEF
1B1686:  EOR.W           R0, R0, #0x10
1B168A:  AND.W           R0, R0, R9
1B168E:  STRB.W          R0, [R4,#0x22]
1B1692:  LDRB.W          R1, [SP,#0x35]
1B1696:  CMP             R1, #0
1B1698:  BEQ             loc_1B1774
1B169A:  ADD.W           R8, SP, #0xA8+byte_count
1B169E:  MOV.W           R10, #0
1B16A2:  UXTB.W          R1, R10
1B16A6:  MOV             R0, R4
1B16A8:  MOVS            R2, #1
1B16AA:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1B16AE:  MOV             R5, R0
1B16B0:  MOV             R0, R11; int
1B16B2:  MOV             R1, R8; void *
1B16B4:  MOVS            R2, #4; size_t
1B16B6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B16BA:  CMP             R0, #4
1B16BC:  BNE.W           loc_1B158A
1B16C0:  ADD.W           R2, R4, #0xC
1B16C4:  LDM             R2, {R0-R2}
1B16C6:  LDR             R4, [SP,#0xA8+byte_count]
1B16C8:  MULS            R1, R2
1B16CA:  MULS            R0, R1
1B16CC:  ASRS            R1, R0, #0x1F
1B16CE:  ADD.W           R0, R0, R1,LSR#29
1B16D2:  CMP.W           R4, R0,ASR#3
1B16D6:  BLE             loc_1B174A
1B16D8:  MOV             R0, R4; byte_count
1B16DA:  BLX             malloc
1B16DE:  MOV             R6, R0
1B16E0:  MOV             R0, R11; int
1B16E2:  MOV             R1, R6; void *
1B16E4:  MOV             R2, R4; size_t
1B16E6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B16EA:  LDR             R1, [SP,#0xA8+byte_count]
1B16EC:  CMP             R0, R1
1B16EE:  BNE.W           loc_1B19E6
1B16F2:  LDR             R1, [SP,#0xA8+var_94]
1B16F4:  ADD.W           R0, R0, R0,LSL#1
1B16F8:  LDRD.W          R12, R2, [R1,#0xC]
1B16FC:  LSRS            R0, R0, #2
1B16FE:  LDR             R3, [R1,#0x14]
1B1700:  MULS            R3, R2
1B1702:  MUL.W           R3, R3, R12
1B1706:  ASRS            R4, R3, #0x1F
1B1708:  ADD.W           R3, R3, R4,LSR#29
1B170C:  MOV             R4, R1
1B170E:  CMP.W           R0, R3,ASR#3
1B1712:  BNE             loc_1B1742
1B1714:  MUL.W           R0, R2, R12
1B1718:  CMP             R0, #1
1B171A:  BLT             loc_1B1742
1B171C:  MOVS            R0, #0
1B171E:  ADD.W           R1, R6, R0,LSL#2
1B1722:  ADD.W           R2, R0, R0,LSL#1
1B1726:  LDRB            R3, [R1,#2]
1B1728:  STRB            R3, [R5,R2]
1B172A:  ADD             R2, R5
1B172C:  LDRB            R1, [R1,#1]
1B172E:  STRB            R1, [R2,#1]
1B1730:  LDRB.W          R1, [R6,R0,LSL#2]
1B1734:  ADDS            R0, #1
1B1736:  STRB            R1, [R2,#2]
1B1738:  LDRD.W          R1, R2, [R4,#0xC]
1B173C:  MULS            R1, R2
1B173E:  CMP             R0, R1
1B1740:  BLT             loc_1B171E
1B1742:  MOV             R0, R6; p
1B1744:  BLX             free
1B1748:  B               loc_1B175E
1B174A:  MOV             R0, R11; int
1B174C:  MOV             R1, R5; void *
1B174E:  MOV             R2, R4; size_t
1B1750:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B1754:  LDR             R1, [SP,#0xA8+byte_count]
1B1756:  LDR             R4, [SP,#0xA8+var_94]
1B1758:  CMP             R0, R1
1B175A:  BNE.W           loc_1B158A
1B175E:  MOV             R0, R4
1B1760:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1B1764:  LDRB.W          R0, [SP,#0x35]
1B1768:  ADD.W           R10, R10, #1
1B176C:  CMP             R10, R0
1B176E:  BLT             loc_1B16A2
1B1770:  LDRB.W          R0, [R4,#0x22]
1B1774:  AND.W           R1, R9, #0x10
1B1778:  ORRS            R0, R1
1B177A:  STRB.W          R0, [R4,#0x22]
1B177E:  B               loc_1B1978
1B1780:  LDRB.W          R0, [SP,#0x35]
1B1784:  CMP             R0, #0
1B1786:  BEQ.W           loc_1B1978
1B178A:  LDR             R0, =(RwEngineInstance_ptr - 0x1B1798)
1B178C:  ADD             R5, SP, #0xA8+byte_count
1B178E:  MOVS            R6, #0
1B1790:  MOV.W           R8, #0xFF
1B1794:  ADD             R0, PC; RwEngineInstance_ptr
1B1796:  LDR             R0, [R0]; RwEngineInstance
1B1798:  STR             R0, [SP,#0xA8+var_9C]
1B179A:  LDR             R0, =(RwEngineInstance_ptr - 0x1B17A0)
1B179C:  ADD             R0, PC; RwEngineInstance_ptr
1B179E:  LDR             R0, [R0]; RwEngineInstance
1B17A0:  STRD.W          R0, R11, [SP,#0xA8+var_A4]
1B17A4:  B               loc_1B1966
1B17A6:  MOV             R0, R4
1B17A8:  BLX             j__Z20RwRasterGetNumLevelsP8RwRaster; RwRasterGetNumLevels(RwRaster *)
1B17AC:  CMP             R6, R0
1B17AE:  BGE             loc_1B17D4
1B17B0:  LDRH.W          R0, [SP,#0xA8+var_78+2]
1B17B4:  LDRH.W          R1, [SP,#0xA8+var_78]
1B17B8:  LDRB.W          R2, [SP,#0x37]
1B17BC:  LSRS.W          R10, R0, R6
1B17C0:  IT EQ
1B17C2:  MOVEQ.W         R10, #1
1B17C6:  LSRS.W          R5, R1, R6
1B17CA:  IT EQ
1B17CC:  MOVEQ           R5, #1
1B17CE:  CBZ             R2, loc_1B17DE
1B17D0:  MOVS            R2, #0x20 ; ' '
1B17D2:  B               loc_1B17EC
1B17D4:  LDR             R1, [SP,#0xA8+byte_count]
1B17D6:  MOV             R0, R11
1B17D8:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
1B17DC:  B               loc_1B1876
1B17DE:  LDRB.W          R0, [SP,#0xA8+var_80+1]
1B17E2:  MOVS            R2, #8
1B17E4:  TST.W           R0, #0x60
1B17E8:  IT EQ
1B17EA:  MOVEQ           R2, #0x20 ; ' '; int
1B17EC:  MOV             R0, R5; int
1B17EE:  MOV             R1, R10; int
1B17F0:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1B17F4:  MOV             R9, R0
1B17F6:  CMP.W           R9, #0
1B17FA:  BEQ.W           loc_1B19DE
1B17FE:  MOV             R0, R9
1B1800:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1B1804:  LDRB.W          R0, [SP,#0xA8+var_80+1]
1B1808:  TST.W           R0, #0x60
1B180C:  BNE             loc_1B1856
1B180E:  LDR             R0, [SP,#0xA8+var_9C]
1B1810:  LDR             R1, [R0]
1B1812:  LDR             R0, [SP,#0xA8+byte_count]
1B1814:  LDR.W           R1, [R1,#0x12C]
1B1818:  BLX             R1
1B181A:  MOV             R1, R0; void *
1B181C:  CMP             R1, #0
1B181E:  BEQ.W           loc_1B19C4
1B1822:  LDR             R2, [SP,#0xA8+byte_count]; size_t
1B1824:  MOV             R0, R11; int
1B1826:  STR             R1, [SP,#0xA8+var_88]
1B1828:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B182C:  LDR             R1, [SP,#0xA8+byte_count]
1B182E:  CMP             R0, R1
1B1830:  BNE.W           loc_1B19C8
1B1834:  LDRB.W          R1, [SP,#0x37]
1B1838:  LDR.W           LR, [SP,#0xA8+var_88]
1B183C:  CMP             R1, #0
1B183E:  STR             R6, [SP,#0xA8+var_98]
1B1840:  BEQ             loc_1B1882
1B1842:  LDR             R0, [SP,#0xA8+var_A4]
1B1844:  LDR             R0, [R0]
1B1846:  LDR.W           R1, [R0,#0x130]
1B184A:  MOV             R0, LR
1B184C:  BLX             R1
1B184E:  LDR.W           R11, [SP,#0xA8+var_A0]
1B1852:  LDRD.W          R6, R4, [SP,#0xA8+var_98]
1B1856:  UXTB            R1, R6
1B1858:  MOV             R0, R4
1B185A:  MOVS            R2, #1
1B185C:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1B1860:  MOV             R0, R4
1B1862:  MOV             R1, R9
1B1864:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1B1868:  MOV             R0, R4
1B186A:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1B186E:  MOV             R0, R9
1B1870:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1B1874:  ADD             R5, SP, #0xA8+byte_count
1B1876:  LDRB.W          R0, [SP,#0x35]
1B187A:  ADDS            R6, #1
1B187C:  CMP             R6, R0
1B187E:  BLT             loc_1B1966
1B1880:  B               loc_1B1978
1B1882:  MOV             R1, R10
1B1884:  BLX             __aeabi_uidiv
1B1888:  STR             R0, [SP,#0xA8+var_84]
1B188A:  LDR             R0, [SP,#0xA8+var_80]
1B188C:  AND.W           R0, R0, #0xF00
1B1890:  CMP.W           R0, #0x600
1B1894:  BEQ             loc_1B18DE
1B1896:  CMP.W           R0, #0x500
1B189A:  BNE             loc_1B191C
1B189C:  LDR.W           LR, [SP,#0xA8+var_88]
1B18A0:  MOV.W           R12, #0
1B18A4:  LDRD.W          R2, R3, [R9,#0x10]
1B18A8:  LDR             R0, [SP,#0xA8+var_84]
1B18AA:  MLA.W           R2, R2, R12, R3
1B18AE:  MOVS            R3, #0
1B18B0:  MLA.W           R1, R12, R0, LR
1B18B4:  LDR.W           R6, [R1],#4
1B18B8:  LSRS            R4, R6, #0x10
1B18BA:  LSRS            R0, R6, #8
1B18BC:  STRB.W          R4, [R2,R3,LSL#2]
1B18C0:  ADD.W           R4, R2, R3,LSL#2
1B18C4:  ADDS            R3, #1
1B18C6:  STRB            R6, [R4,#2]
1B18C8:  CMP             R3, R5
1B18CA:  STRB            R0, [R4,#1]
1B18CC:  MOV.W           R0, R6,LSR#24
1B18D0:  STRB            R0, [R4,#3]
1B18D2:  BCC             loc_1B18B4
1B18D4:  ADD.W           R12, R12, #1
1B18D8:  CMP             R12, R10
1B18DA:  BCC             loc_1B18A4
1B18DC:  B               loc_1B1842
1B18DE:  LDR.W           LR, [SP,#0xA8+var_88]
1B18E2:  MOVS            R0, #0
1B18E4:  LDRD.W          R2, R3, [R9,#0x10]
1B18E8:  LDR             R1, [SP,#0xA8+var_84]
1B18EA:  MLA.W           R2, R2, R0, R3
1B18EE:  MOVS            R3, #0
1B18F0:  MLA.W           R1, R0, R1, LR
1B18F4:  LDR.W           R6, [R1],#4
1B18F8:  LSRS            R4, R6, #0x10
1B18FA:  STRB.W          R4, [R2,R3,LSL#2]
1B18FE:  ADD.W           R4, R2, R3,LSL#2
1B1902:  ADDS            R3, #1
1B1904:  STRB.W          R8, [R4,#3]
1B1908:  CMP             R3, R5
1B190A:  STRB            R6, [R4,#2]
1B190C:  MOV.W           R6, R6,LSR#8
1B1910:  STRB            R6, [R4,#1]
1B1912:  BCC             loc_1B18F4
1B1914:  ADDS            R0, #1
1B1916:  CMP             R0, R10
1B1918:  BCC             loc_1B18E4
1B191A:  B               loc_1B1842
1B191C:  LDRB.W          R0, [SP,#0x34]
1B1920:  MOV.W           R11, #0
1B1924:  LDR.W           LR, [SP,#0xA8+var_88]
1B1928:  STRD.W          R10, R9, [SP,#0xA8+var_90]
1B192C:  LSRS            R6, R0, #3
1B192E:  LDRD.W          R0, R1, [R9,#0x10]
1B1932:  MOVS            R4, #0
1B1934:  LDR             R2, [SP,#0xA8+var_84]
1B1936:  MLA.W           R9, R0, R11, R1
1B193A:  MLA.W           R10, R11, R2, LR
1B193E:  LDR             R2, [SP,#0xA8+var_80]; int
1B1940:  MOV             R0, R9; void *
1B1942:  MOV             R1, R10; void *
1B1944:  BLX             j__Z17_rwD3D8PixelToRGBPvS_i; _rwD3D8PixelToRGB(void *,void *,int)
1B1948:  ADDS            R4, #1
1B194A:  ADD             R10, R6
1B194C:  ADD.W           R9, R9, #4
1B1950:  CMP             R4, R5
1B1952:  BCC             loc_1B193E
1B1954:  LDR.W           R10, [SP,#0xA8+var_90]
1B1958:  ADD.W           R11, R11, #1
1B195C:  LDRD.W          R9, LR, [SP,#0xA8+var_8C]
1B1960:  CMP             R11, R10
1B1962:  BCC             loc_1B192E
1B1964:  B               loc_1B1842
1B1966:  MOV             R0, R11; int
1B1968:  MOV             R1, R5; void *
1B196A:  MOVS            R2, #4; size_t
1B196C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B1970:  CMP             R0, #4
1B1972:  BEQ.W           loc_1B17A6
1B1976:  B               loc_1B19DE
1B1978:  MOV             R0, R4
1B197A:  BLX             j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
1B197E:  MOV             R1, R4
1B1980:  MOV             R4, R0
1B1982:  CBZ             R4, loc_1B19C0
1B1984:  LDR             R0, [SP,#0xA8+var_64]
1B1986:  MOVW            R2, #0xFFFF
1B198A:  LDR             R1, [R4,#0x50]
1B198C:  BICS            R1, R2
1B198E:  UXTB            R2, R0
1B1990:  ORRS            R1, R2
1B1992:  AND.W           R2, R0, #0xF00
1B1996:  ORRS            R1, R2
1B1998:  AND.W           R0, R0, #0xF000
1B199C:  ORRS            R0, R1
1B199E:  STR             R0, [R4,#0x50]
1B19A0:  ADD             R0, SP, #0xA8+var_68
1B19A2:  MOV             R5, R0
1B19A4:  ADD.W           R1, R5, #8
1B19A8:  MOV             R0, R4
1B19AA:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
1B19AE:  ADD.W           R1, R5, #0x28 ; '('
1B19B2:  MOV             R0, R4
1B19B4:  BLX             j__Z20RwTextureSetMaskNameP9RwTexturePKc; RwTextureSetMaskName(RwTexture *,char const*)
1B19B8:  LDR             R0, [SP,#0xA8+var_A8]
1B19BA:  STR             R4, [R0]
1B19BC:  MOVS            R0, #1
1B19BE:  B               loc_1B158C
1B19C0:  MOV             R0, R1
1B19C2:  B               loc_1B19E0
1B19C4:  MOVS            R0, #0
1B19C6:  B               loc_1B19CA
1B19C8:  LDR             R0, [SP,#0xA8+var_88]
1B19CA:  LDR             R1, =(RwEngineInstance_ptr - 0x1B19D0)
1B19CC:  ADD             R1, PC; RwEngineInstance_ptr
1B19CE:  LDR             R1, [R1]; RwEngineInstance
1B19D0:  LDR             R1, [R1]
1B19D2:  LDR.W           R1, [R1,#0x130]
1B19D6:  BLX             R1
1B19D8:  MOV             R0, R9
1B19DA:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1B19DE:  MOV             R0, R4
1B19E0:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1B19E4:  B               loc_1B158A
1B19E6:  MOV             R0, R6; p
1B19E8:  BLX             free
1B19EC:  B               loc_1B158A
