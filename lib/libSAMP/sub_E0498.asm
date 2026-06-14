; =========================================================
; Game Engine Function: sub_E0498
; Address            : 0xE0498 - 0xE0524
; =========================================================

E0498:  SUB.W           R1, R0, #0x61 ; 'a'; switch 24 cases
E049C:  CMP             R1, #0x17
E049E:  BHI             def_E04A2; jumptable 000E04A2 default case
E04A0:  MOVS            R0, #1
E04A2:  TBB.W           [PC,R1]; switch jump
E04A6:  DCB 0xC; jump table for switch statement
E04A7:  DCB 0x23
E04A8:  DCB 0x25
E04A9:  DCB 0x22
E04AA:  DCB 0x27
E04AB:  DCB 0x29
E04AC:  DCB 0x2B
E04AD:  DCB 0x21
E04AE:  DCB 0x21
E04AF:  DCB 0x21
E04B0:  DCB 0x21
E04B1:  DCB 0x21
E04B2:  DCB 0x21
E04B3:  DCB 0x21
E04B4:  DCB 0x2D
E04B5:  DCB 0x2F
E04B6:  DCB 0x21
E04B7:  DCB 0x21
E04B8:  DCB 0x31
E04B9:  DCB 0x21
E04BA:  DCB 0x21
E04BB:  DCB 0x21
E04BC:  DCB 0x21
E04BD:  DCB 0x33
E04BE:  MOVS            R0, #7; jumptable 000E04A2 case 97
E04C0:  BX              LR
E04C2:  SUB.W           R1, R0, #0x3F ; '?'; jumptable 000E04A2 default case
E04C6:  CMP             R1, #8
E04C8:  BHI             def_E04CE; jumptable 000E04CE default case
E04CA:  ADR.W           R0, jpt_E04CE
E04CE:  TBB.W           [PC,R1]; switch jump
E04D2:  DCB 5; jump table for switch statement
E04D3:  DCB 0xB
E04D4:  DCB 0x1F
E04D5:  DCB 0x21
E04D6:  DCB 0xB
E04D7:  DCB 0xB
E04D8:  DCB 0x23
E04D9:  DCB 0x25
E04DA:  DCB 0x27
E04DB:  ALIGN 2
E04DC:  MOVS            R0, #0x12; jumptable 000E04CE case 63
E04DE:  BX              LR
E04E0:  CMP             R0, #0x58 ; 'X'; jumptable 000E04CE default case
E04E2:  ITT EQ
E04E4:  MOVEQ           R0, #4
E04E6:  BXEQ            LR
E04E8:  MOVS            R0, #0; jumptable 000E04A2 cases 104-110,113,114,116-119
E04EA:  BX              LR; jumptable 000E04A2 case 100
E04EC:  MOVS            R0, #5; jumptable 000E04A2 case 98
E04EE:  BX              LR
E04F0:  MOVS            R0, #0xF; jumptable 000E04A2 case 99
E04F2:  BX              LR
E04F4:  MOVS            R0, #9; jumptable 000E04A2 case 101
E04F6:  BX              LR
E04F8:  MOVS            R0, #0xB; jumptable 000E04A2 case 102
E04FA:  BX              LR
E04FC:  MOVS            R0, #0xD; jumptable 000E04A2 case 103
E04FE:  BX              LR
E0500:  MOVS            R0, #2; jumptable 000E04A2 case 111
E0502:  BX              LR
E0504:  MOVS            R0, #0x11; jumptable 000E04A2 case 112
E0506:  BX              LR
E0508:  MOVS            R0, #0x10; jumptable 000E04A2 case 115
E050A:  BX              LR
E050C:  MOVS            R0, #3; jumptable 000E04A2 case 120
E050E:  BX              LR
E0510:  MOVS            R0, #8; jumptable 000E04CE case 65
E0512:  BX              LR
E0514:  MOVS            R0, #6; jumptable 000E04CE case 66
E0516:  BX              LR
E0518:  MOVS            R0, #0xA; jumptable 000E04CE case 69
E051A:  BX              LR
E051C:  MOVS            R0, #0xC; jumptable 000E04CE case 70
E051E:  BX              LR
E0520:  MOVS            R0, #0xE; jumptable 000E04CE case 71
E0522:  BX              LR
