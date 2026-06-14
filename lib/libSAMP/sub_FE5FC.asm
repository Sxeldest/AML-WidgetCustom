; =========================================================
; Game Engine Function: sub_FE5FC
; Address            : 0xFE5FC - 0xFE7E6
; =========================================================

FE5FC:  PUSH            {R4-R7,LR}
FE5FE:  ADD             R7, SP, #0xC
FE600:  PUSH.W          {R8}
FE604:  SUB             SP, SP, #0x28
FE606:  MOV             R5, R0
FE608:  STRD.W          R1, R0, [SP,#0x38+var_28]
FE60C:  MOV             R0, R1
FE60E:  MOV             R4, R1
FE610:  BL              sub_163810
FE614:  CBZ             R0, loc_FE65C
FE616:  CBZ             R5, loc_FE65C
FE618:  LDR             R0, =(off_23496C - 0xFE61E)
FE61A:  ADD             R0, PC; off_23496C
FE61C:  LDR             R0, [R0]; dword_23DEF4
FE61E:  LDR             R0, [R0]
FE620:  LDR.W           R0, [R0,#0x3B0]
FE624:  LDR             R6, [R0,#4]
FE626:  MOVW            R0, #0xEA60
FE62A:  ADDS            R1, R6, R0
FE62C:  LDRD.W          R0, R1, [R1]
FE630:  CMP             R0, R1
FE632:  BEQ             loc_FE64C
FE634:  MOV.W           R2, #0x1F40
FE638:  LDR             R3, [R0]
FE63A:  ADD.W           R3, R6, R3,LSL#2
FE63E:  LDR             R3, [R3,R2]
FE640:  CMP             R3, R5
FE642:  BEQ             loc_FE64C
FE644:  ADDS            R0, #4
FE646:  CMP             R0, R1
FE648:  BNE             loc_FE638
FE64A:  B               loc_FE65C
FE64C:  CMP             R0, R1
FE64E:  ITTT NE
FE650:  LDRHNE.W        R8, [R0]
FE654:  MOVWNE          R0, #0xFFFF
FE658:  CMPNE           R8, R0
FE65A:  BNE             loc_FE672
FE65C:  LDR             R0, =(off_25AE94 - 0xFE664)
FE65E:  MOV             R1, R4
FE660:  ADD             R0, PC; off_25AE94
FE662:  LDR             R2, [R0]
FE664:  MOV             R0, R5
FE666:  ADD             SP, SP, #0x28 ; '('
FE668:  POP.W           {R8}
FE66C:  POP.W           {R4-R7,LR}
FE670:  BX              R2
FE672:  MOV.W           R0, R8,LSR#4
FE676:  CMP             R0, #0x7C ; '|'
FE678:  BHI             loc_FE68A
FE67A:  MOV             R0, R6
FE67C:  MOV             R1, R8
FE67E:  BL              sub_F2396
FE682:  CBZ             R0, loc_FE68A
FE684:  LDR.W           R0, [R6,R8,LSL#2]
FE688:  B               loc_FE68C
FE68A:  MOVS            R0, #0
FE68C:  LDR.W           R1, [R5,#0x598]
FE690:  ADD.W           R8, R0, #0x29 ; ')'
FE694:  CBZ             R1, loc_FE6BA
FE696:  ADD.W           R0, R1, #0x10; s1
FE69A:  MOV             R1, R8; s2
FE69C:  BLX             strcmp
FE6A0:  CMP             R0, #0
FE6A2:  BEQ             loc_FE78A
FE6A4:  LDR             R0, =(off_23494C - 0xFE6B2)
FE6A6:  MOV             R1, #0x581C2D
FE6AE:  ADD             R0, PC; off_23494C
FE6B0:  LDR             R0, [R0]; dword_23DF24
FE6B2:  LDR             R0, [R0]
FE6B4:  ADD             R1, R0
FE6B6:  MOV             R0, R5
FE6B8:  BLX             R1
FE6BA:  LDR             R0, =(byte_25AE9C - 0xFE6C0)
FE6BC:  ADD             R0, PC; byte_25AE9C
FE6BE:  LDRB            R0, [R0]
FE6C0:  DMB.W           ISH
FE6C4:  LSLS            R0, R0, #0x1F
FE6C6:  BEQ             loc_FE794
FE6C8:  ADD             R0, SP, #0x38+var_28
FE6CA:  STR             R0, [SP,#0x38+var_2C]
FE6CC:  LDRB.W          R0, [R8]
FE6D0:  ADD             R1, SP, #0x38+var_24
FE6D2:  STR             R1, [SP,#0x38+var_30]
FE6D4:  CBZ             R0, loc_FE6FA
FE6D6:  MOV             R0, R8; s
FE6D8:  BLX             strlen
FE6DC:  LDR             R1, =(dword_25AE90 - 0xFE6E4)
FE6DE:  LSLS            R2, R0, #0x1D
FE6E0:  ADD             R1, PC; dword_25AE90
FE6E2:  STR             R0, [R1]
FE6E4:  BEQ             loc_FE6F6
FE6E6:  MOVS            R6, #8
FE6E8:  CMP             R0, R6
FE6EA:  BLT             loc_FE732
FE6EC:  ADD.W           R2, R6, #8
FE6F0:  CMP             R6, #0x19
FE6F2:  MOV             R6, R2
FE6F4:  BCC             loc_FE6E8
FE6F6:  MOV             R6, R0
FE6F8:  B               loc_FE734
FE6FA:  LDR             R0, [SP,#0x38+var_28]
FE6FC:  BL              sub_16381A
FE700:  LDR             R4, [R0]
FE702:  LDR             R1, =(aXyzsr998 - 0xFE70C); "XYZSR998" ...
FE704:  ADD.W           R0, R4, #0x10; s1
FE708:  ADD             R1, PC; "XYZSR998"
FE70A:  BLX             strcmp
FE70E:  CBZ             R0, loc_FE724
FE710:  LDR             R0, =(byte_25AEA4 - 0xFE716)
FE712:  ADD             R0, PC; byte_25AEA4
FE714:  LDRB            R0, [R0]
FE716:  DMB.W           ISH
FE71A:  LDR             R4, =(dword_25AEA0 - 0xFE720)
FE71C:  ADD             R4, PC; dword_25AEA0
FE71E:  LSLS            R0, R0, #0x1F
FE720:  BEQ             loc_FE7C2
FE722:  LDR             R4, [R4]
FE724:  LDR             R0, [SP,#0x38+var_24]
FE726:  LDR             R1, [R4,#0x54]
FE728:  ADDS            R1, #1
FE72A:  STR             R1, [R4,#0x54]
FE72C:  STR.W           R4, [R0,#0x598]
FE730:  B               loc_FE78A
FE732:  STR             R6, [R1]
FE734:  LDR             R0, [SP,#0x38+var_24]
FE736:  LDR             R1, =(aAxl - 0xFE742); "AXL" ...
FE738:  LDR             R2, =(aCreateNumberpl - 0xFE74C); "Create numberplate for model %d: %s[%d]" ...
FE73A:  LDR.W           R4, [R8,#4]
FE73E:  ADD             R1, PC; "AXL"
FE740:  LDRH            R3, [R0,#0x26]
FE742:  MOVS            R0, #0
FE744:  LDR.W           R5, [R8]
FE748:  ADD             R2, PC; "Create numberplate for model %d: %s[%d]"
FE74A:  STRB.W          R0, [SP,#0x38+var_18]
FE74E:  ADD             R0, SP, #0x38+var_20
FE750:  STRD.W          R5, R4, [SP,#0x38+var_20]
FE754:  STRD.W          R0, R6, [SP,#0x38+var_38]
FE758:  MOVS            R0, #4; prio
FE75A:  BLX             __android_log_print
FE75E:  LDR             R0, =(off_25AE98 - 0xFE764)
FE760:  ADD             R0, PC; off_25AE98
FE762:  LDR             R4, [R0]
FE764:  LDR             R0, [SP,#0x38+var_28]
FE766:  BL              sub_16381E
FE76A:  MOV             R1, R0
FE76C:  MOV             R0, R8
FE76E:  BLX             R4
FE770:  LDR             R3, [SP,#0x38+var_24]
FE772:  LDR             R1, =(byte_8F794 - 0xFE77A)
FE774:  LDR             R2, [SP,#0x38+var_28]
FE776:  ADD             R1, PC; byte_8F794
FE778:  STR.W           R0, [R3,#0x598]
FE77C:  MOV             R0, R2
FE77E:  BL              sub_1637F8
FE782:  LDR             R0, [SP,#0x38+var_28]
FE784:  MOVS            R1, #0xFF
FE786:  BL              sub_163824
FE78A:  MOVS            R0, #1
FE78C:  ADD             SP, SP, #0x28 ; '('
FE78E:  POP.W           {R8}
FE792:  POP             {R4-R7,PC}
FE794:  LDR             R0, =(byte_25AE9C - 0xFE79A)
FE796:  ADD             R0, PC; byte_25AE9C ; __guard *
FE798:  BLX             j___cxa_guard_acquire
FE79C:  CMP             R0, #0
FE79E:  BEQ             loc_FE6C8
FE7A0:  LDR             R0, =(off_23494C - 0xFE7B0)
FE7A2:  MOVW            R3, #0x52D5
FE7A6:  LDR             R2, =(off_25AE98 - 0xFE7B2)
FE7A8:  MOVT            R3, #0x5A ; 'Z'
FE7AC:  ADD             R0, PC; off_23494C
FE7AE:  ADD             R2, PC; off_25AE98
FE7B0:  LDR             R1, [R0]; dword_23DF24
FE7B2:  LDR             R0, =(byte_25AE9C - 0xFE7BA)
FE7B4:  LDR             R1, [R1]
FE7B6:  ADD             R0, PC; byte_25AE9C ; __guard *
FE7B8:  ADD             R1, R3
FE7BA:  STR             R1, [R2]
FE7BC:  BLX             j___cxa_guard_release
FE7C0:  B               loc_FE6C8
FE7C2:  LDR             R0, =(byte_25AEA4 - 0xFE7C8)
FE7C4:  ADD             R0, PC; byte_25AEA4 ; __guard *
FE7C6:  BLX             j___cxa_guard_acquire
FE7CA:  CMP             R0, #0
FE7CC:  BEQ             loc_FE722
FE7CE:  LDR             R1, =(aXyzsr998 - 0xFE7D4); "XYZSR998" ...
FE7D0:  ADD             R1, PC; "XYZSR998"
FE7D2:  ADD             R0, SP, #0x38+var_30; int
FE7D4:  BL              sub_FE8E8
FE7D8:  LDR             R1, =(byte_25AEA4 - 0xFE7E0)
FE7DA:  STR             R0, [R4]
FE7DC:  ADD             R1, PC; byte_25AEA4
FE7DE:  MOV             R0, R1; __guard *
FE7E0:  BLX             j___cxa_guard_release
FE7E4:  B               loc_FE722
