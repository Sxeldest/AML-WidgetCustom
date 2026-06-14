; =========================================================
; Game Engine Function: _ZN15CClothesBuilder17GetClothesTextureEjPKc
; Address            : 0x4596EC - 0x4597F6
; =========================================================

4596EC:  PUSH            {R4-R7,LR}
4596EE:  ADD             R7, SP, #0xC
4596F0:  PUSH.W          {R8-R11}
4596F4:  SUB             SP, SP, #0x10C
4596F6:  MOV             R5, R0
4596F8:  LDR             R0, =(clothesIDs_ptr - 0x459702)
4596FA:  MOV             R4, R1
4596FC:  LDR             R1, =(__stack_chk_guard_ptr - 0x459704)
4596FE:  ADD             R0, PC; clothesIDs_ptr
459700:  ADD             R1, PC; __stack_chk_guard_ptr
459702:  LDR             R0, [R0]; clothesIDs
459704:  LDR             R1, [R1]; __stack_chk_guard
459706:  LDR             R0, [R0,#(dword_6AE540 - 0x6AE53C)]
459708:  LDR             R1, [R1]
45970A:  CMP             R0, #0
45970C:  STR             R1, [SP,#0x128+var_20]
45970E:  BNE             loc_459730
459710:  LDR             R0, =(clothesIDs_ptr - 0x459716)
459712:  ADD             R0, PC; clothesIDs_ptr
459714:  LDR             R0, [R0]; clothesIDs
459716:  LDR             R0, [R0]; "10ls" ...
459718:  CBZ             R0, loc_459730
45971A:  LDR             R1, =(clothesIDs_ptr - 0x459720)
45971C:  ADD             R1, PC; clothesIDs_ptr
45971E:  LDR             R1, [R1]; clothesIDs ; char *
459720:  ADDS            R6, R1, #4
459722:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
459726:  STR             R0, [R6]
459728:  LDR             R0, [R6,#4]; "10ls2" ...
45972A:  ADDS            R6, #8
45972C:  CMP             R0, #0
45972E:  BNE             loc_459722
459730:  CBZ             R5, loc_459756
459732:  LDR             R0, =(clothesIDs_ptr - 0x459738)
459734:  ADD             R0, PC; clothesIDs_ptr
459736:  LDR             R0, [R0]; clothesIDs
459738:  LDR             R1, [R0,#(dword_6AE540 - 0x6AE53C)]
45973A:  CBZ             R1, loc_459750
45973C:  LDR             R0, =(clothesIDs_ptr - 0x459742)
45973E:  ADD             R0, PC; clothesIDs_ptr
459740:  LDR             R0, [R0]; clothesIDs
459742:  ADDS            R0, #0xC
459744:  CMP             R1, R5
459746:  BEQ             loc_45975A
459748:  LDR.W           R1, [R0],#8
45974C:  CMP             R1, #0
45974E:  BNE             loc_459744
459750:  MOV.W           R9, #0
459754:  B               loc_45975E
459756:  MOVS            R4, #0
459758:  B               loc_4597D6
45975A:  LDR.W           R9, [R0,#-0xC]; "10ls" ...
45975E:  BLX             j__Z17UseHiDetailPlayerv; UseHiDetailPlayer(void)
459762:  ADR             R2, aPlayer_2; "player"
459764:  ADR             R1, aPlayerhi_0; "playerhi"
459766:  CMP             R0, #0
459768:  IT EQ
45976A:  MOVEQ           R1, R2; char *
45976C:  MOV             R0, R1; this
45976E:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
459772:  MOV             R8, R0
459774:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
459778:  CBZ             R4, loc_459796
45977A:  STR             R4, [SP,#0x128+var_128]
45977C:  ADD             R4, SP, #0x128+var_120
45977E:  ADR             R2, aSS_1; "%s_%s"
459780:  MOV.W           R1, #0x100
459784:  MOV             R0, R4
459786:  MOV             R3, R9
459788:  BL              sub_5E6B74
45978C:  MOV             R0, R4; this
45978E:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
459792:  MOV             R4, R0
459794:  B               loc_4597D0
459796:  LDR.W           R10, [R8,#0x18]
45979A:  CMP.W           R10, #0
45979E:  BEQ             loc_4597CE
4597A0:  MOV             R0, R9; char *
4597A2:  LDR.W           R6, [R8,#0x1C]
4597A6:  BLX             strlen
4597AA:  MOV             R11, R0
4597AC:  MOVS            R4, #0
4597AE:  LDR             R5, [R6]
4597B0:  MOV             R1, R9; char *
4597B2:  MOV             R2, R11; size_t
4597B4:  MOV             R0, R5; char *
4597B6:  BLX             strncmp
4597BA:  CMP             R0, #0
4597BC:  ITT EQ
4597BE:  LDRBEQ.W        R0, [R5,R11]
4597C2:  CMPEQ           R0, #0x5F ; '_'
4597C4:  BEQ             loc_4597F2
4597C6:  ADDS            R4, #1
4597C8:  ADDS            R6, #0x17
4597CA:  CMP             R4, R10
4597CC:  BCC             loc_4597AE
4597CE:  MOVS            R4, #0
4597D0:  MOV             R0, R8; this
4597D2:  BLX             j__ZN22TextureDatabaseRuntime10UnregisterEPS_; TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
4597D6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4597DE)
4597D8:  LDR             R1, [SP,#0x128+var_20]
4597DA:  ADD             R0, PC; __stack_chk_guard_ptr
4597DC:  LDR             R0, [R0]; __stack_chk_guard
4597DE:  LDR             R0, [R0]
4597E0:  SUBS            R0, R0, R1
4597E2:  ITTTT EQ
4597E4:  MOVEQ           R0, R4
4597E6:  ADDEQ           SP, SP, #0x10C
4597E8:  POPEQ.W         {R8-R11}
4597EC:  POPEQ           {R4-R7,PC}
4597EE:  BLX             __stack_chk_fail
4597F2:  MOV             R0, R5
4597F4:  B               loc_45978E
