; =========================================================
; Game Engine Function: _Z22RwTexDictionaryDestroyP15RwTexDictionary
; Address            : 0x1DB608 - 0x1DB714
; =========================================================

1DB608:  PUSH            {R4-R7,LR}
1DB60A:  ADD             R7, SP, #0xC
1DB60C:  PUSH.W          {R8-R11}
1DB610:  SUB             SP, SP, #4
1DB612:  MOV             R8, R0
1DB614:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB61E)
1DB616:  LDR             R1, =(dword_6BCF84 - 0x1DB620)
1DB618:  MOV             R4, R8
1DB61A:  ADD             R0, PC; RwEngineInstance_ptr
1DB61C:  ADD             R1, PC; dword_6BCF84
1DB61E:  LDR             R0, [R0]; RwEngineInstance
1DB620:  LDR             R1, [R1]
1DB622:  LDR             R0, [R0]
1DB624:  ADD             R0, R1
1DB626:  LDR             R1, [R0,#0x10]
1DB628:  CMP             R1, R8
1DB62A:  ITT EQ
1DB62C:  MOVEQ           R1, #0
1DB62E:  STREQ           R1, [R0,#0x10]
1DB630:  LDR.W           R10, [R4,#8]!
1DB634:  CMP             R10, R4
1DB636:  BEQ             loc_1DB6D8
1DB638:  LDR             R0, =(textureTKList_ptr - 0x1DB63E)
1DB63A:  ADD             R0, PC; textureTKList_ptr
1DB63C:  LDR.W           R9, [R0]; textureTKList
1DB640:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB646)
1DB642:  ADD             R0, PC; RwEngineInstance_ptr
1DB644:  LDR.W           R11, [R0]; RwEngineInstance
1DB648:  MOV             R5, R10
1DB64A:  SUB.W           R6, R5, #8
1DB64E:  LDR             R0, [R5,#0x4C]
1DB650:  LDR.W           R10, [R5]
1DB654:  SUBS            R1, R0, #1
1DB656:  STR             R1, [R5,#0x4C]
1DB658:  BGT             loc_1DB676
1DB65A:  LDR             R1, [R6]
1DB65C:  CMP             R1, #0
1DB65E:  ITT NE
1DB660:  LDRNE           R2, [R1,#0x2C]
1DB662:  CMPNE           R2, #0
1DB664:  BEQ             loc_1DB68E
1DB666:  MOVS            R0, #1
1DB668:  STR             R0, [R5,#0x4C]
1DB66A:  LDR             R0, [R1,#0x2C]
1DB66C:  BLX             j__ZN22TextureDatabaseRuntime21CanUnloadTextureEntryEP20TextureDatabaseEntry; TextureDatabaseRuntime::CanUnloadTextureEntry(TextureDatabaseEntry *)
1DB670:  CMP             R10, R4
1DB672:  BNE             loc_1DB648
1DB674:  B               loc_1DB6D8
1DB676:  CMP             R1, #1
1DB678:  BNE             loc_1DB688
1DB67A:  LDR             R0, [R6]
1DB67C:  CBZ             R0, loc_1DB688
1DB67E:  LDR             R0, [R0,#0x2C]
1DB680:  CMP             R0, #0
1DB682:  IT NE
1DB684:  BLXNE           j__ZN22TextureDatabaseRuntime21CanUnloadTextureEntryEP20TextureDatabaseEntry; TextureDatabaseRuntime::CanUnloadTextureEntry(TextureDatabaseEntry *)
1DB688:  CMP             R10, R4
1DB68A:  BNE             loc_1DB648
1DB68C:  B               loc_1DB6D8
1DB68E:  STR             R0, [R5,#0x4C]
1DB690:  MOV             R0, R9
1DB692:  MOV             R1, R6
1DB694:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1DB698:  LDR.W           R0, [R5,#-4]
1DB69C:  CMP             R0, #0
1DB69E:  ITTTT NE
1DB6A0:  LDRDNE.W        R0, R1, [R5]
1DB6A4:  STRNE           R0, [R1]
1DB6A6:  LDRDNE.W        R0, R1, [R5]
1DB6AA:  STRNE           R1, [R0,#4]
1DB6AC:  LDR             R0, [R6]
1DB6AE:  CBZ             R0, loc_1DB6B8
1DB6B0:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1DB6B4:  MOVS            R0, #0
1DB6B6:  STR             R0, [R6]
1DB6B8:  LDR             R0, [R5,#0x4C]
1DB6BA:  LDR             R1, =(dword_6BCF84 - 0x1DB6C4)
1DB6BC:  SUBS            R0, #1
1DB6BE:  STR             R0, [R5,#0x4C]
1DB6C0:  ADD             R1, PC; dword_6BCF84
1DB6C2:  LDR.W           R0, [R11]
1DB6C6:  LDR             R1, [R1]
1DB6C8:  LDR.W           R2, [R0,#0x140]
1DB6CC:  ADD             R0, R1
1DB6CE:  MOV             R1, R6
1DB6D0:  LDR             R0, [R0,#8]
1DB6D2:  BLX             R2
1DB6D4:  CMP             R10, R4
1DB6D6:  BNE             loc_1DB648
1DB6D8:  LDR             R0, =(texDictTKList_ptr - 0x1DB6E0)
1DB6DA:  MOV             R1, R8
1DB6DC:  ADD             R0, PC; texDictTKList_ptr
1DB6DE:  LDR             R0, [R0]; texDictTKList
1DB6E0:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1DB6E4:  LDR             R2, =(RwEngineInstance_ptr - 0x1DB6F0)
1DB6E6:  LDRD.W          R0, R1, [R8,#0x10]
1DB6EA:  STR             R0, [R1]
1DB6EC:  ADD             R2, PC; RwEngineInstance_ptr
1DB6EE:  LDRD.W          R0, R1, [R8,#0x10]
1DB6F2:  LDR             R3, =(dword_6BCF84 - 0x1DB6FC)
1DB6F4:  LDR             R2, [R2]; RwEngineInstance
1DB6F6:  STR             R1, [R0,#4]
1DB6F8:  ADD             R3, PC; dword_6BCF84
1DB6FA:  LDR             R0, [R2]
1DB6FC:  LDR             R1, [R3]
1DB6FE:  LDR.W           R2, [R0,#0x140]
1DB702:  ADD             R0, R1
1DB704:  MOV             R1, R8
1DB706:  LDR             R0, [R0,#0xC]
1DB708:  BLX             R2
1DB70A:  MOVS            R0, #1
1DB70C:  ADD             SP, SP, #4
1DB70E:  POP.W           {R8-R11}
1DB712:  POP             {R4-R7,PC}
