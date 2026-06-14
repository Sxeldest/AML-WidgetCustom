; =========================================================
; Game Engine Function: _ZN14CRunningScript18DoDeatharrestCheckEv
; Address            : 0x34D6C4 - 0x34D768
; =========================================================

34D6C4:  PUSH            {R4,R5,R7,LR}
34D6C6:  ADD             R7, SP, #8
34D6C8:  MOV             R4, R0
34D6CA:  LDRB.W          R0, [R4,#0xF3]
34D6CE:  CMP             R0, #0
34D6D0:  BEQ             locret_34D766
34D6D2:  LDR             R0, =(_ZN11CTheScripts14OnAMissionFlagE_ptr - 0x34D6D8)
34D6D4:  ADD             R0, PC; _ZN11CTheScripts14OnAMissionFlagE_ptr
34D6D6:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag ...
34D6D8:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag
34D6DA:  CMP             R0, #0
34D6DC:  BEQ             locret_34D766
34D6DE:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34D6E4)
34D6E0:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34D6E2:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
34D6E4:  LDR             R0, [R1,R0]
34D6E6:  CMP             R0, #1
34D6E8:  IT NE
34D6EA:  POPNE           {R4,R5,R7,PC}
34D6EC:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x34D6F8)
34D6EE:  MOV.W           R5, #0x194
34D6F2:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x34D6FA)
34D6F4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
34D6F6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34D6F8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
34D6FA:  LDR             R1, [R1]; CWorld::Players ...
34D6FC:  LDR             R0, [R0]; CWorld::PlayerInFocus
34D6FE:  SMLABB.W        R0, R0, R5, R1; this
34D702:  BLX             j__ZN11CPlayerInfo22IsRestartingAfterDeathEv; CPlayerInfo::IsRestartingAfterDeath(void)
34D706:  CBNZ            R0, loc_34D720
34D708:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x34D710)
34D70A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x34D712)
34D70C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
34D70E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34D710:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
34D712:  LDR             R1, [R1]; CWorld::Players ...
34D714:  LDR             R0, [R0]; CWorld::PlayerInFocus
34D716:  SMLABB.W        R0, R0, R5, R1; this
34D71A:  BLX             j__ZN11CPlayerInfo23IsRestartingAfterArrestEv; CPlayerInfo::IsRestartingAfterArrest(void)
34D71E:  CBZ             R0, locret_34D766
34D720:  LDR             R0, =(AllowMissionReplay_ptr - 0x34D726)
34D722:  ADD             R0, PC; AllowMissionReplay_ptr
34D724:  LDR             R0, [R0]; AllowMissionReplay
34D726:  LDR             R0, [R0]
34D728:  CMP             R0, #7
34D72A:  IT NE
34D72C:  CMPNE           R0, #0
34D72E:  BNE             locret_34D766
34D730:  LDRH            R0, [R4,#0x38]
34D732:  MOVS            R1, #0
34D734:  MOVS            R5, #0
34D736:  CMP             R0, #0
34D738:  IT EQ
34D73A:  SUBEQ           R1, R0, #1
34D73C:  UXTH            R0, R1
34D73E:  STRH            R1, [R4,#0x38]
34D740:  ADD.W           R0, R4, R0,LSL#2
34D744:  LDR             R0, [R0,#0x18]; this
34D746:  STR             R0, [R4,#0x14]
34D748:  BLX             j__ZN9CMessages22ClearSmallMessagesOnlyEv; CMessages::ClearSmallMessagesOnly(void)
34D74C:  LDR             R0, =(_ZN11CTheScripts14OnAMissionFlagE_ptr - 0x34D754)
34D74E:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34D756)
34D750:  ADD             R0, PC; _ZN11CTheScripts14OnAMissionFlagE_ptr
34D752:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34D754:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag ...
34D756:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
34D758:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag
34D75A:  STR             R5, [R1,R0]
34D75C:  MOVS            R0, #1
34D75E:  STR.W           R5, [R4,#0xEC]
34D762:  STRB.W          R0, [R4,#0xF4]
34D766:  POP             {R4,R5,R7,PC}
