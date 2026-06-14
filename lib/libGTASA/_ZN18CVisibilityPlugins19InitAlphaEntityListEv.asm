; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins19InitAlphaEntityListEv
; Address            : 0x5D65F0 - 0x5D66E4
; =========================================================

5D65F0:  LDR             R0, =(_ZN18CVisibilityPlugins17m_alphaEntityListE_ptr - 0x5D65F6)
5D65F2:  ADD             R0, PC; _ZN18CVisibilityPlugins17m_alphaEntityListE_ptr
5D65F4:  LDR             R1, [R0]; CVisibilityPlugins::m_alphaEntityList ...
5D65F6:  LDR             R0, [R1,#(dword_A8402C - 0xA8401C)]
5D65F8:  ADDS            R1, #0x14
5D65FA:  CMP             R0, R1
5D65FC:  BEQ             loc_5D662C
5D65FE:  LDR             R1, =(_ZN18CVisibilityPlugins17m_alphaEntityListE_ptr - 0x5D6604)
5D6600:  ADD             R1, PC; _ZN18CVisibilityPlugins17m_alphaEntityListE_ptr
5D6602:  LDR             R1, [R1]; CVisibilityPlugins::m_alphaEntityList ...
5D6604:  LDRD.W          R2, R3, [R0,#0xC]
5D6608:  STR             R2, [R3,#0xC]
5D660A:  LDRD.W          R2, R3, [R0,#0xC]
5D660E:  STR             R3, [R2,#0x10]
5D6610:  LDR             R2, [R1,#(dword_A84054 - 0xA8401C)]
5D6612:  STR             R2, [R0,#0x10]
5D6614:  LDR             R2, [R1,#(dword_A84054 - 0xA8401C)]
5D6616:  STR             R0, [R2,#0xC]
5D6618:  ADD.W           R2, R1, #0x28 ; '('
5D661C:  STR             R2, [R0,#0xC]
5D661E:  LDR             R2, [R1,#(dword_A8402C - 0xA8401C)]
5D6620:  STR             R0, [R1,#(dword_A84054 - 0xA8401C)]
5D6622:  ADD.W           R0, R1, #0x14
5D6626:  CMP             R2, R0
5D6628:  MOV             R0, R2
5D662A:  BNE             loc_5D6604
5D662C:  LDR             R0, =(_ZN18CVisibilityPlugins21m_alphaBoatAtomicListE_ptr - 0x5D6632)
5D662E:  ADD             R0, PC; _ZN18CVisibilityPlugins21m_alphaBoatAtomicListE_ptr
5D6630:  LDR             R1, [R0]; CVisibilityPlugins::m_alphaBoatAtomicList ...
5D6632:  LDR             R0, [R1,#(dword_A83FD8 - 0xA83FC8)]
5D6634:  ADDS            R1, #0x14
5D6636:  CMP             R0, R1
5D6638:  BEQ             loc_5D6668
5D663A:  LDR             R1, =(_ZN18CVisibilityPlugins21m_alphaBoatAtomicListE_ptr - 0x5D6640)
5D663C:  ADD             R1, PC; _ZN18CVisibilityPlugins21m_alphaBoatAtomicListE_ptr
5D663E:  LDR             R1, [R1]; CVisibilityPlugins::m_alphaBoatAtomicList ...
5D6640:  LDRD.W          R2, R3, [R0,#0xC]
5D6644:  STR             R2, [R3,#0xC]
5D6646:  LDRD.W          R2, R3, [R0,#0xC]
5D664A:  STR             R3, [R2,#0x10]
5D664C:  LDR             R2, [R1,#(dword_A84000 - 0xA83FC8)]
5D664E:  STR             R2, [R0,#0x10]
5D6650:  LDR             R2, [R1,#(dword_A84000 - 0xA83FC8)]
5D6652:  STR             R0, [R2,#0xC]
5D6654:  ADD.W           R2, R1, #0x28 ; '('
5D6658:  STR             R2, [R0,#0xC]
5D665A:  LDR             R2, [R1,#(dword_A83FD8 - 0xA83FC8)]
5D665C:  STR             R0, [R1,#(dword_A84000 - 0xA83FC8)]
5D665E:  ADD.W           R0, R1, #0x14
5D6662:  CMP             R2, R0
5D6664:  MOV             R0, R2
5D6666:  BNE             loc_5D6640
5D6668:  LDR             R0, =(_ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr - 0x5D666E)
5D666A:  ADD             R0, PC; _ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr
5D666C:  LDR             R1, [R0]; CVisibilityPlugins::m_alphaUnderwaterEntityList ...
5D666E:  LDR             R0, [R1,#(dword_A84080 - 0xA84070)]
5D6670:  ADDS            R1, #0x14
5D6672:  CMP             R0, R1
5D6674:  BEQ             loc_5D66A4
5D6676:  LDR             R1, =(_ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr - 0x5D667C)
5D6678:  ADD             R1, PC; _ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr
5D667A:  LDR             R1, [R1]; CVisibilityPlugins::m_alphaUnderwaterEntityList ...
5D667C:  LDRD.W          R2, R3, [R0,#0xC]
5D6680:  STR             R2, [R3,#0xC]
5D6682:  LDRD.W          R2, R3, [R0,#0xC]
5D6686:  STR             R3, [R2,#0x10]
5D6688:  LDR             R2, [R1,#(dword_A840A8 - 0xA84070)]
5D668A:  STR             R2, [R0,#0x10]
5D668C:  LDR             R2, [R1,#(dword_A840A8 - 0xA84070)]
5D668E:  STR             R0, [R2,#0xC]
5D6690:  ADD.W           R2, R1, #0x28 ; '('
5D6694:  STR             R2, [R0,#0xC]
5D6696:  LDR             R2, [R1,#(dword_A84080 - 0xA84070)]
5D6698:  STR             R0, [R1,#(dword_A840A8 - 0xA84070)]
5D669A:  ADD.W           R0, R1, #0x14
5D669E:  CMP             R2, R0
5D66A0:  MOV             R0, R2
5D66A2:  BNE             loc_5D667C
5D66A4:  LDR             R0, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D66AA)
5D66A6:  ADD             R0, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D66A8:  LDR             R1, [R0]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D66AA:  LDR             R0, [R1,#(dword_A840D4 - 0xA840C4)]
5D66AC:  ADDS            R1, #0x14
5D66AE:  CMP             R0, R1
5D66B0:  IT EQ
5D66B2:  BXEQ            LR
5D66B4:  LDR             R1, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D66BA)
5D66B6:  ADD             R1, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D66B8:  LDR             R1, [R1]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D66BA:  LDRD.W          R2, R3, [R0,#0xC]
5D66BE:  STR             R2, [R3,#0xC]
5D66C0:  LDRD.W          R2, R3, [R0,#0xC]
5D66C4:  STR             R3, [R2,#0x10]
5D66C6:  LDR             R2, [R1,#(dword_A840FC - 0xA840C4)]
5D66C8:  STR             R2, [R0,#0x10]
5D66CA:  LDR             R2, [R1,#(dword_A840FC - 0xA840C4)]
5D66CC:  STR             R0, [R2,#0xC]
5D66CE:  ADD.W           R2, R1, #0x28 ; '('
5D66D2:  STR             R2, [R0,#0xC]
5D66D4:  LDR             R2, [R1,#(dword_A840D4 - 0xA840C4)]
5D66D6:  STR             R0, [R1,#(dword_A840FC - 0xA840C4)]
5D66D8:  ADD.W           R0, R1, #0x14
5D66DC:  CMP             R2, R0
5D66DE:  MOV             R0, R2
5D66E0:  BNE             loc_5D66BA
5D66E2:  BX              LR
