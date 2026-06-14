; =========================================================
; Game Engine Function: sub_4818A0
; Address            : 0x4818A0 - 0x481B0E
; =========================================================

4818A0:  PUSH            {R4-R7,LR}
4818A2:  ADD             R7, SP, #0xC
4818A4:  PUSH.W          {R8-R11}
4818A8:  SUB             SP, SP, #0x14
4818AA:  MOV             R10, R1
4818AC:  MOV             R8, R0
4818AE:  LDR.W           R0, [R10,#4]
4818B2:  MOV             R4, R2
4818B4:  ADDS            R1, R3, R4
4818B6:  STR             R1, [SP,#0x30+var_24]
4818B8:  CMP             R1, R0
4818BA:  BHI             loc_4818CA
4818BC:  LDR.W           R0, [R10,#0xC]
4818C0:  CMP             R0, R3
4818C2:  BCC             loc_4818CA
4818C4:  LDR.W           R0, [R10]
4818C8:  CBNZ            R0, loc_4818DC
4818CA:  LDR.W           R0, [R8]
4818CE:  MOVS            R1, #0x16
4818D0:  STR             R1, [R0,#0x14]
4818D2:  LDR.W           R0, [R8]
4818D6:  LDR             R1, [R0]
4818D8:  MOV             R0, R8
4818DA:  BLX             R1
4818DC:  LDR.W           R0, [R10,#0x18]
4818E0:  STR             R4, [SP,#0x30+var_28]
4818E2:  CMP             R0, R4
4818E4:  STR.W           R8, [SP,#0x30+var_20]
4818E8:  BHI             loc_4818F8
4818EA:  LDR.W           R1, [R10,#0x10]
4818EE:  ADD             R0, R1
4818F0:  LDR             R1, [SP,#0x30+var_24]
4818F2:  CMP             R1, R0
4818F4:  BLS.W           loc_481A60
4818F8:  LDRB.W          R0, [R10,#0x22]
4818FC:  CBNZ            R0, loc_481910
4818FE:  LDR.W           R0, [R8]
481902:  MOVS            R1, #0x45 ; 'E'
481904:  STR             R1, [R0,#0x14]
481906:  LDR.W           R0, [R8]
48190A:  LDR             R1, [R0]
48190C:  MOV             R0, R8
48190E:  BLX             R1
481910:  LDRB.W          R0, [R10,#0x21]
481914:  CMP             R0, #0
481916:  BEQ             loc_4819B4
481918:  LDR.W           R0, [R10,#0x10]
48191C:  CMP             R0, #1
48191E:  BLT             loc_4819AA
481920:  LDR.W           R2, [R10,#4]
481924:  LDRD.W          R3, R1, [R10,#0x14]
481928:  LDR.W           R6, [R10,#0x1C]
48192C:  SUBS            R2, R2, R1
48192E:  CMP             R3, R0
481930:  IT LT
481932:  MOVLT           R0, R3
481934:  SUBS            R3, R6, R1
481936:  CMP             R0, R3
481938:  IT GE
48193A:  MOVGE           R0, R3
48193C:  CMP             R0, R2
48193E:  IT GE
481940:  MOVGE           R0, R2
481942:  CMP             R0, #1
481944:  BLT             loc_4819AA
481946:  LDR.W           R2, [R10,#8]
48194A:  ADD.W           R9, R10, #0x28 ; '('
48194E:  MOV.W           R11, #0
481952:  LSLS            R6, R2, #7
481954:  MUL.W           R4, R1, R6
481958:  LDR.W           R1, [R10]
48195C:  MUL.W           R8, R0, R6
481960:  LDR.W           R5, [R10,#0x2C]
481964:  LDR             R0, [SP,#0x30+var_20]
481966:  MOV             R3, R4
481968:  LDR.W           R2, [R1,R11,LSL#2]
48196C:  MOV             R1, R9
48196E:  STR.W           R8, [SP,#0x30+var_30]
481972:  BLX             R5
481974:  LDRD.W          R0, R1, [R10,#0x10]
481978:  ADD             R11, R1
48197A:  CMP             R0, R11
48197C:  BLE             loc_4819AA
48197E:  LDR.W           R2, [R10,#4]
481982:  SUB.W           R0, R0, R11
481986:  LDRD.W          R3, R5, [R10,#0x18]
48198A:  CMP             R1, R0
48198C:  IT LT
48198E:  MOVLT           R0, R1
481990:  ADD             R4, R8
481992:  ADD.W           R1, R11, R3
481996:  SUBS            R3, R5, R1
481998:  SUBS            R1, R2, R1
48199A:  CMP             R0, R3
48199C:  IT GE
48199E:  MOVGE           R0, R3
4819A0:  CMP             R0, R1
4819A2:  IT GE
4819A4:  MOVGE           R0, R1
4819A6:  CMP             R0, #0
4819A8:  BGT             loc_481958
4819AA:  MOVS            R0, #0
4819AC:  STRB.W          R0, [R10,#0x21]
4819B0:  LDR.W           R8, [SP,#0x30+var_20]
4819B4:  LDR             R2, [SP,#0x30+var_28]
4819B6:  LDR.W           R1, [R10,#0x18]
4819BA:  LDR.W           R0, [R10,#0x10]
4819BE:  CMP             R1, R2
4819C0:  MOV             R1, R2
4819C2:  BCC             loc_4819CE
4819C4:  LDR             R1, [SP,#0x30+var_24]
4819C6:  SUBS            R1, R1, R0
4819C8:  CMP             R1, #0
4819CA:  IT LE
4819CC:  MOVLE           R1, #0
4819CE:  LDR.W           R2, [R10,#8]
4819D2:  CMP             R0, #1
4819D4:  STR.W           R1, [R10,#0x18]
4819D8:  BLT             loc_481A60
4819DA:  LDR.W           R6, [R10,#0x14]
4819DE:  LDR.W           R5, [R10,#0x1C]
4819E2:  CMP             R6, R0
4819E4:  LDR.W           R3, [R10,#4]
4819E8:  SUB.W           R5, R5, R1
4819EC:  IT LT
4819EE:  MOVLT           R0, R6
4819F0:  CMP             R0, R5
4819F2:  SUB.W           R3, R3, R1
4819F6:  IT GE
4819F8:  MOVGE           R0, R5
4819FA:  CMP             R0, R3
4819FC:  IT GE
4819FE:  MOVGE           R0, R3
481A00:  CMP             R0, #1
481A02:  BLT             loc_481A60
481A04:  MOV.W           R11, R2,LSL#7
481A08:  ADD.W           R9, R10, #0x28 ; '('
481A0C:  MUL.W           R6, R11, R1
481A10:  MOVS            R4, #0
481A12:  LDR.W           R1, [R10]
481A16:  MUL.W           R5, R0, R11
481A1A:  LDR.W           R12, [R10,#0x28]
481A1E:  MOV             R0, R8
481A20:  MOV             R3, R6
481A22:  LDR.W           R2, [R1,R4,LSL#2]
481A26:  MOV             R1, R9
481A28:  STR             R5, [SP,#0x30+var_30]
481A2A:  BLX             R12
481A2C:  LDRD.W          R0, R1, [R10,#0x10]
481A30:  ADD             R4, R1
481A32:  CMP             R0, R4
481A34:  BLE             loc_481A60
481A36:  LDR.W           R12, [R10,#4]
481A3A:  SUBS            R0, R0, R4
481A3C:  LDRD.W          R3, R2, [R10,#0x18]
481A40:  CMP             R1, R0
481A42:  IT LT
481A44:  MOVLT           R0, R1
481A46:  ADD             R6, R5
481A48:  ADDS            R1, R4, R3
481A4A:  SUBS            R2, R2, R1
481A4C:  SUB.W           R1, R12, R1
481A50:  CMP             R0, R2
481A52:  IT GE
481A54:  MOVGE           R0, R2
481A56:  CMP             R0, R1
481A58:  IT GE
481A5A:  MOVGE           R0, R1
481A5C:  CMP             R0, #0
481A5E:  BGT             loc_481A12
481A60:  LDR.W           R8, [R7,#arg_0]
481A64:  LDR.W           R0, [R10,#0x1C]
481A68:  LDR             R6, [SP,#0x30+var_24]
481A6A:  LDR.W           R9, [SP,#0x30+var_28]
481A6E:  CMP             R0, R6
481A70:  BCS             loc_481AEA
481A72:  CMP             R0, R9
481A74:  BCS             loc_481A8E
481A76:  CMP.W           R8, #0
481A7A:  BEQ             loc_481A9C
481A7C:  LDR             R0, [SP,#0x30+var_20]
481A7E:  MOVS            R1, #0x16
481A80:  LDR             R2, [R0]
481A82:  STR             R1, [R2,#0x14]
481A84:  LDR             R1, [R0]
481A86:  LDR             R1, [R1]
481A88:  BLX             R1
481A8A:  MOV             R0, R9
481A8C:  B               loc_481A94
481A8E:  CMP.W           R8, #0
481A92:  BEQ             loc_481AA2
481A94:  MOVS            R1, #1
481A96:  STR.W           R6, [R10,#0x1C]
481A9A:  B               loc_481AA4
481A9C:  MOVS            R1, #0
481A9E:  MOV             R0, R9
481AA0:  B               loc_481AA4
481AA2:  MOVS            R1, #0
481AA4:  LDRB.W          R2, [R10,#0x20]
481AA8:  CBZ             R2, loc_481ADA
481AAA:  LDR.W           R1, [R10,#0x18]
481AAE:  SUBS            R2, R6, R1
481AB0:  SUBS            R3, R0, R1
481AB2:  CMP             R3, R2
481AB4:  BCS             loc_481AEA
481AB6:  LDR.W           R2, [R10,#8]
481ABA:  SUBS            R6, R6, R0
481ABC:  LSLS            R4, R2, #7
481ABE:  LSLS            R2, R0, #2
481AC0:  SUB.W           R5, R2, R1,LSL#2
481AC4:  LDR.W           R0, [R10]
481AC8:  MOV             R1, R4; unsigned int
481ACA:  LDR             R0, [R0,R5]; void *
481ACC:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
481AD0:  SUBS            R6, #1
481AD2:  ADD.W           R5, R5, #4
481AD6:  BNE             loc_481AC4
481AD8:  B               loc_481AEA
481ADA:  CBNZ            R1, loc_481AEA
481ADC:  LDR             R0, [SP,#0x30+var_20]
481ADE:  MOVS            R1, #0x16
481AE0:  LDR             R2, [R0]
481AE2:  STR             R1, [R2,#0x14]
481AE4:  LDR             R1, [R0]
481AE6:  LDR             R1, [R1]
481AE8:  BLX             R1
481AEA:  CMP.W           R8, #0
481AEE:  ITT NE
481AF0:  MOVNE           R0, #1
481AF2:  STRBNE.W        R0, [R10,#0x21]
481AF6:  LDR.W           R1, [R10,#0x18]
481AFA:  LDR.W           R0, [R10]
481AFE:  SUB.W           R1, R9, R1
481B02:  ADD.W           R0, R0, R1,LSL#2
481B06:  ADD             SP, SP, #0x14
481B08:  POP.W           {R8-R11}
481B0C:  POP             {R4-R7,PC}
