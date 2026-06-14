; =========================================================
; Game Engine Function: _ZN6CStats32PopulateFavoriteRadioStationListEv
; Address            : 0x415570 - 0x41561C
; =========================================================

415570:  PUSH            {R4-R7,LR}
415572:  ADD             R7, SP, #0xC
415574:  PUSH.W          {R8-R11}
415578:  SUB             SP, SP, #0x14
41557A:  LDR             R0, =(AudioEngine_ptr - 0x415580)
41557C:  ADD             R0, PC; AudioEngine_ptr
41557E:  LDR             R0, [R0]; AudioEngine ; this
415580:  BLX             j__ZN12CAudioEngine26GetRadioStationListenTimesEv; CAudioEngine::GetRadioStationListenTimes(void)
415584:  LDR             R1, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x41558C)
415586:  LDR             R2, [R0]
415588:  ADD             R1, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
41558A:  STR             R2, [SP,#0x30+var_20]
41558C:  LDR             R1, [R1]; CStats::FavoriteRadioStationList ...
41558E:  STR             R2, [R1]; CStats::FavoriteRadioStationList
415590:  LDR             R2, [R0,#4]
415592:  STR             R2, [SP,#0x30+var_24]
415594:  STR             R2, [R1,#(dword_964E1C - 0x964E18)]
415596:  LDR             R2, [R0,#8]
415598:  STR             R2, [SP,#0x30+var_28]
41559A:  STR             R2, [R1,#(dword_964E20 - 0x964E18)]
41559C:  LDR             R2, [R0,#0xC]
41559E:  STR             R2, [SP,#0x30+var_2C]
4155A0:  STR             R2, [R1,#(dword_964E24 - 0x964E18)]
4155A2:  LDR.W           R10, [R0,#0x10]
4155A6:  STR.W           R10, [R1,#(dword_964E28 - 0x964E18)]
4155AA:  LDR.W           R11, [R0,#0x14]
4155AE:  STR.W           R11, [R1,#(dword_964E2C - 0x964E18)]
4155B2:  LDR.W           R9, [R0,#0x18]
4155B6:  STR.W           R9, [R1,#(dword_964E30 - 0x964E18)]
4155BA:  LDR.W           LR, [R0,#0x1C]
4155BE:  STR.W           LR, [R1,#(dword_964E34 - 0x964E18)]
4155C2:  LDR.W           R12, [R0,#0x20]
4155C6:  STR.W           R12, [R1,#(dword_964E38 - 0x964E18)]
4155CA:  LDR             R4, [R0,#0x24]
4155CC:  STR             R4, [R1,#(dword_964E3C - 0x964E18)]
4155CE:  LDR             R5, [R0,#0x28]
4155D0:  STR             R5, [R1,#(dword_964E40 - 0x964E18)]
4155D2:  LDR             R3, [R0,#0x2C]
4155D4:  STR             R3, [R1,#(dword_964E44 - 0x964E18)]
4155D6:  LDR             R2, [R0,#0x30]
4155D8:  STR             R2, [R1,#(dword_964E48 - 0x964E18)]
4155DA:  LDR             R0, [R0,#0x34]
4155DC:  STR             R0, [R1,#(dword_964E4C - 0x964E18)]
4155DE:  LDRD.W          R8, R1, [SP,#0x30+var_24]
4155E2:  LDR             R6, [SP,#0x30+var_28]
4155E4:  ORR.W           R1, R1, R8
4155E8:  ORRS            R1, R6
4155EA:  LDR             R6, [SP,#0x30+var_2C]
4155EC:  ORRS            R1, R6
4155EE:  ORR.W           R1, R1, R10
4155F2:  ORR.W           R1, R1, R11
4155F6:  ORR.W           R1, R1, R9
4155FA:  ORR.W           R1, R1, LR
4155FE:  ORR.W           R1, R1, R12
415602:  ORRS            R1, R4
415604:  ORRS            R1, R5
415606:  ORRS            R1, R3
415608:  ORRS            R1, R2
41560A:  ORRS            R0, R1
41560C:  MOV.W           R0, #0
415610:  IT EQ
415612:  MOVEQ           R0, #1
415614:  ADD             SP, SP, #0x14
415616:  POP.W           {R8-R11}
41561A:  POP             {R4-R7,PC}
