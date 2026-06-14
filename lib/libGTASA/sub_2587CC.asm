; =========================================================
; Game Engine Function: sub_2587CC
; Address            : 0x2587CC - 0x258A66
; =========================================================

2587CC:  PUSH            {R4-R7,LR}
2587CE:  ADD             R7, SP, #0xC
2587D0:  PUSH.W          {R8}
2587D4:  SUB             SP, SP, #0x18
2587D6:  MOV             R6, R2
2587D8:  MOV             R4, R3
2587DA:  MOV             R8, R1
2587DC:  MOV             R5, R0
2587DE:  CMP.W           R6, #0x1200
2587E2:  BGE             loc_258866
2587E4:  MOVW            R0, #0x1001
2587E8:  SUBS            R0, R6, R0
2587EA:  CMP             R0, #0x32 ; '2'; switch 51 cases
2587EC:  BHI.W           def_2587F0; jumptable 002587F0 default case
2587F0:  TBH.W           [PC,R0,LSL#1]; switch jump
2587F4:  DCW 0x33; jump table for switch statement
2587F6:  DCW 0x33
2587F8:  DCW 0xD6
2587FA:  DCW 0x8C
2587FC:  DCW 0x8C
2587FE:  DCW 0x8C
258800:  DCW 0xAB
258802:  DCW 0xD6
258804:  DCW 0xA2
258806:  DCW 0xD6
258808:  DCW 0xD6
25880A:  DCW 0xD6
25880C:  DCW 0xD6
25880E:  DCW 0xD6
258810:  DCW 0xD6
258812:  DCW 0xAB
258814:  DCW 0xD6
258816:  DCW 0xD6
258818:  DCW 0xD6
25881A:  DCW 0xD6
25881C:  DCW 0xAB
25881E:  DCW 0xAB
258820:  DCW 0xD6
258822:  DCW 0xD6
258824:  DCW 0xD6
258826:  DCW 0xD6
258828:  DCW 0xD6
25882A:  DCW 0xD6
25882C:  DCW 0xD6
25882E:  DCW 0xD6
258830:  DCW 0xD6
258832:  DCW 0x33
258834:  DCW 0x33
258836:  DCW 0xD6
258838:  DCW 0x33
25883A:  DCW 0x33
25883C:  DCW 0xAB
25883E:  DCW 0xAB
258840:  DCW 0xAB
258842:  DCW 0xD6
258844:  DCW 0xD6
258846:  DCW 0xD6
258848:  DCW 0xD6
25884A:  DCW 0xD6
25884C:  DCW 0xD6
25884E:  DCW 0xD6
258850:  DCW 0xD6
258852:  DCW 0xD6
258854:  DCW 0x6E
258856:  DCW 0x6E
258858:  DCW 0xAB
25885A:  LDRD.W          R0, R1, [R4]; jumptable 002587F0 cases 0,1,31,32,34,35
25885E:  BLX             __aeabi_l2f
258862:  STR             R0, [SP,#0x28+var_1C]
258864:  B               loc_25892A
258866:  MOVS            R0, #0x20004
25886C:  CMP             R6, R0
25886E:  BGT             loc_258884
258870:  CMP.W           R6, #0x1200
258874:  BEQ             loc_2588D0; jumptable 002587F0 cases 48,49
258876:  CMP.W           R6, #0xC000
25887A:  BEQ             loc_25885A; jumptable 002587F0 cases 0,1,31,32,34,35
25887C:  CMP.W           R6, #0xD000
258880:  BEQ             loc_25894A; jumptable 002587F0 cases 6,15,20,21,36-38,50
258882:  B               loc_2589A0; jumptable 002587F0 cases 2,7,9-14,16-19,22-30,33,39-47
258884:  SUB.W           R0, R6, #0x20000
258888:  SUBS            R0, #0xA
25888A:  CMP             R0, #3
25888C:  BCC             loc_25894A; jumptable 002587F0 cases 6,15,20,21,36-38,50
25888E:  MOVS            R0, #0x20005
258894:  CMP             R6, R0
258896:  BEQ             loc_258938; jumptable 002587F0 case 8
258898:  MOVS            R0, #0x20006
25889E:  CMP             R6, R0
2588A0:  BNE             loc_2589A0; jumptable 002587F0 cases 2,7,9-14,16-19,22-30,33,39-47
2588A2:  LDR             R0, [R4,#4]
2588A4:  CMP             R0, #0
2588A6:  ITT EQ
2588A8:  LDREQ           R0, [R4,#0xC]
2588AA:  CMPEQ           R0, #0
2588AC:  BNE.W           loc_258A24
2588B0:  LDR             R0, [R4,#0x14]
2588B2:  CMP             R0, #0
2588B4:  BNE.W           loc_258A24
2588B8:  LDR             R0, [R4]
2588BA:  MOV             R3, SP
2588BC:  LDR             R2, [R4,#0x10]
2588BE:  LDR             R1, [R4,#8]
2588C0:  STMEA.W         SP, {R0-R2}
2588C4:  MOVS            R2, #0x20006
2588CA:  MOV             R0, R5
2588CC:  MOV             R1, R8
2588CE:  B               loc_258962
2588D0:  LDR             R0, =(TrapALError_ptr - 0x2588D6); jumptable 002587F0 cases 48,49
2588D2:  ADD             R0, PC; TrapALError_ptr
2588D4:  LDR             R0, [R0]; TrapALError
2588D6:  LDRB            R0, [R0]
2588D8:  CMP             R0, #0
2588DA:  ITT NE
2588DC:  MOVNE           R0, #5; sig
2588DE:  BLXNE           raise
2588E2:  LDREX.W         R0, [R8,#0x50]
2588E6:  CMP             R0, #0
2588E8:  BNE.W           loc_258A56
2588EC:  ADD.W           R0, R8, #0x50 ; 'P'
2588F0:  MOVW            R1, #0xA004
2588F4:  DMB.W           ISH
2588F8:  STREX.W         R2, R1, [R0]
2588FC:  CMP             R2, #0
2588FE:  BEQ.W           loc_258A5A
258902:  LDREX.W         R2, [R0]
258906:  CMP             R2, #0
258908:  BEQ             loc_2588F8
25890A:  B               loc_258A56
25890C:  LDRD.W          R0, R1, [R4]; jumptable 002587F0 cases 3-5
258910:  BLX             __aeabi_l2f
258914:  STR             R0, [SP,#0x28+var_1C]
258916:  LDRD.W          R0, R1, [R4,#8]
25891A:  BLX             __aeabi_l2f
25891E:  STR             R0, [SP,#0x28+var_18]
258920:  LDRD.W          R0, R1, [R4,#0x10]
258924:  BLX             __aeabi_l2f
258928:  STR             R0, [SP,#0x28+var_14]
25892A:  ADD             R3, SP, #0x28+var_1C
25892C:  MOV             R0, R5
25892E:  MOV             R1, R8
258930:  MOV             R2, R6
258932:  BL              sub_256840
258936:  B               loc_258A5E
258938:  LDR             R0, [R4,#4]; jumptable 002587F0 case 8
25893A:  CMP             R0, #0
25893C:  BNE             loc_2589F0
25893E:  LDR             R0, [R4]
258940:  B               loc_258958
258942:  MOVW            R0, #0x202; jumptable 002587F0 default case
258946:  CMP             R6, R0
258948:  BNE             loc_2589A0; jumptable 002587F0 cases 2,7,9-14,16-19,22-30,33,39-47
25894A:  LDRD.W          R0, R1, [R4]; jumptable 002587F0 cases 6,15,20,21,36-38,50
25894E:  ADDS.W          R2, R0, #0x80000000
258952:  ADCS.W          R1, R1, #0
258956:  BNE             loc_258968
258958:  STR             R0, [SP,#0x28+var_28]
25895A:  MOV             R3, SP
25895C:  MOV             R0, R5
25895E:  MOV             R1, R8
258960:  MOV             R2, R6
258962:  BL              sub_2579C4
258966:  B               loc_258A5E
258968:  LDR             R0, =(TrapALError_ptr - 0x25896E)
25896A:  ADD             R0, PC; TrapALError_ptr
25896C:  LDR             R0, [R0]; TrapALError
25896E:  LDRB            R0, [R0]
258970:  CMP             R0, #0
258972:  ITT NE
258974:  MOVNE           R0, #5; sig
258976:  BLXNE           raise
25897A:  LDREX.W         R0, [R8,#0x50]
25897E:  CMP             R0, #0
258980:  BNE             loc_258A56
258982:  ADD.W           R0, R8, #0x50 ; 'P'
258986:  MOVW            R1, #0xA003
25898A:  DMB.W           ISH
25898E:  STREX.W         R2, R1, [R0]
258992:  CMP             R2, #0
258994:  BEQ             loc_258A5A
258996:  LDREX.W         R2, [R0]
25899A:  CMP             R2, #0
25899C:  BEQ             loc_25898E
25899E:  B               loc_258A56
2589A0:  LDR             R0, =(LogLevel_ptr - 0x2589A6); jumptable 002587F0 cases 2,7,9-14,16-19,22-30,33,39-47
2589A2:  ADD             R0, PC; LogLevel_ptr
2589A4:  LDR             R0, [R0]; LogLevel
2589A6:  LDR             R0, [R0]
2589A8:  CBZ             R0, loc_2589BA
2589AA:  LDR             R0, =(aEe - 0x2589B6); "(EE)"
2589AC:  ADR             R1, aSetsourcei64v; "SetSourcei64v"
2589AE:  LDR             R2, =(aUnexpectedProp - 0x2589B8); "Unexpected property: 0x%04x\n"
2589B0:  MOV             R3, R6
2589B2:  ADD             R0, PC; "(EE)"
2589B4:  ADD             R2, PC; "Unexpected property: 0x%04x\n"
2589B6:  BLX             j_al_print
2589BA:  LDR             R0, =(TrapALError_ptr - 0x2589C0)
2589BC:  ADD             R0, PC; TrapALError_ptr
2589BE:  LDR             R0, [R0]; TrapALError
2589C0:  LDRB            R0, [R0]
2589C2:  CMP             R0, #0
2589C4:  ITT NE
2589C6:  MOVNE           R0, #5; sig
2589C8:  BLXNE           raise
2589CC:  LDREX.W         R0, [R8,#0x50]
2589D0:  CMP             R0, #0
2589D2:  BNE             loc_258A56
2589D4:  ADD.W           R0, R8, #0x50 ; 'P'
2589D8:  MOVW            R1, #0xA002
2589DC:  DMB.W           ISH
2589E0:  STREX.W         R2, R1, [R0]
2589E4:  CBZ             R2, loc_258A5A
2589E6:  LDREX.W         R2, [R0]
2589EA:  CMP             R2, #0
2589EC:  BEQ             loc_2589E0
2589EE:  B               loc_258A56
2589F0:  LDR             R0, =(TrapALError_ptr - 0x2589F6)
2589F2:  ADD             R0, PC; TrapALError_ptr
2589F4:  LDR             R0, [R0]; TrapALError
2589F6:  LDRB            R0, [R0]
2589F8:  CMP             R0, #0
2589FA:  ITT NE
2589FC:  MOVNE           R0, #5; sig
2589FE:  BLXNE           raise
258A02:  LDREX.W         R0, [R8,#0x50]
258A06:  CBNZ            R0, loc_258A56
258A08:  ADD.W           R0, R8, #0x50 ; 'P'
258A0C:  MOVW            R1, #0xA003
258A10:  DMB.W           ISH
258A14:  STREX.W         R2, R1, [R0]
258A18:  CBZ             R2, loc_258A5A
258A1A:  LDREX.W         R2, [R0]
258A1E:  CMP             R2, #0
258A20:  BEQ             loc_258A14
258A22:  B               loc_258A56
258A24:  LDR             R0, =(TrapALError_ptr - 0x258A2A)
258A26:  ADD             R0, PC; TrapALError_ptr
258A28:  LDR             R0, [R0]; TrapALError
258A2A:  LDRB            R0, [R0]
258A2C:  CMP             R0, #0
258A2E:  ITT NE
258A30:  MOVNE           R0, #5; sig
258A32:  BLXNE           raise
258A36:  LDREX.W         R0, [R8,#0x50]
258A3A:  CBNZ            R0, loc_258A56
258A3C:  ADD.W           R0, R8, #0x50 ; 'P'
258A40:  MOVW            R1, #0xA003
258A44:  DMB.W           ISH
258A48:  STREX.W         R2, R1, [R0]
258A4C:  CBZ             R2, loc_258A5A
258A4E:  LDREX.W         R2, [R0]
258A52:  CMP             R2, #0
258A54:  BEQ             loc_258A48
258A56:  CLREX.W
258A5A:  DMB.W           ISH
258A5E:  ADD             SP, SP, #0x18
258A60:  POP.W           {R8}
258A64:  POP             {R4-R7,PC}
