; =========================================================
; Game Engine Function: sub_208944
; Address            : 0x208944 - 0x208ABE
; =========================================================

208944:  PUSH            {R4-R7,LR}
208946:  ADD             R7, SP, #0xC
208948:  PUSH.W          {R8-R11}
20894C:  STR             R0, [R2]
20894E:  LDRB            R0, [R7,#arg_C]
208950:  LDR.W           R11, [R7,#arg_4]
208954:  LSLS            R0, R0, #0x1D
208956:  STR.W           R3, [R11]
20895A:  BPL             loc_208972
20895C:  LDR             R0, [R2]
20895E:  SUBS            R3, R1, R0
208960:  CMP             R3, #3
208962:  BLT             loc_208972
208964:  LDRB            R3, [R0]
208966:  CMP             R3, #0xEF
208968:  ITT EQ
20896A:  LDRBEQ          R3, [R0,#1]
20896C:  CMPEQ           R3, #0xBB
20896E:  BEQ.W           loc_208AAE
208972:  LDR.W           LR, [R7,#arg_8]
208976:  MOV.W           R12, #0x1C0000
20897A:  LDR.W           R8, [R7,#arg_0]
20897E:  B               loc_208A8C
208980:  LDRSB.W         R0, [R6]
208984:  UXTB            R5, R0
208986:  CMP             R0, #0
208988:  BMI             loc_208994
20898A:  CMP             R5, LR
20898C:  BHI.W           loc_208AAA
208990:  MOVS            R0, #1
208992:  B               loc_208A7C
208994:  CMP             R5, #0xC2
208996:  BCC.W           loc_208AAA
20899A:  CMP             R5, #0xDF
20899C:  BHI             loc_2089C4
20899E:  SUBS            R0, R1, R6
2089A0:  CMP             R0, #2
2089A2:  BLT.W           loc_208ABA
2089A6:  LDRB            R0, [R6,#1]
2089A8:  AND.W           R4, R0, #0xC0
2089AC:  CMP             R4, #0x80
2089AE:  BNE             loc_208AAA
2089B0:  AND.W           R4, R5, #0x1F
2089B4:  AND.W           R0, R0, #0x3F ; '?'
2089B8:  ORR.W           R5, R0, R4,LSL#6
2089BC:  MOVS            R0, #2
2089BE:  CMP             R5, LR
2089C0:  BLS             loc_208A7C
2089C2:  B               loc_208AA4
2089C4:  CMP             R5, #0xEF
2089C6:  BHI             loc_2089E6
2089C8:  SUBS            R0, R1, R6
2089CA:  CMP             R0, #3
2089CC:  BLT             loc_208ABA
2089CE:  LDRB            R0, [R6,#1]
2089D0:  CMP             R5, #0xED
2089D2:  LDRB.W          R9, [R6,#2]
2089D6:  BEQ             loc_208A0E
2089D8:  CMP             R5, #0xE0
2089DA:  BNE             loc_208A14
2089DC:  AND.W           R4, R0, #0xE0
2089E0:  CMP             R4, #0xA0
2089E2:  BEQ             loc_208A1C
2089E4:  B               loc_208AAA
2089E6:  CMP             R5, #0xF4
2089E8:  BHI             loc_208AAA
2089EA:  SUBS            R0, R1, R6
2089EC:  CMP             R0, #4
2089EE:  BLT             loc_208ABA
2089F0:  LDRB            R0, [R6,#1]
2089F2:  CMP             R5, #0xF4
2089F4:  LDRB.W          R10, [R6,#2]
2089F8:  LDRB.W          R9, [R6,#3]
2089FC:  BEQ             loc_208A3E
2089FE:  CMP             R5, #0xF0
208A00:  BNE             loc_208A44
208A02:  ADD.W           R4, R0, #0x70 ; 'p'
208A06:  UXTB            R4, R4
208A08:  CMP             R4, #0x30 ; '0'
208A0A:  BCC             loc_208A4C
208A0C:  B               loc_208AAA
208A0E:  AND.W           R4, R0, #0xE0
208A12:  B               loc_208A18
208A14:  AND.W           R4, R0, #0xC0
208A18:  CMP             R4, #0x80
208A1A:  BNE             loc_208AAA
208A1C:  AND.W           R4, R9, #0xC0
208A20:  CMP             R4, #0x80
208A22:  BNE             loc_208AAA
208A24:  LSLS            R4, R5, #0xC
208A26:  AND.W           R0, R0, #0x3F ; '?'
208A2A:  UXTH            R4, R4
208A2C:  ORR.W           R0, R4, R0,LSL#6
208A30:  AND.W           R4, R9, #0x3F ; '?'
208A34:  ADDS            R5, R0, R4
208A36:  CMP             R5, LR
208A38:  BHI             loc_208AAA
208A3A:  MOVS            R0, #3
208A3C:  B               loc_208A7C
208A3E:  AND.W           R4, R0, #0xF0
208A42:  B               loc_208A48
208A44:  AND.W           R4, R0, #0xC0
208A48:  CMP             R4, #0x80
208A4A:  BNE             loc_208AAA
208A4C:  AND.W           R4, R10, #0xC0
208A50:  CMP             R4, #0x80
208A52:  ITT EQ
208A54:  ANDEQ.W         R4, R9, #0xC0
208A58:  CMPEQ           R4, #0x80
208A5A:  BNE             loc_208AAA
208A5C:  AND.W           R0, R0, #0x3F ; '?'
208A60:  AND.W           R4, R12, R5,LSL#18
208A64:  ORR.W           R0, R4, R0,LSL#12
208A68:  AND.W           R4, R10, #0x3F ; '?'
208A6C:  ORR.W           R0, R0, R4,LSL#6
208A70:  AND.W           R4, R9, #0x3F ; '?'
208A74:  ADDS            R5, R0, R4
208A76:  CMP             R5, LR
208A78:  BHI             loc_208AAA
208A7A:  MOVS            R0, #4
208A7C:  ADD             R0, R6
208A7E:  STR             R0, [R2]
208A80:  LDR.W           R0, [R11]
208A84:  STR             R5, [R3]
208A86:  ADDS            R0, #4
208A88:  STR.W           R0, [R11]
208A8C:  LDR             R6, [R2]
208A8E:  CMP             R6, R1
208A90:  ITT CC
208A92:  LDRCC.W         R3, [R11]
208A96:  CMPCC           R3, R8
208A98:  BCC.W           loc_208980
208A9C:  MOVS            R0, #0
208A9E:  CMP             R6, R1
208AA0:  IT CC
208AA2:  MOVCC           R0, #1
208AA4:  POP.W           {R8-R11}
208AA8:  POP             {R4-R7,PC}
208AAA:  MOVS            R0, #2
208AAC:  B               loc_208AA4
208AAE:  LDRB            R3, [R0,#2]
208AB0:  CMP             R3, #0xBF
208AB2:  ITT EQ
208AB4:  ADDEQ           R0, #3
208AB6:  STREQ           R0, [R2]
208AB8:  B               loc_208972
208ABA:  MOVS            R0, #1
208ABC:  B               loc_208AA4
