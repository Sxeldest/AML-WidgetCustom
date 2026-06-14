; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager22GetAmbienceTrackStatusEv
; Address            : 0x391838 - 0x39185C
; =========================================================

391838:  LDR             R1, [R0,#8]
39183A:  CMP             R1, #7; switch 8 cases
39183C:  BHI             def_391840; jumptable 00391840 default case
39183E:  MOVS            R0, #1
391840:  TBB.W           [PC,R1]; switch jump
391844:  DCB 7; jump table for switch statement
391845:  DCB 7
391846:  DCB 8
391847:  DCB 0xA
391848:  DCB 4
391849:  DCB 4
39184A:  DCB 4
39184B:  DCB 4
39184C:  MOVS            R0, #4; jumptable 00391840 cases 4-7
39184E:  BX              LR
391850:  MOVS            R0, #0; jumptable 00391840 default case
391852:  BX              LR; jumptable 00391840 cases 0,1
391854:  MOVS            R0, #2; jumptable 00391840 case 2
391856:  BX              LR
391858:  MOVS            R0, #3; jumptable 00391840 case 3
39185A:  BX              LR
