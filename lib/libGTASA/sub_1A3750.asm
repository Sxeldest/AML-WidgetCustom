; =========================================================
; Game Engine Function: sub_1A3750
; Address            : 0x1A3750 - 0x1A380E
; =========================================================

1A3750:  PUSH            {R4,R5,R7,LR}
1A3752:  ADD             R7, SP, #8
1A3754:  SUB             SP, SP, #8
1A3756:  LDR             R0, =(unk_7B7774 - 0x1A3762)
1A3758:  MOVS            R5, #0xFF
1A375A:  MOVS            R1, #0xFF; unsigned __int8
1A375C:  MOVS            R2, #0; unsigned __int8
1A375E:  ADD             R0, PC; unk_7B7774 ; this
1A3760:  MOVS            R3, #0; unsigned __int8
1A3762:  STR             R5, [SP,#0x10+var_10]; unsigned __int8
1A3764:  MOVS            R4, #0
1A3766:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A376A:  LDR             R0, =(unk_7B7778 - 0x1A3776)
1A376C:  MOVS            R1, #0xFF; unsigned __int8
1A376E:  MOVS            R2, #0xFF; unsigned __int8
1A3770:  MOVS            R3, #0; unsigned __int8
1A3772:  ADD             R0, PC; unk_7B7778 ; this
1A3774:  STR             R5, [SP,#0x10+var_10]; unsigned __int8
1A3776:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A377A:  LDR             R0, =(unk_7B777C - 0x1A3786)
1A377C:  MOVS            R1, #0x64 ; 'd'
1A377E:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A3780:  MOVS            R1, #0xFF; unsigned __int8
1A3782:  ADD             R0, PC; unk_7B777C ; this
1A3784:  MOVS            R2, #0; unsigned __int8
1A3786:  MOVS            R3, #0; unsigned __int8
1A3788:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A378C:  LDR             R0, =(unk_7B7780 - 0x1A3798)
1A378E:  MOVS            R1, #0xFF; unsigned __int8
1A3790:  MOVS            R2, #0; unsigned __int8
1A3792:  MOVS            R3, #0; unsigned __int8
1A3794:  ADD             R0, PC; unk_7B7780 ; this
1A3796:  STR             R5, [SP,#0x10+var_10]; unsigned __int8
1A3798:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A379C:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x1A37A4)
1A379E:  MOVS            R1, #0
1A37A0:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
1A37A2:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
1A37A4:  STRB.W          R4, [R0,#(byte_811624 - 0x8113CC)]
1A37A8:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x1A37AE)
1A37AA:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
1A37AC:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
1A37AE:  STRB.W          R4, [R0,R1,LSL#3]
1A37B2:  ADD.W           R2, R0, R1,LSL#3
1A37B6:  ADDS            R1, #1
1A37B8:  CMP             R1, #0x4B ; 'K'
1A37BA:  STR             R4, [R2,#4]
1A37BC:  BNE             loc_1A37AE
1A37BE:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x1A37C4)
1A37C0:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
1A37C2:  LDR             R0, [R0]; this
1A37C4:  BLX             j__ZN17CScriptsForBrainsC2Ev; CScriptsForBrains::CScriptsForBrains(void)
1A37C8:  LDR             R4, =(unk_67A000 - 0x1A37D4)
1A37CA:  MOVS            R1, #0; obj
1A37CC:  LDR             R0, =(nullsub_30+1 - 0x1A37D6)
1A37CE:  MOVS            R5, #0
1A37D0:  ADD             R4, PC; unk_67A000
1A37D2:  ADD             R0, PC; nullsub_30 ; lpfunc
1A37D4:  MOV             R2, R4; lpdso_handle
1A37D6:  BLX             __cxa_atexit
1A37DA:  LDR             R0, =(nullsub_31+1 - 0x1A37E4)
1A37DC:  MOVS            R1, #0; obj
1A37DE:  MOV             R2, R4; lpdso_handle
1A37E0:  ADD             R0, PC; nullsub_31 ; lpfunc
1A37E2:  BLX             __cxa_atexit
1A37E6:  LDR             R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x1A37EC)
1A37E8:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
1A37EA:  LDR             R4, [R0]; CTheScripts::ScriptSprites ...
1A37EC:  ADDS            R0, R4, R5; this
1A37EE:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
1A37F2:  ADDS            R5, #4
1A37F4:  CMP.W           R5, #0x200
1A37F8:  BNE             loc_1A37EC
1A37FA:  LDR             R0, =(sub_1A3730+1 - 0x1A3804)
1A37FC:  MOVS            R1, #0; obj
1A37FE:  LDR             R2, =(unk_67A000 - 0x1A3806)
1A3800:  ADD             R0, PC; sub_1A3730 ; lpfunc
1A3802:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A3804:  ADD             SP, SP, #8
1A3806:  POP.W           {R4,R5,R7,LR}
1A380A:  B.W             j___cxa_atexit
