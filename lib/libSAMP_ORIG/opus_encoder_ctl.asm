; =========================================================
; Game Engine Function: opus_encoder_ctl
; Address            : 0xC7D18 - 0xC8370
; =========================================================

C7D18:  SUB             SP, SP, #8
C7D1A:  PUSH            {R4-R7,LR}
C7D1C:  ADD             R7, SP, #0xC
C7D1E:  PUSH.W          {R11}
C7D22:  SUB             SP, SP, #0x70
C7D24:  MOV             R4, R0
C7D26:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xC7D30)
C7D2A:  STR             R3, [R7,#var_sC]
C7D2C:  ADD             R0, PC; __stack_chk_guard_ptr
C7D2E:  LDR             R0, [R0]; __stack_chk_guard
C7D30:  LDR             R0, [R0]
C7D32:  STR             R2, [R7,#var_s8]
C7D34:  MOVW            R2, #0x271E
C7D38:  STR             R0, [SP,#0x80+var_14]
C7D3A:  ADD.W           R0, R7, #8
C7D3E:  STR             R0, [SP,#0x80+var_18]
C7D40:  CMP             R1, R2
C7D42:  LDR             R0, [R4]
C7D44:  ADD.W           R5, R4, R0
C7D48:  MOV             R0, #0xFFFFFFFB
C7D4C:  BGT.W           loc_C7DF2
C7D50:  SUB.W           R1, R1, #0xFA0; switch 50 cases
C7D54:  CMP             R1, #0x31 ; '1'
C7D56:  BHI.W           def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7D5A:  TBH.W           [PC,R1,LSL#1]; switch jump
C7D5E:  DCW 0x32; jump table for switch statement
C7D60:  DCW 0x80
C7D62:  DCW 0x89
C7D64:  DCW 0x9E
C7D66:  DCW 0xC7
C7D68:  DCW 0xD3
C7D6A:  DCW 0xDD
C7D6C:  DCW 0xEB
C7D6E:  DCW 0xF5
C7D70:  DCW 0x10A
C7D72:  DCW 0x114
C7D74:  DCW 0x120
C7D76:  DCW 0x129
C7D78:  DCW 0x133
C7D7A:  DCW 0x13C
C7D7C:  DCW 0x148
C7D7E:  DCW 0x151
C7D80:  DCW 0x15C
C7D82:  DCW 0x2E1
C7D84:  DCW 0x2E1
C7D86:  DCW 0x166
C7D88:  DCW 0x171
C7D8A:  DCW 0x17B
C7D8C:  DCW 0x187
C7D8E:  DCW 0x190
C7D90:  DCW 0x19F
C7D92:  DCW 0x2E1
C7D94:  DCW 0x1A8
C7D96:  DCW 0x1C3
C7D98:  DCW 0x1F3
C7D9A:  DCW 0x2E1
C7D9C:  DCW 0x1FD
C7D9E:  DCW 0x2E1
C7DA0:  DCW 0x2E1
C7DA2:  DCW 0x2E1
C7DA4:  DCW 0x2E1
C7DA6:  DCW 0x207
C7DA8:  DCW 0x214
C7DAA:  DCW 0x2E1
C7DAC:  DCW 0x2E1
C7DAE:  DCW 0x21E
C7DB0:  DCW 0x22C
C7DB2:  DCW 0x236
C7DB4:  DCW 0x240
C7DB6:  DCW 0x2E1
C7DB8:  DCW 0x2E1
C7DBA:  DCW 0x249
C7DBC:  DCW 0x254
C7DBE:  DCW 0x2E1
C7DC0:  DCW 0x262
C7DC2:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4000
C7DC4:  ADDS            R1, R0, #4
C7DC6:  STR             R1, [SP,#0x80+var_18]
C7DC8:  LDR             R1, [R0]
C7DCA:  MOV.W           R0, #0xFFFFFFFF
C7DCE:  SUB.W           R2, R1, #0x800
C7DD2:  CMP             R2, #3
C7DD4:  BHI.W           def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7DD8:  CMP             R2, #2
C7DDA:  BEQ.W           def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7DDE:  LDR.W           R0, [R4,#0xF8]
C7DE2:  CBNZ            R0, loc_C7DEC
C7DE4:  LDR             R0, [R4,#0x6C]
C7DE6:  CMP             R0, R1
C7DE8:  BNE.W           loc_C831C
C7DEC:  STR             R1, [R4,#0x6C]
C7DEE:  MOVS            R0, #0
C7DF0:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7DF2:  MOVW            R2, #0x2AF9
C7DF6:  CMP             R1, R2
C7DF8:  BGT             loc_C7E2C
C7DFA:  MOVW            R2, #0x271F
C7DFE:  CMP             R1, R2
C7E00:  BEQ.W           loc_C8280
C7E04:  MOVW            R2, #0x2728
C7E08:  CMP             R1, R2
C7E0A:  BEQ.W           loc_C8294
C7E0E:  MOVW            R2, #0x272A
C7E12:  CMP             R1, R2
C7E14:  BNE.W           def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7E18:  LDR             R0, [SP,#0x80+var_18]
C7E1A:  ADDS            R1, R0, #4
C7E1C:  STR             R1, [SP,#0x80+var_18]
C7E1E:  LDR             R2, [R0]
C7E20:  MOV             R0, R5
C7E22:  STR.W           R2, [R4,#0xFC]
C7E26:  MOVW            R1, #0x272A
C7E2A:  B               loc_C82A6
C7E2C:  MOVW            R2, #0x2AFA
C7E30:  CMP             R1, R2
C7E32:  BEQ.W           loc_C82AC
C7E36:  MOVW            R2, #0x2B0A
C7E3A:  CMP             R1, R2
C7E3C:  BEQ.W           loc_C82CA
C7E40:  MOVW            R2, #0x2B0B
C7E44:  CMP             R1, R2
C7E46:  BNE.W           def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7E4A:  LDR             R0, [SP,#0x80+var_18]
C7E4C:  ADDS            R1, R0, #4
C7E4E:  STR             R1, [SP,#0x80+var_18]
C7E50:  LDR             R0, [R0]
C7E52:  CMP             R0, #0
C7E54:  BEQ.W           loc_C831C
C7E58:  LDR.W           R1, [R4,#0x8C]
C7E5C:  B               loc_C830E
C7E5E:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4001
C7E60:  ADDS            R1, R0, #4
C7E62:  STR             R1, [SP,#0x80+var_18]
C7E64:  LDR             R0, [R0]
C7E66:  CMP             R0, #0
C7E68:  BEQ.W           loc_C831C
C7E6C:  LDR             R1, [R4,#0x6C]
C7E6E:  B               loc_C830E
C7E70:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4002
C7E72:  ADDS            R1, R0, #4
C7E74:  STR             R1, [SP,#0x80+var_18]
C7E76:  LDR             R0, [R0]
C7E78:  CMN.W           R0, #0x3E8
C7E7C:  IT NE
C7E7E:  ADDSNE.W        R1, R0, #1
C7E82:  BEQ.W           loc_C8368
C7E86:  CMP             R0, #1
C7E88:  BLT.W           loc_C831C
C7E8C:  CMP.W           R0, #0x1F4
C7E90:  BGT.W           loc_C8356
C7E94:  MOV.W           R0, #0x1F4
C7E98:  B               loc_C8368
C7E9A:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4003
C7E9C:  ADDS            R1, R0, #4
C7E9E:  STR             R1, [SP,#0x80+var_18]
C7EA0:  LDR             R5, [R0]
C7EA2:  CMP             R5, #0
C7EA4:  BEQ.W           loc_C831C
C7EA8:  LDR.W           R1, [R4,#0xE8]
C7EAC:  CBNZ            R1, loc_C7EC4
C7EAE:  LDR.W           R0, [R4,#0x90]
C7EB2:  MOV             R1, #0x51EB851F
C7EBA:  SMMUL.W         R0, R0, R1
C7EBE:  ASRS            R1, R0, #7
C7EC0:  ADD.W           R1, R1, R0,LSR#31
C7EC4:  LDR.W           R0, [R4,#0xA4]
C7EC8:  ADDS            R2, R0, #1
C7ECA:  BEQ.W           loc_C8342
C7ECE:  CMN.W           R0, #0x3E8
C7ED2:  BNE.W           loc_C8350
C7ED6:  LDR             R6, [R4,#0x70]
C7ED8:  LDR.W           R4, [R4,#0x90]
C7EDC:  RSB.W           R0, R4, R4,LSL#4
C7EE0:  LSLS            R0, R0, #2
C7EE2:  BLX             sub_108848
C7EE6:  MLA.W           R0, R6, R4, R0
C7EEA:  B               loc_C8350
C7EEC:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4004
C7EEE:  ADDS            R1, R0, #4
C7EF0:  STR             R1, [SP,#0x80+var_18]
C7EF2:  LDR             R0, [R0]
C7EF4:  SUBW            R1, R0, #0x44D
C7EF8:  CMP             R1, #4
C7EFA:  BHI.W           loc_C831C
C7EFE:  STR.W           R0, [R4,#0x84]
C7F02:  B               loc_C7F5E
C7F04:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4005
C7F06:  ADDS            R1, R0, #4
C7F08:  STR             R1, [SP,#0x80+var_18]
C7F0A:  LDR             R0, [R0]
C7F0C:  CMP             R0, #0
C7F0E:  BEQ.W           loc_C831C
C7F12:  LDR.W           R1, [R4,#0x84]
C7F16:  B               loc_C830E
C7F18:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4006
C7F1A:  ADDS            R1, R0, #4
C7F1C:  STR             R1, [SP,#0x80+var_18]
C7F1E:  LDR             R0, [R0]
C7F20:  CMP             R0, #1
C7F22:  BHI.W           loc_C831C
C7F26:  RSB.W           R1, R0, #1
C7F2A:  STR             R1, [R4,#0x3C]
C7F2C:  STR.W           R0, [R4,#0x94]
C7F30:  MOVS            R0, #0
C7F32:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7F34:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4007
C7F36:  ADDS            R1, R0, #4
C7F38:  STR             R1, [SP,#0x80+var_18]
C7F3A:  LDR             R0, [R0]
C7F3C:  CMP             R0, #0
C7F3E:  BEQ.W           loc_C831C
C7F42:  LDR.W           R1, [R4,#0x94]
C7F46:  B               loc_C830E
C7F48:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4008
C7F4A:  ADDS            R1, R0, #4
C7F4C:  STR             R1, [SP,#0x80+var_18]
C7F4E:  LDR             R0, [R0]
C7F50:  SUBW            R1, R0, #0x44D
C7F54:  CMP             R1, #5
C7F56:  BCS.W           loc_C8314
C7F5A:  STR.W           R0, [R4,#0x80]
C7F5E:  MOVW            R1, #0x44D
C7F62:  CMP             R0, R1
C7F64:  BNE.W           loc_C82E0
C7F68:  MOV.W           R0, #0x1F40
C7F6C:  STR             R0, [R4,#0x14]
C7F6E:  MOVS            R0, #0
C7F70:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7F72:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4009
C7F74:  ADDS            R1, R0, #4
C7F76:  STR             R1, [SP,#0x80+var_18]
C7F78:  LDR             R0, [R0]
C7F7A:  CMP             R0, #0
C7F7C:  BEQ.W           loc_C831C
C7F80:  LDR.W           R1, [R4,#0xEC]
C7F84:  B               loc_C830E
C7F86:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4010
C7F88:  ADDS            R1, R0, #4
C7F8A:  STR             R1, [SP,#0x80+var_18]
C7F8C:  LDR             R2, [R0]
C7F8E:  CMP             R2, #0xA
C7F90:  BHI.W           loc_C831C
C7F94:  STR             R2, [R4,#0x2C]
C7F96:  MOV             R0, R5
C7F98:  MOVW            R1, #0xFAA
C7F9C:  B               loc_C821A
C7F9E:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4011
C7FA0:  ADDS            R1, R0, #4
C7FA2:  STR             R1, [SP,#0x80+var_18]
C7FA4:  LDR             R0, [R0]
C7FA6:  CMP             R0, #0
C7FA8:  BEQ.W           loc_C831C
C7FAC:  LDR             R1, [R4,#0x2C]
C7FAE:  B               loc_C830E
C7FB0:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4012
C7FB2:  ADDS            R1, R0, #4
C7FB4:  STR             R1, [SP,#0x80+var_18]
C7FB6:  LDR             R0, [R0]
C7FB8:  CMP             R0, #1
C7FBA:  BHI.W           loc_C831C
C7FBE:  STR             R0, [R4,#0x30]
C7FC0:  MOVS            R0, #0
C7FC2:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C7FC4:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4013
C7FC6:  ADDS            R1, R0, #4
C7FC8:  STR             R1, [SP,#0x80+var_18]
C7FCA:  LDR             R0, [R0]
C7FCC:  CMP             R0, #0
C7FCE:  BEQ.W           loc_C831C
C7FD2:  LDR             R1, [R4,#0x30]
C7FD4:  B               loc_C830E
C7FD6:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4014
C7FD8:  ADDS            R1, R0, #4
C7FDA:  STR             R1, [SP,#0x80+var_18]
C7FDC:  LDR             R2, [R0]
C7FDE:  CMP             R2, #0x64 ; 'd'
C7FE0:  BHI.W           loc_C831C
C7FE4:  STR             R2, [R4,#0x28]
C7FE6:  MOV             R0, R5
C7FE8:  MOVW            R1, #0xFAE
C7FEC:  B               loc_C821A
C7FEE:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4015
C7FF0:  ADDS            R1, R0, #4
C7FF2:  STR             R1, [SP,#0x80+var_18]
C7FF4:  LDR             R0, [R0]
C7FF6:  CMP             R0, #0
C7FF8:  BEQ.W           loc_C831C
C7FFC:  LDR             R1, [R4,#0x28]
C7FFE:  B               loc_C830E
C8000:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4016
C8002:  ADDS            R1, R0, #4
C8004:  STR             R1, [SP,#0x80+var_18]
C8006:  LDR             R0, [R0]
C8008:  CMP             R0, #1
C800A:  BHI.W           loc_C831C
C800E:  STR.W           R0, [R4,#0xB8]
C8012:  MOVS            R0, #0
C8014:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8016:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4017
C8018:  ADDS            R1, R0, #4
C801A:  STR             R1, [SP,#0x80+var_18]
C801C:  LDR             R0, [R0]
C801E:  CMP             R0, #0
C8020:  BEQ.W           loc_C831C
C8024:  LDR.W           R1, [R4,#0xB8]
C8028:  B               loc_C830E
C802A:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4020
C802C:  ADDS            R1, R0, #4
C802E:  STR             R1, [SP,#0x80+var_18]
C8030:  LDR             R0, [R0]
C8032:  CMP             R0, #1
C8034:  BHI.W           loc_C831C
C8038:  STR.W           R0, [R4,#0x98]
C803C:  MOVS            R0, #0
C803E:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8040:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4021
C8042:  ADDS            R1, R0, #4
C8044:  STR             R1, [SP,#0x80+var_18]
C8046:  LDR             R0, [R0]
C8048:  CMP             R0, #0
C804A:  BEQ.W           loc_C831C
C804E:  LDR.W           R1, [R4,#0x98]
C8052:  B               loc_C830E
C8054:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4022
C8056:  ADDS            R1, R0, #4
C8058:  STR             R1, [SP,#0x80+var_18]
C805A:  LDR             R0, [R0]
C805C:  CMP             R0, #1
C805E:  BLT.W           loc_C82FE
C8062:  LDR             R1, [R4,#0x70]
C8064:  CMP             R0, R1
C8066:  BLE.W           loc_C8304
C806A:  B               loc_C831C
C806C:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4023
C806E:  ADDS            R1, R0, #4
C8070:  STR             R1, [SP,#0x80+var_18]
C8072:  LDR             R0, [R0]
C8074:  CMP             R0, #0
C8076:  BEQ.W           loc_C831C
C807A:  LDR             R1, [R4,#0x78]
C807C:  B               loc_C830E
C807E:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4024
C8080:  ADDS            R1, R0, #4
C8082:  STR             R1, [SP,#0x80+var_18]
C8084:  LDR             R0, [R0]
C8086:  SUBW            R1, R0, #0xBB9
C808A:  CMP             R1, #2
C808C:  BCC             loc_C8096
C808E:  CMN.W           R0, #0x3E8
C8092:  BNE.W           loc_C831C
C8096:  STR             R0, [R4,#0x7C]
C8098:  MOVS            R0, #0
C809A:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C809C:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4025
C809E:  ADDS            R1, R0, #4
C80A0:  STR             R1, [SP,#0x80+var_18]
C80A2:  LDR             R0, [R0]
C80A4:  CMP             R0, #0
C80A6:  BEQ.W           loc_C831C
C80AA:  LDR             R1, [R4,#0x7C]
C80AC:  B               loc_C830E
C80AE:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4027
C80B0:  ADDS            R1, R0, #4
C80B2:  STR             R1, [SP,#0x80+var_18]
C80B4:  LDR             R0, [R0]
C80B6:  CMP             R0, #0
C80B8:  BEQ.W           loc_C831C
C80BC:  LDR.W           R1, [R4,#0x90]
C80C0:  MOV             R2, #0x51EB851F
C80C8:  MOVW            R3, #0x803
C80CC:  SMMUL.W         R1, R1, R2
C80D0:  ASRS            R2, R1, #7
C80D2:  ADD.W           R1, R2, R1,LSR#31
C80D6:  STR             R1, [R0]
C80D8:  LDR             R2, [R4,#0x6C]
C80DA:  CMP             R2, R3
C80DC:  BNE.W           loc_C830A
C80E0:  MOVS            R0, #0
C80E2:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C80E4:  ADD.W           R0, R4, #0xBC; jumptable 000C7D5A case 4028
C80E8:  MOVW            R1, #0x7DC; n
C80EC:  LDR             R6, [R4,#4]
C80EE:  BLX             sub_10967C
C80F2:  MOV             R0, R5
C80F4:  MOVW            R1, #0xFBC
C80F8:  BLX             j_opus_custom_encoder_ctl
C80FC:  LDR.W           R1, [R4,#0xB4]
C8100:  ADDS            R0, R4, R6
C8102:  ADD             R2, SP, #0x80+var_7C
C8104:  BLX             j_silk_InitEncoder
C8108:  MOV.W           R0, #0x4000
C810C:  MOVW            R1, #0x451
C8110:  STRH.W          R0, [R4,#0xC0]
C8114:  MOVW            R0, #0x7FFF
C8118:  STRH.W          R0, [R4,#0xC8]
C811C:  MOVS            R0, #1
C811E:  STR.W           R0, [R4,#0xF8]
C8122:  MOVW            R0, #0x3E9
C8126:  STR.W           R0, [R4,#0xDC]
C812A:  LDR             R0, [R4,#0x70]
C812C:  STR.W           R1, [R4,#0xEC]
C8130:  STR.W           R0, [R4,#0xBC]
C8134:  MOVS            R0, #0x3C ; '<'
C8136:  BLX             j_silk_lin2log
C813A:  LSLS            R0, R0, #8
C813C:  STR.W           R0, [R4,#0xC4]
C8140:  MOVS            R0, #0
C8142:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8144:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4029
C8146:  ADDS            R1, R0, #4
C8148:  STR             R1, [SP,#0x80+var_18]
C814A:  LDR             R0, [R0]
C814C:  CMP             R0, #0
C814E:  BEQ.W           loc_C831C
C8152:  LDR.W           R1, [R4,#0x90]
C8156:  B               loc_C830E
C8158:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4031
C815A:  ADDS            R1, R0, #4
C815C:  STR             R1, [SP,#0x80+var_18]
C815E:  LDR             R0, [R0]
C8160:  CMP             R0, #0
C8162:  BEQ.W           loc_C831C
C8166:  LDR.W           R1, [R4,#0x894]
C816A:  B               loc_C830E
C816C:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4036
C816E:  ADDS            R1, R0, #4
C8170:  STR             R1, [SP,#0x80+var_18]
C8172:  LDR             R0, [R0]
C8174:  SUB.W           R1, R0, #8
C8178:  CMP             R1, #0x10
C817A:  BHI.W           loc_C831C
C817E:  STR.W           R0, [R4,#0xA8]
C8182:  MOVS            R0, #0
C8184:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8186:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4037
C8188:  ADDS            R1, R0, #4
C818A:  STR             R1, [SP,#0x80+var_18]
C818C:  LDR             R0, [R0]
C818E:  CMP             R0, #0
C8190:  BEQ.W           loc_C831C
C8194:  LDR.W           R1, [R4,#0xA8]
C8198:  B               loc_C830E
C819A:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4040
C819C:  ADDS            R1, R0, #4
C819E:  STR             R1, [SP,#0x80+var_18]
C81A0:  LDR             R0, [R0]
C81A2:  MOVW            R1, #0x1388
C81A6:  SUBS            R1, R0, R1
C81A8:  CMP             R1, #9
C81AA:  BHI.W           loc_C831C
C81AE:  STR.W           R0, [R4,#0x9C]
C81B2:  MOVS            R0, #0
C81B4:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C81B6:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4041
C81B8:  ADDS            R1, R0, #4
C81BA:  STR             R1, [SP,#0x80+var_18]
C81BC:  LDR             R0, [R0]
C81BE:  CMP             R0, #0
C81C0:  BEQ.W           loc_C831C
C81C4:  LDR.W           R1, [R4,#0x9C]
C81C8:  B               loc_C830E
C81CA:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4042
C81CC:  ADDS            R1, R0, #4
C81CE:  STR             R1, [SP,#0x80+var_18]
C81D0:  LDR             R0, [R0]
C81D2:  CMP             R0, #1
C81D4:  BHI.W           loc_C831C
C81D8:  STR             R0, [R4,#0x4C]
C81DA:  MOVS            R0, #0
C81DC:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C81DE:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4043
C81E0:  ADDS            R1, R0, #4
C81E2:  STR             R1, [SP,#0x80+var_18]
C81E4:  LDR             R0, [R0]
C81E6:  CMP             R0, #0
C81E8:  BEQ.W           loc_C831C
C81EC:  LDR             R1, [R4,#0x4C]
C81EE:  B               loc_C830E
C81F0:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4046
C81F2:  ADDS            R1, R0, #4
C81F4:  STR             R1, [SP,#0x80+var_18]
C81F6:  LDR             R2, [R0]
C81F8:  CMP             R2, #1
C81FA:  BHI.W           loc_C831C
C81FE:  MOV             R0, R5
C8200:  MOVW            R1, #0xFCE
C8204:  B               loc_C821A
C8206:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4047
C8208:  ADDS            R1, R0, #4
C820A:  STR             R1, [SP,#0x80+var_18]
C820C:  LDR             R2, [R0]
C820E:  CMP             R2, #0
C8210:  BEQ.W           loc_C831C
C8214:  MOV             R0, R5
C8216:  MOVW            R1, #0xFCF
C821A:  BLX             j_opus_custom_encoder_ctl
C821E:  MOVS            R0, #0
C8220:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8222:  LDR             R0, [SP,#0x80+var_18]; jumptable 000C7D5A case 4049
C8224:  ADDS            R1, R0, #4
C8226:  STR             R1, [SP,#0x80+var_18]
C8228:  LDR             R1, [R0]
C822A:  CMP             R1, #0
C822C:  BEQ             loc_C831C
C822E:  LDR             R0, [R4,#0x38]
C8230:  CMP             R0, #0
C8232:  BEQ             loc_C82F8
C8234:  LDR.W           R0, [R4,#0xE0]
C8238:  BIC.W           R0, R0, #1
C823C:  CMP.W           R0, #0x3E8
C8240:  BNE             loc_C82F8
C8242:  MOVS            R0, #1
C8244:  LDR             R2, [R4,#4]
C8246:  STR             R0, [R1]
C8248:  MOVS            R0, #0
C824A:  LDR             R3, [R4,#0xC]
C824C:  CMP             R3, #1
C824E:  BLT             def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8250:  ADDS            R0, R4, R2
C8252:  MOVW            R2, #0x17C4
C8256:  ADD             R2, R0
C8258:  MOVS            R3, #1
C825A:  MOVW            R12, #0x21B8
C825E:  MOVS            R5, #0
C8260:  CBZ             R3, loc_C826E
C8262:  LDR             R0, [R2]
C8264:  MOVS            R3, #0
C8266:  CMP             R0, #9
C8268:  IT GT
C826A:  MOVGT           R3, #1
C826C:  B               loc_C8270
C826E:  MOVS            R3, #0
C8270:  STR             R3, [R1]
C8272:  ADD             R2, R12
C8274:  LDR             R6, [R4,#0xC]
C8276:  ADDS            R5, #1
C8278:  MOVS            R0, #0
C827A:  CMP             R5, R6
C827C:  BLT             loc_C8260
C827E:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8280:  LDR             R0, [SP,#0x80+var_18]
C8282:  ADDS            R1, R0, #4
C8284:  STR             R1, [SP,#0x80+var_18]
C8286:  LDR             R2, [R0]
C8288:  CMP             R2, #0
C828A:  BEQ             loc_C831C
C828C:  MOV             R0, R5
C828E:  MOVW            R1, #0x271F
C8292:  B               loc_C82A6
C8294:  LDR             R0, [SP,#0x80+var_18]
C8296:  ADDS            R1, R0, #4
C8298:  STR             R1, [SP,#0x80+var_18]
C829A:  LDR             R2, [R0]
C829C:  MOV             R0, R5
C829E:  STR.W           R2, [R4,#0xB0]
C82A2:  MOVW            R1, #0x2728
C82A6:  BLX             j_opus_custom_encoder_ctl
C82AA:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C82AC:  LDR             R0, [SP,#0x80+var_18]
C82AE:  ADDS            R1, R0, #4
C82B0:  STR             R1, [SP,#0x80+var_18]
C82B2:  LDR             R0, [R0]
C82B4:  SUB.W           R1, R0, #0x3E8
C82B8:  CMP             R1, #3
C82BA:  BCC             loc_C82C2
C82BC:  CMN.W           R0, #0x3E8
C82C0:  BNE             loc_C831C
C82C2:  STR.W           R0, [R4,#0x88]
C82C6:  MOVS            R0, #0
C82C8:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C82CA:  LDR             R0, [SP,#0x80+var_18]
C82CC:  ADDS            R1, R0, #4
C82CE:  STR             R1, [SP,#0x80+var_18]
C82D0:  LDR             R0, [R0]
C82D2:  ADDS            R1, R0, #1
C82D4:  CMP             R1, #0x65 ; 'e'
C82D6:  BHI             loc_C831C
C82D8:  STR.W           R0, [R4,#0x8C]
C82DC:  MOVS            R0, #0
C82DE:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C82E0:  MOVW            R2, #0x44E
C82E4:  CMP             R0, R2
C82E6:  MOV.W           R1, #0x3E80
C82EA:  MOV.W           R0, #0
C82EE:  IT EQ
C82F0:  MOVWEQ          R1, #0x2EE0
C82F4:  STR             R1, [R4,#0x14]
C82F6:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C82F8:  MOVS            R0, #0
C82FA:  STR             R0, [R1]
C82FC:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C82FE:  CMN.W           R0, #0x3E8
C8302:  BNE             loc_C831C
C8304:  STR             R0, [R4,#0x78]
C8306:  MOVS            R0, #0
C8308:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C830A:  LDR             R2, [R4,#0x74]
C830C:  ADD             R1, R2
C830E:  STR             R1, [R0]
C8310:  MOVS            R0, #0
C8312:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8314:  CMN.W           R0, #0x3E8
C8318:  BEQ.W           loc_C7F5A
C831C:  MOV.W           R0, #0xFFFFFFFF
C8320:  LDR             R1, =(__stack_chk_guard_ptr - 0xC8328); jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8322:  LDR             R2, [SP,#0x80+var_14]
C8324:  ADD             R1, PC; __stack_chk_guard_ptr
C8326:  LDR             R1, [R1]; __stack_chk_guard
C8328:  LDR             R1, [R1]
C832A:  SUBS            R1, R1, R2
C832C:  ITTTT EQ
C832E:  ADDEQ           SP, SP, #0x70 ; 'p'
C8330:  POPEQ.W         {R11}
C8334:  POPEQ.W         {R4-R7,LR}
C8338:  ADDEQ           SP, SP, #8
C833A:  IT EQ
C833C:  BXEQ            LR
C833E:  BLX             __stack_chk_fail
C8342:  LDR.W           R0, [R4,#0x90]
C8346:  MOVW            R2, #0x27E0
C834A:  MULS            R0, R2
C834C:  BLX             sub_108848
C8350:  STR             R0, [R5]
C8352:  MOVS            R0, #0
C8354:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
C8356:  LDR             R1, [R4,#0x70]
C8358:  MOV             R2, #unk_493E0
C8360:  MULS            R1, R2
C8362:  CMP             R0, R1
C8364:  IT GT
C8366:  MOVGT           R0, R1
C8368:  STR.W           R0, [R4,#0xA4]
C836C:  MOVS            R0, #0
C836E:  B               def_C7D5A; jumptable 000C7D5A default case, cases 4018,4019,4026,4030,4032-4035,4038,4039,4044,4045,4048
