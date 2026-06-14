; =========================================================
; Game Engine Function: compute_band_energies
; Address            : 0x19B928 - 0x19BA78
; =========================================================

19B928:  PUSH            {R4-R7,LR}
19B92A:  ADD             R7, SP, #0xC
19B92C:  PUSH.W          {R8-R11}
19B930:  SUB             SP, SP, #0x2C
19B932:  MOV             R12, R0
19B934:  MOV             R0, R3
19B936:  CMP             R3, #1
19B938:  STR             R2, [SP,#0x48+var_28]
19B93A:  STR             R1, [SP,#0x48+var_34]
19B93C:  STR             R0, [SP,#0x48+var_24]
19B93E:  BLT.W           loc_19BA70
19B942:  LDR.W           R0, [R12,#0x18]
19B946:  STR             R0, [SP,#0x48+var_2C]
19B948:  LDR.W           LR, [R7,#arg_4]
19B94C:  LDR.W           R0, [R12,#0x24]
19B950:  ADD.W           R1, LR, #1
19B954:  LSL.W           R0, R0, LR
19B958:  STRD.W          R0, R1, [SP,#0x48+var_40]
19B95C:  LSLS            R0, R0, #2
19B95E:  LDR.W           R11, [SP,#0x48+var_34]
19B962:  STR             R0, [SP,#0x48+var_44]
19B964:  MOVS            R0, #0
19B966:  STR             R0, [SP,#0x48+var_30]
19B968:  MOVS            R0, #0
19B96A:  STR             R0, [SP,#0x48+var_20]
19B96C:  STR.W           R12, [SP,#0x48+var_38]
19B970:  MOV.W           R9, #0
19B974:  LDR             R0, [SP,#0x48+var_2C]
19B976:  ADD.W           R10, R9, #1
19B97A:  LDRSH.W         R1, [R0,R9,LSL#1]
19B97E:  LDRSH.W         R0, [R0,R10,LSL#1]
19B982:  SUBS            R2, R0, R1
19B984:  LSL.W           R1, R1, LR
19B988:  LSL.W           R2, R2, LR
19B98C:  CMP             R2, #1
19B98E:  BLT             loc_19B9B4
19B990:  LDR             R3, [SP,#0x48+var_30]
19B992:  MOVS            R4, #0
19B994:  LDR             R6, [SP,#0x48+var_34]
19B996:  ADD             R3, R1
19B998:  ADD.W           R6, R6, R3,LSL#2
19B99C:  MOVS            R3, #0
19B99E:  LDR.W           R5, [R6],#4
19B9A2:  CMP             R4, R5
19B9A4:  IT GE
19B9A6:  MOVGE           R4, R5
19B9A8:  CMP             R3, R5
19B9AA:  IT LE
19B9AC:  MOVLE           R3, R5
19B9AE:  SUBS            R2, #1
19B9B0:  BNE             loc_19B99E
19B9B2:  B               loc_19B9B8
19B9B4:  MOVS            R3, #0
19B9B6:  MOVS            R4, #0
19B9B8:  NEGS            R2, R4
19B9BA:  CMP             R3, R2
19B9BC:  IT GT
19B9BE:  MOVGT           R2, R3
19B9C0:  CMP             R2, #1
19B9C2:  BLT             loc_19BA02
19B9C4:  LDR.W           R3, [R12,#0x30]
19B9C8:  CLZ.W           R2, R2
19B9CC:  LDR             R6, [SP,#0x48+var_3C]
19B9CE:  RSB.W           R2, R2, #0x11
19B9D2:  LDRSH.W         R3, [R3,R9,LSL#1]
19B9D6:  ADD.W           R3, R6, R3,ASR#3
19B9DA:  ADD.W           R8, R2, R3,ASR#1
19B9DE:  LSL.W           R2, R0, LR
19B9E2:  CMP.W           R8, #0
19B9E6:  BLE             loc_19BA06
19B9E8:  MOVS            R0, #0
19B9EA:  LDR.W           R3, [R11,R1,LSL#2]
19B9EE:  ADDS            R1, #1
19B9F0:  CMP             R1, R2
19B9F2:  ASR.W           R3, R3, R8
19B9F6:  SMLABB.W        R0, R3, R3, R0
19B9FA:  BLT             loc_19B9EA
19B9FC:  RSB.W           R4, R8, #0
19BA00:  B               loc_19BA1E
19BA02:  MOVS            R0, #1
19BA04:  B               loc_19BA3A
19BA06:  RSB.W           R4, R8, #0
19BA0A:  MOVS            R0, #0
19BA0C:  LDR.W           R3, [R11,R1,LSL#2]
19BA10:  ADDS            R1, #1
19BA12:  CMP             R1, R2
19BA14:  LSL.W           R3, R3, R4
19BA18:  SMLABB.W        R0, R3, R3, R0
19BA1C:  BLT             loc_19BA0C
19BA1E:  BLX             j_celt_sqrt
19BA22:  LSL.W           R1, R0, R8
19BA26:  CMP.W           R8, #0
19BA2A:  IT LT
19BA2C:  ASRLT.W         R1, R0, R4
19BA30:  LDR.W           R12, [SP,#0x48+var_38]
19BA34:  LDR.W           LR, [R7,#arg_4]
19BA38:  ADDS            R0, R1, #1
19BA3A:  LDR.W           R1, [R12,#8]
19BA3E:  LDR             R2, [SP,#0x48+var_20]
19BA40:  MLA.W           R1, R1, R2, R9
19BA44:  LDR             R2, [SP,#0x48+var_28]
19BA46:  MOV             R9, R10
19BA48:  STR.W           R0, [R2,R1,LSL#2]
19BA4C:  LDR             R0, [SP,#0x48+var_24]
19BA4E:  CMP             R10, R0
19BA50:  BNE             loc_19B974
19BA52:  LDR             R0, [SP,#0x48+var_44]
19BA54:  LDR             R1, [SP,#0x48+var_30]
19BA56:  ADD             R11, R0
19BA58:  LDR             R0, [SP,#0x48+var_40]
19BA5A:  ADD             R1, R0
19BA5C:  LDR             R0, [SP,#0x48+var_20]
19BA5E:  STR             R1, [SP,#0x48+var_30]
19BA60:  MOV             R2, R0
19BA62:  LDR             R0, [R7,#arg_0]
19BA64:  ADDS            R2, #1
19BA66:  CMP             R2, R0
19BA68:  MOV             R1, R2
19BA6A:  STR             R1, [SP,#0x48+var_20]
19BA6C:  BLT.W           loc_19B970
19BA70:  ADD             SP, SP, #0x2C ; ','
19BA72:  POP.W           {R8-R11}
19BA76:  POP             {R4-R7,PC}
