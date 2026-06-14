; =========================================================
; Game Engine Function: sub_101BA0
; Address            : 0x101BA0 - 0x101FC6
; =========================================================

101BA0:  PUSH            {R4-R7,LR}
101BA2:  ADD             R7, SP, #0xC
101BA4:  PUSH.W          {R8-R11}
101BA8:  SUB             SP, SP, #4
101BAA:  VPUSH           {D8-D15}
101BAE:  SUB             SP, SP, #0xA8
101BB0:  LDRH            R5, [R0,#0xC]
101BB2:  MOVW            R2, #0xFFFF
101BB6:  MOV             R4, R0
101BB8:  CMP             R5, R2
101BBA:  BEQ             loc_101C1A
101BBC:  LDR             R0, =(off_23496C - 0x101BC2)
101BBE:  ADD             R0, PC; off_23496C
101BC0:  LDR             R0, [R0]; dword_23DEF4
101BC2:  LDR             R0, [R0]
101BC4:  CMP             R0, #0
101BC6:  BEQ.W           loc_101FB8
101BCA:  LDR.W           R0, [R0,#0x3B0]
101BCE:  LDR             R6, [R0,#4]
101BD0:  CMP             R6, #0
101BD2:  BEQ.W           loc_101FB8
101BD6:  LSRS            R0, R5, #4
101BD8:  CMP             R0, #0x7C ; '|'
101BDA:  BHI.W           loc_101FB8
101BDE:  MOV             R0, R6
101BE0:  MOV             R1, R5
101BE2:  BL              sub_F2396
101BE6:  CMP             R0, #0
101BE8:  BEQ.W           loc_101FB8
101BEC:  LDR.W           R5, [R6,R5,LSL#2]
101BF0:  CMP             R5, #0
101BF2:  BEQ.W           loc_101FB8
101BF6:  MOV             R0, R5
101BF8:  BL              sub_F8C70
101BFC:  CMP             R0, #0
101BFE:  BEQ.W           loc_101FB8
101C02:  MOV             R0, R4
101C04:  MOV             R1, R5
101C06:  ADD             SP, SP, #0xA8
101C08:  VPOP            {D8-D15}
101C0C:  ADD             SP, SP, #4
101C0E:  POP.W           {R8-R11}
101C12:  POP.W           {R4-R7,LR}
101C16:  B.W             sub_101FFC
101C1A:  LDRH            R0, [R4,#0xE]
101C1C:  CMP             R0, R2
101C1E:  BEQ             loc_101C70
101C20:  LDR             R1, =(off_23496C - 0x101C26)
101C22:  ADD             R1, PC; off_23496C
101C24:  LDR             R1, [R1]; dword_23DEF4
101C26:  LDR             R1, [R1]
101C28:  CMP             R1, #0
101C2A:  BEQ.W           loc_101FB8
101C2E:  LDR.W           R1, [R1,#0x3B0]
101C32:  LDR             R1, [R1,#0x10]
101C34:  CMP             R1, #0
101C36:  BEQ.W           loc_101FB8
101C3A:  CMP.W           R0, #0x3E8
101C3E:  BHI.W           loc_101FB8
101C42:  ADDS            R2, R1, R0
101C44:  LDRB            R2, [R2,#4]
101C46:  CMP             R2, #0
101C48:  BEQ.W           loc_101FB8
101C4C:  ADD.W           R0, R1, R0,LSL#2
101C50:  LDR.W           R1, [R0,#0x3EC]
101C54:  CMP             R1, #0
101C56:  BEQ.W           loc_101FB8
101C5A:  MOV             R0, R4
101C5C:  ADD             SP, SP, #0xA8
101C5E:  VPOP            {D8-D15}
101C62:  ADD             SP, SP, #4
101C64:  POP.W           {R8-R11}
101C68:  POP.W           {R4-R7,LR}
101C6C:  B.W             sub_102084
101C70:  LDRB.W          R0, [R4,#0x2C4]
101C74:  LSLS            R0, R0, #0x1F
101C76:  BEQ.W           loc_101FB8
101C7A:  ADD.W           R8, SP, #0x108+var_A0
101C7E:  ADD             R0, SP, #0x108+var_A0
101C80:  ADD.W           R5, R0, #0x30 ; '0'
101C84:  VMOV            S28, R1
101C88:  MOV             R0, R4
101C8A:  MOV             R1, R8
101C8C:  ADD.W           R6, R4, #0x300
101C90:  BL              sub_F8910
101C94:  VLDR            D16, [R6,#4]
101C98:  VLDR            D17, [R5,#4]
101C9C:  VLDR            S0, [R4,#0x300]
101CA0:  VSUB.F32        D16, D17, D16
101CA4:  VLDR            S2, [SP,#0x108+var_70]
101CA8:  VLDR            S16, [R4,#0x2C8]
101CAC:  VSUB.F32        S0, S2, S0
101CB0:  VMUL.F32        D1, D16, D16
101CB4:  VMLA.F32        S2, S0, S0
101CB8:  VADD.F32        S0, S2, S3
101CBC:  VSQRT.F32       S18, S0
101CC0:  BL              sub_F0B30
101CC4:  VMUL.F32        S0, S16, S28
101CC8:  VCMP.F32        S0, S18
101CCC:  VMRS            APSR_nzcv, FPSCR
101CD0:  BGE.W           loc_101E94
101CD4:  VCMP.F32        S28, #0.0
101CD8:  VMRS            APSR_nzcv, FPSCR
101CDC:  BLS.W           loc_101FB8
101CE0:  VDIV.F32        S0, S18, S0
101CE4:  LDR.W           R1, [R4,#0x34C]
101CE8:  ADD.W           R2, R8, #0x30 ; '0'
101CEC:  ADD.W           R3, R8, #0x34 ; '4'
101CF0:  SUBS            R0, R0, R1
101CF2:  VMOV.F32        S22, #1.0
101CF6:  VLDR            S16, =0.001
101CFA:  VMOV            S2, R0
101CFE:  VLDR            S4, [R4,#0x2C8]
101D02:  VLDR            S20, [R4,#0x348]
101D06:  VCVT.F32.U32    S2, S2
101D0A:  VLDR            D16, [R5]
101D0E:  VSUB.F32        S26, S20, S18
101D12:  VLDR            D17, [R6]
101D16:  VSUB.F32        D17, D17, D16
101D1A:  VMOV            D19, D16
101D1E:  VDIV.F32        S0, S22, S0
101D22:  VMUL.F32        S2, S2, S16
101D26:  VDUP.32         D18, D0[0]
101D2A:  VDIV.F32        S6, S22, S28
101D2E:  VMUL.F32        S24, S4, S2
101D32:  VLDR            S2, [SP,#0x108+var_68]
101D36:  VLDR            S4, [R4,#0x308]
101D3A:  VMOV            R1, S26
101D3E:  VMOV.F32        S8, S2
101D42:  VSUB.F32        S4, S4, S2
101D46:  VMLA.F32        D19, D17, D18
101D4A:  VLDR            D17, =1.37667655e-16
101D4E:  VMOV            R0, S24
101D52:  VMLA.F32        S8, S4, S0
101D56:  VST1.32         {D19[1]}, [R3@32]
101D5A:  VSUB.F32        D16, D19, D16
101D5E:  VST1.32         {D19[0]}, [R2@32]
101D62:  VSUB.F32        S0, S8, S2
101D66:  VMUL.F32        D16, D16, D3[0]
101D6A:  VLDR            S2, =0.02
101D6E:  VSTR            S8, [SP,#0x108+var_68]
101D72:  VMUL.F32        D15, D16, D17
101D76:  VMUL.F32        S0, S6, S0
101D7A:  VMUL.F32        S28, S0, S2
101D7E:  BL              sub_108700
101D82:  VLDR            S0, =0.1
101D86:  VMOV            S2, R0
101D8A:  VCMP.F32        S2, S0
101D8E:  VMRS            APSR_nzcv, FPSCR
101D92:  BLE             loc_101DD4
101D94:  VCMP.F32        S24, S26
101D98:  VMRS            APSR_nzcv, FPSCR
101D9C:  BLE             loc_101DB2
101D9E:  VSUB.F32        S2, S24, S26
101DA2:  VMOV.F64        D2, D11
101DA6:  VMLA.F32        S4, S2, S0
101DAA:  VMUL.F32        S28, S4, S28
101DAE:  VMUL.F32        D15, D15, D2[0]
101DB2:  VCMP.F32        S26, S24
101DB6:  VMRS            APSR_nzcv, FPSCR
101DBA:  BLE             loc_101DD4
101DBC:  VSUB.F32        S0, S26, S24
101DC0:  VLDR            S2, =-0.1
101DC4:  VMOV.F64        D2, D11
101DC8:  VMLA.F32        S4, S0, S2
101DCC:  VMUL.F32        S28, S4, S28
101DD0:  VMUL.F32        D15, D15, D2[0]
101DD4:  VMOV.32         R1, D15[0]
101DD8:  VMOV            R3, S28
101DDC:  VMOV.32         R2, D15[1]
101DE0:  MOV             R0, R4
101DE2:  BL              sub_F89BC
101DE6:  MOV             R0, R4
101DE8:  BL              sub_102128
101DEC:  LDRB.W          R0, [R4,#0x2CC]
101DF0:  CMP             R0, #0
101DF2:  BEQ.W           loc_101F60
101DF6:  VDIV.F32        S24, S18, S20
101DFA:  ADD             R1, SP, #0x108+var_A4
101DFC:  ADD             R2, SP, #0x108+var_A8
101DFE:  ADD             R3, SP, #0x108+var_AC
101E00:  MOV             R0, R4
101E02:  VSUB.F32        S20, S22, S24
101E06:  BL              sub_1021F0
101E0A:  VLDR            S2, [R4,#0x344]
101E0E:  VMOV            R0, S18
101E12:  VLDR            S0, [R4,#0x338]
101E16:  VMLS.F32        S0, S24, S2
101E1A:  VMOV            R1, S0
101E1E:  BL              sub_108818
101E22:  VLDR            S0, =0.01
101E26:  VMOV            S2, R0
101E2A:  VMUL.F32        S0, S2, S0
101E2E:  VCMP.F32        S0, S16
101E32:  VMRS            APSR_nzcv, FPSCR
101E36:  BHI             loc_101E4E
101E38:  VLDR            S2, =-0.001
101E3C:  VMOV.F32        S16, S0
101E40:  VCMP.F32        S0, S2
101E44:  VMRS            APSR_nzcv, FPSCR
101E48:  IT MI
101E4A:  VMOVMI.F32      S16, S2
101E4E:  VMOV            R3, S16
101E52:  MOV             R0, R4
101E54:  MOVS            R1, #0
101E56:  MOVS            R2, #0
101E58:  BL              sub_F8A08
101E5C:  ADD             R5, SP, #0x108+var_A0
101E5E:  MOV             R0, R4
101E60:  MOV             R1, R5
101E62:  BL              sub_F8910
101E66:  VMOV            R3, S20
101E6A:  ADR             R0, dword_101FD0
101E6C:  ADD             R6, SP, #0x108+var_C0
101E6E:  VLD1.64         {D16-D17}, [R0]
101E72:  ADD.W           R1, R4, #0x310
101E76:  ADD.W           R2, R4, #0x320
101E7A:  MOV             R0, R6
101E7C:  VST1.64         {D16-D17}, [R6]
101E80:  BL              sub_17D338
101E84:  MOV             R0, R6
101E86:  BL              sub_17D2F2
101E8A:  MOV             R0, R6
101E8C:  MOV             R1, R5
101E8E:  BL              sub_17D238
101E92:  B               loc_101F68
101E94:  MOV             R0, R4
101E96:  MOVS            R1, #0
101E98:  MOVS            R2, #0
101E9A:  MOVS            R3, #0
101E9C:  BL              sub_F89BC
101EA0:  MOV             R0, R4
101EA2:  MOVS            R1, #0
101EA4:  MOVS            R2, #0
101EA6:  MOVS            R3, #0
101EA8:  BL              sub_F8A08
101EAC:  LDRB.W          R0, [R4,#0x2CC]
101EB0:  VLDR            S0, [R4,#0x300]
101EB4:  VLDR            S2, [R4,#0x304]
101EB8:  VLDR            S4, [R4,#0x308]
101EBC:  VSTR            S0, [SP,#0x108+var_70]
101EC0:  VSTR            S2, [SP,#0x108+var_6C]
101EC4:  VSTR            S4, [SP,#0x108+var_68]
101EC8:  CBZ             R0, loc_101EE0
101ECA:  ADD.W           R0, R4, #0x320
101ECE:  ADD             R1, SP, #0x108+var_A0
101ED0:  BL              sub_17D238
101ED4:  LDR             R0, [SP,#0x108+var_70]
101ED6:  STR             R0, [SP,#0x108+var_CC]
101ED8:  LDR             R0, [SP,#0x108+var_6C]
101EDA:  STR             R0, [SP,#0x108+var_D0]
101EDC:  LDR             R0, [SP,#0x108+var_68]
101EDE:  B               loc_101EF0
101EE0:  VMOV            R0, S0
101EE4:  STR             R0, [SP,#0x108+var_CC]
101EE6:  VMOV            R0, S2
101EEA:  STR             R0, [SP,#0x108+var_D0]
101EEC:  VMOV            R0, S4
101EF0:  ADD.W           LR, SP, #0x108+var_88
101EF4:  STR             R0, [SP,#0x108+var_D4]
101EF6:  LDR             R0, [SP,#0x108+var_A0]
101EF8:  STR             R0, [SP,#0x108+var_C4]
101EFA:  LDR             R0, [SP,#0x108+var_9C]
101EFC:  LDR.W           R8, [SP,#0x108+var_74]
101F00:  STR             R0, [SP,#0x108+var_C8]
101F02:  LDRD.W          R3, R2, [SP,#0x108+var_98]
101F06:  LDRD.W          R6, R5, [SP,#0x108+var_90]
101F0A:  LDM.W           LR, {R9-R12,LR}
101F0E:  LDR             R0, [SP,#0x108+var_64]
101F10:  STR.W           R8, [SP,#0x108+var_E8]
101F14:  LDR             R1, [SP,#0x108+var_CC]
101F16:  STR             R1, [SP,#0x108+var_E4]
101F18:  LDR             R1, [SP,#0x108+var_D0]
101F1A:  STR             R1, [SP,#0x108+var_E0]
101F1C:  LDR             R1, [SP,#0x108+var_D4]
101F1E:  STRD.W          R1, R0, [SP,#0x108+var_DC]
101F22:  ADD             R0, SP, #0x108+var_100
101F24:  STM.W           R0, {R5,R9-R12,LR}
101F28:  MOV             R0, R4
101F2A:  STRD.W          R2, R6, [SP,#0x108+var_108]
101F2E:  LDRD.W          R2, R1, [SP,#0x108+var_C8]
101F32:  BL              sub_F8F58
101F36:  MOV             R0, R4
101F38:  MOVS            R1, #0
101F3A:  MOVS            R2, #0
101F3C:  MOVS            R3, #0
101F3E:  BL              sub_F89BC
101F42:  MOV             R0, R4
101F44:  MOVS            R1, #0
101F46:  MOVS            R2, #0
101F48:  MOVS            R3, #0
101F4A:  BL              sub_F8A08
101F4E:  LDRB.W          R0, [R4,#0x2C4]
101F52:  AND.W           R0, R0, #0xFE
101F56:  STRB.W          R0, [R4,#0x2C4]
101F5A:  B               loc_101FB8
101F5C:  DCD off_23496C - 0x101BC2
101F60:  ADD             R1, SP, #0x108+var_A0
101F62:  MOV             R0, R4
101F64:  BL              sub_F8910
101F68:  LDR             R0, [SP,#0x108+var_A0]
101F6A:  ADD.W           R12, SP, #0x108+var_74
101F6E:  STR             R0, [SP,#0x108+var_C4]
101F70:  LDR             R0, [SP,#0x108+var_9C]
101F72:  STR             R0, [SP,#0x108+var_C8]
101F74:  LDR             R0, [SP,#0x108+var_98]
101F76:  STR             R0, [SP,#0x108+var_CC]
101F78:  LDRD.W          R5, R0, [SP,#0x108+var_8C]
101F7C:  LDRD.W          R11, R6, [SP,#0x108+var_94]
101F80:  STR             R0, [SP,#0x108+var_D0]
101F82:  LDRD.W          LR, R8, [SP,#0x108+var_84]
101F86:  LDM.W           R12, {R0-R3,R12}
101F8A:  LDRD.W          R9, R10, [SP,#0x108+var_7C]
101F8E:  STR             R0, [SP,#0x108+var_E8]
101F90:  STR             R1, [SP,#0x108+var_E4]
101F92:  STR             R2, [SP,#0x108+var_E0]
101F94:  STR             R3, [SP,#0x108+var_DC]
101F96:  STR.W           R12, [SP,#0x108+var_D8]
101F9A:  STRD.W          R11, R6, [SP,#0x108+var_108]
101F9E:  STR             R5, [SP,#0x108+var_100]
101FA0:  LDR             R0, [SP,#0x108+var_D0]
101FA2:  STRD.W          R0, LR, [SP,#0x108+var_FC]
101FA6:  ADD             R0, SP, #0x108+var_F4
101FA8:  STM.W           R0, {R8-R10}
101FAC:  MOV             R0, R4
101FAE:  LDR             R1, [SP,#0x108+var_C4]
101FB0:  LDRD.W          R3, R2, [SP,#0x108+var_CC]
101FB4:  BL              sub_F8F58
101FB8:  ADD             SP, SP, #0xA8
101FBA:  VPOP            {D8-D15}
101FBE:  ADD             SP, SP, #4
101FC0:  POP.W           {R8-R11}
101FC4:  POP             {R4-R7,PC}
