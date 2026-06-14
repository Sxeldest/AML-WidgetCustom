; =========================================================
; Game Engine Function: sub_106580
; Address            : 0x106580 - 0x10676A
; =========================================================

106580:  PUSH            {R4-R7,LR}
106582:  ADD             R7, SP, #0xC
106584:  PUSH.W          {R8-R11}
106588:  SUB             SP, SP, #0x2C
10658A:  MOV             R6, R0
10658C:  MOV             R4, R0
10658E:  LDR.W           R0, [R6,#0x3C]!
106592:  MOV             R8, R1
106594:  CBZ             R0, loc_10659C
106596:  MOV             R0, R4
106598:  BL              sub_10679C
10659C:  LDRB.W          R0, [R8]
1065A0:  SUBS            R0, #1; switch 4 cases
1065A2:  CMP             R0, #3
1065A4:  BHI.W           def_1065A8; jumptable 001065A8 default case
1065A8:  TBB.W           [PC,R0]; switch jump
1065AC:  DCB 2; jump table for switch statement
1065AD:  DCB 0x34
1065AE:  DCB 0x70
1065AF:  DCB 0xAC
1065B0:  VMOV.I32        D16, #0; jumptable 001065A8 case 1
1065B4:  LDR             R0, =(unk_B38CA - 0x1065BE)
1065B6:  MOVS            R1, #0
1065B8:  STR             R6, [SP,#0x48+var_38]
1065BA:  ADD             R0, PC; unk_B38CA
1065BC:  STRD.W          R1, R1, [SP,#0x48+var_48]
1065C0:  VMOV            R2, R3, D16
1065C4:  STRD.W          R1, R1, [SP,#0x48+var_40]
1065C8:  MOVW            R1, #0x607
1065CC:  BL              sub_107188
1065D0:  LDR             R0, [R6]
1065D2:  BL              sub_108324
1065D6:  CMP             R0, #0
1065D8:  BEQ.W           loc_10675A
1065DC:  LDR             R1, [R4,#8]
1065DE:  MOVW            R12, #0x9999
1065E2:  LDR             R2, [R4,#0x3C]
1065E4:  MOVW            LR, #0xB851
1065E8:  LDR             R0, =(aIifffiissi - 0x1065FA); "\n\aiifffiissi" ...
1065EA:  MOVS            R6, #1
1065EC:  LDR             R3, =(aNull - 0x1065FC); "NULL" ...
1065EE:  MOVW            R9, #0x3333
1065F2:  MOVW            R10, #1
1065F6:  ADD             R0, PC; "\n\aiifffiissi"
1065F8:  ADD             R3, PC; "NULL"
1065FA:  MOVT            R12, #0x3FA9
1065FE:  MOV.W           R11, #0xA0000000
106602:  MOVT            LR, #0x3F9E
106606:  MOVT            R6, #0xE000
10660A:  MOVT            R9, #0xBFD3
10660E:  MOVT            R10, #0x4000
106612:  B               loc_1066E6
106614:  VMOV.I32        D16, #0; jumptable 001065A8 case 2
106618:  LDR             R0, =(unk_B38CA - 0x106622)
10661A:  MOVS            R1, #0
10661C:  STR             R6, [SP,#0x48+var_38]
10661E:  ADD             R0, PC; unk_B38CA
106620:  STRD.W          R1, R1, [SP,#0x48+var_48]
106624:  VMOV            R2, R3, D16
106628:  STRD.W          R1, R1, [SP,#0x48+var_40]
10662C:  MOVW            R1, #0x5CE
106630:  BL              sub_107188
106634:  LDR             R0, [R6]
106636:  BL              sub_108324
10663A:  CMP             R0, #0
10663C:  BEQ.W           loc_10675A
106640:  LDR             R1, [R4,#8]
106642:  MOVW            R12, #0x9999
106646:  LDR             R2, [R4,#0x3C]
106648:  MOVW            LR, #0xB851
10664C:  LDR             R0, =(aIifffiissi - 0x10667C); "\n\aiifffiissi" ...
10664E:  MOVW            R10, #1
106652:  LDR             R3, =(aNull - 0x106664); "NULL" ...
106654:  MOVW            R9, #0x9999
106658:  MOV.W           R6, #0xFFFFFFFF
10665C:  MOVT            R12, #0x3FA9
106660:  ADD             R3, PC; "NULL"
106662:  MOV.W           R5, #0xA0000000
106666:  MOVT            R9, #0xBFA9
10666A:  MOVT            LR, #0x3F9E
10666E:  MOVT            R10, #0xE000
106672:  STRD.W          R3, R3, [SP,#0x48+var_28]
106676:  STR             R6, [SP,#0x48+var_20]
106678:  ADD             R0, PC; "\n\aiifffiissi"
10667A:  MOVS            R3, #0x10
10667C:  MOVS            R6, #6
10667E:  STRD.W          R5, R12, [SP,#0x48+var_48]
106682:  STRD.W          R10, LR, [SP,#0x48+var_40]
106686:  STRD.W          R5, R9, [SP,#0x48+var_38]
10668A:  B               loc_106752
10668C:  VMOV.I32        D16, #0; jumptable 001065A8 case 3
106690:  LDR             R0, =(unk_B38CA - 0x10669A)
106692:  MOVS            R1, #0
106694:  STR             R6, [SP,#0x48+var_38]
106696:  ADD             R0, PC; unk_B38CA
106698:  STRD.W          R1, R1, [SP,#0x48+var_48]
10669C:  VMOV            R2, R3, D16
1066A0:  STRD.W          R1, R1, [SP,#0x48+var_40]
1066A4:  MOVW            R1, #0x60A
1066A8:  BL              sub_107188
1066AC:  LDR             R0, [R6]
1066AE:  BL              sub_108324
1066B2:  CMP             R0, #0
1066B4:  BEQ             loc_10675A
1066B6:  LDR             R1, [R4,#8]
1066B8:  MOVW            R12, #0x7AE1
1066BC:  LDR             R2, [R4,#0x3C]
1066BE:  MOVW            LR, #0x9999
1066C2:  LDR             R0, =(aIifffiissi - 0x1066D2); "\n\aiifffiissi" ...
1066C4:  MOVW            R9, #0x7AE1
1066C8:  LDR             R3, =(aNull - 0x1066D8); "NULL" ...
1066CA:  MOVT            R12, #0x3FA4
1066CE:  ADD             R0, PC; "\n\aiifffiissi"
1066D0:  MOV.W           R11, #0x40000000
1066D4:  ADD             R3, PC; "NULL"
1066D6:  MOVT            LR, #0x3FB9
1066DA:  MOV             R6, #0x9FFFFFFF
1066DE:  MOVT            R9, #0xBF94
1066E2:  MOV             R10, #0x3FFFFFFF
1066E6:  MOV.W           R5, #0xFFFFFFFF
1066EA:  STRD.W          R3, R3, [SP,#0x48+var_28]
1066EE:  STR             R5, [SP,#0x48+var_20]
1066F0:  MOVS            R5, #6
1066F2:  MOVS            R3, #0x10
1066F4:  STRD.W          R11, R12, [SP,#0x48+var_48]
1066F8:  STRD.W          R6, LR, [SP,#0x48+var_40]
1066FC:  STRD.W          R10, R9, [SP,#0x48+var_38]
106700:  STR             R5, [SP,#0x48+var_30]
106702:  B               loc_106754
106704:  VMOV.I32        D16, #0; jumptable 001065A8 case 4
106708:  LDR             R0, =(unk_B38CA - 0x106714)
10670A:  MOVS            R5, #0
10670C:  MOVW            R1, #0x5CD
106710:  ADD             R0, PC; unk_B38CA
106712:  STRD.W          R5, R5, [SP,#0x48+var_48]
106716:  VMOV            R2, R3, D16
10671A:  STRD.W          R5, R5, [SP,#0x48+var_40]
10671E:  STR             R6, [SP,#0x48+var_38]
106720:  BL              sub_107188
106724:  LDR             R0, [R6]
106726:  BL              sub_108324
10672A:  CBZ             R0, loc_10675A
10672C:  LDR             R0, =(aIifffiissi - 0x10673A); "\n\aiifffiissi" ...
10672E:  MOV.W           R6, #0xFFFFFFFF
106732:  LDR             R1, [R4,#8]
106734:  LDR             R2, [R4,#0x3C]
106736:  ADD             R0, PC; "\n\aiifffiissi"
106738:  LDR             R3, =(aNull - 0x106742); "NULL" ...
10673A:  STR             R6, [SP,#0x48+var_20]
10673C:  MOVS            R6, #6
10673E:  ADD             R3, PC; "NULL"
106740:  STRD.W          R5, R5, [SP,#0x48+var_48]
106744:  STRD.W          R5, R5, [SP,#0x48+var_40]
106748:  STRD.W          R3, R3, [SP,#0x48+var_28]
10674C:  MOVS            R3, #0x10
10674E:  STRD.W          R5, R5, [SP,#0x48+var_38]
106752:  STR             R6, [SP,#0x48+var_30]
106754:  STR             R3, [SP,#0x48+var_2C]
106756:  BL              sub_107188
10675A:  LDRB.W          R0, [R8]
10675E:  STRB.W          R0, [R4,#0x3B]
106762:  ADD             SP, SP, #0x2C ; ','; jumptable 001065A8 default case
106764:  POP.W           {R8-R11}
106768:  POP             {R4-R7,PC}
