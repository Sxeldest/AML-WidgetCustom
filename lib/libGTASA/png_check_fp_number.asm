; =========================================================
; Game Engine Function: png_check_fp_number
; Address            : 0x1F05C8 - 0x1F0760
; =========================================================

1F05C8:  PUSH            {R4-R7,LR}
1F05CA:  ADD             R7, SP, #0xC
1F05CC:  PUSH.W          {R11}
1F05D0:  LDR.W           R12, [R3]
1F05D4:  LDR.W           LR, [R2]
1F05D8:  CMP             R12, R1
1F05DA:  BCC             loc_1F05F0
1F05DC:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F05DE:  ORR.W           R6, LR, R4
1F05E2:  ADD.W           R12, R12, #1
1F05E6:  ORR.W           LR, R6, #0x40 ; '@'
1F05EA:  CMP             R12, R1
1F05EC:  BCS.W           def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F05F0:  LDRB.W          R4, [R0,R12]
1F05F4:  SUB.W           R5, R4, #0x2B ; '+'; switch 59 cases
1F05F8:  CMP             R5, #0x3A ; ':'
1F05FA:  BHI.W           def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F05FE:  MOVS            R4, #4
1F0600:  TBH.W           [PC,R5,LSL#1]; switch jump
1F0604:  DCW 0x3D; jump table for switch statement
1F0606:  DCW 0xA5
1F0608:  DCW 0x9F
1F060A:  DCW 0xA1
1F060C:  DCW 0xA5
1F060E:  DCW 0xA3
1F0610:  DCW 0x3B
1F0612:  DCW 0x3B
1F0614:  DCW 0x3B
1F0616:  DCW 0x3B
1F0618:  DCW 0x3B
1F061A:  DCW 0x3B
1F061C:  DCW 0x3B
1F061E:  DCW 0x3B
1F0620:  DCW 0x3B
1F0622:  DCW 0xA5
1F0624:  DCW 0xA5
1F0626:  DCW 0xA5
1F0628:  DCW 0xA5
1F062A:  DCW 0xA5
1F062C:  DCW 0xA5
1F062E:  DCW 0xA5
1F0630:  DCW 0xA5
1F0632:  DCW 0xA5
1F0634:  DCW 0xA5
1F0636:  DCW 0xA5
1F0638:  DCW 0x65
1F063A:  DCW 0xA5
1F063C:  DCW 0xA5
1F063E:  DCW 0xA5
1F0640:  DCW 0xA5
1F0642:  DCW 0xA5
1F0644:  DCW 0xA5
1F0646:  DCW 0xA5
1F0648:  DCW 0xA5
1F064A:  DCW 0xA5
1F064C:  DCW 0xA5
1F064E:  DCW 0xA5
1F0650:  DCW 0xA5
1F0652:  DCW 0xA5
1F0654:  DCW 0xA5
1F0656:  DCW 0xA5
1F0658:  DCW 0xA5
1F065A:  DCW 0xA5
1F065C:  DCW 0xA5
1F065E:  DCW 0xA5
1F0660:  DCW 0xA5
1F0662:  DCW 0xA5
1F0664:  DCW 0xA5
1F0666:  DCW 0xA5
1F0668:  DCW 0xA5
1F066A:  DCW 0xA5
1F066C:  DCW 0xA5
1F066E:  DCW 0xA5
1F0670:  DCW 0xA5
1F0672:  DCW 0xA5
1F0674:  DCW 0xA5
1F0676:  DCW 0xA5
1F0678:  DCW 0x65
1F067A:  MOV.W           R4, #0x108; jumptable 001F0600 cases 49-57
1F067E:  AND.W           R5, LR, #3; jumptable 001F0600 case 43
1F0682:  ORRS            R5, R4
1F0684:  AND.W           R5, R5, #0x3F ; '?'
1F0688:  SUBS            R5, #4; switch 30 cases
1F068A:  CMP             R5, #0x1D
1F068C:  BHI.W           def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F0690:  TBB.W           [PC,R5]; switch jump
1F0694:  DCB 0x1F; jump table for switch statement
1F0695:  DCB 0x5D
1F0696:  DCB 0x23
1F0697:  DCB 0x5D
1F0698:  DCB 0x2E
1F0699:  DCB 0xF
1F069A:  DCB 0x36
1F069B:  DCB 0x5D
1F069C:  DCB 0x5D
1F069D:  DCB 0x5D
1F069E:  DCB 0x5D
1F069F:  DCB 0x5D
1F06A0:  DCB 0x3E
1F06A1:  DCB 0x5D
1F06A2:  DCB 0x5D
1F06A3:  DCB 0x5D
1F06A4:  DCB 0x5D
1F06A5:  DCB 0x5D
1F06A6:  DCB 0x5D
1F06A7:  DCB 0x5D
1F06A8:  DCB 0x5D
1F06A9:  DCB 0x5D
1F06AA:  DCB 0x5D
1F06AB:  DCB 0x5D
1F06AC:  DCB 0x5D
1F06AD:  DCB 0x5D
1F06AE:  DCB 0x5D
1F06AF:  DCB 0x5D
1F06B0:  DCB 0x10
1F06B1:  DCB 0x10
1F06B2:  B               loc_1F05DE; jumptable 001F0690 case 9
1F06B4:  MOVS.W          R4, LR,LSL#28; jumptable 001F0690 cases 32,33
1F06B8:  BPL             def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F06BA:  AND.W           R6, LR, #0x1C0
1F06BE:  ADD.W           R12, R12, #1
1F06C2:  ORR.W           LR, R6, #2
1F06C6:  CMP             R12, R1
1F06C8:  BCC.W           loc_1F05F0
1F06CC:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F06CE:  MOVS            R4, #0x20 ; ' '; jumptable 001F0600 cases 69,101
1F06D0:  B               loc_1F067E; jumptable 001F0600 case 43
1F06D2:  TST.W           LR, #0x3C; jumptable 001F0690 case 4
1F06D6:  BEQ             loc_1F0732
1F06D8:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F06DA:  TST.W           LR, #0x3C; jumptable 001F0690 case 6
1F06DE:  BNE             def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F06E0:  ORR.W           LR, LR, #4
1F06E4:  ADD.W           R12, R12, #1
1F06E8:  CMP             R12, R1
1F06EA:  BCC.W           loc_1F05F0
1F06EE:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F06F0:  AND.W           R5, LR, #0x180; jumptable 001F0690 case 8
1F06F4:  TST.W           LR, #0x10
1F06F8:  IT NE
1F06FA:  ORRNE.W         LR, R5, #0x11
1F06FE:  B               loc_1F05DE
1F0700:  ORR.W           LR, LR, #0x48 ; 'H'; jumptable 001F0690 case 10
1F0704:  ADD.W           R12, R12, #1
1F0708:  CMP             R12, R1
1F070A:  BCC.W           loc_1F05F0
1F070E:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F0710:  MOVS.W          R5, LR,LSL#27; jumptable 001F0690 case 16
1F0714:  BMI             def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F0716:  MOVS.W          R5, LR,LSL#28
1F071A:  BMI             loc_1F0732
1F071C:  AND.W           R6, LR, #0x1C0
1F0720:  ADD.W           R12, R12, #1
1F0724:  ORRS            R6, R4
1F0726:  ORR.W           LR, R6, #1
1F072A:  CMP             R12, R1
1F072C:  BCC.W           loc_1F05F0
1F0730:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F0732:  ORR.W           LR, LR, R4
1F0736:  ADD.W           R12, R12, #1
1F073A:  CMP             R12, R1
1F073C:  BCC.W           loc_1F05F0
1F0740:  B               def_1F0600; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F0742:  MOVS            R4, #0x84; jumptable 001F0600 case 45
1F0744:  B               loc_1F067E; jumptable 001F0600 case 43
1F0746:  MOVS            R4, #0x10; jumptable 001F0600 case 46
1F0748:  B               loc_1F067E; jumptable 001F0600 case 43
1F074A:  MOVS            R4, #8; jumptable 001F0600 case 48
1F074C:  B               loc_1F067E; jumptable 001F0600 case 43
1F074E:  STR.W           LR, [R2]; jumptable 001F0600 default case, cases 44,47,58-68,70-100
1F0752:  STR.W           R12, [R3]
1F0756:  UBFX.W          R0, LR, #3, #1
1F075A:  POP.W           {R11}
1F075E:  POP             {R4-R7,PC}
