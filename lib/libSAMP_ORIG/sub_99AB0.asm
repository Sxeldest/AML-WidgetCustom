; =========================================================
; Game Engine Function: sub_99AB0
; Address            : 0x99AB0 - 0x99F60
; =========================================================

99AB0:  PUSH            {R4-R7,LR}
99AB2:  ADD             R7, SP, #0xC
99AB4:  PUSH.W          {R8-R11}
99AB8:  SUB             SP, SP, #4
99ABA:  VPUSH           {D10-D11}
99ABE:  VPUSH           {D8}
99AC2:  SUB             SP, SP, #0x40
99AC4:  MOV             R5, R1
99AC6:  LDR             R1, =(dword_1ACF68 - 0x99ACE)
99AC8:  MOV             R4, R2
99ACA:  ADD             R1, PC; dword_1ACF68
99ACC:  STR             R1, [SP,#0x78+var_5C]
99ACE:  LDR.W           R9, [R1]
99AD2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x99ADA)
99AD6:  ADD             R1, PC; __stack_chk_guard_ptr
99AD8:  LDR             R1, [R1]; __stack_chk_guard
99ADA:  LDR             R1, [R1]
99ADC:  STR             R1, [SP,#0x78+var_3C]
99ADE:  MOVW            R1, #0x19AC
99AE2:  LDR.W           R8, [R9,R1]
99AE6:  MOVS            R1, #1
99AE8:  STRB.W          R1, [R8,#0x7C]
99AEC:  MOV             R1, R5
99AEE:  BL              sub_999D8
99AF2:  MOV             R1, R0
99AF4:  MOV             R0, R8
99AF6:  BL              sub_99850
99AFA:  MOV             R6, R0
99AFC:  ADD.W           R0, R9, #0x1560
99B00:  VLDR            S2, [R8,#0x1B4]
99B04:  VMOV.F32        S8, #1.0
99B08:  VLDR            S6, [R0]
99B0C:  MOVS            R0, #0
99B0E:  VLDR            S0, [R8,#0xC]
99B12:  ADD.W           R10, R5, #1
99B16:  VSUB.F32        S2, S2, S6
99B1A:  VLDR            S4, [R8,#0x208]
99B1E:  VSUB.F32        S0, S4, S0
99B22:  VADD.F32        S4, S2, S8
99B26:  VCMP.F32        S0, S4
99B2A:  VMRS            APSR_nzcv, FPSCR
99B2E:  IT GE
99B30:  VMOVGE.F32      S4, S0
99B34:  STRD.W          R0, R5, [R6,#0xC]
99B38:  STR             R4, [R6,#4]
99B3A:  VSTR            S2, [R6,#0x14]
99B3E:  VSTR            S4, [R6,#0x18]
99B42:  LDR.W           R1, [R8,#0xCC]
99B46:  STR.W           R6, [R8,#0x1C0]
99B4A:  STR             R1, [R6,#0x24]
99B4C:  LDR.W           R1, [R8,#0xE0]
99B50:  STR             R1, [R6,#0x28]
99B52:  ADD.W           R1, R8, #0x210
99B56:  VLD1.32         {D16-D17}, [R1]
99B5A:  ADD.W           R1, R6, #0x2C ; ','
99B5E:  VST1.32         {D16-D17}, [R1]!
99B62:  VLDR            S0, [R8,#0xC]
99B66:  VLDR            S2, [R8,#0x1B4]
99B6A:  STR.W           R0, [R8,#0x1BC]
99B6E:  VADD.F32        S0, S0, S2
99B72:  VLDR            S2, =0.0
99B76:  VADD.F32        S0, S0, S2
99B7A:  VLDR            S2, [R8,#0xCC]
99B7E:  VSTR            S2, [R6,#0x1C]
99B82:  VSTR            S2, [R6,#0x20]
99B86:  VCVT.S32.F32    S0, S0
99B8A:  VCVT.F32.S32    S0, S0
99B8E:  VSTR            S0, [R8,#0xC8]
99B92:  LDR             R0, [R1]
99B94:  LDR             R1, =(off_117248 - 0x99B9C)
99B96:  CMP             R0, #0
99B98:  ADD             R1, PC; off_117248
99B9A:  STR             R1, [SP,#0x78+var_64]
99B9C:  LDR             R1, =(dword_1ACF70 - 0x99BA2)
99B9E:  ADD             R1, PC; dword_1ACF70
99BA0:  STR             R1, [SP,#0x78+var_60]
99BA2:  LDR             R1, =(off_11724C - 0x99BA8)
99BA4:  ADD             R1, PC; off_11724C
99BA6:  STR             R1, [SP,#0x78+var_6C]
99BA8:  IT NE
99BAA:  CMPNE           R0, R10
99BAC:  BNE             loc_99CAC
99BAE:  CLZ.W           R1, R0
99BB2:  CMP             R0, #0
99BB4:  MOV.W           R1, R1,LSR#5
99BB8:  STRB            R1, [R6,#8]
99BBA:  BEQ.W           loc_99D20
99BBE:  LDR             R2, [SP,#0x78+var_5C]
99BC0:  CMP             R5, #1
99BC2:  BLT.W           loc_99E90
99BC6:  VMOV.F32        S0, #0.5
99BCA:  MOVW            LR, #0xFFFF
99BCE:  VMOV.F32        S2, #-1.0
99BD2:  VLDR            S4, =-3.4028e38
99BD6:  VLDR            S6, =3.4028e38
99BDA:  MOVS            R0, #0
99BDC:  MOVW            R12, #0x19AC
99BE0:  MOVT            LR, #0x7F7F
99BE4:  MOV             R3, #0xFF7FFFFF
99BE8:  LDR             R1, [R2]
99BEA:  VLDR            S12, [R8,#0xC]
99BEE:  LDR.W           R1, [R1,R12]
99BF2:  VADD.F32        S12, S12, S0
99BF6:  LDR.W           R1, [R1,#0x1C0]
99BFA:  VLDR            S8, [R1,#0x14]
99BFE:  VLDR            S10, [R1,#0x18]
99C02:  LDR             R1, [R1,#0x44]
99C04:  VMOV.F32        S3, S8
99C08:  VSUB.F32        S10, S10, S8
99C0C:  ADD             R1, R0
99C0E:  VLDR            S1, [R1,#0x1C]
99C12:  VLDR            S14, [R1]
99C16:  LDR             R1, [R6,#0x44]
99C18:  VMLA.F32        S3, S10, S1
99C1C:  ADD             R1, R0
99C1E:  VMLA.F32        S8, S10, S14
99C22:  ADDS            R0, #0x1C
99C24:  STR.W           LR, [R1,#0x18]
99C28:  STR             R3, [R1,#0x10]
99C2A:  VADD.F32        S10, S12, S3
99C2E:  VADD.F32        S8, S12, S8
99C32:  VADD.F32        S10, S10, S2
99C36:  VCVT.S32.F32    S8, S8
99C3A:  VCVT.S32.F32    S10, S10
99C3E:  VCVT.F32.S32    S8, S8
99C42:  VCVT.F32.S32    S10, S10
99C46:  VSTR            S8, [R1,#0xC]
99C4A:  VSTR            S10, [R1,#0x14]
99C4E:  VLDR            S14, [R8,#0x214]
99C52:  VLDR            S12, [R8,#0x210]
99C56:  VCMP.F32        S14, S4
99C5A:  VMRS            APSR_nzcv, FPSCR
99C5E:  VCMP.F32        S12, S8
99C62:  IT LS
99C64:  VMOVLS.F32      S14, S4
99C68:  VMRS            APSR_nzcv, FPSCR
99C6C:  IT LS
99C6E:  VMOVLS.F32      S12, S8
99C72:  VSTR            S14, [R1,#0x10]
99C76:  VSTR            S12, [R1,#0xC]
99C7A:  VLDR            S12, [R8,#0x21C]
99C7E:  VLDR            S8, [R8,#0x218]
99C82:  VCMP.F32        S12, S6
99C86:  VMRS            APSR_nzcv, FPSCR
99C8A:  VCMP.F32        S8, S10
99C8E:  IT GT
99C90:  VMOVGT.F32      S12, S6
99C94:  VMRS            APSR_nzcv, FPSCR
99C98:  IT GT
99C9A:  VMOVGT.F32      S8, S10
99C9E:  SUBS            R5, #1
99CA0:  VSTR            S12, [R1,#0x18]
99CA4:  VSTR            S8, [R1,#0x14]
99CA8:  BNE             loc_99BE8
99CAA:  B               loc_99E90
99CAC:  LDR.W           R9, [R6,#0x40]
99CB0:  CMP.W           R9, #0xFFFFFFFF
99CB4:  BGT             loc_99D12
99CB6:  LDR             R0, [SP,#0x78+var_5C]
99CB8:  MOV.W           R9, #0
99CBC:  LDR             R0, [R0]
99CBE:  CMP             R0, #0
99CC0:  ITTT NE
99CC2:  LDRNE.W         R1, [R0,#0x370]
99CC6:  ADDNE           R1, #1
99CC8:  STRNE.W         R1, [R0,#0x370]
99CCC:  LDR             R0, [SP,#0x78+var_60]
99CCE:  LDR             R1, [R0]
99CD0:  LDR             R0, [SP,#0x78+var_64]
99CD2:  LDR             R2, [R0]
99CD4:  MOVS            R0, #0
99CD6:  BLX             R2; sub_9A720
99CD8:  LDR             R1, [R6,#0x44]; src
99CDA:  MOV             R4, R0
99CDC:  CBZ             R1, loc_99D0E
99CDE:  LDR             R0, [R6,#0x3C]
99CE0:  RSB.W           R0, R0, R0,LSL#3
99CE4:  LSLS            R2, R0, #2; n
99CE6:  MOV             R0, R4; dest
99CE8:  BLX             j_memcpy
99CEC:  LDR             R0, [R6,#0x44]
99CEE:  CMP             R0, #0
99CF0:  ITTTT NE
99CF2:  LDRNE           R1, [SP,#0x78+var_5C]
99CF4:  LDRNE           R1, [R1]
99CF6:  CMPNE           R1, #0
99CF8:  LDRNE.W         R2, [R1,#0x370]
99CFC:  ITT NE
99CFE:  SUBNE           R2, #1
99D00:  STRNE.W         R2, [R1,#0x370]
99D04:  LDR             R1, [SP,#0x78+var_60]
99D06:  LDR             R2, [SP,#0x78+var_6C]
99D08:  LDR             R1, [R1]
99D0A:  LDR             R2, [R2]
99D0C:  BLX             R2; j_opus_decoder_destroy_0
99D0E:  STRD.W          R9, R4, [R6,#0x40]
99D12:  MOVS            R0, #1
99D14:  STRB            R0, [R6,#8]
99D16:  MOVS            R0, #0
99D18:  STR             R0, [R6,#0x3C]
99D1A:  CMP             R9, R5
99D1C:  BLE             loc_99D28
99D1E:  B               loc_99D86
99D20:  LDR.W           R9, [R6,#0x40]
99D24:  CMP             R9, R5
99D26:  BGT             loc_99D86
99D28:  LDR             R1, [SP,#0x78+var_5C]
99D2A:  RSB.W           R0, R10, R10,LSL#3
99D2E:  LSLS            R0, R0, #2
99D30:  LDR             R1, [R1]
99D32:  CMP             R1, #0
99D34:  ITTT NE
99D36:  LDRNE.W         R2, [R1,#0x370]
99D3A:  ADDNE           R2, #1
99D3C:  STRNE.W         R2, [R1,#0x370]
99D40:  LDR             R1, [SP,#0x78+var_60]
99D42:  LDR             R2, [SP,#0x78+var_64]
99D44:  LDR             R1, [R1]
99D46:  LDR             R2, [R2]
99D48:  BLX             R2; sub_9A720
99D4A:  LDR             R1, [R6,#0x44]; src
99D4C:  MOV             R4, R0
99D4E:  CBZ             R1, loc_99D80
99D50:  LDR             R0, [R6,#0x3C]
99D52:  RSB.W           R0, R0, R0,LSL#3
99D56:  LSLS            R2, R0, #2; n
99D58:  MOV             R0, R4; dest
99D5A:  BLX             j_memcpy
99D5E:  LDR             R0, [R6,#0x44]
99D60:  CMP             R0, #0
99D62:  ITTTT NE
99D64:  LDRNE           R1, [SP,#0x78+var_5C]
99D66:  LDRNE           R1, [R1]
99D68:  CMPNE           R1, #0
99D6A:  LDRNE.W         R2, [R1,#0x370]
99D6E:  ITT NE
99D70:  SUBNE           R2, #1
99D72:  STRNE.W         R2, [R1,#0x370]
99D76:  LDR             R1, [SP,#0x78+var_60]
99D78:  LDR             R2, [SP,#0x78+var_6C]
99D7A:  LDR             R1, [R1]
99D7C:  LDR             R2, [R2]
99D7E:  BLX             R2; j_opus_decoder_destroy_0
99D80:  MOV             R9, R10
99D82:  STRD.W          R10, R4, [R6,#0x40]
99D86:  CMP             R5, #0
99D88:  BMI.W           loc_99E90
99D8C:  VMOV            S0, R5
99D90:  ADD.W           R12, SP, #0x78+var_58
99D94:  ADR             R1, dword_99F70
99D96:  LDR             R0, [R6,#0x3C]
99D98:  VCVT.F32.S32    S16, S0
99D9C:  ADD.W           LR, R12, #0xC
99DA0:  VLD1.64         {D10-D11}, [R1@128]
99DA4:  MOVS            R4, #0
99DA6:  MOV.W           R11, #0
99DAA:  STR.W           LR, [SP,#0x78+var_68]
99DAE:  VMOV            S0, R11
99DB2:  CMP             R0, R9
99DB4:  VST1.32         {D10-D11}, [LR]
99DB8:  VCVT.F32.S32    S0, S0
99DBC:  STRD.W          R4, R4, [SP,#0x78+var_54]
99DC0:  VDIV.F32        S0, S0, S16
99DC4:  VSTR            S0, [SP,#0x78+var_58]
99DC8:  BNE             loc_99E52
99DCA:  CMP.W           R9, #0
99DCE:  ADD.W           R10, R9, #1
99DD2:  ITTE NE
99DD4:  ADDNE.W         R0, R9, R9,LSR#31
99DD8:  ADDNE.W         R0, R9, R0,ASR#1
99DDC:  MOVEQ           R0, #8
99DDE:  CMP             R0, R10
99DE0:  IT GT
99DE2:  MOVGT           R10, R0
99DE4:  CMP             R9, R10
99DE6:  MOV             R0, R9
99DE8:  BGE             loc_99E52
99DEA:  LDR             R0, [SP,#0x78+var_5C]
99DEC:  MOV             R9, R12
99DEE:  LDR             R0, [R0]
99DF0:  CMP             R0, #0
99DF2:  ITTT NE
99DF4:  LDRNE.W         R1, [R0,#0x370]
99DF8:  ADDNE           R1, #1
99DFA:  STRNE.W         R1, [R0,#0x370]
99DFE:  LDR             R1, [SP,#0x78+var_60]
99E00:  RSB.W           R0, R10, R10,LSL#3
99E04:  LDR             R2, [SP,#0x78+var_64]
99E06:  LSLS            R0, R0, #2
99E08:  LDR             R1, [R1]
99E0A:  LDR             R2, [R2]
99E0C:  BLX             R2; sub_9A720
99E0E:  LDR             R1, [R6,#0x44]; src
99E10:  MOV             R4, R0
99E12:  CBZ             R1, loc_99E44
99E14:  LDR             R0, [R6,#0x3C]
99E16:  RSB.W           R0, R0, R0,LSL#3
99E1A:  LSLS            R2, R0, #2; n
99E1C:  MOV             R0, R4; dest
99E1E:  BLX             j_memcpy
99E22:  LDR             R0, [R6,#0x44]
99E24:  CMP             R0, #0
99E26:  ITTTT NE
99E28:  LDRNE           R1, [SP,#0x78+var_5C]
99E2A:  LDRNE           R1, [R1]
99E2C:  CMPNE           R1, #0
99E2E:  LDRNE.W         R2, [R1,#0x370]
99E32:  ITT NE
99E34:  SUBNE           R2, #1
99E36:  STRNE.W         R2, [R1,#0x370]
99E3A:  LDR             R1, [SP,#0x78+var_60]
99E3C:  LDR             R2, [SP,#0x78+var_6C]
99E3E:  LDR             R1, [R1]
99E40:  LDR             R2, [R2]
99E42:  BLX             R2; j_opus_decoder_destroy_0
99E44:  LDR             R0, [R6,#0x3C]
99E46:  MOV             R12, R9
99E48:  LDR.W           LR, [SP,#0x78+var_68]
99E4C:  STRD.W          R10, R4, [R6,#0x40]
99E50:  MOVS            R4, #0
99E52:  MOV             R1, R12
99E54:  MOVS            R3, #0xC
99E56:  LDR             R2, [R6,#0x44]
99E58:  RSB.W           R0, R0, R0,LSL#3
99E5C:  VLD1.8          {D16-D17}, [R1],R3
99E60:  CMP             R5, R11
99E62:  ADD.W           R0, R2, R0,LSL#2
99E66:  VLD1.32         {D18-D19}, [R1]
99E6A:  VST1.8          {D16-D17}, [R0],R3
99E6E:  VST1.8          {D18-D19}, [R0]
99E72:  LDR             R0, [R6,#0x3C]
99E74:  ADD.W           R0, R0, #1
99E78:  STR             R0, [R6,#0x3C]
99E7A:  BEQ.W           loc_99BBE
99E7E:  LDR.W           R9, [R6,#0x40]
99E82:  ADD.W           R11, R11, #1
99E86:  B               loc_99DAE
99E88:  DCD dword_1ACF68 - 0x99ACE
99E8C:  DCFS 0.0
99E90:  LDR             R0, [R6,#0x10]
99E92:  CMP             R0, #1
99E94:  BLE             loc_99EF4
99E96:  LDR.W           R1, [R8,#0x27C]
99E9A:  ADDS            R2, R0, #1
99E9C:  ADD.W           R0, R1, #0x64 ; 'd'
99EA0:  BL              sub_9E0A8
99EA4:  LDR.W           R1, [R8,#0x27C]
99EA8:  MOVS            R2, #1
99EAA:  MOVS            R4, #1
99EAC:  ADD.W           R0, R1, #0x64 ; 'd'
99EB0:  BL              sub_9E5DE
99EB4:  LDR             R0, [SP,#0x78+var_5C]
99EB6:  MOVW            R1, #0x19AC
99EBA:  LDR             R0, [R0]
99EBC:  LDR             R5, [R0,R1]
99EBE:  LDR.W           R1, [R5,#0x1C0]
99EC2:  LDR.W           R0, [R5,#0x27C]; int
99EC6:  LDR             R6, [R1,#0x44]
99EC8:  STRB.W          R4, [R5,#0x7C]
99ECC:  MOVS            R4, #0
99ECE:  ADDS            R6, #0xC
99ED0:  LDM             R6, {R1-R3,R6}; int
99ED2:  STRD.W          R6, R4, [SP,#0x78+var_78]; float
99ED6:  BL              sub_9BFD8
99EDA:  LDR.W           R0, [R5,#0x27C]
99EDE:  LDR             R1, [R0,#0x40]
99EE0:  LDR             R0, [R0,#0x48]
99EE2:  ADD.W           R0, R0, R1,LSL#4
99EE6:  SUBS            R0, #0x10
99EE8:  VLD1.32         {D16-D17}, [R0]
99EEC:  ADD.W           R0, R5, #0x210
99EF0:  VST1.32         {D16-D17}, [R0]
99EF4:  LDR             R0, [SP,#0x78+var_5C]
99EF6:  MOVW            R1, #0x19AC
99EFA:  LDR             R0, [R0]
99EFC:  LDR             R0, [R0,R1]
99EFE:  LDR.W           R0, [R0,#0x1C0]
99F02:  LDR             R1, [R0,#0xC]
99F04:  VLDR            S0, [R0,#0x14]
99F08:  VLDR            S2, [R0,#0x18]
99F0C:  LDR             R0, [R0,#0x44]
99F0E:  RSB.W           R1, R1, R1,LSL#3
99F12:  ADD.W           R0, R0, R1,LSL#2
99F16:  VLDR            S4, [R0]
99F1A:  VLDR            S6, [R0,#0x1C]
99F1E:  LDR             R0, [SP,#0x78+var_3C]
99F20:  LDR             R1, =(__stack_chk_guard_ptr - 0x99F26)
99F22:  ADD             R1, PC; __stack_chk_guard_ptr
99F24:  LDR             R1, [R1]; __stack_chk_guard
99F26:  LDR             R1, [R1]
99F28:  CMP             R1, R0
99F2A:  IT NE
99F2C:  BLXNE           __stack_chk_fail
99F30:  VSUB.F32        S0, S2, S0
99F34:  VSUB.F32        S2, S6, S4
99F38:  VMUL.F32        S0, S2, S0
99F3C:  VLDR            S2, =0.65
99F40:  VMUL.F32        S0, S0, S2
99F44:  VMOV            R0, S0
99F48:  ADD             SP, SP, #0x40 ; '@'
99F4A:  VPOP            {D8}
99F4E:  VPOP            {D10-D11}
99F52:  ADD             SP, SP, #4
99F54:  POP.W           {R8-R11}
99F58:  POP.W           {R4-R7,LR}
99F5C:  B.W             sub_970FC
