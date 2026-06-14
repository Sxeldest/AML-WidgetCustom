; =========================================================
; Game Engine Function: alDeleteFilters
; Address            : 0x254684 - 0x2548F6
; =========================================================

254684:  PUSH            {R4-R7,LR}
254686:  ADD             R7, SP, #0xC
254688:  PUSH.W          {R8-R11}
25468C:  SUB             SP, SP, #0x1C
25468E:  MOV             R5, R1
254690:  MOV             R6, R0
254692:  BLX             j_GetContextRef
254696:  MOV             R4, R0
254698:  CMP             R4, #0
25469A:  BEQ.W           loc_254870
25469E:  CMP             R6, #0
2546A0:  STR             R4, [SP,#0x38+var_38]
2546A2:  BLT.W           loc_254878
2546A6:  STRD.W          R6, R5, [SP,#0x38+var_30]
2546AA:  BEQ.W           loc_2548E6
2546AE:  LDR.W           R8, [SP,#0x38+var_38]
2546B2:  MOVS            R4, #0
2546B4:  LDR.W           R0, [R8,#0x88]
2546B8:  LDRD.W          R5, R6, [SP,#0x38+var_30]
2546BC:  ADD.W           R9, R0, #0x88
2546C0:  LDR.W           R1, [R6,R4,LSL#2]
2546C4:  CBZ             R1, loc_2546D2
2546C6:  MOV             R0, R9
2546C8:  BLX             j_LookupUIntMapKey
2546CC:  CMP             R0, #0
2546CE:  BEQ.W           loc_2548AC
2546D2:  ADDS            R4, #1
2546D4:  CMP             R4, R5
2546D6:  BLT             loc_2546C0
2546D8:  CMP             R5, #1
2546DA:  STR.W           R9, [SP,#0x38+var_34]
2546DE:  BLT.W           loc_2548E6
2546E2:  LDR.W           R9, =(dword_6D681C - 0x2546F6)
2546E6:  MOVS            R5, #0
2546E8:  LDR.W           R11, =(dword_6D681C - 0x2546FA)
2546EC:  MOV.W           R8, #1
2546F0:  LDR             R6, =(dword_6D681C - 0x254700)
2546F2:  ADD             R9, PC; dword_6D681C
2546F4:  LDR             R4, =(dword_6D681C - 0x254702)
2546F6:  ADD             R11, PC; dword_6D681C
2546F8:  LDR.W           R10, =(dword_6D681C - 0x254706)
2546FC:  ADD             R6, PC; dword_6D681C
2546FE:  ADD             R4, PC; dword_6D681C
254700:  MOVS            R1, #0
254702:  ADD             R10, PC; dword_6D681C
254704:  LDR             R0, [SP,#0x38+var_2C]
254706:  STR             R1, [SP,#0x38+var_20]
254708:  LDR.W           R1, [R0,R1,LSL#2]
25470C:  LDR             R0, [SP,#0x38+var_34]
25470E:  BLX             j_RemoveUIntMapKey
254712:  CMP             R0, #0
254714:  BEQ.W           loc_254862
254718:  LDR             R2, =(dword_6D681C - 0x254722)
25471A:  STR             R0, [SP,#0x38+p]
25471C:  LDR             R0, [R0,#0x2C]
25471E:  ADD             R2, PC; dword_6D681C
254720:  STR             R0, [SP,#0x38+var_28]
254722:  DMB.W           ISH
254726:  LDREX.W         R0, [R2,#0xC]
25472A:  STREX.W         R1, R8, [R2,#0xC]
25472E:  CMP             R1, #0
254730:  BNE             loc_254726
254732:  B               loc_254748
254734:  BLX             sched_yield
254738:  DMB.W           ISH
25473C:  LDREX.W         R0, [R9,#0xC]
254740:  STREX.W         R1, R8, [R9,#0xC]
254744:  CMP             R1, #0
254746:  BNE             loc_25473C
254748:  CMP             R0, #1
25474A:  DMB.W           ISH
25474E:  BEQ             loc_254734
254750:  LDR             R2, =(dword_6D681C - 0x25475A)
254752:  DMB.W           ISH
254756:  ADD             R2, PC; dword_6D681C
254758:  LDREX.W         R0, [R2,#8]
25475C:  STREX.W         R1, R8, [R2,#8]
254760:  CMP             R1, #0
254762:  BNE             loc_254758
254764:  B               loc_25477A
254766:  BLX             sched_yield
25476A:  DMB.W           ISH
25476E:  LDREX.W         R0, [R11,#8]
254772:  STREX.W         R1, R8, [R11,#8]
254776:  CMP             R1, #0
254778:  BNE             loc_25476E
25477A:  CMP             R0, #1
25477C:  DMB.W           ISH
254780:  BEQ             loc_254766
254782:  LDR             R3, =(dword_6D681C - 0x25478C)
254784:  DMB.W           ISH
254788:  ADD             R3, PC; dword_6D681C
25478A:  LDREX.W         R0, [R3]
25478E:  ADDS            R1, R0, #1
254790:  STREX.W         R2, R1, [R3]
254794:  CMP             R2, #0
254796:  BNE             loc_25478A
254798:  CMP             R0, #0
25479A:  DMB.W           ISH
25479E:  BNE             loc_2547D2
2547A0:  LDR             R2, =(dword_6D681C - 0x2547AA)
2547A2:  DMB.W           ISH
2547A6:  ADD             R2, PC; dword_6D681C
2547A8:  LDREX.W         R0, [R2,#0x10]
2547AC:  STREX.W         R1, R8, [R2,#0x10]
2547B0:  CMP             R1, #0
2547B2:  BNE             loc_2547A8
2547B4:  B               loc_2547CA
2547B6:  BLX             sched_yield
2547BA:  DMB.W           ISH
2547BE:  LDREX.W         R0, [R6,#0x10]
2547C2:  STREX.W         R1, R8, [R6,#0x10]
2547C6:  CMP             R1, #0
2547C8:  BNE             loc_2547BE
2547CA:  CMP             R0, #1
2547CC:  DMB.W           ISH
2547D0:  BEQ             loc_2547B6
2547D2:  LDR             R1, =(dword_6D681C - 0x2547DC)
2547D4:  DMB.W           ISH
2547D8:  ADD             R1, PC; dword_6D681C
2547DA:  LDREX.W         R0, [R1,#8]
2547DE:  STREX.W         R0, R5, [R1,#8]
2547E2:  CMP             R0, #0
2547E4:  BNE             loc_2547DA
2547E6:  DMB.W           ISH
2547EA:  DMB.W           ISH
2547EE:  LDREX.W         R0, [R4,#0xC]
2547F2:  STREX.W         R0, R5, [R4,#0xC]
2547F6:  CMP             R0, #0
2547F8:  BNE             loc_2547EE
2547FA:  LDR             R0, =(dword_6D6830 - 0x254804)
2547FC:  DMB.W           ISH
254800:  ADD             R0, PC; dword_6D6830
254802:  LDR             R1, [R0]
254804:  LDR             R0, [SP,#0x38+var_28]
254806:  SUBS            R0, #1
254808:  CMP             R0, R1
25480A:  BCS             loc_25482A
25480C:  LDR             R1, =(dword_6D6834 - 0x254812)
25480E:  ADD             R1, PC; dword_6D6834
254810:  LDR             R1, [R1]
254812:  DMB.W           ISH
254816:  ADD.W           R0, R1, R0,LSL#2
25481A:  LDREX.W         R1, [R0]
25481E:  STREX.W         R1, R5, [R0]
254822:  CMP             R1, #0
254824:  BNE             loc_25481A
254826:  DMB.W           ISH
25482A:  DMB.W           ISH
25482E:  LDREX.W         R0, [R10]
254832:  SUBS            R1, R0, #1
254834:  STREX.W         R2, R1, [R10]
254838:  CMP             R2, #0
25483A:  BNE             loc_25482E
25483C:  CMP             R0, #1
25483E:  DMB.W           ISH
254842:  BNE             loc_25485C
254844:  LDR             R1, =(dword_6D681C - 0x25484E)
254846:  DMB.W           ISH
25484A:  ADD             R1, PC; dword_6D681C
25484C:  LDREX.W         R0, [R1,#0x10]
254850:  STREX.W         R0, R5, [R1,#0x10]
254854:  CMP             R0, #0
254856:  BNE             loc_25484C
254858:  DMB.W           ISH
25485C:  LDR             R0, [SP,#0x38+p]; p
25485E:  BLX             free
254862:  LDR             R1, [SP,#0x38+var_20]
254864:  LDR             R0, [SP,#0x38+var_30]
254866:  ADDS            R1, #1
254868:  CMP             R1, R0
25486A:  BNE.W           loc_254704
25486E:  B               loc_2548E6
254870:  ADD             SP, SP, #0x1C
254872:  POP.W           {R8-R11}
254876:  POP             {R4-R7,PC}
254878:  LDR             R0, =(TrapALError_ptr - 0x25487E)
25487A:  ADD             R0, PC; TrapALError_ptr
25487C:  LDR             R0, [R0]; TrapALError
25487E:  LDRB            R0, [R0]
254880:  CMP             R0, #0
254882:  ITT NE
254884:  MOVNE           R0, #5; sig
254886:  BLXNE           raise
25488A:  LDREX.W         R0, [R4,#0x50]
25488E:  CBNZ            R0, loc_2548DE
254890:  ADD.W           R0, R4, #0x50 ; 'P'
254894:  MOVW            R1, #0xA003
254898:  DMB.W           ISH
25489C:  STREX.W         R2, R1, [R0]
2548A0:  CBZ             R2, loc_2548E2
2548A2:  LDREX.W         R2, [R0]
2548A6:  CMP             R2, #0
2548A8:  BEQ             loc_25489C
2548AA:  B               loc_2548DE
2548AC:  LDR             R0, =(TrapALError_ptr - 0x2548B2)
2548AE:  ADD             R0, PC; TrapALError_ptr
2548B0:  LDR             R0, [R0]; TrapALError
2548B2:  LDRB            R0, [R0]
2548B4:  CMP             R0, #0
2548B6:  ITT NE
2548B8:  MOVNE           R0, #5; sig
2548BA:  BLXNE           raise
2548BE:  LDREX.W         R0, [R8,#0x50]
2548C2:  CBNZ            R0, loc_2548DE
2548C4:  ADD.W           R0, R8, #0x50 ; 'P'
2548C8:  MOVW            R1, #0xA001
2548CC:  DMB.W           ISH
2548D0:  STREX.W         R2, R1, [R0]
2548D4:  CBZ             R2, loc_2548E2
2548D6:  LDREX.W         R2, [R0]
2548DA:  CMP             R2, #0
2548DC:  BEQ             loc_2548D0
2548DE:  CLREX.W
2548E2:  DMB.W           ISH
2548E6:  LDR             R0, [SP,#0x38+var_38]
2548E8:  ADD             SP, SP, #0x1C
2548EA:  POP.W           {R8-R11}
2548EE:  POP.W           {R4-R7,LR}
2548F2:  B.W             ALCcontext_DecRef
