; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity16GetNextMoodToUseEs
; Address            : 0x39D47C - 0x39D49C
; =========================================================

39D47C:  CMP             R1, #9; switch 10 cases
39D47E:  BHI             def_39D482; jumptable 0039D482 default case, cases 1-5,9
39D480:  MOVS            R0, #1
39D482:  TBB.W           [PC,R1]; switch jump
39D486:  DCB 6; jump table for switch statement
39D487:  DCB 5
39D488:  DCB 5
39D489:  DCB 5
39D48A:  DCB 5
39D48B:  DCB 5
39D48C:  DCB 9
39D48D:  DCB 6
39D48E:  DCB 7
39D48F:  DCB 5
39D490:  MOVS            R0, #5; jumptable 0039D482 default case, cases 1-5,9
39D492:  BX              LR; jumptable 0039D482 cases 0,7
39D494:  MOVS            R0, #4; jumptable 0039D482 case 8
39D496:  BX              LR
39D498:  MOVS            R0, #0; jumptable 0039D482 case 6
39D49A:  BX              LR
