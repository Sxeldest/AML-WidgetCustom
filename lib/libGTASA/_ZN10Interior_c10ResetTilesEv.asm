; =========================================================
; Game Engine Function: _ZN10Interior_c10ResetTilesEv
; Address            : 0x444C70 - 0x445742
; =========================================================

444C70:  PUSH            {R4-R7,LR}
444C72:  ADD             R7, SP, #0xC
444C74:  PUSH.W          {R8-R11}
444C78:  SUB             SP, SP, #4
444C7A:  VPUSH           {D8-D9}
444C7E:  SUB             SP, SP, #0x10
444C80:  MOV             R9, R0
444C82:  ADD.W           R0, R9, #0x68 ; 'h'
444C86:  MOV.W           R1, #0x384
444C8A:  STR             R0, [SP,#0x40+var_40]
444C8C:  BLX             j___aeabi_memclr8_1
444C90:  LDR.W           R6, [R9,#0x14]
444C94:  LDRSB.W         R0, [R6,#6]
444C98:  ADDS            R1, R0, #1
444C9A:  BEQ.W           loc_444E76
444C9E:  CMP             R0, #0
444CA0:  ITTT GE
444CA2:  LDRSBGE.W       R1, [R6,#7]
444CA6:  SUBGE           R2, R1, R0
444CA8:  CMPGE           R2, #1
444CAA:  BLT.W           loc_444E76
444CAE:  LDRB            R3, [R6,#2]
444CB0:  CMP             R3, #0
444CB2:  BEQ.W           loc_444E76
444CB6:  LDRB            R3, [R6,#3]
444CB8:  CMP             R1, R3
444CBA:  BGT.W           loc_444E76
444CBE:  CMP             R2, #0x10
444CC0:  BCC.W           loc_444E50
444CC4:  BIC.W           R12, R2, #0xF
444CC8:  CMP.W           R12, #0
444CCC:  BEQ.W           loc_444E50
444CD0:  ADR.W           R3, dword_445750
444CD4:  VMOV.I32        Q13, #0x10
444CD8:  VLD1.64         {D16-D17}, [R3@128]
444CDC:  ADR.W           R3, dword_445760
444CE0:  MOVS            R6, #8
444CE2:  VLD1.64         {D18-D19}, [R3@128]
444CE6:  ADR.W           R3, dword_445770
444CEA:  VLD1.64         {D20-D21}, [R3@128]
444CEE:  ADR.W           R3, dword_445780
444CF2:  VLD1.64         {D22-D23}, [R3@128]
444CF6:  MOV             R3, R12
444CF8:  VDUP.32         Q12, R0
444CFC:  VADD.I32        Q0, Q11, Q12
444D00:  VADD.I32        Q15, Q10, Q12
444D04:  VADD.I32        Q10, Q10, Q13
444D08:  VMOV.32         R5, D0[0]
444D0C:  VADD.I32        Q11, Q11, Q13
444D10:  ADD             R5, R9
444D12:  ADDS            R5, #0x68 ; 'h'
444D14:  VLD1.8          {D28-D29}, [R5]
444D18:  VCEQ.I8         Q14, Q14, #0
444D1C:  VMOV.U8         R4, D28[0]
444D20:  LSLS            R4, R4, #0x1F
444D22:  IT NE
444D24:  STRBNE          R6, [R5]
444D26:  VMOV.U8         R5, D28[1]
444D2A:  LSLS            R5, R5, #0x1F
444D2C:  ITTT NE
444D2E:  VMOVNE.32       R5, D0[1]
444D32:  ADDNE           R5, R9
444D34:  STRBNE.W        R6, [R5,#0x68]
444D38:  VMOV.U8         R5, D28[2]
444D3C:  LSLS            R5, R5, #0x1F
444D3E:  ITTT NE
444D40:  VMOVNE.32       R5, D1[0]
444D44:  ADDNE           R5, R9
444D46:  STRBNE.W        R6, [R5,#0x68]
444D4A:  VMOV.U8         R5, D28[3]
444D4E:  LSLS            R5, R5, #0x1F
444D50:  ITTT NE
444D52:  VMOVNE.32       R5, D1[1]
444D56:  ADDNE           R5, R9
444D58:  STRBNE.W        R6, [R5,#0x68]
444D5C:  VADD.I32        Q0, Q9, Q12
444D60:  VMOV.U8         R5, D28[4]
444D64:  VADD.I32        Q9, Q9, Q13
444D68:  LSLS            R5, R5, #0x1F
444D6A:  ITTT NE
444D6C:  VMOVNE.32       R5, D30[0]
444D70:  ADDNE           R5, R9
444D72:  STRBNE.W        R6, [R5,#0x68]
444D76:  VMOV.U8         R5, D28[5]
444D7A:  LSLS            R5, R5, #0x1F
444D7C:  ITTT NE
444D7E:  VMOVNE.32       R5, D30[1]
444D82:  ADDNE           R5, R9
444D84:  STRBNE.W        R6, [R5,#0x68]
444D88:  VMOV.U8         R5, D28[6]
444D8C:  LSLS            R5, R5, #0x1F
444D8E:  ITTT NE
444D90:  VMOVNE.32       R5, D31[0]
444D94:  ADDNE           R5, R9
444D96:  STRBNE.W        R6, [R5,#0x68]
444D9A:  VMOV.U8         R5, D28[7]
444D9E:  LSLS            R5, R5, #0x1F
444DA0:  ITTT NE
444DA2:  VMOVNE.32       R5, D31[1]
444DA6:  ADDNE           R5, R9
444DA8:  STRBNE.W        R6, [R5,#0x68]
444DAC:  VADD.I32        Q15, Q8, Q12
444DB0:  VMOV.U8         R5, D29[0]
444DB4:  VADD.I32        Q8, Q8, Q13
444DB8:  LSLS            R5, R5, #0x1F
444DBA:  ITTT NE
444DBC:  VMOVNE.32       R5, D0[0]
444DC0:  ADDNE           R5, R9
444DC2:  STRBNE.W        R6, [R5,#0x68]
444DC6:  VMOV.U8         R5, D29[1]
444DCA:  LSLS            R5, R5, #0x1F
444DCC:  ITTT NE
444DCE:  VMOVNE.32       R5, D0[1]
444DD2:  ADDNE           R5, R9
444DD4:  STRBNE.W        R6, [R5,#0x68]
444DD8:  VMOV.U8         R5, D29[2]
444DDC:  LSLS            R5, R5, #0x1F
444DDE:  ITTT NE
444DE0:  VMOVNE.32       R5, D1[0]
444DE4:  ADDNE           R5, R9
444DE6:  STRBNE.W        R6, [R5,#0x68]
444DEA:  VMOV.U8         R5, D29[3]
444DEE:  LSLS            R5, R5, #0x1F
444DF0:  ITTT NE
444DF2:  VMOVNE.32       R5, D1[1]
444DF6:  ADDNE           R5, R9
444DF8:  STRBNE.W        R6, [R5,#0x68]
444DFC:  VMOV.U8         R5, D29[4]
444E00:  LSLS            R5, R5, #0x1F
444E02:  ITTT NE
444E04:  VMOVNE.32       R5, D30[0]
444E08:  ADDNE           R5, R9
444E0A:  STRBNE.W        R6, [R5,#0x68]
444E0E:  VMOV.U8         R5, D29[5]
444E12:  LSLS            R5, R5, #0x1F
444E14:  ITTT NE
444E16:  VMOVNE.32       R5, D30[1]
444E1A:  ADDNE           R5, R9
444E1C:  STRBNE.W        R6, [R5,#0x68]
444E20:  VMOV.U8         R5, D29[6]
444E24:  LSLS            R5, R5, #0x1F
444E26:  ITTT NE
444E28:  VMOVNE.32       R5, D31[0]
444E2C:  ADDNE           R5, R9
444E2E:  STRBNE.W        R6, [R5,#0x68]
444E32:  VMOV.U8         R5, D29[7]
444E36:  LSLS            R5, R5, #0x1F
444E38:  ITTT NE
444E3A:  VMOVNE.32       R5, D31[1]
444E3E:  ADDNE           R5, R9
444E40:  STRBNE.W        R6, [R5,#0x68]
444E44:  SUBS            R3, #0x10
444E46:  BNE.W           loc_444CFC
444E4A:  CMP             R2, R12
444E4C:  BNE             loc_444E54
444E4E:  B               loc_444E72
444E50:  MOV.W           R12, #0
444E54:  SUB.W           R1, R1, R12
444E58:  MOVS            R2, #8
444E5A:  SUBS            R1, R1, R0
444E5C:  ADD             R0, R12
444E5E:  ADD             R0, R9
444E60:  ADDS            R0, #0x68 ; 'h'
444E62:  LDRB            R3, [R0]
444E64:  CMP             R3, #0
444E66:  IT EQ
444E68:  STRBEQ          R2, [R0]
444E6A:  SUBS            R1, #1
444E6C:  ADD.W           R0, R0, #1
444E70:  BNE             loc_444E62
444E72:  LDR.W           R6, [R9,#0x14]
444E76:  LDRSB.W         R0, [R6,#8]
444E7A:  ADDS            R1, R0, #1
444E7C:  BEQ.W           loc_445074
444E80:  LDRSB.W         R8, [R6,#9]
444E84:  SUB.W           R10, R8, R0
444E88:  CMP.W           R10, #1
444E8C:  BLT.W           loc_445074
444E90:  LDRB.W          LR, [R6,#2]
444E94:  SUB.W           R5, LR, #1
444E98:  ORR.W           R1, R5, R0
444E9C:  CMP             R1, #0
444E9E:  BLT.W           loc_445074
444EA2:  LDRB            R1, [R6,#3]
444EA4:  CMP             R8, R1
444EA6:  BGT.W           loc_445074
444EAA:  CMP.W           R10, #0x10
444EAE:  BCC.W           loc_445046
444EB2:  BIC.W           R12, R10, #0xF
444EB6:  CMP.W           R12, #0
444EBA:  BEQ.W           loc_445046
444EBE:  ADR.W           R1, dword_445750
444EC2:  VMOV.I32        Q13, #0x10
444EC6:  VLD1.64         {D16-D17}, [R1@128]
444ECA:  ADR.W           R1, dword_445760
444ECE:  MOVS            R6, #8
444ED0:  MOV             R2, R12
444ED2:  VLD1.64         {D18-D19}, [R1@128]
444ED6:  ADR.W           R1, dword_445770
444EDA:  VLD1.64         {D20-D21}, [R1@128]
444EDE:  ADR.W           R1, dword_445780
444EE2:  VLD1.64         {D22-D23}, [R1@128]
444EE6:  VDUP.32         Q12, R0
444EEA:  VADD.I32        Q0, Q11, Q12
444EEE:  RSB.W           R3, R5, R5,LSL#4
444EF2:  VADD.I32        Q15, Q10, Q12
444EF6:  ADD.W           R3, R9, R3,LSL#1
444EFA:  VADD.I32        Q10, Q10, Q13
444EFE:  VMOV.32         R1, D0[0]
444F02:  VADD.I32        Q11, Q11, Q13
444F06:  ADD             R1, R3
444F08:  ADDS            R1, #0x68 ; 'h'
444F0A:  VLD1.8          {D28-D29}, [R1]
444F0E:  VCEQ.I8         Q14, Q14, #0
444F12:  VMOV.U8         R4, D28[0]
444F16:  LSLS            R4, R4, #0x1F
444F18:  IT NE
444F1A:  STRBNE          R6, [R1]
444F1C:  VMOV.U8         R1, D28[1]
444F20:  LSLS            R1, R1, #0x1F
444F22:  ITTT NE
444F24:  VMOVNE.32       R1, D0[1]
444F28:  ADDNE           R1, R3
444F2A:  STRBNE.W        R6, [R1,#0x68]
444F2E:  VMOV.U8         R1, D28[2]
444F32:  LSLS            R1, R1, #0x1F
444F34:  ITTT NE
444F36:  VMOVNE.32       R1, D1[0]
444F3A:  ADDNE           R1, R3
444F3C:  STRBNE.W        R6, [R1,#0x68]
444F40:  VMOV.U8         R1, D28[3]
444F44:  LSLS            R1, R1, #0x1F
444F46:  ITTT NE
444F48:  VMOVNE.32       R1, D1[1]
444F4C:  ADDNE           R1, R3
444F4E:  STRBNE.W        R6, [R1,#0x68]
444F52:  VADD.I32        Q0, Q9, Q12
444F56:  VMOV.U8         R1, D28[4]
444F5A:  VADD.I32        Q9, Q9, Q13
444F5E:  LSLS            R1, R1, #0x1F
444F60:  ITTT NE
444F62:  VMOVNE.32       R1, D30[0]
444F66:  ADDNE           R1, R3
444F68:  STRBNE.W        R6, [R1,#0x68]
444F6C:  VMOV.U8         R1, D28[5]
444F70:  LSLS            R1, R1, #0x1F
444F72:  ITTT NE
444F74:  VMOVNE.32       R1, D30[1]
444F78:  ADDNE           R1, R3
444F7A:  STRBNE.W        R6, [R1,#0x68]
444F7E:  VMOV.U8         R1, D28[6]
444F82:  LSLS            R1, R1, #0x1F
444F84:  ITTT NE
444F86:  VMOVNE.32       R1, D31[0]
444F8A:  ADDNE           R1, R3
444F8C:  STRBNE.W        R6, [R1,#0x68]
444F90:  VMOV.U8         R1, D28[7]
444F94:  LSLS            R1, R1, #0x1F
444F96:  ITTT NE
444F98:  VMOVNE.32       R1, D31[1]
444F9C:  ADDNE           R1, R3
444F9E:  STRBNE.W        R6, [R1,#0x68]
444FA2:  VADD.I32        Q15, Q8, Q12
444FA6:  VMOV.U8         R1, D29[0]
444FAA:  VADD.I32        Q8, Q8, Q13
444FAE:  LSLS            R1, R1, #0x1F
444FB0:  ITTT NE
444FB2:  VMOVNE.32       R1, D0[0]
444FB6:  ADDNE           R1, R3
444FB8:  STRBNE.W        R6, [R1,#0x68]
444FBC:  VMOV.U8         R1, D29[1]
444FC0:  LSLS            R1, R1, #0x1F
444FC2:  ITTT NE
444FC4:  VMOVNE.32       R1, D0[1]
444FC8:  ADDNE           R1, R3
444FCA:  STRBNE.W        R6, [R1,#0x68]
444FCE:  VMOV.U8         R1, D29[2]
444FD2:  LSLS            R1, R1, #0x1F
444FD4:  ITTT NE
444FD6:  VMOVNE.32       R1, D1[0]
444FDA:  ADDNE           R1, R3
444FDC:  STRBNE.W        R6, [R1,#0x68]
444FE0:  VMOV.U8         R1, D29[3]
444FE4:  LSLS            R1, R1, #0x1F
444FE6:  ITTT NE
444FE8:  VMOVNE.32       R1, D1[1]
444FEC:  ADDNE           R1, R3
444FEE:  STRBNE.W        R6, [R1,#0x68]
444FF2:  VMOV.U8         R1, D29[4]
444FF6:  LSLS            R1, R1, #0x1F
444FF8:  ITTT NE
444FFA:  VMOVNE.32       R1, D30[0]
444FFE:  ADDNE           R1, R3
445000:  STRBNE.W        R6, [R1,#0x68]
445004:  VMOV.U8         R1, D29[5]
445008:  LSLS            R1, R1, #0x1F
44500A:  ITTT NE
44500C:  VMOVNE.32       R1, D30[1]
445010:  ADDNE           R1, R3
445012:  STRBNE.W        R6, [R1,#0x68]
445016:  VMOV.U8         R1, D29[6]
44501A:  LSLS            R1, R1, #0x1F
44501C:  ITTT NE
44501E:  VMOVNE.32       R1, D31[0]
445022:  ADDNE           R1, R3
445024:  STRBNE.W        R6, [R1,#0x68]
445028:  VMOV.U8         R1, D29[7]
44502C:  LSLS            R1, R1, #0x1F
44502E:  ITTT NE
445030:  VMOVNE.32       R1, D31[1]
445034:  ADDNE           R1, R3
445036:  STRBNE.W        R6, [R1,#0x68]
44503A:  SUBS            R2, #0x10
44503C:  BNE.W           loc_444EEA
445040:  CMP             R10, R12
445042:  BNE             loc_44504A
445044:  B               loc_445070
445046:  MOV.W           R12, #0
44504A:  RSB.W           R2, LR, LR,LSL#4
44504E:  SUB.W           R1, R8, R12
445052:  SUBS            R1, R1, R0
445054:  ADD.W           R2, R12, R2,LSL#1
445058:  ADD             R0, R2
44505A:  MOVS            R2, #8
44505C:  ADD             R0, R9
44505E:  ADDS            R0, #0x4A ; 'J'
445060:  LDRB            R3, [R0]
445062:  CMP             R3, #0
445064:  IT EQ
445066:  STRBEQ          R2, [R0]
445068:  SUBS            R1, #1
44506A:  ADD.W           R0, R0, #1
44506E:  BNE             loc_445060
445070:  LDR.W           R6, [R9,#0x14]
445074:  LDRSB.W         R1, [R6,#0xA]
445078:  ADDS            R0, R1, #1
44507A:  BEQ             loc_4450B8
44507C:  LDRSB.W         R3, [R6,#0xB]
445080:  SUBS            R0, R3, R1
445082:  CMP             R0, #1
445084:  BLT             loc_4450B8
445086:  LDRB            R2, [R6,#3]
445088:  SUBS            R5, R2, #1
44508A:  ORRS            R5, R1
44508C:  CMP             R5, #0
44508E:  BLT             loc_4450B8
445090:  LDRB            R5, [R6,#2]
445092:  CMP             R3, R5
445094:  BGT             loc_4450B8
445096:  RSB.W           R1, R1, R1,LSL#4
44509A:  ADD.W           R1, R2, R1,LSL#1
44509E:  MOVS            R2, #8
4450A0:  ADD             R1, R9
4450A2:  ADDS            R1, #0x67 ; 'g'
4450A4:  LDRB            R3, [R1]
4450A6:  CMP             R3, #0
4450A8:  IT EQ
4450AA:  STRBEQ          R2, [R1]
4450AC:  SUBS            R0, #1
4450AE:  ADD.W           R1, R1, #0x1E
4450B2:  BNE             loc_4450A4
4450B4:  LDR.W           R6, [R9,#0x14]
4450B8:  LDRSB.W         R0, [R6,#0xC]
4450BC:  ADDS            R1, R0, #1
4450BE:  BEQ.W           loc_44529A
4450C2:  CMP             R0, #0
4450C4:  ITTT GE
4450C6:  LDRSBGE.W       R1, [R6,#0xD]
4450CA:  SUBGE           R2, R1, R0
4450CC:  CMPGE           R2, #1
4450CE:  BLT.W           loc_44529A
4450D2:  LDRB            R3, [R6,#2]
4450D4:  CMP             R3, #0
4450D6:  BEQ.W           loc_44529A
4450DA:  LDRB            R3, [R6,#3]
4450DC:  CMP             R1, R3
4450DE:  BGT.W           loc_44529A
4450E2:  CMP             R2, #0x10
4450E4:  BCC.W           loc_445274
4450E8:  BIC.W           R12, R2, #0xF
4450EC:  CMP.W           R12, #0
4450F0:  BEQ.W           loc_445274
4450F4:  ADR.W           R3, dword_445750
4450F8:  VMOV.I32        Q13, #0x10
4450FC:  VLD1.64         {D16-D17}, [R3@128]
445100:  ADR.W           R3, dword_445760
445104:  MOVS            R6, #9
445106:  VLD1.64         {D18-D19}, [R3@128]
44510A:  ADR.W           R3, dword_445770
44510E:  VLD1.64         {D20-D21}, [R3@128]
445112:  ADR.W           R3, dword_445780
445116:  VLD1.64         {D22-D23}, [R3@128]
44511A:  MOV             R3, R12
44511C:  VDUP.32         Q12, R0
445120:  VADD.I32        Q0, Q11, Q12
445124:  VADD.I32        Q15, Q10, Q12
445128:  VADD.I32        Q10, Q10, Q13
44512C:  VMOV.32         R5, D0[0]
445130:  VADD.I32        Q11, Q11, Q13
445134:  ADD             R5, R9
445136:  ADDS            R5, #0x68 ; 'h'
445138:  VLD1.8          {D28-D29}, [R5]
44513C:  VCEQ.I8         Q14, Q14, #0
445140:  VMOV.U8         R4, D28[0]
445144:  LSLS            R4, R4, #0x1F
445146:  IT NE
445148:  STRBNE          R6, [R5]
44514A:  VMOV.U8         R5, D28[1]
44514E:  LSLS            R5, R5, #0x1F
445150:  ITTT NE
445152:  VMOVNE.32       R5, D0[1]
445156:  ADDNE           R5, R9
445158:  STRBNE.W        R6, [R5,#0x68]
44515C:  VMOV.U8         R5, D28[2]
445160:  LSLS            R5, R5, #0x1F
445162:  ITTT NE
445164:  VMOVNE.32       R5, D1[0]
445168:  ADDNE           R5, R9
44516A:  STRBNE.W        R6, [R5,#0x68]
44516E:  VMOV.U8         R5, D28[3]
445172:  LSLS            R5, R5, #0x1F
445174:  ITTT NE
445176:  VMOVNE.32       R5, D1[1]
44517A:  ADDNE           R5, R9
44517C:  STRBNE.W        R6, [R5,#0x68]
445180:  VADD.I32        Q0, Q9, Q12
445184:  VMOV.U8         R5, D28[4]
445188:  VADD.I32        Q9, Q9, Q13
44518C:  LSLS            R5, R5, #0x1F
44518E:  ITTT NE
445190:  VMOVNE.32       R5, D30[0]
445194:  ADDNE           R5, R9
445196:  STRBNE.W        R6, [R5,#0x68]
44519A:  VMOV.U8         R5, D28[5]
44519E:  LSLS            R5, R5, #0x1F
4451A0:  ITTT NE
4451A2:  VMOVNE.32       R5, D30[1]
4451A6:  ADDNE           R5, R9
4451A8:  STRBNE.W        R6, [R5,#0x68]
4451AC:  VMOV.U8         R5, D28[6]
4451B0:  LSLS            R5, R5, #0x1F
4451B2:  ITTT NE
4451B4:  VMOVNE.32       R5, D31[0]
4451B8:  ADDNE           R5, R9
4451BA:  STRBNE.W        R6, [R5,#0x68]
4451BE:  VMOV.U8         R5, D28[7]
4451C2:  LSLS            R5, R5, #0x1F
4451C4:  ITTT NE
4451C6:  VMOVNE.32       R5, D31[1]
4451CA:  ADDNE           R5, R9
4451CC:  STRBNE.W        R6, [R5,#0x68]
4451D0:  VADD.I32        Q15, Q8, Q12
4451D4:  VMOV.U8         R5, D29[0]
4451D8:  VADD.I32        Q8, Q8, Q13
4451DC:  LSLS            R5, R5, #0x1F
4451DE:  ITTT NE
4451E0:  VMOVNE.32       R5, D0[0]
4451E4:  ADDNE           R5, R9
4451E6:  STRBNE.W        R6, [R5,#0x68]
4451EA:  VMOV.U8         R5, D29[1]
4451EE:  LSLS            R5, R5, #0x1F
4451F0:  ITTT NE
4451F2:  VMOVNE.32       R5, D0[1]
4451F6:  ADDNE           R5, R9
4451F8:  STRBNE.W        R6, [R5,#0x68]
4451FC:  VMOV.U8         R5, D29[2]
445200:  LSLS            R5, R5, #0x1F
445202:  ITTT NE
445204:  VMOVNE.32       R5, D1[0]
445208:  ADDNE           R5, R9
44520A:  STRBNE.W        R6, [R5,#0x68]
44520E:  VMOV.U8         R5, D29[3]
445212:  LSLS            R5, R5, #0x1F
445214:  ITTT NE
445216:  VMOVNE.32       R5, D1[1]
44521A:  ADDNE           R5, R9
44521C:  STRBNE.W        R6, [R5,#0x68]
445220:  VMOV.U8         R5, D29[4]
445224:  LSLS            R5, R5, #0x1F
445226:  ITTT NE
445228:  VMOVNE.32       R5, D30[0]
44522C:  ADDNE           R5, R9
44522E:  STRBNE.W        R6, [R5,#0x68]
445232:  VMOV.U8         R5, D29[5]
445236:  LSLS            R5, R5, #0x1F
445238:  ITTT NE
44523A:  VMOVNE.32       R5, D30[1]
44523E:  ADDNE           R5, R9
445240:  STRBNE.W        R6, [R5,#0x68]
445244:  VMOV.U8         R5, D29[6]
445248:  LSLS            R5, R5, #0x1F
44524A:  ITTT NE
44524C:  VMOVNE.32       R5, D31[0]
445250:  ADDNE           R5, R9
445252:  STRBNE.W        R6, [R5,#0x68]
445256:  VMOV.U8         R5, D29[7]
44525A:  LSLS            R5, R5, #0x1F
44525C:  ITTT NE
44525E:  VMOVNE.32       R5, D31[1]
445262:  ADDNE           R5, R9
445264:  STRBNE.W        R6, [R5,#0x68]
445268:  SUBS            R3, #0x10
44526A:  BNE.W           loc_445120
44526E:  CMP             R2, R12
445270:  BNE             loc_445278
445272:  B               loc_445296
445274:  MOV.W           R12, #0
445278:  SUB.W           R1, R1, R12
44527C:  MOVS            R2, #9
44527E:  SUBS            R1, R1, R0
445280:  ADD             R0, R12
445282:  ADD             R0, R9
445284:  ADDS            R0, #0x68 ; 'h'
445286:  LDRB            R3, [R0]
445288:  CMP             R3, #0
44528A:  IT EQ
44528C:  STRBEQ          R2, [R0]
44528E:  SUBS            R1, #1
445290:  ADD.W           R0, R0, #1
445294:  BNE             loc_445286
445296:  LDR.W           R6, [R9,#0x14]
44529A:  LDRSB.W         R0, [R6,#0xE]
44529E:  ADDS            R1, R0, #1
4452A0:  BEQ.W           loc_445498
4452A4:  LDRSB.W         R8, [R6,#0xF]
4452A8:  SUB.W           R10, R8, R0
4452AC:  CMP.W           R10, #1
4452B0:  BLT.W           loc_445498
4452B4:  LDRB.W          LR, [R6,#2]
4452B8:  SUB.W           R5, LR, #1
4452BC:  ORR.W           R1, R5, R0
4452C0:  CMP             R1, #0
4452C2:  BLT.W           loc_445498
4452C6:  LDRB            R1, [R6,#3]
4452C8:  CMP             R8, R1
4452CA:  BGT.W           loc_445498
4452CE:  CMP.W           R10, #0x10
4452D2:  BCC.W           loc_44546A
4452D6:  BIC.W           R12, R10, #0xF
4452DA:  CMP.W           R12, #0
4452DE:  BEQ.W           loc_44546A
4452E2:  ADR.W           R1, dword_445750
4452E6:  VMOV.I32        Q13, #0x10
4452EA:  VLD1.64         {D16-D17}, [R1@128]
4452EE:  ADR.W           R1, dword_445760
4452F2:  MOVS            R6, #9
4452F4:  MOV             R2, R12
4452F6:  VLD1.64         {D18-D19}, [R1@128]
4452FA:  ADR.W           R1, dword_445770
4452FE:  VLD1.64         {D20-D21}, [R1@128]
445302:  ADR.W           R1, dword_445780
445306:  VLD1.64         {D22-D23}, [R1@128]
44530A:  VDUP.32         Q12, R0
44530E:  VADD.I32        Q0, Q11, Q12
445312:  RSB.W           R3, R5, R5,LSL#4
445316:  VADD.I32        Q15, Q10, Q12
44531A:  ADD.W           R3, R9, R3,LSL#1
44531E:  VADD.I32        Q10, Q10, Q13
445322:  VMOV.32         R1, D0[0]
445326:  VADD.I32        Q11, Q11, Q13
44532A:  ADD             R1, R3
44532C:  ADDS            R1, #0x68 ; 'h'
44532E:  VLD1.8          {D28-D29}, [R1]
445332:  VCEQ.I8         Q14, Q14, #0
445336:  VMOV.U8         R4, D28[0]
44533A:  LSLS            R4, R4, #0x1F
44533C:  IT NE
44533E:  STRBNE          R6, [R1]
445340:  VMOV.U8         R1, D28[1]
445344:  LSLS            R1, R1, #0x1F
445346:  ITTT NE
445348:  VMOVNE.32       R1, D0[1]
44534C:  ADDNE           R1, R3
44534E:  STRBNE.W        R6, [R1,#0x68]
445352:  VMOV.U8         R1, D28[2]
445356:  LSLS            R1, R1, #0x1F
445358:  ITTT NE
44535A:  VMOVNE.32       R1, D1[0]
44535E:  ADDNE           R1, R3
445360:  STRBNE.W        R6, [R1,#0x68]
445364:  VMOV.U8         R1, D28[3]
445368:  LSLS            R1, R1, #0x1F
44536A:  ITTT NE
44536C:  VMOVNE.32       R1, D1[1]
445370:  ADDNE           R1, R3
445372:  STRBNE.W        R6, [R1,#0x68]
445376:  VADD.I32        Q0, Q9, Q12
44537A:  VMOV.U8         R1, D28[4]
44537E:  VADD.I32        Q9, Q9, Q13
445382:  LSLS            R1, R1, #0x1F
445384:  ITTT NE
445386:  VMOVNE.32       R1, D30[0]
44538A:  ADDNE           R1, R3
44538C:  STRBNE.W        R6, [R1,#0x68]
445390:  VMOV.U8         R1, D28[5]
445394:  LSLS            R1, R1, #0x1F
445396:  ITTT NE
445398:  VMOVNE.32       R1, D30[1]
44539C:  ADDNE           R1, R3
44539E:  STRBNE.W        R6, [R1,#0x68]
4453A2:  VMOV.U8         R1, D28[6]
4453A6:  LSLS            R1, R1, #0x1F
4453A8:  ITTT NE
4453AA:  VMOVNE.32       R1, D31[0]
4453AE:  ADDNE           R1, R3
4453B0:  STRBNE.W        R6, [R1,#0x68]
4453B4:  VMOV.U8         R1, D28[7]
4453B8:  LSLS            R1, R1, #0x1F
4453BA:  ITTT NE
4453BC:  VMOVNE.32       R1, D31[1]
4453C0:  ADDNE           R1, R3
4453C2:  STRBNE.W        R6, [R1,#0x68]
4453C6:  VADD.I32        Q15, Q8, Q12
4453CA:  VMOV.U8         R1, D29[0]
4453CE:  VADD.I32        Q8, Q8, Q13
4453D2:  LSLS            R1, R1, #0x1F
4453D4:  ITTT NE
4453D6:  VMOVNE.32       R1, D0[0]
4453DA:  ADDNE           R1, R3
4453DC:  STRBNE.W        R6, [R1,#0x68]
4453E0:  VMOV.U8         R1, D29[1]
4453E4:  LSLS            R1, R1, #0x1F
4453E6:  ITTT NE
4453E8:  VMOVNE.32       R1, D0[1]
4453EC:  ADDNE           R1, R3
4453EE:  STRBNE.W        R6, [R1,#0x68]
4453F2:  VMOV.U8         R1, D29[2]
4453F6:  LSLS            R1, R1, #0x1F
4453F8:  ITTT NE
4453FA:  VMOVNE.32       R1, D1[0]
4453FE:  ADDNE           R1, R3
445400:  STRBNE.W        R6, [R1,#0x68]
445404:  VMOV.U8         R1, D29[3]
445408:  LSLS            R1, R1, #0x1F
44540A:  ITTT NE
44540C:  VMOVNE.32       R1, D1[1]
445410:  ADDNE           R1, R3
445412:  STRBNE.W        R6, [R1,#0x68]
445416:  VMOV.U8         R1, D29[4]
44541A:  LSLS            R1, R1, #0x1F
44541C:  ITTT NE
44541E:  VMOVNE.32       R1, D30[0]
445422:  ADDNE           R1, R3
445424:  STRBNE.W        R6, [R1,#0x68]
445428:  VMOV.U8         R1, D29[5]
44542C:  LSLS            R1, R1, #0x1F
44542E:  ITTT NE
445430:  VMOVNE.32       R1, D30[1]
445434:  ADDNE           R1, R3
445436:  STRBNE.W        R6, [R1,#0x68]
44543A:  VMOV.U8         R1, D29[6]
44543E:  LSLS            R1, R1, #0x1F
445440:  ITTT NE
445442:  VMOVNE.32       R1, D31[0]
445446:  ADDNE           R1, R3
445448:  STRBNE.W        R6, [R1,#0x68]
44544C:  VMOV.U8         R1, D29[7]
445450:  LSLS            R1, R1, #0x1F
445452:  ITTT NE
445454:  VMOVNE.32       R1, D31[1]
445458:  ADDNE           R1, R3
44545A:  STRBNE.W        R6, [R1,#0x68]
44545E:  SUBS            R2, #0x10
445460:  BNE.W           loc_44530E
445464:  CMP             R10, R12
445466:  BNE             loc_44546E
445468:  B               loc_445494
44546A:  MOV.W           R12, #0
44546E:  RSB.W           R2, LR, LR,LSL#4
445472:  SUB.W           R1, R8, R12
445476:  SUBS            R1, R1, R0
445478:  ADD.W           R2, R12, R2,LSL#1
44547C:  ADD             R0, R2
44547E:  MOVS            R2, #9
445480:  ADD             R0, R9
445482:  ADDS            R0, #0x4A ; 'J'
445484:  LDRB            R3, [R0]
445486:  CMP             R3, #0
445488:  IT EQ
44548A:  STRBEQ          R2, [R0]
44548C:  SUBS            R1, #1
44548E:  ADD.W           R0, R0, #1
445492:  BNE             loc_445484
445494:  LDR.W           R6, [R9,#0x14]
445498:  LDRSB.W         R1, [R6,#0x10]
44549C:  ADDS            R0, R1, #1
44549E:  BEQ             loc_4454D8
4454A0:  LDRSB.W         R2, [R6,#0x11]
4454A4:  SUBS            R0, R2, R1
4454A6:  CMP             R0, #1
4454A8:  BLT             loc_4454D8
4454AA:  LDRB            R3, [R6,#3]
4454AC:  SUBS            R5, R3, #1
4454AE:  ORRS            R5, R1
4454B0:  CMP             R5, #0
4454B2:  BLT             loc_4454D8
4454B4:  LDRB            R6, [R6,#2]
4454B6:  CMP             R2, R6
4454B8:  BGT             loc_4454D8
4454BA:  RSB.W           R1, R1, R1,LSL#4
4454BE:  MOVS            R2, #9
4454C0:  ADD.W           R1, R3, R1,LSL#1
4454C4:  ADD             R1, R9
4454C6:  ADDS            R1, #0x67 ; 'g'
4454C8:  LDRB            R3, [R1]
4454CA:  CMP             R3, #0
4454CC:  IT EQ
4454CE:  STRBEQ          R2, [R1]
4454D0:  SUBS            R0, #1
4454D2:  ADD.W           R1, R1, #0x1E
4454D6:  BNE             loc_4454C8
4454D8:  ADR             R2, dword_445750
4454DA:  VMOV.I32        Q12, #0x10
4454DE:  VLD1.64         {D16-D17}, [R2@128]
4454E2:  ADR             R2, dword_445760
4454E4:  MOV.W           LR, #0
4454E8:  MOVS            R1, #0xB
4454EA:  VLD1.64         {D18-D19}, [R2@128]
4454EE:  ADR             R2, dword_445770
4454F0:  VLD1.64         {D20-D21}, [R2@128]
4454F4:  ADR             R2, dword_445780
4454F6:  VLD1.64         {D22-D23}, [R2@128]
4454FA:  LDR.W           R3, [R9,#0x14]
4454FE:  ADD.W           R6, R3, LR
445502:  LDRSB.W         R12, [R6,#0x12]
445506:  UXTB.W          R5, R12
44550A:  CMP             R5, #0xFF
44550C:  ITTT NE
44550E:  LDRSBNE.W       R2, [R6,#0x15]
445512:  UXTBNE          R4, R2
445514:  CMPNE           R4, #0xFF
445516:  BEQ.W           loc_445728
44551A:  ORRS            R5, R4
44551C:  SXTB            R5, R5
44551E:  CMP             R5, #0
445520:  BLT.W           loc_445728
445524:  LDRSB.W         R8, [R6,#0x18]
445528:  LDRB            R5, [R3,#2]
44552A:  ADD.W           R4, R8, R12
44552E:  CMP             R4, R5
445530:  BGT.W           loc_445728
445534:  CMP.W           R8, #1
445538:  BLT.W           loc_445728
44553C:  LDRSB.W         R4, [R6,#0x1B]
445540:  LDRB            R3, [R3,#3]
445542:  ADDS            R6, R4, R2
445544:  MOV             R0, R4
445546:  CMP             R6, R3
445548:  STR             R0, [SP,#0x40+var_34]
44554A:  BGT.W           loc_445728
44554E:  RSB.W           R3, R12, R12,LSL#4
445552:  LDR             R4, [SP,#0x40+var_34]
445554:  LDR             R0, [SP,#0x40+var_40]
445556:  VDUP.32         Q13, R2
44555A:  ADD.W           R2, R2, R3,LSL#1
44555E:  BIC.W           R10, R4, #0xF
445562:  ADDS            R5, R0, R2
445564:  UXTB.W          R11, R4
445568:  MOVS            R2, #0
44556A:  STRD.W          R8, R12, [SP,#0x40+var_3C]
44556E:  SXTB.W          R3, R11
445572:  CMP             R3, #1
445574:  BLT.W           loc_44571E
445578:  MOVS            R6, #0
44557A:  CMP.W           R11, #0x10
44557E:  BCC.W           loc_445708
445582:  CMP.W           R10, #0
445586:  BEQ.W           loc_445708
44558A:  VMOV            Q14, Q11
44558E:  ADD.W           R3, R2, R12
445592:  VMOV            Q15, Q10
445596:  MOV             R6, R10
445598:  VMOV            Q0, Q9
44559C:  VMOV            Q1, Q8
4455A0:  VADD.I32        Q4, Q14, Q13
4455A4:  RSB.W           R0, R3, R3,LSL#4
4455A8:  VADD.I32        Q3, Q15, Q13
4455AC:  ADD.W           R8, R9, R0,LSL#1
4455B0:  VADD.I32        Q15, Q15, Q12
4455B4:  VMOV.32         R4, D8[0]
4455B8:  VADD.I32        Q14, Q14, Q12
4455BC:  ADD.W           R0, R8, R4
4455C0:  ADD.W           R12, R0, #0x68 ; 'h'
4455C4:  VLD1.8          {D4-D5}, [R12]
4455C8:  VCEQ.I8         Q2, Q2, #0
4455CC:  VMOV.U8         R0, D4[0]
4455D0:  LSLS            R0, R0, #0x1F
4455D2:  VMOV.U8         R0, D4[1]
4455D6:  IT NE
4455D8:  STRBNE.W        R1, [R12]
4455DC:  LSLS            R0, R0, #0x1F
4455DE:  ITTT NE
4455E0:  VMOVNE.32       R0, D8[1]
4455E4:  ADDNE           R0, R8
4455E6:  STRBNE.W        R1, [R0,#0x68]
4455EA:  VMOV.U8         R0, D4[2]
4455EE:  LSLS            R0, R0, #0x1F
4455F0:  ITTT NE
4455F2:  VMOVNE.32       R0, D9[0]
4455F6:  ADDNE           R0, R8
4455F8:  STRBNE.W        R1, [R0,#0x68]
4455FC:  VMOV.U8         R0, D4[3]
445600:  LSLS            R0, R0, #0x1F
445602:  ITTT NE
445604:  VMOVNE.32       R0, D9[1]
445608:  ADDNE           R0, R8
44560A:  STRBNE.W        R1, [R0,#0x68]
44560E:  VADD.I32        Q4, Q0, Q13
445612:  VMOV.U8         R0, D4[4]
445616:  VADD.I32        Q0, Q0, Q12
44561A:  LSLS            R0, R0, #0x1F
44561C:  ITTT NE
44561E:  VMOVNE.32       R0, D6[0]
445622:  ADDNE           R0, R8
445624:  STRBNE.W        R1, [R0,#0x68]
445628:  VMOV.U8         R0, D4[5]
44562C:  LSLS            R0, R0, #0x1F
44562E:  ITTT NE
445630:  VMOVNE.32       R0, D6[1]
445634:  ADDNE           R0, R8
445636:  STRBNE.W        R1, [R0,#0x68]
44563A:  VMOV.U8         R0, D4[6]
44563E:  LSLS            R0, R0, #0x1F
445640:  ITTT NE
445642:  VMOVNE.32       R0, D7[0]
445646:  ADDNE           R0, R8
445648:  STRBNE.W        R1, [R0,#0x68]
44564C:  VMOV.U8         R0, D4[7]
445650:  LSLS            R0, R0, #0x1F
445652:  ITTT NE
445654:  VMOVNE.32       R0, D7[1]
445658:  ADDNE           R0, R8
44565A:  STRBNE.W        R1, [R0,#0x68]
44565E:  VADD.I32        Q3, Q1, Q13
445662:  VMOV.U8         R0, D5[0]
445666:  VADD.I32        Q1, Q1, Q12
44566A:  LSLS            R0, R0, #0x1F
44566C:  ITTT NE
44566E:  VMOVNE.32       R0, D8[0]
445672:  ADDNE           R0, R8
445674:  STRBNE.W        R1, [R0,#0x68]
445678:  VMOV.U8         R0, D5[1]
44567C:  LSLS            R0, R0, #0x1F
44567E:  ITTT NE
445680:  VMOVNE.32       R0, D8[1]
445684:  ADDNE           R0, R8
445686:  STRBNE.W        R1, [R0,#0x68]
44568A:  VMOV.U8         R0, D5[2]
44568E:  LSLS            R0, R0, #0x1F
445690:  ITTT NE
445692:  VMOVNE.32       R0, D9[0]
445696:  ADDNE           R0, R8
445698:  STRBNE.W        R1, [R0,#0x68]
44569C:  VMOV.U8         R0, D5[3]
4456A0:  LSLS            R0, R0, #0x1F
4456A2:  ITTT NE
4456A4:  VMOVNE.32       R0, D9[1]
4456A8:  ADDNE           R0, R8
4456AA:  STRBNE.W        R1, [R0,#0x68]
4456AE:  VMOV.U8         R0, D5[4]
4456B2:  LSLS            R0, R0, #0x1F
4456B4:  ITTT NE
4456B6:  VMOVNE.32       R0, D6[0]
4456BA:  ADDNE           R0, R8
4456BC:  STRBNE.W        R1, [R0,#0x68]
4456C0:  VMOV.U8         R0, D5[5]
4456C4:  LSLS            R0, R0, #0x1F
4456C6:  ITTT NE
4456C8:  VMOVNE.32       R0, D6[1]
4456CC:  ADDNE           R0, R8
4456CE:  STRBNE.W        R1, [R0,#0x68]
4456D2:  VMOV.U8         R0, D5[6]
4456D6:  LSLS            R0, R0, #0x1F
4456D8:  ITTT NE
4456DA:  VMOVNE.32       R0, D7[0]
4456DE:  ADDNE           R0, R8
4456E0:  STRBNE.W        R1, [R0,#0x68]
4456E4:  VMOV.U8         R0, D5[7]
4456E8:  LSLS            R0, R0, #0x1F
4456EA:  ITTT NE
4456EC:  VMOVNE.32       R0, D7[1]
4456F0:  ADDNE           R0, R8
4456F2:  STRBNE.W        R1, [R0,#0x68]
4456F6:  SUBS            R6, #0x10
4456F8:  BNE.W           loc_4455A0
4456FC:  LDR             R0, [SP,#0x40+var_34]
4456FE:  MOV             R6, R10
445700:  LDRD.W          R8, R12, [SP,#0x40+var_3C]
445704:  CMP             R10, R0
445706:  BEQ             loc_44571E
445708:  LDR             R0, [SP,#0x40+var_34]
44570A:  SUBS            R3, R0, R6
44570C:  ADD             R6, R5
44570E:  LDRB            R0, [R6]
445710:  CMP             R0, #0
445712:  IT EQ
445714:  STRBEQ          R1, [R6]
445716:  SUBS            R3, #1
445718:  ADD.W           R6, R6, #1
44571C:  BNE             loc_44570E
44571E:  ADDS            R2, #1
445720:  ADDS            R5, #0x1E
445722:  CMP             R2, R8
445724:  BNE.W           loc_44556E
445728:  ADD.W           LR, LR, #1
44572C:  CMP.W           LR, #3
445730:  BNE.W           loc_4454FA
445734:  ADD             SP, SP, #0x10
445736:  VPOP            {D8-D9}
44573A:  ADD             SP, SP, #4
44573C:  POP.W           {R8-R11}
445740:  POP             {R4-R7,PC}
