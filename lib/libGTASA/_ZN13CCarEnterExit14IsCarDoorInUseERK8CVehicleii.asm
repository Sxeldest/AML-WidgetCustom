; =========================================================
; Game Engine Function: _ZN13CCarEnterExit14IsCarDoorInUseERK8CVehicleii
; Address            : 0x508624 - 0x5086C4
; =========================================================

508624:  MOV.W           R12, #0
508628:  CMP             R1, #0x12; switch 19 cases
50862A:  BHI             def_50862C; jumptable 0050862C default case, cases 1-7,12-17
50862C:  TBB.W           [PC,R1]; switch jump
508630:  DCB 0x24; jump table for switch statement
508631:  DCB 0x15
508632:  DCB 0x15
508633:  DCB 0x15
508634:  DCB 0x15
508635:  DCB 0x15
508636:  DCB 0x15
508637:  DCB 0x15
508638:  DCB 0xD
508639:  DCB 0x10
50863A:  DCB 0xA
50863B:  DCB 0x13
50863C:  DCB 0x15
50863D:  DCB 0x15
50863E:  DCB 0x15
50863F:  DCB 0x15
508640:  DCB 0x15
508641:  DCB 0x15
508642:  DCB 0xA
508643:  ALIGN 2
508644:  MOV.W           R12, #1; jumptable 0050862C cases 10,18
508648:  B               def_50862C; jumptable 0050862C default case, cases 1-7,12-17
50864A:  MOV.W           R12, #4; jumptable 0050862C case 8
50864E:  B               def_50862C; jumptable 0050862C default case, cases 1-7,12-17
508650:  MOV.W           R12, #8; jumptable 0050862C case 9
508654:  B               def_50862C; jumptable 0050862C default case, cases 1-7,12-17
508656:  MOV.W           R12, #2; jumptable 0050862C case 11
50865A:  LDRB.W          R1, [R0,#0x48A]; jumptable 0050862C default case, cases 1-7,12-17
50865E:  TST.W           R12, R1
508662:  BEQ             loc_50866A
508664:  MOV.W           R12, #1
508668:  B               loc_508678; jumptable 0050862C case 0
50866A:  LDRB.W          R1, [R0,#0x48B]
50866E:  ANDS.W          R12, R12, R1
508672:  IT NE
508674:  MOVNE.W         R12, #1
508678:  MOVS            R1, #0; jumptable 0050862C case 0
50867A:  CMP             R2, #0x12; switch 19 cases
50867C:  BHI             def_50867E; jumptable 0050867E default case, cases 1-7,12-17
50867E:  TBB.W           [PC,R2]; switch jump
508682:  DCB 0x1E; jump table for switch statement
508683:  DCB 0x11
508684:  DCB 0x11
508685:  DCB 0x11
508686:  DCB 0x11
508687:  DCB 0x11
508688:  DCB 0x11
508689:  DCB 0x11
50868A:  DCB 0xC
50868B:  DCB 0xE
50868C:  DCB 0xA
50868D:  DCB 0x10
50868E:  DCB 0x11
50868F:  DCB 0x11
508690:  DCB 0x11
508691:  DCB 0x11
508692:  DCB 0x11
508693:  DCB 0x11
508694:  DCB 0xA
508695:  ALIGN 2
508696:  MOVS            R1, #1; jumptable 0050867E cases 10,18
508698:  B               def_50867E; jumptable 0050867E default case, cases 1-7,12-17
50869A:  MOVS            R1, #4; jumptable 0050867E case 8
50869C:  B               def_50867E; jumptable 0050867E default case, cases 1-7,12-17
50869E:  MOVS            R1, #8; jumptable 0050867E case 9
5086A0:  B               def_50867E; jumptable 0050867E default case, cases 1-7,12-17
5086A2:  MOVS            R1, #2; jumptable 0050867E case 11
5086A4:  LDRB.W          R2, [R0,#0x48A]; jumptable 0050867E default case, cases 1-7,12-17
5086A8:  TST             R1, R2
5086AA:  ITTT NE
5086AC:  MOVNE           R1, #1
5086AE:  ORRNE.W         R0, R12, R1
5086B2:  BXNE            LR
5086B4:  LDRB.W          R0, [R0,#0x48B]
5086B8:  ANDS            R1, R0
5086BA:  IT NE
5086BC:  MOVNE           R1, #1
5086BE:  ORR.W           R0, R12, R1; jumptable 0050867E case 0
5086C2:  BX              LR
