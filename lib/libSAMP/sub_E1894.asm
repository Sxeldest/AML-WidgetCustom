; =========================================================
; Game Engine Function: sub_E1894
; Address            : 0xE1894 - 0xE1A8A
; =========================================================

E1894:  PUSH            {R4-R7,LR}
E1896:  ADD             R7, SP, #0xC
E1898:  PUSH.W          {R8-R11}
E189C:  SUB             SP, SP, #4
E189E:  VPUSH           {D8}
E18A2:  SUB             SP, SP, #0x18
E18A4:  LDR             R3, [R7,#arg_0]
E18A6:  MOVS            R6, #0x25 ; '%'
E18A8:  MOV.W           R10, #5
E18AC:  STRB.W          R6, [R7,#format]
E18B0:  CMP.W           R2, #0xFFFFFFFF
E18B4:  IT GT
E18B6:  SUBGT.W         R10, R2, #1
E18BA:  SUB.W           R6, R7, #-format
E18BE:  UXTB            R4, R3
E18C0:  CMP             R4, #2
E18C2:  IT CS
E18C4:  MOVCS           R10, R2
E18C6:  ADDS            R2, R6, #1
E18C8:  LSLS            R5, R3, #0xC
E18CA:  BPL             loc_E18D8
E18CC:  CMP             R4, #3
E18CE:  ITTT EQ
E18D0:  MOVEQ           R2, #0x23 ; '#'
E18D2:  STRBEQ.W        R2, [R7,#var_2E]
E18D6:  ADDEQ           R2, R6, #2
E18D8:  LDR.W           R8, [R7,#arg_4]
E18DC:  CMP.W           R10, #0
E18E0:  ITT PL
E18E2:  MOVWPL          R6, #0x2A2E
E18E6:  STRHPL.W        R6, [R2],#2
E18EA:  CMP             R4, #3
E18EC:  STR             R4, [SP,#0x40+var_38]
E18EE:  BNE             loc_E18FC
E18F0:  LSLS            R3, R3, #0xF
E18F2:  MOV.W           R3, #0x41 ; 'A'
E18F6:  IT PL
E18F8:  MOVPL           R3, #0x61 ; 'a'
E18FA:  B               loc_E1904
E18FC:  MOVS            R3, #0x65 ; 'e'
E18FE:  CMP             R4, #2
E1900:  IT EQ
E1902:  MOVEQ           R3, #0x66 ; 'f'
E1904:  VMOV            D8, R0, R1
E1908:  MOVS            R0, #0
E190A:  STRB            R0, [R2,#1]
E190C:  SUB.W           R9, R7, #-format
E1910:  STRB            R3, [R2]
E1912:  LDR.W           R11, [R8,#8]
E1916:  ADD.W           R0, R11, #1
E191A:  STR             R0, [SP,#0x40+var_34]
E191C:  LDR.W           R0, [R8,#4]
E1920:  CMP.W           R10, #0
E1924:  LDR.W           R1, [R8,#0xC]
E1928:  ADD.W           R6, R0, R11
E192C:  SUB.W           R5, R1, R11
E1930:  BMI             loc_E1944
E1932:  MOV             R0, R6; s
E1934:  MOV             R1, R5; maxlen
E1936:  MOV             R2, R9; format
E1938:  MOV             R3, R10
E193A:  VSTR            D8, [SP,#0x40+var_40]
E193E:  BLX             snprintf
E1942:  B               loc_E1952
E1944:  MOV             R0, R6; s
E1946:  MOV             R1, R5; maxlen
E1948:  MOV             R2, R9; format
E194A:  VSTR            D8, [SP,#0x40+var_40]
E194E:  BLX             snprintf
E1952:  MOV             R4, R0
E1954:  CMP.W           R0, #0xFFFFFFFF
E1958:  BLE             loc_E196C
E195A:  CMP             R4, R5
E195C:  BCC             loc_E1980
E195E:  LDR             R1, [SP,#0x40+var_34]
E1960:  LDR.W           R0, [R8,#0xC]
E1964:  ADD             R1, R4
E1966:  CMP             R0, R1
E1968:  BCS             loc_E191C
E196A:  B               loc_E1974
E196C:  LDR.W           R0, [R8,#0xC]
E1970:  ADDS            R1, R0, #1
E1972:  BCS             loc_E191C
E1974:  LDR.W           R0, [R8]
E1978:  LDR             R2, [R0]
E197A:  MOV             R0, R8
E197C:  BLX             R2
E197E:  B               loc_E191C
E1980:  LDR             R0, [SP,#0x40+var_38]
E1982:  CMP             R0, #2
E1984:  BEQ             loc_E1992
E1986:  CMP             R0, #3
E1988:  BNE             loc_E19DC
E198A:  LDR.W           R0, [R8,#0xC]
E198E:  ADD             R4, R11
E1990:  B               loc_E1A5C
E1992:  CMP.W           R10, #0
E1996:  BEQ             loc_E1A58
E1998:  ADDS            R0, R6, R4
E199A:  MOVS            R5, #0
E199C:  ADDS            R1, R0, R5
E199E:  SUBS            R5, #1
E19A0:  LDRB.W          R1, [R1,#-1]
E19A4:  SUBS            R1, #0x30 ; '0'
E19A6:  CMP             R1, #0xA
E19A8:  BCC             loc_E199C
E19AA:  ADD             R0, R5; dest
E19AC:  MVNS            R2, R5; n
E19AE:  ADDS            R1, R0, #1; src
E19B0:  BLX             j_memmove
E19B4:  LDR.W           R0, [R8,#0xC]
E19B8:  SUBS            R4, #1
E19BA:  CMP             R0, R4
E19BC:  BCS             loc_E19CE
E19BE:  LDR.W           R0, [R8]
E19C2:  MOV             R1, R4
E19C4:  LDR             R2, [R0]
E19C6:  MOV             R0, R8
E19C8:  BLX             R2
E19CA:  LDR.W           R0, [R8,#0xC]
E19CE:  CMP             R0, R4
E19D0:  IT CC
E19D2:  MOVCC           R4, R0
E19D4:  STR.W           R4, [R8,#8]
E19D8:  ADDS            R0, R5, #1
E19DA:  B               loc_E1A7C
E19DC:  ADDS            R0, R6, R4
E19DE:  MOVS            R1, #2
E19E0:  SUBS            R2, R0, #1
E19E2:  ADDS            R3, R2, R1
E19E4:  SUBS            R1, #1
E19E6:  LDRB.W          R3, [R3,#-2]
E19EA:  CMP             R3, #0x65 ; 'e'
E19EC:  BNE             loc_E19E2
E19EE:  ADDS            R3, R0, R1
E19F0:  ADDS            R2, R4, R1
E19F2:  SUBS            R4, R2, #3
E19F4:  MOVS            R5, #0
E19F6:  LDRB.W          R12, [R3,#-1]
E19FA:  LDRB            R3, [R0,R1]
E19FC:  ADD.W           R5, R5, R5,LSL#2
E1A00:  ADDS            R1, #1
E1A02:  ADD.W           R3, R3, R5,LSL#1
E1A06:  SUB.W           R5, R3, #0x30 ; '0'
E1A0A:  BNE             loc_E19FA
E1A0C:  CMP.W           R12, #0x2D ; '-'
E1A10:  IT EQ
E1A12:  NEGEQ           R5, R5
E1A14:  CMP             R2, #3
E1A16:  BNE             loc_E1A1C
E1A18:  MOVS            R4, #0
E1A1A:  B               loc_E1A2E
E1A1C:  ADDS            R0, R6, #1; dest
E1A1E:  LDRB            R1, [R6,R4]
E1A20:  SUBS            R4, #1
E1A22:  CMP             R1, #0x30 ; '0'
E1A24:  BEQ             loc_E1A1E
E1A26:  ADDS            R1, R6, #2; src
E1A28:  MOV             R2, R4; n
E1A2A:  BLX             j_memmove
E1A2E:  LDR             R1, [SP,#0x40+var_34]
E1A30:  LDR.W           R0, [R8,#0xC]
E1A34:  ADDS            R6, R1, R4
E1A36:  CMP             R0, R6
E1A38:  BCS             loc_E1A4A
E1A3A:  LDR.W           R0, [R8]
E1A3E:  MOV             R1, R6
E1A40:  LDR             R2, [R0]
E1A42:  MOV             R0, R8
E1A44:  BLX             R2
E1A46:  LDR.W           R0, [R8,#0xC]
E1A4A:  CMP             R0, R6
E1A4C:  IT CC
E1A4E:  MOVCC           R6, R0
E1A50:  SUBS            R0, R5, R4
E1A52:  STR.W           R6, [R8,#8]
E1A56:  B               loc_E1A7C
E1A58:  LDR.W           R0, [R8,#0xC]
E1A5C:  CMP             R0, R4
E1A5E:  BCS             loc_E1A70
E1A60:  LDR.W           R0, [R8]
E1A64:  MOV             R1, R4
E1A66:  LDR             R2, [R0]
E1A68:  MOV             R0, R8
E1A6A:  BLX             R2
E1A6C:  LDR.W           R0, [R8,#0xC]
E1A70:  CMP             R0, R4
E1A72:  IT CC
E1A74:  MOVCC           R4, R0
E1A76:  STR.W           R4, [R8,#8]
E1A7A:  MOVS            R0, #0
E1A7C:  ADD             SP, SP, #0x18
E1A7E:  VPOP            {D8}
E1A82:  ADD             SP, SP, #4
E1A84:  POP.W           {R8-R11}
E1A88:  POP             {R4-R7,PC}
