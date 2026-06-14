; =========================================================
; Game Engine Function: png_do_write_transformations
; Address            : 0x205A44 - 0x206000
; =========================================================

205A44:  PUSH            {R4-R7,LR}
205A46:  ADD             R7, SP, #0xC
205A48:  PUSH.W          {R8-R11}
205A4C:  SUB             SP, SP, #0x2C
205A4E:  MOV             R10, R0
205A50:  MOV             R9, R1
205A52:  CMP.W           R10, #0
205A56:  BEQ.W           loc_205FE2
205A5A:  LDR.W           R0, [R10,#0x13C]
205A5E:  TST.W           R0, #0x100000
205A62:  ITT NE
205A64:  LDRNE.W         R3, [R10,#0x128]
205A68:  CMPNE           R3, #0
205A6A:  BNE             loc_205A7A
205A6C:  LSLS            R1, R0, #0x10
205A6E:  BMI             loc_205A8E
205A70:  LSLS            R1, R0, #0xF
205A72:  BMI             loc_205AAC
205A74:  LSLS            R1, R0, #0x1D
205A76:  BMI             loc_205AC0
205A78:  B               loc_205AD0
205A7A:  LDR.W           R0, [R10,#0x1E4]
205A7E:  MOV             R1, R9
205A80:  ADDS            R2, R0, #1
205A82:  MOV             R0, R10
205A84:  BLX             R3
205A86:  LDR.W           R0, [R10,#0x13C]
205A8A:  LSLS            R1, R0, #0x10
205A8C:  BPL             loc_205A70
205A8E:  LDR.W           R0, [R10,#0x138]
205A92:  MOVS            R2, #1
205A94:  LDR.W           R1, [R10,#0x1E4]
205A98:  BIC.W           R2, R2, R0,LSR#7
205A9C:  ADDS            R1, #1
205A9E:  MOV             R0, R9
205AA0:  BLX             j_png_do_strip_channel
205AA4:  LDR.W           R0, [R10,#0x13C]
205AA8:  LSLS            R1, R0, #0xF
205AAA:  BPL             loc_205A74
205AAC:  LDR.W           R0, [R10,#0x1E4]
205AB0:  ADDS            R1, R0, #1
205AB2:  MOV             R0, R9
205AB4:  BLX             j_png_do_packswap
205AB8:  LDR.W           R0, [R10,#0x13C]
205ABC:  LSLS            R1, R0, #0x1D
205ABE:  BPL             loc_205AD0
205AC0:  LDRB.W          R1, [R9,#9]
205AC4:  CMP             R1, #8
205AC6:  ITT EQ
205AC8:  LDRBEQ.W        R1, [R9,#0xA]
205ACC:  CMPEQ           R1, #1
205ACE:  BEQ             loc_205B0C
205AD0:  LSLS            R1, R0, #0x1B
205AD2:  BPL             loc_205AE4
205AD4:  LDR.W           R0, [R10,#0x1E4]
205AD8:  ADDS            R1, R0, #1
205ADA:  MOV             R0, R9
205ADC:  BLX             j_png_do_swap
205AE0:  LDR.W           R0, [R10,#0x13C]
205AE4:  LSLS            R1, R0, #0x1C
205AE6:  BPL.W           loc_205DD8
205AEA:  LDRB.W          R2, [R9,#8]
205AEE:  CMP             R2, #3
205AF0:  BEQ.W           loc_205DD8
205AF4:  LDR.W           R0, [R10,#0x1E4]
205AF8:  LSLS            R3, R2, #0x1E
205AFA:  LDRB.W          R1, [R9,#9]
205AFE:  BMI             loc_205B68
205B00:  ADD.W           R3, R10, #0x268
205B04:  MOV.W           R8, #1
205B08:  MOVS            R6, #0
205B0A:  B               loc_205B86
205B0C:  LDR.W           R1, [R10,#0x1E4]
205B10:  LDRB.W          R0, [R10,#0x210]
205B14:  ADDS            R4, R1, #1
205B16:  CMP             R0, #1
205B18:  BEQ.W           loc_205CCC
205B1C:  CMP             R0, #2
205B1E:  BEQ.W           loc_205D02
205B22:  CMP             R0, #4
205B24:  BNE.W           loc_205D3A
205B28:  LDR.W           R2, [R9]
205B2C:  CMP             R2, #0
205B2E:  BEQ.W           loc_205D3A
205B32:  MOVS            R6, #4
205B34:  MOVS            R3, #0
205B36:  MOV             R1, R4
205B38:  LDRB            R5, [R1]
205B3A:  CMP             R6, #0
205B3C:  AND.W           R5, R5, #0xF
205B40:  LSL.W           R5, R5, R6
205B44:  ORR.W           R3, R3, R5
205B48:  BEQ             loc_205B4E
205B4A:  SUBS            R6, #4
205B4C:  B               loc_205B56
205B4E:  STRB.W          R3, [R4],#1
205B52:  MOVS            R3, #0
205B54:  MOVS            R6, #4
205B56:  SUBS            R2, #1
205B58:  ADD.W           R1, R1, #1
205B5C:  BNE             loc_205B38
205B5E:  CMP             R6, #4
205B60:  BEQ.W           loc_205D3A
205B64:  STRB            R3, [R4]
205B66:  B               loc_205D3A
205B68:  LDRB.W          R3, [R10,#0x265]
205B6C:  MOV.W           R8, #3
205B70:  STR             R3, [SP,#0x48+var_3C]
205B72:  SUBS            R6, R1, R3
205B74:  LDRB.W          R3, [R10,#0x266]
205B78:  STR             R6, [SP,#0x48+var_2C]
205B7A:  SUBS            R6, R1, R3
205B7C:  STR             R6, [SP,#0x48+var_28]
205B7E:  STR             R3, [SP,#0x48+var_38]
205B80:  ADDW            R3, R10, #0x267
205B84:  MOVS            R6, #2
205B86:  ADD.W           R11, R0, #1
205B8A:  LDRB            R0, [R3]
205B8C:  ADD             R5, SP, #0x48+var_3C
205B8E:  ADD             R4, SP, #0x48+var_2C
205B90:  SUBS            R3, R1, R0
205B92:  STR.W           R0, [R5,R6,LSL#2]
205B96:  LSLS            R0, R2, #0x1D
205B98:  STR.W           R3, [R4,R6,LSL#2]
205B9C:  BPL             loc_205BB0
205B9E:  LDRB.W          R0, [R10,#0x269]
205BA2:  STR.W           R0, [R5,R8,LSL#2]
205BA6:  SUBS            R2, R1, R0
205BA8:  STR.W           R2, [R4,R8,LSL#2]
205BAC:  ADD.W           R8, R8, #1
205BB0:  CMP             R1, #7
205BB2:  STRD.W          R10, R9, [SP,#0x48+var_44]
205BB6:  BHI             loc_205BD8
205BB8:  LDRB.W          R0, [R10,#0x268]
205BBC:  CMP             R1, #2
205BBE:  LDR.W           R12, [R9,#4]
205BC2:  IT EQ
205BC4:  CMPEQ           R0, #1
205BC6:  BNE.W           loc_205D70
205BCA:  MOV.W           LR, #0x55 ; 'U'
205BCE:  CMP.W           R12, #0
205BD2:  BNE.W           loc_205D8A
205BD6:  B               loc_205DCC
205BD8:  LDR.W           R0, [R9]
205BDC:  CMP             R1, #8
205BDE:  MUL.W           R10, R0, R8
205BE2:  BNE             loc_205C4E
205BE4:  CMP.W           R10, #0
205BE8:  BEQ.W           loc_205DCC
205BEC:  MOV.W           R9, #0
205BF0:  MOV             R0, R9
205BF2:  MOV             R1, R8
205BF4:  BLX             __aeabi_uidivmod
205BF8:  LDR.W           R6, [R4,R1,LSL#2]
205BFC:  LDR.W           R1, [R5,R1,LSL#2]
205C00:  NEGS            R2, R1
205C02:  CMP             R6, R2
205C04:  BLE             loc_205C3A
205C06:  LDRB.W          R3, [R11]
205C0A:  NEGS            R0, R6
205C0C:  CMP             R6, #0
205C0E:  SUB.W           R5, R6, R1
205C12:  LSR.W           R0, R3, R0
205C16:  IT GT
205C18:  LSLGT.W         R0, R3, R6
205C1C:  CMP             R5, R2
205C1E:  BLE             loc_205C3C
205C20:  SUBS            R6, R1, R6
205C22:  LSR.W           R4, R3, R6
205C26:  CMP             R5, #0
205C28:  IT GT
205C2A:  LSLGT.W         R4, R3, R5
205C2E:  SUBS            R5, R5, R1
205C30:  ORRS            R0, R4
205C32:  ADD             R6, R1
205C34:  CMP             R5, R2
205C36:  BGT             loc_205C22
205C38:  B               loc_205C3C
205C3A:  MOVS            R0, #0
205C3C:  ADD.W           R9, R9, #1
205C40:  STRB.W          R0, [R11],#1
205C44:  ADD             R4, SP, #0x48+var_2C
205C46:  ADD             R5, SP, #0x48+var_3C
205C48:  CMP             R9, R10
205C4A:  BNE             loc_205BF0
205C4C:  B               loc_205DCC
205C4E:  CMP.W           R10, #0
205C52:  BEQ.W           loc_205DCC
205C56:  MOV.W           R9, #0
205C5A:  MOV             R0, R9
205C5C:  MOV             R1, R8
205C5E:  BLX             __aeabi_uidivmod
205C62:  LDR.W           R0, [R5,R1,LSL#2]
205C66:  LDR.W           R6, [R4,R1,LSL#2]
205C6A:  NEGS            R2, R0
205C6C:  CMP             R6, R2
205C6E:  BLE             loc_205CAE
205C70:  LDRB.W          R1, [R11]
205C74:  CMP             R6, #0
205C76:  LDRB.W          R3, [R11,#1]
205C7A:  SUB.W           R5, R6, R0
205C7E:  ORR.W           R3, R3, R1,LSL#8
205C82:  RSB.W           R1, R6, #0
205C86:  LSR.W           R1, R3, R1
205C8A:  IT GT
205C8C:  LSLGT.W         R1, R3, R6
205C90:  CMP             R5, R2
205C92:  BLE             loc_205CB0
205C94:  SUBS            R6, R0, R6
205C96:  LSR.W           R4, R3, R6
205C9A:  CMP             R5, #0
205C9C:  IT GT
205C9E:  LSLGT.W         R4, R3, R5
205CA2:  SUBS            R5, R5, R0
205CA4:  ORRS            R1, R4
205CA6:  ADD             R6, R0
205CA8:  CMP             R5, R2
205CAA:  BGT             loc_205C96
205CAC:  B               loc_205CB0
205CAE:  MOVS            R1, #0
205CB0:  LSRS            R0, R1, #8
205CB2:  STRB.W          R1, [R11,#1]
205CB6:  STRB.W          R0, [R11]
205CBA:  ADD.W           R9, R9, #1
205CBE:  ADD.W           R11, R11, #2
205CC2:  ADD             R4, SP, #0x48+var_2C
205CC4:  ADD             R5, SP, #0x48+var_3C
205CC6:  CMP             R9, R10
205CC8:  BNE             loc_205C5A
205CCA:  B               loc_205DCC
205CCC:  LDR.W           R2, [R9]
205CD0:  CBZ             R2, loc_205D3A
205CD2:  MOVS            R3, #0
205CD4:  MOVS            R5, #0x80
205CD6:  MOV             R6, R4
205CD8:  LDRB.W          R1, [R4],#1
205CDC:  CMP             R1, #0
205CDE:  IT NE
205CE0:  ORRNE           R3, R5
205CE2:  CMP             R5, #2
205CE4:  BLT             loc_205CEE
205CE6:  LSRS            R5, R5, #1
205CE8:  SUBS            R2, #1
205CEA:  BNE             loc_205CD8
205CEC:  B               loc_205CFA
205CEE:  STRB.W          R3, [R6],#1
205CF2:  MOVS            R5, #0x80
205CF4:  MOVS            R3, #0
205CF6:  SUBS            R2, #1
205CF8:  BNE             loc_205CD8
205CFA:  CMP             R5, #0x80
205CFC:  IT NE
205CFE:  STRBNE          R3, [R6]
205D00:  B               loc_205D3A
205D02:  LDR.W           R2, [R9]
205D06:  CBZ             R2, loc_205D3A
205D08:  MOVS            R6, #6
205D0A:  MOVS            R3, #0
205D0C:  MOV             R1, R4
205D0E:  LDRB            R5, [R1]
205D10:  CMP             R6, #0
205D12:  AND.W           R5, R5, #3
205D16:  LSL.W           R5, R5, R6
205D1A:  ORR.W           R3, R3, R5
205D1E:  BEQ             loc_205D24
205D20:  SUBS            R6, #2
205D22:  B               loc_205D2C
205D24:  STRB.W          R3, [R4],#1
205D28:  MOVS            R3, #0
205D2A:  MOVS            R6, #6
205D2C:  SUBS            R2, #1
205D2E:  ADD.W           R1, R1, #1
205D32:  BNE             loc_205D0E
205D34:  CMP             R6, #6
205D36:  IT NE
205D38:  STRBNE          R3, [R4]
205D3A:  LDRB.W          R1, [R9,#0xA]
205D3E:  STRB.W          R0, [R9,#9]
205D42:  SMULBB.W        R1, R1, R0
205D46:  LDR.W           R0, [R9]
205D4A:  STRB.W          R1, [R9,#0xB]
205D4E:  UXTB            R1, R1
205D50:  CMP             R1, #8
205D52:  BCC             loc_205D5A
205D54:  LSRS            R1, R1, #3
205D56:  MULS            R0, R1
205D58:  B               loc_205D60
205D5A:  MULS            R0, R1
205D5C:  ADDS            R0, #7
205D5E:  LSRS            R0, R0, #3
205D60:  STR.W           R0, [R9,#4]
205D64:  LDR.W           R0, [R10,#0x13C]
205D68:  LSLS            R1, R0, #0x1B
205D6A:  BMI.W           loc_205AD4
205D6E:  B               loc_205AE4
205D70:  EOR.W           R0, R0, #3
205D74:  EOR.W           R1, R1, #4
205D78:  ORRS            R0, R1
205D7A:  MOV.W           LR, #0xFF
205D7E:  IT EQ
205D80:  MOVEQ.W         LR, #0x11
205D84:  CMP.W           R12, #0
205D88:  BEQ             loc_205DCC
205D8A:  MOV.W           R8, #0
205D8E:  LDR             R6, [SP,#0x48+var_3C]
205D90:  LDR             R3, [SP,#0x48+var_2C]
205D92:  NEGS            R0, R6
205D94:  CMP             R3, R0
205D96:  BLE             loc_205DBE
205D98:  LDRB.W          R5, [R11]
205D9C:  NEGS            R1, R3
205D9E:  MOVS            R4, #0
205DA0:  CMP             R3, #1
205DA2:  ITTE LT
205DA4:  LSRLT.W         R2, R5, R1
205DA8:  ANDLT.W         R2, R2, LR
205DAC:  LSLGE.W         R2, R5, R3
205DB0:  SUBS            R3, R3, R6
205DB2:  ADD             R1, R6
205DB4:  CMP             R3, R0
205DB6:  ORR.W           R4, R4, R2
205DBA:  BGT             loc_205DA0
205DBC:  B               loc_205DC0
205DBE:  MOVS            R4, #0
205DC0:  ADD.W           R8, R8, #1
205DC4:  STRB.W          R4, [R11],#1
205DC8:  CMP             R8, R12
205DCA:  BNE             loc_205D8E
205DCC:  LDR.W           R10, [SP,#0x48+var_44]
205DD0:  LDR.W           R9, [SP,#0x48+var_40]
205DD4:  LDR.W           R0, [R10,#0x13C]
205DD8:  LSLS            R0, R0, #0xE
205DDA:  BPL.W           loc_205F2A
205DDE:  LDR.W           R0, [R10,#0x1E4]
205DE2:  LDRB.W          R1, [R9,#8]
205DE6:  ADDS            R4, R0, #1
205DE8:  CMP             R1, #4
205DEA:  BEQ             loc_205E42
205DEC:  CMP             R1, #6
205DEE:  BNE.W           loc_205F2A
205DF2:  LDRB.W          R2, [R9,#9]
205DF6:  LDR.W           R1, [R9]
205DFA:  CMP             R2, #8
205DFC:  BNE             loc_205E7A
205DFE:  CMP             R1, #0
205E00:  BEQ.W           loc_205F2A
205E04:  CMP             R1, #0x10
205E06:  BCC             loc_205EDE
205E08:  AND.W           R6, R1, #0xF
205E0C:  SUBS            R5, R1, R6
205E0E:  BEQ             loc_205EDE
205E10:  ADD.W           R2, R4, R5,LSL#2
205E14:  MOV             R3, R5
205E16:  MOV             R0, R4
205E18:  SUBS            R3, #0x10
205E1A:  VLD4.8          {D16,D18,D20,D22}, [R0]!
205E1E:  VLD4.8          {D17,D19,D21,D23}, [R0]
205E22:  VMOV            Q12, Q9
205E26:  VMOV            Q13, Q10
205E2A:  VMOV            Q14, Q11
205E2E:  VMOV            Q15, Q8
205E32:  VST4.8          {D24,D26,D28,D30}, [R4]!
205E36:  VST4.8          {D25,D27,D29,D31}, [R4]!
205E3A:  BNE             loc_205E16
205E3C:  CMP             R6, #0
205E3E:  BNE             loc_205EE2
205E40:  B               loc_205F2A
205E42:  LDRB.W          R0, [R9,#9]
205E46:  LDR.W           R1, [R9]
205E4A:  CMP             R0, #8
205E4C:  BNE             loc_205E9E
205E4E:  CMP             R1, #0
205E50:  BEQ             loc_205F2A
205E52:  CMP             R1, #0x10
205E54:  BCC             loc_205EFC
205E56:  AND.W           R6, R1, #0xF
205E5A:  SUBS            R5, R1, R6
205E5C:  BEQ             loc_205EFC
205E5E:  ADD.W           R2, R4, R5,LSL#1
205E62:  MOV             R3, R5
205E64:  VLD2.8          {D16-D19}, [R4]
205E68:  SUBS            R3, #0x10
205E6A:  VMOV            Q10, Q8
205E6E:  VST2.8          {D18-D21}, [R4]!
205E72:  BNE             loc_205E64
205E74:  CMP             R6, #0
205E76:  BNE             loc_205F00
205E78:  B               loc_205F2A
205E7A:  CMP             R1, #0
205E7C:  BEQ             loc_205F2A
205E7E:  LDR.W           R0, [R4,#2]
205E82:  SUBS            R1, #1
205E84:  LDRB            R2, [R4,#6]
205E86:  LDRB            R3, [R4]
205E88:  LDRB            R6, [R4,#1]
205E8A:  LDRB            R5, [R4,#7]
205E8C:  STRB            R2, [R4,#4]
205E8E:  STR             R0, [R4]
205E90:  STRB            R5, [R4,#5]
205E92:  STRB            R3, [R4,#6]
205E94:  STRB            R6, [R4,#7]
205E96:  ADD.W           R4, R4, #8
205E9A:  BNE             loc_205E7E
205E9C:  B               loc_205F2A
205E9E:  CMP             R1, #0
205EA0:  BEQ             loc_205F2A
205EA2:  CMP             R1, #0xF
205EA4:  BLS             loc_205F14
205EA6:  AND.W           R6, R1, #0xF
205EAA:  SUBS            R5, R1, R6
205EAC:  BEQ             loc_205F14
205EAE:  ADD.W           R2, R4, R5,LSL#2
205EB2:  MOV             R3, R5
205EB4:  MOV             R0, R4
205EB6:  SUBS            R3, #0x10
205EB8:  VLD4.8          {D16,D18,D20,D22}, [R0]!
205EBC:  VLD4.8          {D17,D19,D21,D23}, [R0]
205EC0:  VMOV            Q12, Q10
205EC4:  VMOV            Q13, Q11
205EC8:  VMOV            Q14, Q8
205ECC:  VMOV            Q15, Q9
205ED0:  VST4.8          {D24,D26,D28,D30}, [R4]!
205ED4:  VST4.8          {D25,D27,D29,D31}, [R4]!
205ED8:  BNE             loc_205EB4
205EDA:  CBNZ            R6, loc_205F18
205EDC:  B               loc_205F2A
205EDE:  MOVS            R5, #0
205EE0:  MOV             R2, R4
205EE2:  SUBS            R0, R1, R5
205EE4:  LDRB            R1, [R2]
205EE6:  SUBS            R0, #1
205EE8:  LDRB            R3, [R2,#3]
205EEA:  LDRH.W          R6, [R2,#1]
205EEE:  STRB            R3, [R2,#2]
205EF0:  STRH            R6, [R2]
205EF2:  STRB            R1, [R2,#3]
205EF4:  ADD.W           R2, R2, #4
205EF8:  BNE             loc_205EE4
205EFA:  B               loc_205F2A
205EFC:  MOVS            R5, #0
205EFE:  MOV             R2, R4
205F00:  SUBS            R0, R1, R5
205F02:  LDRB            R1, [R2]
205F04:  SUBS            R0, #1
205F06:  LDRB            R3, [R2,#1]
205F08:  STRB            R3, [R2]
205F0A:  STRB            R1, [R2,#1]
205F0C:  ADD.W           R2, R2, #2
205F10:  BNE             loc_205F02
205F12:  B               loc_205F2A
205F14:  MOVS            R5, #0
205F16:  MOV             R2, R4
205F18:  SUBS            R0, R1, R5
205F1A:  LDRH            R1, [R2]
205F1C:  SUBS            R0, #1
205F1E:  LDRH            R3, [R2,#2]
205F20:  STRH            R3, [R2]
205F22:  STRH            R1, [R2,#2]
205F24:  ADD.W           R2, R2, #4
205F28:  BNE             loc_205F1A
205F2A:  LDRB.W          R0, [R10,#0x13E]
205F2E:  LSLS            R0, R0, #0x1C
205F30:  BPL             loc_205FC4
205F32:  LDRB.W          R0, [R9,#8]
205F36:  LDR.W           R1, [R10,#0x1E4]
205F3A:  CMP             R0, #4
205F3C:  BEQ             loc_205F62
205F3E:  CMP             R0, #6
205F40:  BNE             loc_205FC4
205F42:  LDRB.W          R2, [R9,#9]
205F46:  LDR.W           R0, [R9]
205F4A:  CMP             R2, #8
205F4C:  BNE             loc_205F82
205F4E:  CBZ             R0, loc_205FC4
205F50:  ADDS            R1, #4
205F52:  LDRB            R2, [R1]
205F54:  SUBS            R0, #1
205F56:  MVN.W           R2, R2
205F5A:  STRB.W          R2, [R1],#4
205F5E:  BNE             loc_205F52
205F60:  B               loc_205FC4
205F62:  LDRB.W          R2, [R9,#9]
205F66:  LDR.W           R0, [R9]
205F6A:  CMP             R2, #8
205F6C:  BNE             loc_205FA4
205F6E:  CBZ             R0, loc_205FC4
205F70:  ADDS            R1, #2
205F72:  LDRB            R2, [R1]
205F74:  SUBS            R0, #1
205F76:  MVN.W           R2, R2
205F7A:  STRB.W          R2, [R1],#2
205F7E:  BNE             loc_205F72
205F80:  B               loc_205FC4
205F82:  CBZ             R0, loc_205FC4
205F84:  ADDS            R1, #8
205F86:  LDRB.W          R2, [R1,#-1]
205F8A:  SUBS            R0, #1
205F8C:  LDRB            R3, [R1]
205F8E:  MVN.W           R2, R2
205F92:  STRB.W          R2, [R1,#-1]
205F96:  MVN.W           R2, R3
205F9A:  STRB            R2, [R1]
205F9C:  ADD.W           R1, R1, #8
205FA0:  BNE             loc_205F86
205FA2:  B               loc_205FC4
205FA4:  CBZ             R0, loc_205FC4
205FA6:  ADDS            R1, #4
205FA8:  LDRB.W          R2, [R1,#-1]
205FAC:  SUBS            R0, #1
205FAE:  LDRB            R3, [R1]
205FB0:  MVN.W           R2, R2
205FB4:  STRB.W          R2, [R1,#-1]
205FB8:  MVN.W           R2, R3
205FBC:  STRB            R2, [R1]
205FBE:  ADD.W           R1, R1, #4
205FC2:  BNE             loc_205FA8
205FC4:  LDR.W           R0, [R10,#0x13C]
205FC8:  TST.W           R0, #1
205FCC:  BEQ             loc_205FDE
205FCE:  LDR.W           R0, [R10,#0x1E4]
205FD2:  ADDS            R1, R0, #1
205FD4:  MOV             R0, R9
205FD6:  BLX             j_png_do_bgr
205FDA:  LDR.W           R0, [R10,#0x13C]
205FDE:  LSLS            R0, R0, #0x1A
205FE0:  BMI             loc_205FEA
205FE2:  ADD             SP, SP, #0x2C ; ','
205FE4:  POP.W           {R8-R11}
205FE8:  POP             {R4-R7,PC}
205FEA:  LDR.W           R0, [R10,#0x1E4]
205FEE:  ADDS            R1, R0, #1
205FF0:  MOV             R0, R9
205FF2:  ADD             SP, SP, #0x2C ; ','
205FF4:  POP.W           {R8-R11}
205FF8:  POP.W           {R4-R7,LR}
205FFC:  B.W             j_j_png_do_invert
