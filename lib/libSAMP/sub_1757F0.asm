; =========================================================
; Game Engine Function: sub_1757F0
; Address            : 0x1757F0 - 0x175892
; =========================================================

1757F0:  PUSH            {R4-R7,LR}
1757F2:  ADD             R7, SP, #0xC
1757F4:  PUSH.W          {R8,R9,R11}
1757F8:  SUB             SP, SP, #0x20
1757FA:  MOV             R4, R0
1757FC:  VMOV.I32        Q8, #0
175800:  MOV             R9, SP
175802:  ADD.W           R6, R9, #0xC
175806:  LDR             R0, [R0,#0x40]
175808:  LDR             R5, [R4,#0x44]
17580A:  VST1.32         {D16-D17}, [R6]
17580E:  MOV.W           R6, #0xFFFFFFFF
175812:  CMP             R0, R5
175814:  STR             R6, [SP,#0x38+var_30]
175816:  STRH.W          R3, [SP,#0x38+var_32]
17581A:  STRH.W          R2, [SP,#0x38+var_34]
17581E:  STR             R1, [SP,#0x38+var_38]
175820:  BNE             loc_175868
175822:  CMP             R0, #0
175824:  ADD.W           R5, R0, #1
175828:  ITTE NE
17582A:  ADDNE.W         R1, R0, R0,LSR#31
17582E:  ADDNE.W         R1, R0, R1,ASR#1
175832:  MOVEQ           R1, #8
175834:  CMP             R1, R5
175836:  IT GT
175838:  MOVGT           R5, R1
17583A:  CMP             R0, R5
17583C:  BGE             loc_175868
17583E:  RSB.W           R0, R5, R5,LSL#3
175842:  LSLS            R0, R0, #2
175844:  BL              sub_1654B0
175848:  LDR             R1, [R4,#0x48]; src
17584A:  MOV             R8, R0
17584C:  CBZ             R1, loc_175862
17584E:  LDR             R0, [R4,#0x40]
175850:  RSB.W           R0, R0, R0,LSL#3
175854:  LSLS            R2, R0, #2; n
175856:  MOV             R0, R8; dest
175858:  BLX             j_memcpy
17585C:  LDR             R0, [R4,#0x48]
17585E:  BL              sub_165578
175862:  LDR             R0, [R4,#0x40]
175864:  STRD.W          R5, R8, [R4,#0x44]
175868:  MOVS            R1, #0xC
17586A:  LDR             R2, [R4,#0x48]
17586C:  RSB.W           R0, R0, R0,LSL#3
175870:  VLD1.8          {D16-D17}, [R9],R1
175874:  ADD.W           R0, R2, R0,LSL#2
175878:  VLD1.32         {D18-D19}, [R9]
17587C:  VST1.8          {D16-D17}, [R0],R1
175880:  VST1.8          {D18-D19}, [R0]
175884:  LDR             R0, [R4,#0x40]
175886:  ADDS            R1, R0, #1
175888:  STR             R1, [R4,#0x40]
17588A:  ADD             SP, SP, #0x20 ; ' '
17588C:  POP.W           {R8,R9,R11}
175890:  POP             {R4-R7,PC}
