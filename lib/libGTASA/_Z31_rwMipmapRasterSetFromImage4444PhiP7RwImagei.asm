; =========================================================
; Game Engine Function: _Z31_rwMipmapRasterSetFromImage4444PhiP7RwImagei
; Address            : 0x1AA8D8 - 0x1AA9A2
; =========================================================

1AA8D8:  PUSH            {R4-R7,LR}
1AA8DA:  ADD             R7, SP, #0xC
1AA8DC:  PUSH.W          {R8-R11}
1AA8E0:  SUB             SP, SP, #0x1C
1AA8E2:  STR             R1, [SP,#0x38+var_30]
1AA8E4:  MOV             R8, R0
1AA8E6:  LDR             R0, [R2,#8]
1AA8E8:  ASRS            R0, R3
1AA8EA:  CMP             R0, #1
1AA8EC:  STR             R0, [SP,#0x38+var_34]
1AA8EE:  BLT             loc_1AA998
1AA8F0:  ADD.W           R6, R2, #0xC
1AA8F4:  LDR.W           R12, =(unk_660710 - 0x1AA902)
1AA8F8:  LDR             R0, [R2,#4]
1AA8FA:  MOVS            R4, #1
1AA8FC:  LDM             R6, {R1,R5,R6}
1AA8FE:  ADD             R12, PC; unk_660710
1AA900:  LSL.W           LR, R4, R3
1AA904:  STR             R6, [SP,#0x38+var_28]
1AA906:  ADD             R6, SP, #0x38+var_20
1AA908:  LSL.W           R4, R5, R3
1AA90C:  ASR.W           R5, R0, R3
1AA910:  ADD.W           R0, R12, R1,LSL#2
1AA914:  MOVS            R1, #0
1AA916:  STR             R4, [SP,#0x38+var_38]
1AA918:  LDR.W           R12, [R0,#-4]
1AA91C:  STR             R5, [SP,#0x38+var_24]
1AA91E:  CMP             R5, #1
1AA920:  STR             R1, [SP,#0x38+var_2C]
1AA922:  BLT             loc_1AA982
1AA924:  LDR             R4, [SP,#0x38+var_28]
1AA926:  MOV.W           R10, #0
1AA92A:  MOV             R0, R6
1AA92C:  MOV             R9, R8
1AA92E:  MOV             R1, R4
1AA930:  MOV             R8, R12
1AA932:  MOV             R5, R3
1AA934:  MOV             R11, R2
1AA936:  MOV             R6, LR
1AA938:  BLX             R8
1AA93A:  MOV             R3, R5
1AA93C:  LDRB.W          R0, [SP,#0x38+var_20]
1AA940:  LDRB.W          R5, [SP,#0x38+var_1D]
1AA944:  MOV             LR, R6
1AA946:  LDRB.W          R1, [SP,#0x38+var_1F]
1AA94A:  MOV             R12, R8
1AA94C:  MOV             R8, R9
1AA94E:  MOV.W           R9, #0xF000
1AA952:  MOV             R2, R11
1AA954:  MOV.W           R6, #0xF00
1AA958:  AND.W           R0, R6, R0,LSL#4
1AA95C:  AND.W           R5, R9, R5,LSL#8
1AA960:  LDRB.W          R11, [SP,#0x38+var_1E]
1AA964:  ORRS            R0, R5
1AA966:  AND.W           R1, R1, #0xF0
1AA96A:  LDR             R5, [SP,#0x38+var_24]
1AA96C:  ORRS            R0, R1
1AA96E:  ADD             R6, SP, #0x38+var_20
1AA970:  ORR.W           R0, R0, R11,LSR#4
1AA974:  STRH.W          R0, [R8,R10,LSL#1]
1AA978:  ADD.W           R10, R10, #1
1AA97C:  ADD             R4, LR
1AA97E:  CMP             R5, R10
1AA980:  BNE             loc_1AA92A
1AA982:  LDR             R0, [SP,#0x38+var_30]
1AA984:  LDR             R1, [SP,#0x38+var_38]
1AA986:  ADD             R8, R0
1AA988:  LDR             R0, [SP,#0x38+var_28]
1AA98A:  ADD             R0, R1
1AA98C:  LDR             R1, [SP,#0x38+var_2C]
1AA98E:  STR             R0, [SP,#0x38+var_28]
1AA990:  LDR             R0, [SP,#0x38+var_34]
1AA992:  ADDS            R1, #1
1AA994:  CMP             R1, R0
1AA996:  BNE             loc_1AA91E
1AA998:  MOVS            R0, #1
1AA99A:  ADD             SP, SP, #0x1C
1AA99C:  POP.W           {R8-R11}
1AA9A0:  POP             {R4-R7,PC}
