; =========================================================
; Game Engine Function: sub_479776
; Address            : 0x479776 - 0x4799C6
; =========================================================

479776:  PUSH            {R4-R7,LR}
479778:  ADD             R7, SP, #0xC
47977A:  PUSH.W          {R8-R11}
47977E:  SUB             SP, SP, #0x24
479780:  MOV             R4, R1
479782:  MOV             R10, R0
479784:  ADD.W           R0, R10, R4,LSL#2
479788:  CMP             R2, #0
47978A:  ADD.W           R1, R0, #0x68 ; 'h'
47978E:  IT EQ
479790:  ADDEQ.W         R1, R0, #0x58 ; 'X'
479794:  LDR.W           R9, [R1]
479798:  IT NE
47979A:  ADDNE           R4, #0x10
47979C:  CMP.W           R9, #0
4797A0:  BNE             loc_4797BA
4797A2:  LDR.W           R0, [R10]
4797A6:  MOVS            R1, #0x32 ; '2'
4797A8:  STR             R1, [R0,#0x14]
4797AA:  LDR.W           R0, [R10]
4797AE:  STR             R4, [R0,#0x18]
4797B0:  LDR.W           R0, [R10]
4797B4:  LDR             R1, [R0]
4797B6:  MOV             R0, R10
4797B8:  BLX             R1
4797BA:  LDRB.W          R0, [R9,#0x111]
4797BE:  CMP             R0, #0
4797C0:  BNE.W           loc_4799BE
4797C4:  LDR.W           R0, [R10,#0x18]
4797C8:  LDR             R1, [R0]
4797CA:  ADDS            R2, R1, #1
4797CC:  STR             R2, [R0]
4797CE:  MOVS            R2, #0xFF
4797D0:  STRB            R2, [R1]
4797D2:  LDR             R1, [R0,#4]
4797D4:  SUBS            R1, #1
4797D6:  STR             R1, [R0,#4]
4797D8:  BNE             loc_4797F4
4797DA:  LDR             R1, [R0,#0xC]
4797DC:  MOV             R0, R10
4797DE:  BLX             R1
4797E0:  CBNZ            R0, loc_4797F4
4797E2:  LDR.W           R0, [R10]
4797E6:  MOVS            R1, #0x18
4797E8:  STR             R1, [R0,#0x14]
4797EA:  LDR.W           R0, [R10]
4797EE:  LDR             R1, [R0]
4797F0:  MOV             R0, R10
4797F2:  BLX             R1
4797F4:  STR             R4, [SP,#0x40+var_20]
4797F6:  LDR.W           R0, [R10,#0x18]
4797FA:  LDR             R1, [R0]
4797FC:  ADDS            R2, R1, #1
4797FE:  STR             R2, [R0]
479800:  MOVS            R2, #0xC4
479802:  STRB            R2, [R1]
479804:  LDR             R1, [R0,#4]
479806:  SUBS            R1, #1
479808:  STR             R1, [R0,#4]
47980A:  BNE             loc_479826
47980C:  LDR             R1, [R0,#0xC]
47980E:  MOV             R0, R10
479810:  BLX             R1
479812:  CBNZ            R0, loc_479826
479814:  LDR.W           R0, [R10]
479818:  MOVS            R1, #0x18
47981A:  STR             R1, [R0,#0x14]
47981C:  LDR.W           R0, [R10]
479820:  LDR             R1, [R0]
479822:  MOV             R0, R10
479824:  BLX             R1
479826:  LDRB.W          R0, [R9,#0x10]
47982A:  STR             R0, [SP,#0x40+var_24]
47982C:  LDRB.W          R0, [R9,#0xF]
479830:  STR             R0, [SP,#0x40+var_28]
479832:  LDRB.W          R0, [R9,#0xE]
479836:  STR             R0, [SP,#0x40+var_2C]
479838:  LDRB.W          R0, [R9,#0xD]
47983C:  STR             R0, [SP,#0x40+var_30]
47983E:  LDRB.W          R0, [R9,#0xC]
479842:  STR             R0, [SP,#0x40+var_34]
479844:  LDRB.W          R0, [R9,#0xB]
479848:  STR             R0, [SP,#0x40+var_38]
47984A:  LDRB.W          R0, [R9,#0xA]
47984E:  STR             R0, [SP,#0x40+var_3C]
479850:  LDRB.W          R0, [R9,#9]
479854:  STR             R0, [SP,#0x40+var_40]
479856:  LDRB.W          R0, [R9,#1]
47985A:  LDRB.W          R8, [R9,#2]
47985E:  LDR.W           R3, [R10,#0x18]
479862:  LDRB.W          R11, [R9,#3]
479866:  ADD             R0, R8
479868:  LDRB.W          R6, [R9,#4]
47986C:  ADD             R0, R11
47986E:  LDRB.W          R1, [R9,#5]
479872:  ADD             R0, R6
479874:  LDR             R4, [R3]
479876:  LDRB.W          R2, [R9,#6]
47987A:  ADD             R0, R1
47987C:  LDRB.W          R12, [R9,#7]
479880:  ADDS            R5, R4, #1
479882:  ADD             R0, R2
479884:  LDRB.W          LR, [R9,#8]
479888:  STR             R5, [R3]
47988A:  ADD             R0, R12
47988C:  LDR             R1, [SP,#0x40+var_40]
47988E:  ADD             R0, LR
479890:  ADD             R0, R1
479892:  LDR             R1, [SP,#0x40+var_3C]
479894:  ADD             R0, R1
479896:  LDR             R1, [SP,#0x40+var_38]
479898:  ADD             R0, R1
47989A:  LDR             R1, [SP,#0x40+var_34]
47989C:  ADD             R0, R1
47989E:  LDR             R1, [SP,#0x40+var_30]
4798A0:  ADD             R0, R1
4798A2:  LDR             R1, [SP,#0x40+var_2C]
4798A4:  ADD             R0, R1
4798A6:  LDR             R1, [SP,#0x40+var_28]
4798A8:  ADD             R0, R1
4798AA:  LDR             R1, [SP,#0x40+var_24]
4798AC:  ADDS            R5, R0, R1
4798AE:  ADD.W           R6, R5, #0x13
4798B2:  LSRS            R0, R6, #8
4798B4:  STRB            R0, [R4]
4798B6:  LDR             R0, [R3,#4]
4798B8:  SUBS            R0, #1
4798BA:  STR             R0, [R3,#4]
4798BC:  BNE             loc_4798D8
4798BE:  LDR             R1, [R3,#0xC]
4798C0:  MOV             R0, R10
4798C2:  BLX             R1
4798C4:  CBNZ            R0, loc_4798D8
4798C6:  LDR.W           R0, [R10]
4798CA:  MOVS            R1, #0x18
4798CC:  STR             R1, [R0,#0x14]
4798CE:  LDR.W           R0, [R10]
4798D2:  LDR             R1, [R0]
4798D4:  MOV             R0, R10
4798D6:  BLX             R1
4798D8:  LDR.W           R0, [R10,#0x18]
4798DC:  LDR             R1, [R0]
4798DE:  ADDS            R2, R1, #1
4798E0:  STR             R2, [R0]
4798E2:  STRB            R6, [R1]
4798E4:  LDR             R1, [R0,#4]
4798E6:  SUBS            R1, #1
4798E8:  STR             R1, [R0,#4]
4798EA:  LDR             R4, [SP,#0x40+var_20]
4798EC:  BNE             loc_479908
4798EE:  LDR             R1, [R0,#0xC]
4798F0:  MOV             R0, R10
4798F2:  BLX             R1
4798F4:  CBNZ            R0, loc_479908
4798F6:  LDR.W           R0, [R10]
4798FA:  MOVS            R1, #0x18
4798FC:  STR             R1, [R0,#0x14]
4798FE:  LDR.W           R0, [R10]
479902:  LDR             R1, [R0]
479904:  MOV             R0, R10
479906:  BLX             R1
479908:  LDR.W           R0, [R10,#0x18]
47990C:  LDR             R1, [R0]
47990E:  ADDS            R2, R1, #1
479910:  STR             R2, [R0]
479912:  STRB            R4, [R1]
479914:  LDR             R1, [R0,#4]
479916:  SUBS            R1, #1
479918:  STR             R1, [R0,#4]
47991A:  BNE             loc_479936
47991C:  LDR             R1, [R0,#0xC]
47991E:  MOV             R0, R10
479920:  BLX             R1
479922:  CBNZ            R0, loc_479936
479924:  LDR.W           R0, [R10]
479928:  MOVS            R1, #0x18
47992A:  STR             R1, [R0,#0x14]
47992C:  LDR.W           R0, [R10]
479930:  LDR             R1, [R0]
479932:  MOV             R0, R10
479934:  BLX             R1
479936:  ADD.W           R6, R9, #1
47993A:  MOVS            R4, #0
47993C:  MOV.W           R8, #0x18
479940:  LDR.W           R0, [R10,#0x18]
479944:  LDRB            R2, [R6,R4]
479946:  LDR             R1, [R0]
479948:  ADDS            R3, R1, #1
47994A:  STR             R3, [R0]
47994C:  STRB            R2, [R1]
47994E:  LDR             R1, [R0,#4]
479950:  SUBS            R1, #1
479952:  STR             R1, [R0,#4]
479954:  BNE             loc_479970
479956:  LDR             R1, [R0,#0xC]
479958:  MOV             R0, R10
47995A:  BLX             R1
47995C:  CBNZ            R0, loc_479970
47995E:  LDR.W           R0, [R10]
479962:  STR.W           R8, [R0,#0x14]
479966:  LDR.W           R0, [R10]
47996A:  LDR             R1, [R0]
47996C:  MOV             R0, R10
47996E:  BLX             R1
479970:  ADDS            R4, #1
479972:  CMP             R4, #0x10
479974:  BNE             loc_479940
479976:  CMP             R5, #1
479978:  BLT             loc_4799B8
47997A:  ADD.W           R6, R9, #0x11
47997E:  MOV.W           R8, #0x18
479982:  LDR.W           R0, [R10,#0x18]
479986:  LDRB            R2, [R6]
479988:  LDR             R1, [R0]
47998A:  ADDS            R3, R1, #1
47998C:  STR             R3, [R0]
47998E:  STRB            R2, [R1]
479990:  LDR             R1, [R0,#4]
479992:  SUBS            R1, #1
479994:  STR             R1, [R0,#4]
479996:  BNE             loc_4799B2
479998:  LDR             R1, [R0,#0xC]
47999A:  MOV             R0, R10
47999C:  BLX             R1
47999E:  CBNZ            R0, loc_4799B2
4799A0:  LDR.W           R0, [R10]
4799A4:  STR.W           R8, [R0,#0x14]
4799A8:  LDR.W           R0, [R10]
4799AC:  LDR             R1, [R0]
4799AE:  MOV             R0, R10
4799B0:  BLX             R1
4799B2:  ADDS            R6, #1
4799B4:  SUBS            R5, #1
4799B6:  BNE             loc_479982
4799B8:  MOVS            R0, #1
4799BA:  STRB.W          R0, [R9,#0x111]
4799BE:  ADD             SP, SP, #0x24 ; '$'
4799C0:  POP.W           {R8-R11}
4799C4:  POP             {R4-R7,PC}
