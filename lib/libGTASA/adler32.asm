; =========================================================
; Game Engine Function: adler32
; Address            : 0x20A778 - 0x20A8C6
; =========================================================

20A778:  CMP             R1, #0
20A77A:  ITT EQ
20A77C:  MOVEQ           R0, #1
20A77E:  BXEQ            LR
20A780:  PUSH            {R4-R7,LR}
20A782:  ADD             R7, SP, #0x14+var_8
20A784:  PUSH.W          {R8-R11}
20A788:  SUB             SP, SP, #8
20A78A:  LSRS            R6, R0, #0x10
20A78C:  UXTH            R0, R0
20A78E:  CMP             R2, #0
20A790:  BEQ.W           loc_20A8BA
20A794:  MOVW            LR, #0x8071
20A798:  MOVW            R12, #0x15B0
20A79C:  MOVT            LR, #0x8007
20A7A0:  MOVW            R8, #0xFFF1
20A7A4:  CMP             R2, R12
20A7A6:  MOVW            R3, #0x15B0
20A7AA:  IT CC
20A7AC:  MOVCC           R3, R2
20A7AE:  SUB.W           R11, R2, R3
20A7B2:  CMP             R3, #0x10
20A7B4:  BLT             loc_20A886
20A7B6:  MOVW            R3, #0xEA4F
20A7BA:  MVNS            R4, R2
20A7BC:  MOVT            R3, #0xFFFF
20A7C0:  CMP             R4, R3
20A7C2:  IT LS
20A7C4:  MOVLS           R4, R3
20A7C6:  CMP             R2, R12
20A7C8:  IT CS
20A7CA:  MOVCS           R2, R12
20A7CC:  CMP             R2, #0x1F
20A7CE:  IT GE
20A7D0:  MOVGE           R2, #0x1F
20A7D2:  RSB.W           R2, R2, #0xE
20A7D6:  SUBS            R2, R2, R4
20A7D8:  BIC.W           R2, R2, #0xF
20A7DC:  STR             R2, [SP,#0x2C+var_28]
20A7DE:  MOV             R2, #0xFFFFFFEF
20A7E2:  SUBS            R2, R2, R4
20A7E4:  RSB.W           R4, R4, #0xF
20A7E8:  STR             R2, [SP,#0x2C+var_2C]
20A7EA:  MOV             R2, R1
20A7EC:  LDRB.W          LR, [R2]
20A7F0:  SUBS            R4, #0x10
20A7F2:  LDRB.W          R8, [R2,#1]
20A7F6:  CMP             R4, #0x1F
20A7F8:  ADD.W           R3, R0, LR
20A7FC:  LDRB.W          R9, [R2,#2]
20A800:  ADD.W           R5, R3, R8
20A804:  ADD             R3, R6
20A806:  LDRB.W          R10, [R2,#3]
20A80A:  ADD             R3, R5
20A80C:  ADD             R5, R9
20A80E:  LDRB            R0, [R2,#4]
20A810:  ADD             R3, R5
20A812:  ADD             R5, R10
20A814:  LDRB            R6, [R2,#5]
20A816:  ADD             R3, R5
20A818:  ADD             R0, R5
20A81A:  LDRB            R5, [R2,#6]
20A81C:  ADD             R3, R0
20A81E:  ADD             R0, R6
20A820:  LDRB            R6, [R2,#7]
20A822:  ADD             R3, R0
20A824:  ADD             R0, R5
20A826:  LDRB            R5, [R2,#8]
20A828:  ADD             R3, R0
20A82A:  ADD             R0, R6
20A82C:  LDRB            R6, [R2,#9]
20A82E:  ADD             R3, R0
20A830:  ADD             R0, R5
20A832:  LDRB            R5, [R2,#0xA]
20A834:  ADD             R3, R0
20A836:  ADD             R0, R6
20A838:  LDRB            R6, [R2,#0xB]
20A83A:  ADD             R3, R0
20A83C:  ADD             R0, R5
20A83E:  LDRB.W          R8, [R2,#0xC]
20A842:  ADD             R3, R0
20A844:  ADD             R0, R6
20A846:  LDRB            R5, [R2,#0xD]
20A848:  ADD             R3, R0
20A84A:  ADD             R0, R8
20A84C:  LDRB.W          LR, [R2,#0xE]
20A850:  LDRB.W          R12, [R2,#0xF]
20A854:  ADD             R3, R0
20A856:  ADD             R0, R5
20A858:  ADD.W           R2, R2, #0x10
20A85C:  ADD             R3, R0
20A85E:  ADD             R0, LR
20A860:  ADD             R3, R0
20A862:  ADD             R0, R12
20A864:  ADD.W           R6, R3, R0
20A868:  BGT             loc_20A7EC
20A86A:  LDRD.W          R2, R3, [SP,#0x2C+var_2C]
20A86E:  ADD             R1, R3
20A870:  MOVW            LR, #0x8071
20A874:  ADDS            R1, #0x10
20A876:  SUBS            R2, R2, R3
20A878:  MOVW            R12, #0x15B0
20A87C:  MOVT            LR, #0x8007
20A880:  MOVW            R8, #0xFFF1
20A884:  BEQ             loc_20A898
20A886:  MOV             R3, R1
20A888:  MOV             R4, R2
20A88A:  LDRB.W          R5, [R3],#1
20A88E:  SUBS            R4, #1
20A890:  ADD             R0, R5
20A892:  ADD             R6, R0
20A894:  BNE             loc_20A88A
20A896:  ADD             R1, R2
20A898:  UMULL.W         R2, R3, R6, LR
20A89C:  CMP.W           R11, #0
20A8A0:  UMULL.W         R2, R5, R0, LR
20A8A4:  MOV.W           R2, R3,LSR#15
20A8A8:  MLS.W           R6, R2, R8, R6
20A8AC:  MOV.W           R2, R5,LSR#15
20A8B0:  MLS.W           R0, R2, R8, R0
20A8B4:  MOV             R2, R11
20A8B6:  BNE.W           loc_20A7A4
20A8BA:  ORR.W           R0, R0, R6,LSL#16
20A8BE:  ADD             SP, SP, #8
20A8C0:  POP.W           {R8-R11}
20A8C4:  POP             {R4-R7,PC}
