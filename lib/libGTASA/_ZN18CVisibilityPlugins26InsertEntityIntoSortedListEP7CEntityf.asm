; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf
; Address            : 0x5D6708 - 0x5D681A
; =========================================================

5D6708:  PUSH            {R4,R6,R7,LR}
5D670A:  ADD             R7, SP, #8
5D670C:  LDR             R2, =(MI_GRASSHOUSE_ptr - 0x5D6716)
5D670E:  VMOV            S0, R1
5D6712:  ADD             R2, PC; MI_GRASSHOUSE_ptr
5D6714:  LDR             R3, [R2]; MI_GRASSHOUSE
5D6716:  LDRSH.W         R2, [R0,#0x26]
5D671A:  LDRH            R1, [R3]
5D671C:  CMP             R2, R1
5D671E:  BEQ             loc_5D672C
5D6720:  LDR             R1, =(MI_GASSTATION_ptr - 0x5D6726)
5D6722:  ADD             R1, PC; MI_GASSTATION_ptr
5D6724:  LDR             R1, [R1]; MI_GASSTATION
5D6726:  LDRH            R1, [R1]
5D6728:  CMP             R2, R1
5D672A:  BNE             loc_5D67A2
5D672C:  LDR             R1, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D6732)
5D672E:  ADD             R1, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D6730:  LDR             R1, [R1]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D6732:  LDR             R2, [R1,#(dword_A840D4 - 0xA840C4)]
5D6734:  ADDS            R1, #0x14
5D6736:  CMP             R2, R1
5D6738:  BEQ             loc_5D675C
5D673A:  LDR             R1, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D6740)
5D673C:  ADD             R1, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D673E:  LDR             R3, [R1]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D6740:  VLDR            S2, [R2,#8]
5D6744:  VCMPE.F32       S2, S0
5D6748:  VMRS            APSR_nzcv, FPSCR
5D674C:  BGE             loc_5D675A
5D674E:  LDR             R2, [R2,#0x10]
5D6750:  ADD.W           R1, R3, #0x14
5D6754:  CMP             R2, R1
5D6756:  BNE             loc_5D6740
5D6758:  B               loc_5D675C
5D675A:  MOV             R1, R2
5D675C:  LDR             R2, =(_ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr - 0x5D6762)
5D675E:  ADD             R2, PC; _ZN18CVisibilityPlugins25m_alphaReallyDrawLastListE_ptr
5D6760:  LDR             R3, [R2]; CVisibilityPlugins::m_alphaReallyDrawLastList ...
5D6762:  LDR             R2, [R3,#(dword_A840FC - 0xA840C4)]
5D6764:  ADDS            R3, #0x3C ; '<'
5D6766:  CMP             R2, R3
5D6768:  BEQ             loc_5D67A2
5D676A:  LDR.W           R12, =(_ZN18CVisibilityPlugins12RenderEntityEPvf_ptr - 0x5D6778)
5D676E:  CMP             R2, #0
5D6770:  LDRD.W          LR, R4, [R2,#0xC]
5D6774:  ADD             R12, PC; _ZN18CVisibilityPlugins12RenderEntityEPvf_ptr
5D6776:  VSTR            S0, [R2,#8]
5D677A:  LDR.W           R3, [R12]; CVisibilityPlugins::RenderEntity(void *,float)
5D677E:  STRD.W          R0, R3, [R2]
5D6782:  STR.W           LR, [R4,#0xC]
5D6786:  LDRD.W          R3, R4, [R2,#0xC]
5D678A:  STR             R4, [R3,#0x10]
5D678C:  LDR             R1, [R1,#0xC]
5D678E:  LDR             R3, [R1,#0x10]
5D6790:  STR             R3, [R2,#0x10]
5D6792:  LDR             R3, [R1,#0x10]
5D6794:  STR             R2, [R3,#0xC]
5D6796:  STR             R1, [R2,#0xC]
5D6798:  STR             R2, [R1,#0x10]
5D679A:  ITTT NE
5D679C:  MOVNE           R1, #1
5D679E:  MOVNE           R0, R1
5D67A0:  POPNE           {R4,R6,R7,PC}
5D67A2:  LDR             R1, =(_ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr - 0x5D67AA)
5D67A4:  LDR             R2, =(_ZN18CVisibilityPlugins17m_alphaEntityListE_ptr - 0x5D67AE)
5D67A6:  ADD             R1, PC; _ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr
5D67A8:  LDRB            R4, [R0,#0x1E]
5D67AA:  ADD             R2, PC; _ZN18CVisibilityPlugins17m_alphaEntityListE_ptr
5D67AC:  LDR             R3, [R1]; CVisibilityPlugins::m_alphaUnderwaterEntityList ...
5D67AE:  LSLS            R1, R4, #0x1B
5D67B0:  IT PL
5D67B2:  LDRPL           R3, [R2]; CVisibilityPlugins::m_alphaEntityList ...
5D67B4:  LDR             R2, [R3,#(dword_A8402C - 0xA8401C)]
5D67B6:  ADD.W           R1, R3, #0x14
5D67BA:  CMP             R2, R1
5D67BC:  BEQ             loc_5D67D4
5D67BE:  VLDR            S2, [R2,#8]
5D67C2:  VCMPE.F32       S2, S0
5D67C6:  VMRS            APSR_nzcv, FPSCR
5D67CA:  BGE             loc_5D67D4
5D67CC:  LDR             R2, [R2,#0x10]
5D67CE:  CMP             R2, R1
5D67D0:  BNE             loc_5D67BE
5D67D2:  MOV             R2, R1
5D67D4:  LDR             R1, [R3,#(dword_A84054 - 0xA8401C)]
5D67D6:  ADDS            R3, #0x3C ; '<'
5D67D8:  CMP             R1, R3
5D67DA:  BEQ             loc_5D6814
5D67DC:  LDR.W           R12, =(_ZN18CVisibilityPlugins12RenderEntityEPvf_ptr - 0x5D67EA)
5D67E0:  CMP             R1, #0
5D67E2:  LDRD.W          LR, R3, [R1,#0xC]
5D67E6:  ADD             R12, PC; _ZN18CVisibilityPlugins12RenderEntityEPvf_ptr
5D67E8:  VSTR            S0, [R1,#8]
5D67EC:  LDR.W           R4, [R12]; CVisibilityPlugins::RenderEntity(void *,float)
5D67F0:  STRD.W          R0, R4, [R1]
5D67F4:  STR.W           LR, [R3,#0xC]
5D67F8:  LDRD.W          R0, R3, [R1,#0xC]
5D67FC:  STR             R3, [R0,#0x10]
5D67FE:  LDR             R0, [R2,#0xC]
5D6800:  LDR             R2, [R0,#0x10]
5D6802:  STR             R2, [R1,#0x10]
5D6804:  LDR             R2, [R0,#0x10]
5D6806:  STR             R1, [R2,#0xC]
5D6808:  STR             R0, [R1,#0xC]
5D680A:  STR             R1, [R0,#0x10]
5D680C:  IT NE
5D680E:  MOVNE           R1, #1
5D6810:  MOV             R0, R1
5D6812:  POP             {R4,R6,R7,PC}
5D6814:  MOVS            R1, #0
5D6816:  MOV             R0, R1
5D6818:  POP             {R4,R6,R7,PC}
