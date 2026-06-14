; =========================================================
; Game Engine Function: alBufferData
; Address            : 0x1CE600 - 0x1CE928
; =========================================================

1CE600:  PUSH            {R4-R11,LR}
1CE604:  ADD             R11, SP, #0x1C
1CE608:  SUB             SP, SP, #0x1C
1CE60C:  MOV             R10, R3
1CE610:  MOV             R6, R2
1CE614:  MOV             R7, R1
1CE618:  MOV             R5, R0
1CE61C:  LDR             R8, [R11,#arg_0]
1CE620:  BL              j_GetContextRef
1CE624:  MOV             R4, R0
1CE628:  CMP             R4, #0
1CE62C:  BEQ             loc_1CE690
1CE630:  LDR             R0, [R4,#0xFC]
1CE634:  MOV             R1, R5
1CE638:  ADD             R0, R0, #0x3C ; '<'
1CE63C:  BL              j_LookupUIntMapKey
1CE640:  MOV             R9, R0
1CE644:  CMP             R9, #0
1CE648:  BEQ             loc_1CE698
1CE64C:  ORR             R0, R8, R10
1CE650:  CMP             R0, #0
1CE654:  BLT             loc_1CE6A4
1CE658:  LDR             R0, =(dword_C4E14 - 0x1CE664)
1CE65C:  ADD             R0, PC, R0; dword_C4E14
1CE660:  ADD             R1, R0, #4
1CE664:  MOV             R0, #0
1CE668:  LDR             R2, [R1,#-4]
1CE66C:  CMP             R2, R7
1CE670:  BEQ             loc_1CE6B0
1CE674:  ADD             R0, R0, #1
1CE678:  ADD             R1, R1, #0xC
1CE67C:  CMP             R0, #0x24 ; '$'
1CE680:  BCC             loc_1CE668
1CE684:  MOV             R0, R4
1CE688:  MOVW            R1, #0xA002
1CE68C:  B               loc_1CE8B4
1CE690:  SUB             SP, R11, #0x1C
1CE694:  POP             {R4-R11,PC}
1CE698:  MOV             R0, R4
1CE69C:  MOVW            R1, #0xA001
1CE6A0:  B               loc_1CE8B4
1CE6A4:  MOV             R0, R4
1CE6A8:  MOVW            R1, #0xA003
1CE6AC:  B               loc_1CE8B4
1CE6B0:  STR             R6, [SP,#0x38+var_20]
1CE6B4:  LDR             R5, [R1,#4]
1CE6B8:  SUB             R0, R5, #0x1400; switch 13 cases
1CE6BC:  CMP             R0, #0xC
1CE6C0:  BHI             def_1CE6D4; jumptable 001CE6D4 default case
1CE6C4:  LDR             R3, [R1]
1CE6C8:  ADR             R2, jpt_1CE6D4
1CE6CC:  MOV             R1, R0,LSL#2
1CE6D0:  LDR             R1, [R1,R2]
1CE6D4:  ADD             PC, R1, R2; switch jump
1CE6D8:  DCD loc_1CE70C - 0x1CE6D8; jump table for switch statement
1CE6DC:  DCD loc_1CE70C - 0x1CE6D8; jumptable 001CE6D4 cases 5120-5126
1CE6E0:  DCD loc_1CE70C - 0x1CE6D8; jumptable 001CE6D4 cases 5120-5126
1CE6E4:  DCD loc_1CE70C - 0x1CE6D8; jumptable 001CE6D4 cases 5120-5126
1CE6E8:  DCD loc_1CE70C - 0x1CE6D8; jumptable 001CE6D4 cases 5120-5126
1CE6EC:  DCD loc_1CE70C - 0x1CE6D8; jumptable 001CE6D4 cases 5120-5126
1CE6F0:  DCD loc_1CE70C - 0x1CE6D8; jumptable 001CE6D4 cases 5120-5126
1CE6F4:  DCD loc_1CE790 - 0x1CE6D8; jumptable 001CE6D4 cases 5127-5129
1CE6F8:  DCD loc_1CE790 - 0x1CE6D8; jumptable 001CE6D4 cases 5127-5129
1CE6FC:  DCD loc_1CE790 - 0x1CE6D8; jumptable 001CE6D4 cases 5127-5129
1CE700:  DCD loc_1CE7E4 - 0x1CE6D8; jumptable 001CE6D4 cases 5130,5131
1CE704:  DCD loc_1CE7E4 - 0x1CE6D8; jumptable 001CE6D4 cases 5130,5131
1CE708:  DCD loc_1CE81C - 0x1CE6D8; jumptable 001CE6D4 case 5132
1CE70C:  STR             R3, [SP,#0x38+var_24]; jumptable 001CE6D4 cases 5120-5126
1CE710:  SUB             R3, R3, #0x1500
1CE714:  CMP             R3, #6
1CE718:  MOV             R2, #0
1CE71C:  LDRLS           R2, =(unk_C5130 - 0x1CE72C)
1CE720:  MOV             R1, #0
1CE724:  ADDLS           R2, PC, R2; unk_C5130
1CE728:  LDRLS           R2, [R2,R3,LSL#2]
1CE72C:  CMP             R0, #6
1CE730:  ADRLS           R1, dword_1CE97C
1CE734:  LDRLS           R1, [R1,R0,LSL#2]
1CE738:  MOV             R0, R10
1CE73C:  MUL             R6, R1, R2
1CE740:  MOV             R1, R6
1CE744:  BL              sub_221798
1CE748:  MOV             R0, R1
1CE74C:  MOVW            R1, #0xA003
1CE750:  CMP             R0, #0
1CE754:  BNE             loc_1CE8B0
1CE758:  MOV             R0, R10
1CE75C:  MOV             R1, R6
1CE760:  BL              sub_220A6C
1CE764:  LDR             R1, [SP,#0x38+var_24]
1CE768:  MOV             R3, R0
1CE76C:  MOV             R0, #1
1CE770:  MOV             R2, R7
1CE774:  STMEA           SP, {R1,R5}
1CE778:  LDR             R1, [SP,#0x38+var_20]
1CE77C:  STR             R1, [SP,#0x38+var_30]
1CE780:  MOV             R1, R8
1CE784:  STR             R0, [SP,#0x38+var_2C]
1CE788:  MOV             R0, R9
1CE78C:  B               loc_1CE8A0
1CE790:  SUB             R2, R3, #0x1500; jumptable 001CE6D4 cases 5127-5129
1CE794:  MOV             R1, #0
1CE798:  CMP             R2, #6
1CE79C:  MOV             R0, #0
1CE7A0:  LDRLS           R1, =(unk_C5130 - 0x1CE7B0)
1CE7A4:  MOV             R6, R3
1CE7A8:  ADDLS           R1, PC, R1; unk_C5130
1CE7AC:  LDRLS           R1, [R1,R2,LSL#2]
1CE7B0:  MOVW            R2, #0x1407
1CE7B4:  SUB             R2, R5, R2
1CE7B8:  CMP             R2, #2
1CE7BC:  ADRLS           R0, dword_1CE954
1CE7C0:  LDRLS           R0, [R0,R2,LSL#2]
1CE7C4:  MUL             R7, R0, R1
1CE7C8:  MOVW            R0, #0x1501
1CE7CC:  SUB             R0, R3, R0
1CE7D0:  CMP             R0, #5
1CE7D4:  BHI             loc_1CE810
1CE7D8:  ADR             R1, dword_1CE960
1CE7DC:  LDR             R0, [R1,R0,LSL#2]
1CE7E0:  B               loc_1CE84C
1CE7E4:  SUB             R0, R3, #0x1500; jumptable 001CE6D4 cases 5130,5131
1CE7E8:  MOV             R6, R3
1CE7EC:  CMP             R0, #6
1CE7F0:  BHI             loc_1CE844
1CE7F4:  LDR             R1, =(unk_C5130 - 0x1CE804)
1CE7F8:  ADR             R2, dword_1CE930
1CE7FC:  ADD             R1, PC, R1; unk_C5130
1CE800:  LDR             R2, [R2,R0,LSL#2]
1CE804:  STR             R2, [SP,#0x38+var_24]
1CE808:  LDR             R7, [R1,R0,LSL#2]
1CE80C:  B               loc_1CE850
1CE810:  MOV             R0, #0x10010
1CE818:  B               loc_1CE84C
1CE81C:  SUB             R0, R3, #0x1500; jumptable 001CE6D4 case 5132
1CE820:  MOV             R6, R3
1CE824:  CMP             R0, #6
1CE828:  BHI             loc_1CE8C8
1CE82C:  LDR             R1, =(unk_C50E0 - 0x1CE83C)
1CE830:  ADR             R2, dword_1CE930
1CE834:  ADD             R1, PC, R1; unk_C50E0
1CE838:  LDR             R5, [R2,R0,LSL#2]
1CE83C:  LDR             R7, [R1,R0,LSL#2]
1CE840:  B               loc_1CE8D0
1CE844:  MOVW            R0, #0x1101
1CE848:  MOV             R7, #0
1CE84C:  STR             R0, [SP,#0x38+var_24]
1CE850:  MOV             R0, R10
1CE854:  MOV             R1, R7
1CE858:  BL              sub_221798
1CE85C:  MOV             R0, R1
1CE860:  MOVW            R1, #0xA003
1CE864:  CMP             R0, #0
1CE868:  BNE             loc_1CE8B0
1CE86C:  MOV             R0, R10
1CE870:  MOV             R1, R7
1CE874:  BL              sub_220A6C
1CE878:  STR             R6, [SP,#0x38+var_38]
1CE87C:  MOV             R3, R0
1CE880:  STR             R5, [SP,#0x38+var_34]
1CE884:  MOV             R0, #1
1CE888:  LDR             R1, [SP,#0x38+var_20]
1CE88C:  STR             R1, [SP,#0x38+var_30]
1CE890:  MOV             R1, R8
1CE894:  STR             R0, [SP,#0x38+var_2C]
1CE898:  MOV             R0, R9
1CE89C:  LDR             R2, [SP,#0x38+var_24]
1CE8A0:  BL              sub_1CE998
1CE8A4:  MOV             R1, R0
1CE8A8:  CMP             R1, #0
1CE8AC:  BEQ             def_1CE6D4; jumptable 001CE6D4 default case
1CE8B0:  MOV             R0, R4
1CE8B4:  BL              j_alSetError
1CE8B8:  MOV             R0, R4; jumptable 001CE6D4 default case
1CE8BC:  SUB             SP, R11, #0x1C
1CE8C0:  POP             {R4-R11,LR}
1CE8C4:  B               j_ALCcontext_DecRef
1CE8C8:  MOVW            R5, #0x1101
1CE8CC:  MOV             R7, #0
1CE8D0:  MOV             R0, R10
1CE8D4:  MOV             R1, R7
1CE8D8:  BL              sub_221798
1CE8DC:  MOV             R0, R1
1CE8E0:  MOVW            R1, #0xA003
1CE8E4:  CMP             R0, #0
1CE8E8:  BNE             loc_1CE8B0
1CE8EC:  MOV             R0, R10
1CE8F0:  MOV             R1, R7
1CE8F4:  BL              sub_220A6C
1CE8F8:  MOVW            R2, #0x140C
1CE8FC:  STR             R6, [SP,#0x38+var_38]
1CE900:  STR             R2, [SP,#0x38+var_34]
1CE904:  ADD             R3, R0, R0,LSL#6
1CE908:  LDR             R2, [SP,#0x38+var_20]
1CE90C:  MOV             R1, #1
1CE910:  STR             R2, [SP,#0x38+var_30]
1CE914:  MOV             R0, R9
1CE918:  STR             R1, [SP,#0x38+var_2C]
1CE91C:  MOV             R1, R8
1CE920:  MOV             R2, R5
1CE924:  B               loc_1CE8A0
