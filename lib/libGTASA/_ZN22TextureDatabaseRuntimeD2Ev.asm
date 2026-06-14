; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntimeD2Ev
; Address            : 0x1EA6B8 - 0x1EA8B6
; =========================================================

1EA6B8:  PUSH            {R4-R7,LR}; Alternative name is 'TextureDatabaseRuntime::~TextureDatabaseRuntime()'
1EA6BA:  ADD             R7, SP, #0xC
1EA6BC:  PUSH.W          {R8-R11}
1EA6C0:  SUB             SP, SP, #0xC
1EA6C2:  MOV             R4, R0
1EA6C4:  LDR             R0, =(_ZTV22TextureDatabaseRuntime_ptr - 0x1EA6CA)
1EA6C6:  ADD             R0, PC; _ZTV22TextureDatabaseRuntime_ptr
1EA6C8:  LDR             R1, [R0]; `vtable for'TextureDatabaseRuntime ...
1EA6CA:  LDR.W           R0, [R4,#0xA8]; this
1EA6CE:  ADDS            R1, #8
1EA6D0:  STR             R1, [R4]
1EA6D2:  CBZ             R0, loc_1EA6DE
1EA6D4:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
1EA6D8:  MOVS            R0, #0
1EA6DA:  STR.W           R0, [R4,#0xA8]
1EA6DE:  LDR             R0, [R4,#0x18]
1EA6E0:  CBZ             R0, loc_1EA73C
1EA6E2:  LDR             R1, =(_ZN22TextureDatabaseRuntime14detailTexturesE_ptr - 0x1EA6F0)
1EA6E4:  MOV.W           R8, #0
1EA6E8:  MOVS            R6, #0
1EA6EA:  MOVS            R5, #0
1EA6EC:  ADD             R1, PC; _ZN22TextureDatabaseRuntime14detailTexturesE_ptr
1EA6EE:  LDR.W           R9, [R1]; TextureDatabaseRuntime::detailTextures ...
1EA6F2:  LDR             R1, =(_ZN22TextureDatabaseRuntime14detailTexturesE_ptr - 0x1EA6F8)
1EA6F4:  ADD             R1, PC; _ZN22TextureDatabaseRuntime14detailTexturesE_ptr
1EA6F6:  LDR.W           R10, [R1]; TextureDatabaseRuntime::detailTextures ...
1EA6FA:  LDR             R1, [R4,#0x1C]
1EA6FC:  ADD             R1, R6
1EA6FE:  LDRB            R2, [R1,#0xA]
1EA700:  LSLS            R2, R2, #0x1B
1EA702:  BPL             loc_1EA734
1EA704:  LDRB            R1, [R1,#0xD]
1EA706:  CBZ             R1, loc_1EA734
1EA708:  LDR.W           R0, [R9,#(dword_6BD1D8 - 0x6BD1D0)]
1EA70C:  ADD.W           R0, R0, R1,LSL#2
1EA710:  LDR.W           R0, [R0,#-4]
1EA714:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1EA718:  LDR             R0, [R4,#0x1C]
1EA71A:  ADD             R0, R6
1EA71C:  LDRB            R1, [R0,#0xA]
1EA71E:  LSLS            R1, R1, #0x1B
1EA720:  ITE MI
1EA722:  LDRBMI          R0, [R0,#0xD]
1EA724:  MOVPL           R0, #0
1EA726:  LDR.W           R1, [R10,#(dword_6BD1D8 - 0x6BD1D0)]
1EA72A:  ADD.W           R0, R1, R0,LSL#2
1EA72E:  STR.W           R8, [R0,#-4]
1EA732:  LDR             R0, [R4,#0x18]
1EA734:  ADDS            R5, #1
1EA736:  ADDS            R6, #0x17
1EA738:  CMP             R5, R0
1EA73A:  BCC             loc_1EA6FA
1EA73C:  LDR.W           R0, [R4,#0xA0]
1EA740:  CMP             R0, #0
1EA742:  BEQ             loc_1EA7CE
1EA744:  LDR             R1, =(RasterExtOffset_ptr - 0x1EA752)
1EA746:  MOVS            R6, #0x17
1EA748:  MOVS            R3, #3
1EA74A:  MOV.W           R11, #0
1EA74E:  ADD             R1, PC; RasterExtOffset_ptr
1EA750:  LDR             R1, [R1]; RasterExtOffset
1EA752:  STR             R1, [SP,#0x28+var_20]
1EA754:  MOVS            R1, #0
1EA756:  STR             R1, [SP,#0x28+var_24]
1EA758:  LDR.W           R2, [R4,#0xA4]
1EA75C:  SUBS            R0, #1
1EA75E:  LDR             R1, [R4,#0x1C]
1EA760:  LDR.W           R5, [R2,R0,LSL#2]
1EA764:  STR.W           R0, [R4,#0xA0]
1EA768:  MLA.W           R10, R5, R6, R1
1EA76C:  LDR.W           R0, [R10,#0x13]!
1EA770:  LDR             R2, [R0,#0x54]
1EA772:  CMP             R2, #1
1EA774:  BNE             loc_1EA79C
1EA776:  LDR             R2, [SP,#0x28+var_20]
1EA778:  LDR             R1, [R0]
1EA77A:  LDR             R2, [R2]
1EA77C:  LDR             R1, [R1,R2]
1EA77E:  LDRD.W          R8, R9, [R1,#4]
1EA782:  STR.W           R11, [R0,#0x54]
1EA786:  LDR.W           R0, [R10]
1EA78A:  BLX             j__Z17TextureAnnihilateP9RwTexture; TextureAnnihilate(RwTexture *)
1EA78E:  MUL.W           R0, R9, R8
1EA792:  STR.W           R11, [R10]
1EA796:  CBNZ            R0, loc_1EA7B2
1EA798:  LDR             R1, [R4,#0x1C]
1EA79A:  MOVS            R3, #3
1EA79C:  MLA.W           R0, R5, R6, R1
1EA7A0:  LDRH            R1, [R0,#8]
1EA7A2:  BFI.W           R1, R3, #0xC, #0x14
1EA7A6:  STRH            R1, [R0,#8]
1EA7A8:  LDR.W           R0, [R4,#0xA0]
1EA7AC:  CMP             R0, #0
1EA7AE:  BNE             loc_1EA758
1EA7B0:  B               loc_1EA7CE
1EA7B2:  LDR             R1, [R4,#0x1C]
1EA7B4:  MOVS            R3, #3
1EA7B6:  MLA.W           R1, R5, R6, R1
1EA7BA:  LDRH            R2, [R1,#8]
1EA7BC:  BFC.W           R2, #0xC, #0x14
1EA7C0:  STRH            R2, [R1,#8]
1EA7C2:  LDR             R1, [SP,#0x28+var_24]
1EA7C4:  ADD             R1, R0
1EA7C6:  STR             R1, [SP,#0x28+var_24]
1EA7C8:  LSRS            R0, R1, #0x14
1EA7CA:  CMP             R0, #0x2C ; ','
1EA7CC:  BLS             loc_1EA7A8
1EA7CE:  LDR             R0, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1EA7D4)
1EA7D0:  ADD             R0, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1EA7D2:  LDR             R0, [R0]; TextureDatabaseRuntime::loaded ...
1EA7D4:  LDR             R1, [R0,#(dword_6BD184 - 0x6BD180)]
1EA7D6:  CBZ             R1, loc_1EA80E
1EA7D8:  LDR             R0, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1EA7E8)
1EA7DA:  MOV             R2, #0xFFFFFFFC
1EA7DE:  ADD.W           R2, R2, R1,LSL#2; n
1EA7E2:  MOVS            R3, #0
1EA7E4:  ADD             R0, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1EA7E6:  LDR             R0, [R0]; TextureDatabaseRuntime::loaded ...
1EA7E8:  LDR             R0, [R0,#(dword_6BD188 - 0x6BD180)]; dest
1EA7EA:  LDR             R6, [R0]
1EA7EC:  CMP             R6, R4
1EA7EE:  BEQ             loc_1EA7FC
1EA7F0:  ADDS            R3, #1
1EA7F2:  ADDS            R0, #4
1EA7F4:  SUBS            R2, #4
1EA7F6:  CMP             R3, R1
1EA7F8:  BCC             loc_1EA7EA
1EA7FA:  B               loc_1EA80E
1EA7FC:  ADDS            R1, R0, #4; src
1EA7FE:  BLX             memmove_1
1EA802:  LDR             R0, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1EA808)
1EA804:  ADD             R0, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1EA806:  LDR             R0, [R0]; TextureDatabaseRuntime::loaded ...
1EA808:  LDR             R1, [R0,#(dword_6BD184 - 0x6BD180)]
1EA80A:  SUBS            R1, #1
1EA80C:  STR             R1, [R0,#(dword_6BD184 - 0x6BD180)]
1EA80E:  LDR.W           R0, [R4,#0xC0]; p
1EA812:  MOVS            R5, #0
1EA814:  STR.W           R5, [R4,#0xBC]
1EA818:  CBZ             R0, loc_1EA822
1EA81A:  BLX             free
1EA81E:  STR.W           R5, [R4,#0xC0]
1EA822:  LDR.W           R0, [R4,#0xB4]; p
1EA826:  STR.W           R5, [R4,#0xB0]
1EA82A:  CMP             R0, #0
1EA82C:  STR.W           R5, [R4,#0xB8]
1EA830:  BEQ             loc_1EA83C
1EA832:  BLX             free
1EA836:  MOVS            R0, #0
1EA838:  STR.W           R0, [R4,#0xB4]
1EA83C:  LDR.W           R0, [R4,#0xA4]; p
1EA840:  MOVS            R5, #0
1EA842:  STR.W           R5, [R4,#0xA0]
1EA846:  CMP             R0, #0
1EA848:  STR.W           R5, [R4,#0xAC]
1EA84C:  BEQ             loc_1EA856
1EA84E:  BLX             free
1EA852:  STR.W           R5, [R4,#0xA4]
1EA856:  LDR.W           R0, [R4,#0x98]; p
1EA85A:  STR.W           R5, [R4,#0x94]
1EA85E:  CMP             R0, #0
1EA860:  STR.W           R5, [R4,#0x9C]
1EA864:  BEQ             loc_1EA870
1EA866:  BLX             free
1EA86A:  MOVS            R0, #0
1EA86C:  STR.W           R0, [R4,#0x98]
1EA870:  LDR.W           R0, [R4,#0x8C]; p
1EA874:  MOVS            R5, #0
1EA876:  STR.W           R5, [R4,#0x88]
1EA87A:  CMP             R0, #0
1EA87C:  STR.W           R5, [R4,#0x90]
1EA880:  BEQ             loc_1EA88A
1EA882:  BLX             free
1EA886:  STR.W           R5, [R4,#0x8C]
1EA88A:  LDR.W           R0, [R4,#0x80]; p
1EA88E:  STR             R5, [R4,#0x7C]
1EA890:  CMP             R0, #0
1EA892:  STR.W           R5, [R4,#0x84]
1EA896:  BEQ             loc_1EA8A2
1EA898:  BLX             free
1EA89C:  MOVS            R0, #0
1EA89E:  STR.W           R0, [R4,#0x80]
1EA8A2:  MOVS            R0, #0
1EA8A4:  STR             R0, [R4,#0x78]
1EA8A6:  MOV             R0, R4; this
1EA8A8:  ADD             SP, SP, #0xC
1EA8AA:  POP.W           {R8-R11}
1EA8AE:  POP.W           {R4-R7,LR}
1EA8B2:  B.W             j_j__ZN15TextureDatabaseD2Ev; j_TextureDatabase::~TextureDatabase()
