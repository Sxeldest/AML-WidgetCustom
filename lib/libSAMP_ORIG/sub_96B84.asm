; =========================================================
; Game Engine Function: sub_96B84
; Address            : 0x96B84 - 0x97046
; =========================================================

96B84:  PUSH            {R4-R7,LR}
96B86:  ADD             R7, SP, #0xC
96B88:  PUSH.W          {R8-R11}
96B8C:  SUB             SP, SP, #4
96B8E:  VPUSH           {D8-D15}
96B92:  SUB             SP, SP, #0x40
96B94:  LDR             R0, =(dword_1ACF68 - 0x96BA0)
96B96:  MOVW            R10, #0x19AC
96B9A:  MOVS            R1, #1
96B9C:  ADD             R0, PC; dword_1ACF68
96B9E:  STR             R0, [SP,#0xA0+var_8C]
96BA0:  LDR             R4, [R0]
96BA2:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x96BAA)
96BA6:  ADD             R0, PC; __stack_chk_guard_ptr
96BA8:  LDR             R0, [R0]; __stack_chk_guard
96BAA:  LDR             R0, [R0]
96BAC:  STR             R0, [SP,#0xA0+var_64]
96BAE:  LDR.W           R9, [R4,R10]
96BB2:  LDR.W           R0, [R9,#0x184]
96BB6:  LDR.W           R8, [R9,#0x1C0]
96BBA:  STRB.W          R1, [R9,#0x7C]
96BBE:  SUBS            R1, R0, #1
96BC0:  STR.W           R1, [R9,#0x184]
96BC4:  BEQ             loc_96BD2
96BC6:  LDR.W           R1, [R9,#0x18C]
96BCA:  ADD.W           R0, R1, R0,LSL#2
96BCE:  SUBS            R0, #8
96BD0:  B               loc_96BD6
96BD2:  ADD.W           R0, R9, #0x234
96BD6:  LDR.W           R1, [R8,#0x10]
96BDA:  LDR             R0, [R0]
96BDC:  CMP             R1, #2
96BDE:  STR.W           R0, [R9,#0x170]
96BE2:  BLT             loc_96C0E
96BE4:  LDR.W           R0, [R9,#0x27C]
96BE8:  BL              sub_9C12E
96BEC:  LDR.W           R1, [R9,#0x27C]
96BF0:  LDR             R0, [R1,#0x40]
96BF2:  LDR             R2, [R1,#0x48]
96BF4:  ADD.W           R0, R2, R0,LSL#4
96BF8:  SUBS            R0, #0x10
96BFA:  VLD1.32         {D16-D17}, [R0]
96BFE:  ADD.W           R0, R9, #0x210
96C02:  VST1.32         {D16-D17}, [R0]
96C06:  ADD.W           R0, R1, #0x64 ; 'd'
96C0A:  BL              sub_9E2F4
96C0E:  VLDR            S2, [R8,#0x20]
96C12:  MOVS            R2, #0
96C14:  VLDR            S0, [R9,#0xCC]
96C18:  VCMP.F32        S2, S0
96C1C:  VMRS            APSR_nzcv, FPSCR
96C20:  IT GE
96C22:  VMOVGE.F32      S0, S2
96C26:  LDR.W           R1, [R8,#4]
96C2A:  VSTR            S0, [R8,#0x20]
96C2E:  VSTR            S0, [R9,#0xCC]
96C32:  LSLS            R0, R1, #0x1B
96C34:  ITT PL
96C36:  LDRPL.W         R0, [R8,#0x28]
96C3A:  STRPL.W         R0, [R9,#0xE0]
96C3E:  LSLS            R0, R1, #0x1F
96C40:  MOV.W           R0, #0
96C44:  BNE.W           loc_96FF8
96C48:  LDRB.W          R0, [R9,#0x7F]
96C4C:  CBZ             R0, loc_96C52
96C4E:  MOVS            R0, #0
96C50:  B               loc_96FF8
96C52:  VLDR            S18, [R9,#0x214]
96C56:  MOVS            R0, #0
96C58:  VLDR            S2, [R8,#0x24]
96C5C:  VLDR            S20, [R9,#0x21C]
96C60:  VCMP.F32        S2, S18
96C64:  VMRS            APSR_nzcv, FPSCR
96C68:  VCMP.F32        S0, S20
96C6C:  IT GE
96C6E:  VMOVGE.F32      S18, S2
96C72:  VMRS            APSR_nzcv, FPSCR
96C76:  IT MI
96C78:  VMOVMI.F32      S20, S0
96C7C:  LDR.W           R12, [R8,#0x10]
96C80:  CMP.W           R12, #2
96C84:  BLT.W           loc_96FF8
96C88:  VMOV.F32        S22, #1.0
96C8C:  ADD.W           R0, R4, R10
96C90:  STR             R0, [SP,#0xA0+var_98]
96C92:  AND.W           R0, R1, #2
96C96:  STR             R0, [SP,#0xA0+var_90]
96C98:  MOV.W           R0, #0xFFFFFFFF
96C9C:  VMOV.F32        S16, #4.0
96CA0:  STR             R0, [SP,#0xA0+var_94]
96CA2:  VMOV.F32        S26, #-4.0
96CA6:  LDR             R0, [SP,#0xA0+var_8C]
96CA8:  VMOV.F32        S30, #0.5
96CAC:  VLDR            S28, =0.0
96CB0:  VLDR            S17, =255.0
96CB4:  MOVS            R4, #0
96CB6:  VADD.F32        S24, S18, S22
96CBA:  LDR             R2, [R0]
96CBC:  MOV.W           R11, #1
96CC0:  B               loc_96DF8
96CC2:  MOVS            R1, #0x1C
96CC4:  LDR             R5, [SP,#0xA0+var_8C]
96CC6:  CMP             R0, #0
96CC8:  MOVW            R0, #0x1518
96CCC:  LDR             R2, [R5]
96CCE:  IT EQ
96CD0:  MOVEQ           R1, #0x1D
96CD2:  ADD             R0, R2
96CD4:  VLDR            S0, [R0]
96CD8:  ADD.W           R0, R0, R1,LSL#4
96CDC:  MOV.W           R1, #0x3F800000
96CE0:  VLDR            S8, [R0,#0xB8]
96CE4:  VLDR            S4, [R0,#0xB0]
96CE8:  VMUL.F32        S0, S8, S0
96CEC:  VLDR            S2, [R0,#0xAC]
96CF0:  VLDR            S6, [R0,#0xB4]
96CF4:  VCMP.F32        S4, S22
96CF8:  VMRS            APSR_nzcv, FPSCR
96CFC:  VMOV.F32        S8, S4
96D00:  VCMP.F32        S2, S22
96D04:  IT GT
96D06:  VMOVGT.F32      S8, S22
96D0A:  VMRS            APSR_nzcv, FPSCR
96D0E:  VMOV.F32        S10, S2
96D12:  VCMP.F32        S6, S22
96D16:  IT GT
96D18:  VMOVGT.F32      S10, S22
96D1C:  VMRS            APSR_nzcv, FPSCR
96D20:  VMOV.F32        S12, S6
96D24:  VCMP.F32        S0, S22
96D28:  IT GT
96D2A:  VMOVGT.F32      S12, S22
96D2E:  VMRS            APSR_nzcv, FPSCR
96D32:  VMOV.F32        S14, S0
96D36:  VCMP.F32        S4, #0.0
96D3A:  IT GT
96D3C:  VMOVGT.F32      S14, S22
96D40:  VMRS            APSR_nzcv, FPSCR
96D44:  VCMP.F32        S2, #0.0
96D48:  IT MI
96D4A:  VMOVMI.F32      S8, S28
96D4E:  VMRS            APSR_nzcv, FPSCR
96D52:  VCMP.F32        S6, #0.0
96D56:  IT MI
96D58:  VMOVMI.F32      S10, S28
96D5C:  VCVT.S32.F32    S2, S19
96D60:  VMRS            APSR_nzcv, FPSCR
96D64:  VCMP.F32        S0, #0.0
96D68:  IT MI
96D6A:  VMOVMI.F32      S12, S28
96D6E:  VMOV.F32        S0, S30
96D72:  VMRS            APSR_nzcv, FPSCR
96D76:  VMOV.F32        S4, S30
96D7A:  IT MI
96D7C:  VMOVMI.F32      S14, S28
96D80:  VMOV.F32        S6, S30
96D84:  LDR.W           R0, [R9,#0x27C]; int
96D88:  STR             R1, [SP,#0xA0+var_A0]
96D8A:  VSTR            S24, [SP,#0xA0+var_7C]
96D8E:  VCVT.F32.S32    S2, S2
96D92:  VSTR            S20, [SP,#0xA0+var_84]
96D96:  VMLA.F32        S0, S8, S17
96D9A:  VMLA.F32        S4, S10, S17
96D9E:  VMLA.F32        S6, S12, S17
96DA2:  VMOV.F32        S8, S30
96DA6:  VSTR            S2, [SP,#0xA0+var_80]
96DAA:  VCVT.S32.F32    S0, S0
96DAE:  VSTR            S2, [SP,#0xA0+var_88]
96DB2:  VCVT.S32.F32    S2, S4
96DB6:  VCVT.S32.F32    S4, S6
96DBA:  VMLA.F32        S8, S14, S17
96DBE:  VMOV            R1, S0
96DC2:  VMOV            R2, S2
96DC6:  VCVT.S32.F32    S0, S8
96DCA:  ORR.W           R1, R2, R1,LSL#8
96DCE:  VMOV            R2, S4
96DD2:  ORR.W           R1, R1, R2,LSL#16
96DD6:  VMOV            R2, S0
96DDA:  ORR.W           R3, R1, R2,LSL#24; int
96DDE:  ADD             R1, SP, #0xA0+var_80; int
96DE0:  ADD             R2, SP, #0xA0+var_88; int
96DE2:  BL              sub_9D43C
96DE6:  LDR             R2, [R5]
96DE8:  LDR.W           R12, [R8,#0x10]
96DEC:  ADD.W           R11, R11, #1
96DF0:  ADDS            R4, #0x1C
96DF2:  CMP             R11, R12
96DF4:  BGE.W           loc_96F08
96DF8:  MOVW            R6, #0x19AC
96DFC:  LDR.W           R1, [R8]
96E00:  LDR             R3, [R2,R6]
96E02:  ADD             R1, R11
96E04:  LDR.W           R10, [R8,#0x44]
96E08:  LDR.W           R0, [R3,#0x1C0]
96E0C:  VLDR            S0, [R0,#0x14]
96E10:  VLDR            S2, [R0,#0x18]
96E14:  LDR             R0, [R0,#0x44]
96E16:  VSUB.F32        S2, S2, S0
96E1A:  ADD             R0, R4
96E1C:  VLDR            S4, [R0,#0x1C]
96E20:  ADDS            R0, R2, R6
96E22:  VSTR            S18, [SP,#0xA0+var_70]
96E26:  VMLA.F32        S0, S2, S4
96E2A:  VLDR            S2, [R9,#0xC]
96E2E:  VSTR            S20, [SP,#0xA0+var_68]
96E32:  VADD.F32        S19, S2, S0
96E36:  VADD.F32        S2, S19, S16
96E3A:  VADD.F32        S0, S19, S26
96E3E:  VSTR            S2, [SP,#0xA0+var_6C]
96E42:  VSTR            S0, [SP,#0xA0+var_74]
96E46:  LDR             R5, [R0,#0x24]
96E48:  CMP             R1, R5
96E4A:  IT EQ
96E4C:  STREQ           R1, [R0,#0x28]
96E4E:  LDR             R6, [R0,#0x50]
96E50:  CMP             R1, R6
96E52:  ITT EQ
96E54:  MOVEQ           R6, #1
96E56:  STRBEQ.W        R6, [R0,#0x54]
96E5A:  VLDR            S4, [R3,#0x214]
96E5E:  VCMP.F32        S4, S20
96E62:  VMRS            APSR_nzcv, FPSCR
96E66:  BPL             loc_96E92
96E68:  VLDR            S4, [R3,#0x21C]
96E6C:  VCMP.F32        S4, S18
96E70:  VMRS            APSR_nzcv, FPSCR
96E74:  BLE             loc_96E92
96E76:  VLDR            S4, [R3,#0x210]
96E7A:  VCMP.F32        S4, S2
96E7E:  VMRS            APSR_nzcv, FPSCR
96E82:  BPL             loc_96E92
96E84:  VLDR            S2, [R3,#0x218]
96E88:  VCMP.F32        S2, S0
96E8C:  VMRS            APSR_nzcv, FPSCR
96E90:  BGT             loc_96EA4
96E92:  CBZ             R1, loc_96E98
96E94:  CMP             R1, R5
96E96:  BEQ             loc_96EA4
96E98:  MOVW            R0, #0x2D20
96E9C:  ADD             R0, R2
96E9E:  LDRB            R0, [R0]
96EA0:  CMP             R0, #0
96EA2:  BEQ             loc_96DEC
96EA4:  LDR             R2, [SP,#0xA0+var_90]
96EA6:  MOVS            R0, #0
96EA8:  STRB.W          R0, [R7,#var_75]
96EAC:  STRB.W          R0, [R7,#var_76]
96EB0:  CBNZ            R2, loc_96EFC
96EB2:  STR             R0, [SP,#0xA0+var_A0]
96EB4:  ADD             R0, SP, #0xA0+var_74
96EB6:  SUB.W           R2, R7, #-var_75
96EBA:  SUB.W           R3, R7, #-var_76
96EBE:  BL              sub_A634C
96EC2:  LDRB.W          R1, [R7,#var_75]
96EC6:  LDRB.W          R0, [R7,#var_76]
96ECA:  CMP             R1, #0
96ECC:  ITEEE EQ
96ECE:  CMPEQ           R0, #0
96ED0:  LDRNE           R2, [SP,#0xA0+var_98]
96ED2:  MOVNE           R3, #4
96ED4:  STRNE.W         R3, [R2,#0x368]
96ED8:  CBZ             R0, loc_96EEC
96EDA:  ADD.W           R2, R10, R4
96EDE:  LDRB.W          R2, [R2,#0x24]
96EE2:  LSLS            R2, R2, #0x1E
96EE4:  LDR             R2, [SP,#0xA0+var_94]
96EE6:  IT PL
96EE8:  MOVPL           R2, R11
96EEA:  STR             R2, [SP,#0xA0+var_94]
96EEC:  CLZ.W           R0, R0
96EF0:  CMP             R1, #0
96EF2:  MOV.W           R0, R0,LSR#5
96EF6:  BNE.W           loc_96CC2
96EFA:  B               loc_96EFE
96EFC:  MOVS            R0, #1
96EFE:  MOVS            R1, #0x1B
96F00:  B               loc_96CC4
96F02:  ALIGN 4
96F04:  DCD dword_1ACF68 - 0x96BA0
96F08:  LDR             R4, [SP,#0xA0+var_94]
96F0A:  ADDS            R1, R4, #1
96F0C:  BEQ             loc_96FB6
96F0E:  LDRB.W          R0, [R8,#9]
96F12:  CBNZ            R0, loc_96F30
96F14:  CMP.W           R12, #0
96F18:  BMI             loc_96F30
96F1A:  LDR.W           R2, [R8,#0x44]
96F1E:  ADD.W           R0, R12, #1
96F22:  ADDS            R2, #4
96F24:  LDR.W           R3, [R2,#-4]
96F28:  SUBS            R0, #1
96F2A:  STR.W           R3, [R2],#0x1C
96F2E:  BNE             loc_96F24
96F30:  LDR             R0, [SP,#0xA0+var_8C]
96F32:  MOVW            R2, #0x19EC
96F36:  MOVS            R3, #1
96F38:  CMP             R4, #0
96F3A:  LDR             R0, [R0]
96F3C:  ADD             R2, R0
96F3E:  VLDR            S0, [R0,#0xE0]
96F42:  VLDR            S2, [R2]
96F46:  MOVW            R2, #0x19AC
96F4A:  LDR             R2, [R0,R2]
96F4C:  VSUB.F32        S0, S0, S2
96F50:  VLDR            S2, [R2,#0xC]
96F54:  STRB.W          R3, [R8,#9]
96F58:  MOVW            R3, #0x157C
96F5C:  ADD             R3, R0
96F5E:  LDR.W           R0, [R2,#0x1C0]
96F62:  ITE LE
96F64:  LDRLE           R5, [R0,#0xC]
96F66:  SUBGT           R5, R4, #1
96F68:  RSB.W           R6, R5, R5,LSL#3
96F6C:  VADD.F32        S0, S0, S16
96F70:  VLDR            S8, [R3]
96F74:  VLDR            S4, [R0,#0x18]
96F78:  LDR             R2, [R0,#0x44]
96F7A:  ADD.W           R6, R2, R6,LSL#2
96F7E:  VLDR            S6, [R6]
96F82:  VSUB.F32        S2, S0, S2
96F86:  VLDR            S0, [R0,#0x14]
96F8A:  VSUB.F32        S4, S4, S0
96F8E:  VMOV.F32        S10, S0
96F92:  VMLA.F32        S10, S4, S6
96F96:  VADD.F32        S6, S8, S10
96F9A:  VCMP.F32        S2, S6
96F9E:  VMRS            APSR_nzcv, FPSCR
96FA2:  IT GE
96FA4:  VMOVGE.F32      S6, S2
96FA8:  LDRB.W          R3, [R8,#4]
96FAC:  LSLS            R3, R3, #0x1D
96FAE:  BMI             loc_96FBA
96FB0:  VMOV.F32        S0, S6
96FB4:  B               loc_96FE4
96FB6:  MOVS            R0, #0
96FB8:  B               loc_96FF6
96FBA:  CMN.W           R4, #2
96FBE:  IT LE
96FC0:  LDRLE           R1, [R0,#0xC]
96FC2:  RSB.W           R0, R1, R1,LSL#3
96FC6:  ADD.W           R0, R2, R0,LSL#2
96FCA:  VLDR            S2, [R0]
96FCE:  VMLA.F32        S0, S4, S2
96FD2:  VSUB.F32        S0, S0, S8
96FD6:  VCMP.F32        S6, S0
96FDA:  VMRS            APSR_nzcv, FPSCR
96FDE:  IT MI
96FE0:  VMOVMI.F32      S0, S6
96FE4:  VMOV            R1, S0
96FE8:  MOV             R0, R4
96FEA:  BL              sub_9962C
96FEE:  SUBS.W          R0, R4, #0xFFFFFFFF
96FF2:  IT NE
96FF4:  MOVNE           R0, #1
96FF6:  MOVS            R2, #0
96FF8:  VLDR            S0, [R9,#0xC]
96FFC:  VLDR            S2, [R9,#0x1B4]
97000:  STR.W           R2, [R9,#0x1C0]
97004:  VADD.F32        S0, S0, S2
97008:  VLDR            S2, =0.0
9700C:  STRB.W          R0, [R8,#9]
97010:  STR.W           R2, [R9,#0x1BC]
97014:  VADD.F32        S0, S0, S2
97018:  VCVT.S32.F32    S0, S0
9701C:  VCVT.F32.S32    S0, S0
97020:  VSTR            S0, [R9,#0xC8]
97024:  LDR             R0, [SP,#0xA0+var_64]
97026:  LDR             R1, =(__stack_chk_guard_ptr - 0x9702C)
97028:  ADD             R1, PC; __stack_chk_guard_ptr
9702A:  LDR             R1, [R1]; __stack_chk_guard
9702C:  LDR             R1, [R1]
9702E:  CMP             R1, R0
97030:  ITTTT EQ
97032:  ADDEQ           SP, SP, #0x40 ; '@'
97034:  VPOPEQ          {D8-D15}
97038:  ADDEQ           SP, SP, #4
9703A:  POPEQ.W         {R8-R11}
9703E:  IT EQ
97040:  POPEQ           {R4-R7,PC}
97042:  BLX             __stack_chk_fail
