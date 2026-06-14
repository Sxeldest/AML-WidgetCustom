; =========================================================
; Game Engine Function: _ZN11CMenuSystem27InsertOneMenuItemWithNumberEhhhPcii
; Address            : 0x43D71C - 0x43D7BC
; =========================================================

43D71C:  PUSH            {R4-R7,LR}
43D71E:  ADD             R7, SP, #0xC
43D720:  PUSH.W          {R8,R9,R11}
43D724:  MOV             R4, R0
43D726:  LDR             R0, =(MenuNumber_ptr - 0x43D732)
43D728:  MOV             R6, R1
43D72A:  LDRD.W          R9, R8, [R7,#arg_0]
43D72E:  ADD             R0, PC; MenuNumber_ptr
43D730:  RSB.W           R1, R6, R6,LSL#4
43D734:  MOV             R5, R2
43D736:  CMP             R3, #0
43D738:  LDR             R0, [R0]; MenuNumber
43D73A:  LDR.W           R0, [R0,R4,LSL#2]
43D73E:  ADD.W           R0, R0, R1,LSL#3
43D742:  ADD.W           R1, R5, R5,LSL#2
43D746:  ADD.W           R0, R0, R1,LSL#1
43D74A:  ADD.W           R0, R0, #0x41 ; 'A'; char *
43D74E:  BEQ             loc_43D758
43D750:  MOV             R1, R3; char *
43D752:  BLX             strcpy
43D756:  B               loc_43D75C
43D758:  MOVS            R1, #0
43D75A:  STRB            R1, [R0]
43D75C:  LDR             R0, =(MenuNumber_ptr - 0x43D766)
43D75E:  ADD.W           R2, R6, R6,LSL#1
43D762:  ADD             R0, PC; MenuNumber_ptr
43D764:  LDR             R0, [R0]; MenuNumber
43D766:  LDR.W           R1, [R0,R4,LSL#2]
43D76A:  ADD.W           R1, R1, R2,LSL#4
43D76E:  ADD.W           R1, R1, R5,LSL#2
43D772:  STR.W           R9, [R1,#0x224]
43D776:  LDR.W           R1, [R0,R4,LSL#2]
43D77A:  ADD.W           R1, R1, R2,LSL#4
43D77E:  LDR             R2, =(MenuNumber_ptr - 0x43D788)
43D780:  ADD.W           R1, R1, R5,LSL#2
43D784:  ADD             R2, PC; MenuNumber_ptr
43D786:  STR.W           R8, [R1,#0x2E4]
43D78A:  LDR.W           R1, [R0,R4,LSL#2]
43D78E:  MOVS            R0, #0
43D790:  LDR             R2, [R2]; MenuNumber
43D792:  STRB.W          R0, [R1,#0x3F6]
43D796:  MOVS            R1, #0x41 ; 'A'
43D798:  LDR.W           R3, [R2,R4,LSL#2]
43D79C:  ADDS            R0, #1
43D79E:  LDRB            R6, [R3,R1]
43D7A0:  ADDS            R1, #0xA
43D7A2:  CMP             R6, #0
43D7A4:  ITTTT NE
43D7A6:  LDRBNE.W        R6, [R3,#0x3F6]
43D7AA:  ADDNE           R0, R6
43D7AC:  STRBNE.W        R0, [R3,#0x3F6]
43D7B0:  MOVNE           R0, #0
43D7B2:  CMP             R1, #0xB9
43D7B4:  BNE             loc_43D798
43D7B6:  POP.W           {R8,R9,R11}
43D7BA:  POP             {R4-R7,PC}
