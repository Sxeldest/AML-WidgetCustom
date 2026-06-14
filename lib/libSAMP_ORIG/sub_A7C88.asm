; =========================================================
; Game Engine Function: sub_A7C88
; Address            : 0xA7C88 - 0xA8060
; =========================================================

A7C88:  PUSH            {R4-R7,LR}
A7C8A:  ADD             R7, SP, #0xC
A7C8C:  PUSH.W          {R8-R11}
A7C90:  SUB             SP, SP, #4
A7C92:  VPUSH           {D8-D11}
A7C96:  SUB             SP, SP, #0x68
A7C98:  MOV             R5, R0
A7C9A:  LDR             R0, =(off_114D5C - 0xA7CA0)
A7C9C:  ADD             R0, PC; off_114D5C
A7C9E:  LDR             R0, [R0]; dword_1ACF68
A7CA0:  LDR.W           R8, [R0]
A7CA4:  LDR             R0, =(__stack_chk_guard_ptr - 0xA7CAA)
A7CA6:  ADD             R0, PC; __stack_chk_guard_ptr
A7CA8:  LDR             R0, [R0]; __stack_chk_guard
A7CAA:  LDR             R0, [R0]
A7CAC:  STR             R0, [SP,#0xA8+var_44]
A7CAE:  MOVW            R0, #0x19AC
A7CB2:  LDR.W           R4, [R8,R0]
A7CB6:  MOVS            R0, #1
A7CB8:  STRB.W          R0, [R4,#0x7C]
A7CBC:  LDRB.W          R0, [R4,#0x7F]
A7CC0:  CBZ             R0, loc_A7CE8
A7CC2:  MOVS            R6, #0
A7CC4:  LDR             R0, [SP,#0xA8+var_44]
A7CC6:  LDR             R1, =(__stack_chk_guard_ptr - 0xA7CCC)
A7CC8:  ADD             R1, PC; __stack_chk_guard_ptr
A7CCA:  LDR             R1, [R1]; __stack_chk_guard
A7CCC:  LDR             R1, [R1]
A7CCE:  CMP             R1, R0
A7CD0:  ITTTT EQ
A7CD2:  MOVEQ           R0, R6
A7CD4:  ADDEQ           SP, SP, #0x68 ; 'h'
A7CD6:  VPOPEQ          {D8-D11}
A7CDA:  ADDEQ           SP, SP, #4
A7CDC:  ITT EQ
A7CDE:  POPEQ.W         {R8-R11}
A7CE2:  POPEQ           {R4-R7,PC}
A7CE4:  BLX             __stack_chk_fail
A7CE8:  ANDS.W          R10, R2, #2
A7CEC:  ADD.W           R0, R8, #0x1560
A7CF0:  MOV             R6, R3
A7CF2:  MOV             R9, R2
A7CF4:  STR             R1, [SP,#0xA8+var_8C]
A7CF6:  STR             R0, [SP,#0xA8+var_84]
A7CF8:  ITTT NE
A7CFA:  LDRNE.W         R0, [R4,#0x1C0]
A7CFE:  CMPNE           R0, #0
A7D00:  BLNE            sub_99784
A7D04:  MOV             R0, R4
A7D06:  MOV             R1, R5
A7D08:  MOVS            R2, #0
A7D0A:  BL              sub_8AAD4
A7D0E:  MOV             R11, R0
A7D10:  MOVS            R0, #0xBF800000
A7D16:  MOV             R1, R5; int
A7D18:  STR             R0, [SP,#0xA8+var_A8]; float
A7D1A:  ADD             R0, SP, #0xA8+var_4C; int
A7D1C:  MOVS            R2, #0; int
A7D1E:  MOVS            R3, #1; int
A7D20:  BL              sub_899BC
A7D24:  VLDR            S6, [R6,#4]
A7D28:  MOVS            R1, #0
A7D2A:  VLDR            S8, [R4,#0xCC]
A7D2E:  VLDR            S10, [R4,#0xF8]
A7D32:  VCMP.F32        S6, #0.0
A7D36:  VLDR            S4, [R6]
A7D3A:  VADD.F32        S18, S8, S10
A7D3E:  VMRS            APSR_nzcv, FPSCR
A7D42:  VLDR            S0, [SP,#0xA8+var_4C]
A7D46:  VCMP.F32        S4, #0.0
A7D4A:  VLDR            S2, [SP,#0xA8+var_48]
A7D4E:  IT NE
A7D50:  VMOVNE.F32      S2, S6
A7D54:  VMRS            APSR_nzcv, FPSCR
A7D58:  IT NE
A7D5A:  VMOVNE.F32      S0, S4
A7D5E:  LDR.W           R0, [R4,#0xC8]
A7D62:  STR             R0, [SP,#0xA8+var_64]
A7D64:  VSTR            S2, [SP,#0xA8+var_50]
A7D68:  VMOV            S20, R0
A7D6C:  ADD             R0, SP, #0xA8+var_54
A7D6E:  VADD.F32        S4, S2, S18
A7D72:  VSTR            S0, [SP,#0xA8+var_54]
A7D76:  VADD.F32        S6, S0, S20
A7D7A:  VSTR            S18, [SP,#0xA8+var_60]
A7D7E:  VSTR            S4, [SP,#0xA8+var_58]
A7D82:  VSTR            S6, [SP,#0xA8+var_5C]
A7D86:  BL              sub_8B104
A7D8A:  VLDR            S22, [R4,#0x34]
A7D8E:  ADD             R0, SP, #0xA8+var_74
A7D90:  CMP.W           R10, #0
A7D94:  BNE             loc_A7D9C
A7D96:  BL              sub_9777C
A7D9A:  B               loc_A7DA0
A7D9C:  BL              sub_97860
A7DA0:  VLDR            S16, [SP,#0xA8+var_74]
A7DA4:  VMOV.F32        S2, #0.5
A7DA8:  VLDR            S0, [R4,#0xC]
A7DAC:  MOVS            R1, #1
A7DAE:  LDR             R0, [SP,#0xA8+var_84]
A7DB0:  VADD.F32        S0, S16, S0
A7DB4:  VLDR            S6, [SP,#0xA8+var_4C]
A7DB8:  VLDR            S4, [SP,#0xA8+var_50]
A7DBC:  VLDR            S12, [R0]
A7DC0:  VLDR            S14, [R0,#4]
A7DC4:  AND.W           R0, R9, #0x800000
A7DC8:  VLDR            S8, [R6]
A7DCC:  VLDR            S10, [R6,#4]
A7DD0:  EOR.W           R0, R1, R0,LSR#23
A7DD4:  MOVS            R1, #0
A7DD6:  VSUB.F32        S0, S0, S22
A7DDA:  VSUB.F32        S0, S0, S20
A7DDE:  VCMP.F32        S6, S0
A7DE2:  VMRS            APSR_nzcv, FPSCR
A7DE6:  IT GE
A7DE8:  VMOVGE.F32      S0, S6
A7DEC:  VMUL.F32        S6, S14, S2
A7DF0:  VMUL.F32        S2, S12, S2
A7DF4:  VCMP.F32        S8, #0.0
A7DF8:  VMRS            APSR_nzcv, FPSCR
A7DFC:  IT NE
A7DFE:  MOVNE           R1, #1
A7E00:  ANDS            R0, R1
A7E02:  IT NE
A7E04:  VMOVNE.F32      S0, S8
A7E08:  VADD.F32        S0, S0, S20
A7E0C:  VLDR            S8, =-0.0
A7E10:  VCMP.F32        S10, #0.0
A7E14:  VCVT.S32.F32    S6, S6
A7E18:  VMRS            APSR_nzcv, FPSCR
A7E1C:  VCVT.S32.F32    S2, S2
A7E20:  IT NE
A7E22:  VMOVNE.F32      S4, S10
A7E26:  CMP             R0, #0
A7E28:  IT NE
A7E2A:  VMOVNE.F32      S22, S8
A7E2E:  VADD.F32        S4, S18, S4
A7E32:  ANDS.W          R0, R9, #8
A7E36:  STR             R0, [SP,#0xA8+var_88]
A7E38:  VADD.F32        S0, S0, S22
A7E3C:  VCVT.F32.S32    S6, S6
A7E40:  VCVT.F32.S32    S2, S2
A7E44:  VSUB.F32        S8, S14, S6
A7E48:  VSUB.F32        S10, S12, S2
A7E4C:  VSUB.F32        S6, S18, S6
A7E50:  VSUB.F32        S2, S20, S2
A7E54:  VADD.F32        S4, S8, S4
A7E58:  VADD.F32        S0, S10, S0
A7E5C:  VSTR            S6, [SP,#0xA8+var_70]
A7E60:  VSTR            S2, [SP,#0xA8+var_74]
A7E64:  VSTR            S4, [SP,#0xA8+var_68]
A7E68:  VSTR            S0, [SP,#0xA8+var_6C]
A7E6C:  BNE             loc_A7E90
A7E6E:  ADD             R0, SP, #0xA8+var_74
A7E70:  MOV             R1, R11
A7E72:  MOVS            R2, #0
A7E74:  BL              sub_8B314
A7E78:  CBNZ            R0, loc_A7EAE
A7E7A:  CMP.W           R10, #0
A7E7E:  BEQ.W           loc_A7CC2
A7E82:  LDR.W           R0, [R4,#0x1C0]
A7E86:  CMP             R0, #0
A7E88:  IT NE
A7E8A:  BLNE            sub_997F0
A7E8E:  B               loc_A7CC2
A7E90:  LDR.W           R6, [R4,#0x16C]
A7E94:  MOV             R1, R11
A7E96:  MOVS            R2, #0
A7E98:  ORR.W           R0, R6, #0x14
A7E9C:  STR.W           R0, [R4,#0x16C]
A7EA0:  ADD             R0, SP, #0xA8+var_74
A7EA2:  BL              sub_8B314
A7EA6:  STR.W           R6, [R4,#0x16C]
A7EAA:  CMP             R0, #0
A7EAC:  BEQ             loc_A7E7A
A7EAE:  MOV.W           R0, #0x800
A7EB2:  MOVS            R1, #4
A7EB4:  AND.W           R0, R0, R9,LSR#9
A7EB8:  AND.W           R1, R1, R9,LSR#19
A7EBC:  STRD.W          R10, R5, [SP,#0xA8+var_98]
A7EC0:  ADD             R0, R1
A7EC2:  MOVS            R1, #8
A7EC4:  LDR             R5, [SP,#0xA8+var_88]
A7EC6:  AND.W           R1, R1, R9,LSR#19
A7ECA:  AND.W           R10, R9, #0x1000000
A7ECE:  ADD             R0, R1
A7ED0:  MOV.W           R1, R9,LSR#2
A7ED4:  ORR.W           R0, R0, R5,LSL#5
A7ED8:  SUB.W           R2, R7, #-var_75
A7EDC:  BFI.W           R0, R1, #1, #1
A7EE0:  SUB.W           R3, R7, #-var_76
A7EE4:  BFI.W           R0, R1, #4, #1
A7EE8:  MOV             R1, R11
A7EEA:  ORR.W           R0, R0, R10,LSR#18
A7EEE:  STR             R0, [SP,#0xA8+var_A8]
A7EF0:  ADD             R0, SP, #0xA8+var_74
A7EF2:  STR.W           R11, [SP,#0xA8+var_90]
A7EF6:  BL              sub_A634C
A7EFA:  CLZ.W           R11, R5
A7EFE:  CMP             R0, #0
A7F00:  MOV             R6, R0
A7F02:  ITT EQ
A7F04:  LDRBEQ.W        R0, [R7,#var_75]
A7F08:  CMPEQ           R0, #0
A7F0A:  BEQ             loc_A7F3A
A7F0C:  LDR             R0, [SP,#0xA8+var_84]
A7F0E:  LDRB.W          R0, [R0,#0x5B7]
A7F12:  CBNZ            R0, loc_A7F3A
A7F14:  LDR             R0, [SP,#0xA8+var_84]
A7F16:  LDR.W           R0, [R0,#0x554]
A7F1A:  CMP             R0, R4
A7F1C:  BNE             loc_A7F3A
A7F1E:  LDR             R0, [SP,#0xA8+var_84]
A7F20:  LDR.W           R1, [R0,#0x5AC]
A7F24:  LDR.W           R0, [R4,#0x130]
A7F28:  CMP             R1, R0
A7F2A:  BNE             loc_A7F3A
A7F2C:  LDR             R2, [SP,#0xA8+var_84]
A7F2E:  MOVS            R0, #1
A7F30:  STRB.W          R0, [R2,#0x5B6]
A7F34:  LDR             R0, [SP,#0xA8+var_90]
A7F36:  BL              sub_8AF54
A7F3A:  MOV.W           R5, R11,LSR#5
A7F3E:  LDR.W           R11, [SP,#0xA8+var_90]
A7F42:  CMP             R6, #0
A7F44:  ITT NE
A7F46:  MOVNE           R0, R11
A7F48:  BLNE            sub_8B0DC
A7F4C:  LDR             R0, [SP,#0xA8+var_8C]
A7F4E:  CMP.W           R10, #0
A7F52:  AND.W           R5, R5, R0
A7F56:  IT NE
A7F58:  BLNE            sub_9562C
A7F5C:  LDRB.W          R0, [R7,#var_75]
A7F60:  ADD.W           R10, SP, #0xA8+var_64
A7F64:  CMP             R0, #0
A7F66:  MOV             R1, R0
A7F68:  IT NE
A7F6A:  MOVNE           R1, #1
A7F6C:  ORRS            R1, R5
A7F6E:  CMP             R1, #1
A7F70:  BNE             loc_A7FB2
A7F72:  LDRB.W          R1, [R7,#var_76]
A7F76:  MOVS            R2, #0x19
A7F78:  CMP             R0, #0
A7F7A:  IT EQ
A7F7C:  MOVEQ           R2, #0x18
A7F7E:  MOV             R0, R2
A7F80:  IT NE
A7F82:  MOVNE           R0, #0x1A
A7F84:  CMP             R1, #0
A7F86:  MOV.W           R1, #0x3F800000
A7F8A:  IT EQ
A7F8C:  MOVEQ           R0, R2
A7F8E:  BL              sub_88C10
A7F92:  LDRD.W          R12, R1, [SP,#0xA8+var_74]; int
A7F96:  MOVS            R5, #0
A7F98:  LDRD.W          R2, R3, [SP,#0xA8+var_6C]; int
A7F9C:  STRD.W          R0, R5, [SP,#0xA8+var_A8]; int
A7FA0:  MOV             R0, R12; int
A7FA2:  STR             R5, [SP,#0xA8+var_A0]; float
A7FA4:  BL              sub_89B34
A7FA8:  ADD             R0, SP, #0xA8+var_74
A7FAA:  MOV             R1, R11
A7FAC:  MOVS            R2, #0xA
A7FAE:  BL              sub_8A1F8
A7FB2:  LDR             R0, [SP,#0xA8+var_98]
A7FB4:  ADD.W           R10, R10, #8
A7FB8:  CMP             R0, #0
A7FBA:  ITT NE
A7FBC:  LDRNE.W         R0, [R4,#0x1C0]
A7FC0:  CMPNE           R0, #0
A7FC2:  BNE             loc_A8040
A7FC4:  LDR             R0, [SP,#0xA8+var_88]
A7FC6:  LDR             R5, [SP,#0xA8+var_94]
A7FC8:  CBNZ            R0, loc_A7FEC
A7FCA:  ADD.W           R0, R8, #0x15A0
A7FCE:  ADD             R1, SP, #0xA8+var_4C
A7FD0:  MOV             R2, R5; int
A7FD2:  MOVS            R3, #0; int
A7FD4:  STRD.W          R1, R0, [SP,#0xA8+var_A8]; int
A7FD8:  ADD             R0, SP, #0xA8+var_74
A7FDA:  STR             R0, [SP,#0xA8+var_A0]; int
A7FDC:  ADD             R0, SP, #0xA8+var_64; int
A7FDE:  MOV             R1, R10; int
A7FE0:  BL              sub_89A94
A7FE4:  CMP             R6, #0
A7FE6:  BEQ.W           loc_A7CC4
A7FEA:  B               loc_A8020
A7FEC:  MOVW            R0, #0x15D4
A7FF0:  ADD.W           R1, R8, R0
A7FF4:  MOVS            R0, #0
A7FF6:  BL              sub_95E08
A7FFA:  ADD.W           R0, R8, #0x15A0
A7FFE:  ADD             R1, SP, #0xA8+var_4C
A8000:  MOV             R2, R5; int
A8002:  MOVS            R3, #0; int
A8004:  STRD.W          R1, R0, [SP,#0xA8+var_A8]; int
A8008:  ADD             R0, SP, #0xA8+var_74
A800A:  STR             R0, [SP,#0xA8+var_A0]; int
A800C:  ADD             R0, SP, #0xA8+var_64; int
A800E:  MOV             R1, R10; int
A8010:  BL              sub_89A94
A8014:  MOVS            R0, #1
A8016:  BL              sub_96230
A801A:  CMP             R6, #0
A801C:  BEQ.W           loc_A7CC4
A8020:  MOVS.W          R0, R9,LSL#31
A8024:  BNE.W           loc_A7CC4
A8028:  LDR             R0, [R4,#8]
A802A:  ANDS.W          R0, R0, #0x4000000
A802E:  BEQ.W           loc_A7CC4
A8032:  LDRB.W          R0, [R4,#0x16C]
A8036:  LSLS            R0, R0, #0x1A
A8038:  IT PL
A803A:  BLPL            sub_98968
A803E:  B               loc_A7CC4
A8040:  BL              sub_997F0
A8044:  ADD             R0, SP, #0xA8+var_80
A8046:  BL              sub_9777C
A804A:  VLDR            S0, [SP,#0xA8+var_80]
A804E:  VLDR            S2, [SP,#0xA8+var_6C]
A8052:  VSUB.F32        S0, S0, S16
A8056:  VSUB.F32        S0, S2, S0
A805A:  VSTR            S0, [SP,#0xA8+var_6C]
A805E:  B               loc_A7FC4
