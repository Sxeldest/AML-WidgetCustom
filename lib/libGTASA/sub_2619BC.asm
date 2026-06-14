; =========================================================
; Game Engine Function: sub_2619BC
; Address            : 0x2619BC - 0x261D98
; =========================================================

2619BC:  PUSH            {R4-R7,LR}
2619BE:  ADD             R7, SP, #0xC
2619C0:  PUSH.W          {R8-R11}
2619C4:  SUB             SP, SP, #0x94
2619C6:  MOV             R9, R0
2619C8:  LSLS            R0, R2, #2
2619CA:  CMP             R2, #1
2619CC:  STR             R0, [SP,#0xB0+var_B0]
2619CE:  STR             R2, [SP,#0xB0+var_94]
2619D0:  BLT.W           loc_261C70
2619D4:  MOV.W           R8, #0
2619D8:  CMP             R2, #3
2619DA:  MOV             R10, R1
2619DC:  MOV.W           R4, #0
2619E0:  BLS.W           loc_261C16
2619E4:  AND.W           R0, R2, #3
2619E8:  MOVS            R4, #0
2619EA:  SUBS            R3, R2, R0
2619EC:  BEQ.W           loc_261C14
2619F0:  ADD.W           R5, R9, R2,LSL#1
2619F4:  STRD.W          R3, R0, [SP,#0xB0+var_A8]
2619F8:  CMP             R5, R1
2619FA:  MOV.W           R0, #0
2619FE:  IT HI
261A00:  MOVHI           R0, #1
261A02:  ADD.W           R4, R1, R2,LSL#2
261A06:  STR             R0, [SP,#0xB0+var_98]
261A08:  ADD             R6, SP, #0xB0+var_64
261A0A:  CMP             R4, R9
261A0C:  MOV.W           R0, #0
261A10:  IT HI
261A12:  MOVHI           R0, #1
261A14:  ADD.W           R3, R6, R2,LSL#2
261A18:  STR             R0, [SP,#0xB0+var_9C]
261A1A:  CMP             R3, R1
261A1C:  MOV.W           R0, #0
261A20:  MOV.W           R12, #0
261A24:  IT HI
261A26:  MOVHI           R0, #1
261A28:  CMP             R4, R6
261A2A:  STR             R0, [SP,#0xB0+var_90]
261A2C:  IT HI
261A2E:  MOVHI.W         R12, #1
261A32:  CMP             R3, R9
261A34:  MOV.W           LR, #0
261A38:  IT HI
261A3A:  MOVHI.W         LR, #1
261A3E:  CMP             R6, R5
261A40:  MOV.W           R0, #0
261A44:  ADD.W           R11, SP, #0xB0+var_40
261A48:  IT CC
261A4A:  MOVCC           R0, #1
261A4C:  CMP             R4, R11
261A4E:  MOV             R6, R9
261A50:  MOV.W           R9, #0
261A54:  ADD.W           R4, R11, R2,LSL#2
261A58:  IT HI
261A5A:  MOVHI.W         R9, #1
261A5E:  CMP             R4, R1
261A60:  MOV.W           R8, #0
261A64:  STR             R1, [SP,#0xB0+var_A0]
261A66:  IT HI
261A68:  MOVHI.W         R8, #1
261A6C:  CMP             R4, R6
261A6E:  MOV.W           R10, #0
261A72:  STR             R6, [SP,#0xB0+var_8C]
261A74:  IT HI
261A76:  MOVHI.W         R10, #1
261A7A:  CMP             R11, R5
261A7C:  MOV.W           R1, #0
261A80:  ADD             R5, SP, #0xB0+var_64
261A82:  IT CC
261A84:  MOVCC           R1, #1
261A86:  CMP             R5, R4
261A88:  MOV.W           R4, #0
261A8C:  IT CC
261A8E:  MOVCC           R4, #1
261A90:  CMP             R11, R3
261A92:  MOV.W           R3, #0
261A96:  IT CC
261A98:  MOVCC           R3, #1
261A9A:  TST             R3, R4
261A9C:  BNE.W           loc_261C08
261AA0:  ANDS.W          R1, R1, R10
261AA4:  MOV.W           R4, #0
261AA8:  IT EQ
261AAA:  ANDSEQ.W        R1, R9, R8
261AAE:  BNE.W           loc_261BFC
261AB2:  ANDS.W          R1, R0, LR
261AB6:  LDR.W           R9, [SP,#0xB0+var_8C]
261ABA:  LDR             R1, [SP,#0xB0+var_A0]
261ABC:  MOV.W           R8, #0
261AC0:  BNE.W           loc_261C14
261AC4:  LDR             R0, [SP,#0xB0+var_90]
261AC6:  ANDS.W          R0, R0, R12
261ACA:  BNE.W           loc_261C14
261ACE:  LDRD.W          R3, R0, [SP,#0xB0+var_9C]
261AD2:  MOV             R10, R1
261AD4:  ANDS            R0, R3
261AD6:  BNE.W           loc_261C16
261ADA:  VMOV.I32        Q9, #0x10
261ADE:  LDR             R2, [SP,#0xB0+var_A8]
261AE0:  VMOV.I32        Q8, #0xFF
261AE4:  ADD             R4, SP, #0xB0+var_40
261AE6:  VMOV.I32        Q10, #0
261AEA:  ADD             R6, SP, #0xB0+var_64
261AEC:  VNEG.S32        Q9, Q9
261AF0:  MOV             R0, R2
261AF2:  ADD.W           R10, R1, R2,LSL#2
261AF6:  MOV             R11, R0
261AF8:  VMOV.I32        Q11, #0x58 ; 'X'
261AFC:  MOV             R8, R1
261AFE:  STR             R0, [SP,#0xB0+var_90]
261B00:  VLD1.8          {D24-D25}, [R8]!
261B04:  SUBS.W          R11, R11, #4
261B08:  VMOV.U8         R1, D24[3]
261B0C:  VMOV.U8         R2, D24[1]
261B10:  VMOV.U8         LR, D24[0]
261B14:  VMOV.U8         R5, D24[7]
261B18:  VMOV.U8         R3, D24[2]
261B1C:  VMOV.U8         R0, D24[5]
261B20:  VMOV.U8         R12, D24[6]
261B24:  VMOV.16         D26[0], R1
261B28:  VMOV.U8         R1, D25[3]
261B2C:  VMOV.16         D27[0], R2
261B30:  VMOV.U8         R2, D24[4]
261B34:  VMOV.16         D26[1], R5
261B38:  VMOV.16         D29[0], LR
261B3C:  VMOV.U8         R5, D25[2]
261B40:  VMOV.U8         LR, D25[7]
261B44:  VMOV.16         D28[0], R3
261B48:  VMOV.U8         R3, D25[1]
261B4C:  VMOV.16         D27[1], R0
261B50:  VMOV.16         D28[1], R12
261B54:  VMOV.U8         R0, D25[0]
261B58:  VMOV.U8         R12, D25[5]
261B5C:  VMOV.16         D26[2], R1
261B60:  VMOV.U8         R1, D25[6]
261B64:  VMOV.16         D29[1], R2
261B68:  VMOV.U8         R2, D25[4]
261B6C:  VMOV.16         D28[2], R5
261B70:  VMOV.16         D26[3], LR
261B74:  VMOV.16         D27[2], R3
261B78:  VMOVL.U16       Q12, D26
261B7C:  VAND            Q12, Q12, Q8
261B80:  VMOV.16         D29[2], R0
261B84:  VMOV.16         D27[3], R12
261B88:  VSHL.I32        Q12, Q12, #8
261B8C:  VMOV.16         D28[3], R1
261B90:  VMOVL.U16       Q13, D27
261B94:  VMOVL.U16       Q15, D28
261B98:  VMOV.16         D29[3], R2
261B9C:  VAND            Q13, Q13, Q8
261BA0:  VAND            Q15, Q15, Q8
261BA4:  VMOVL.U16       Q14, D29
261BA8:  VORR            Q12, Q12, Q15
261BAC:  VSHL.I32        Q13, Q13, #8
261BB0:  VST1.32         {D30-D31}, [R6]
261BB4:  VAND            Q14, Q14, Q8
261BB8:  VSHL.I32        Q12, Q12, #0x10
261BBC:  VORR            Q13, Q13, Q14
261BC0:  VSHL.S32        Q12, Q9, Q12
261BC4:  VSHL.I32        Q13, Q13, #0x10
261BC8:  VMAX.S32        Q12, Q12, Q10
261BCC:  VSHL.S32        Q13, Q9, Q13
261BD0:  VMIN.S32        Q12, Q12, Q11
261BD4:  VST1.32         {D26-D27}, [R4]!
261BD8:  VMOVN.I32       D26, Q13
261BDC:  VST1.32         {D24-D25}, [R6]!
261BE0:  VST1.16         {D26}, [R9]!
261BE4:  BNE             loc_261B00
261BE6:  LDR             R0, [SP,#0xB0+var_A4]
261BE8:  MOV.W           R8, #0
261BEC:  LDR             R2, [SP,#0xB0+var_94]
261BEE:  LDR             R1, [SP,#0xB0+var_A0]
261BF0:  CMP             R0, #0
261BF2:  LDR.W           R9, [SP,#0xB0+var_8C]
261BF6:  LDR             R4, [SP,#0xB0+var_90]
261BF8:  BNE             loc_261C16
261BFA:  B               loc_261C6C
261BFC:  LDR             R1, [SP,#0xB0+var_A0]
261BFE:  MOV.W           R8, #0
261C02:  LDR.W           R9, [SP,#0xB0+var_8C]
261C06:  B               loc_261C14
261C08:  LDR             R1, [SP,#0xB0+var_A0]
261C0A:  MOV.W           R8, #0
261C0E:  LDR.W           R9, [SP,#0xB0+var_8C]
261C12:  MOVS            R4, #0
261C14:  MOV             R10, R1
261C16:  ADD             R0, SP, #0xB0+var_64
261C18:  ADD             R5, SP, #0xB0+var_40
261C1A:  SUB.W           R12, R2, R4
261C1E:  ADD.W           LR, R9, R4,LSL#1
261C22:  ADD.W           R3, R0, R4,LSL#2
261C26:  ADD.W           R6, R5, R4,LSL#2
261C2A:  LDRB.W          R0, [R10]
261C2E:  STR             R0, [R6]
261C30:  LDRB.W          R5, [R10,#1]
261C34:  ORR.W           R0, R0, R5,LSL#8
261C38:  SXTH            R0, R0
261C3A:  STR.W           R0, [R6],#4
261C3E:  LDRB.W          R5, [R10,#2]
261C42:  STR             R5, [R3]
261C44:  LDRB.W          R4, [R10,#3]
261C48:  ADD.W           R10, R10, #4
261C4C:  ORR.W           R5, R5, R4,LSL#8
261C50:  SXTH            R5, R5
261C52:  CMP             R5, #0
261C54:  IT LE
261C56:  MOVLE           R5, R8
261C58:  CMP             R5, #0x58 ; 'X'
261C5A:  IT GE
261C5C:  MOVGE           R5, #0x58 ; 'X'
261C5E:  SUBS.W          R12, R12, #1
261C62:  STR.W           R5, [R3],#4
261C66:  STRH.W          R0, [LR],#2
261C6A:  BNE             loc_261C2A
261C6C:  LDR             R0, [SP,#0xB0+var_B0]
261C6E:  ADD             R1, R0
261C70:  LSLS            R0, R2, #1
261C72:  LDR.W           R11, =(unk_5FCABC - 0x261C98)
261C76:  LDR             R3, =(unk_5FCA7C - 0x261C9A)
261C78:  MOVW            R10, #0x8000
261C7C:  LDR             R4, =(unk_5FCC20 - 0x261C9C)
261C7E:  ADD.W           R12, R9, R2,LSL#1
261C82:  STR             R0, [SP,#0xB0+var_9C]
261C84:  LSLS            R0, R2, #4
261C86:  STR             R0, [SP,#0xB0+var_AC]
261C88:  MOVS            R0, #9
261C8A:  MOV.W           R8, #1
261C8E:  STR             R0, [SP,#0xB0+var_98]
261C90:  MOVT            R10, #0xFFFF
261C94:  ADD             R11, PC; unk_5FCABC
261C96:  ADD             R3, PC; unk_5FCA7C
261C98:  ADD             R4, PC; unk_5FCC20
261C9A:  MOVW            LR, #0x7FFF
261C9E:  CMP             R2, #1
261CA0:  BLT             loc_261CDA
261CA2:  ADD             R4, SP, #0xB0+var_88
261CA4:  MOV             R3, R2
261CA6:  MOV             R6, R1
261CA8:  LDRB            R0, [R6]
261CAA:  SUBS            R3, #1
261CAC:  STR             R0, [R4]
261CAE:  LDRB            R5, [R6,#1]
261CB0:  ORR.W           R0, R0, R5,LSL#8
261CB4:  STR             R0, [R4]
261CB6:  LDRB            R5, [R6,#2]
261CB8:  ORR.W           R0, R0, R5,LSL#16
261CBC:  STR             R0, [R4]
261CBE:  LDRB            R5, [R6,#3]
261CC0:  ADD.W           R6, R6, #4
261CC4:  ORR.W           R0, R0, R5,LSL#24
261CC8:  STR.W           R0, [R4],#4
261CCC:  BNE             loc_261CA8
261CCE:  LDR             R3, =(unk_5FCA7C - 0x261CD8)
261CD0:  LDR             R4, =(unk_5FCC20 - 0x261CDA)
261CD2:  LDR             R0, [SP,#0xB0+var_B0]
261CD4:  ADD             R3, PC; unk_5FCA7C
261CD6:  ADD             R4, PC; unk_5FCC20
261CD8:  ADD             R1, R0
261CDA:  STR             R1, [SP,#0xB0+var_A0]
261CDC:  MOV             R1, R8
261CDE:  STR.W           R12, [SP,#0xB0+var_8C]
261CE2:  STRD.W          R8, R12, [SP,#0xB0+var_A8]
261CE6:  CMP             R2, #1
261CE8:  STR             R1, [SP,#0xB0+var_90]
261CEA:  BLT             loc_261D60
261CEC:  LDR.W           R8, [SP,#0xB0+var_8C]
261CF0:  ADD             R1, SP, #0xB0+var_88
261CF2:  LDR             R2, [SP,#0xB0+var_94]
261CF4:  ADD.W           R12, SP, #0xB0+var_64
261CF8:  ADD.W           R9, SP, #0xB0+var_40
261CFC:  LDR             R0, [R1]
261CFE:  LSRS            R5, R0, #4
261D00:  AND.W           R0, R0, #0xF
261D04:  STR.W           R5, [R1],#4
261D08:  LDR.W           R5, [R12]
261D0C:  LDR.W           R6, [R3,R0,LSL#2]
261D10:  MOV             R3, R11
261D12:  LDR.W           R0, [R4,R0,LSL#2]
261D16:  LDR.W           R11, [R3,R5,LSL#2]
261D1A:  LDR.W           R4, [R9]
261D1E:  ADD             R0, R5
261D20:  MUL.W           R6, R11, R6
261D24:  MOV             R11, R3
261D26:  ASRS            R3, R6, #0x1F
261D28:  ADD.W           R3, R6, R3,LSR#29
261D2C:  ADD.W           R3, R4, R3,ASR#3
261D30:  LDR             R4, =(unk_5FCC20 - 0x261D3C)
261D32:  CMP             R3, R10
261D34:  IT LE
261D36:  MOVLE           R3, R10
261D38:  ADD             R4, PC; unk_5FCC20
261D3A:  CMP             R3, LR
261D3C:  IT GE
261D3E:  MOVGE           R3, LR
261D40:  CMP             R0, #0
261D42:  STR.W           R3, [R9],#4
261D46:  IT LE
261D48:  MOVLE           R0, #0
261D4A:  CMP             R0, #0x58 ; 'X'
261D4C:  IT GE
261D4E:  MOVGE           R0, #0x58 ; 'X'
261D50:  SUBS            R2, #1
261D52:  STR.W           R0, [R12],#4
261D56:  STRH.W          R3, [R8],#2
261D5A:  LDR             R3, =(unk_5FCA7C - 0x261D60)
261D5C:  ADD             R3, PC; unk_5FCA7C
261D5E:  BNE             loc_261CFC
261D60:  LDR             R0, [SP,#0xB0+var_9C]
261D62:  LDR             R1, [SP,#0xB0+var_8C]
261D64:  LDR             R2, [SP,#0xB0+var_94]
261D66:  ADD             R1, R0
261D68:  STR             R1, [SP,#0xB0+var_8C]
261D6A:  LDR             R1, [SP,#0xB0+var_90]
261D6C:  LDR             R0, [SP,#0xB0+var_98]
261D6E:  ADDS            R1, #1
261D70:  CMP             R1, R0
261D72:  BNE             loc_261CE6
261D74:  LDR.W           R12, [SP,#0xB0+var_A4]
261D78:  LDR             R0, [SP,#0xB0+var_AC]
261D7A:  ADD             R12, R0
261D7C:  LDR             R0, [SP,#0xB0+var_98]
261D7E:  ADDS            R0, #8
261D80:  STR             R0, [SP,#0xB0+var_98]
261D82:  LDR             R0, [SP,#0xB0+var_A8]
261D84:  ADD.W           R1, R0, #8
261D88:  CMP             R0, #0x38 ; '8'
261D8A:  MOV             R8, R1
261D8C:  LDR             R1, [SP,#0xB0+var_A0]
261D8E:  BLE             loc_261C9E
261D90:  ADD             SP, SP, #0x94
261D92:  POP.W           {R8-R11}
261D96:  POP             {R4-R7,PC}
