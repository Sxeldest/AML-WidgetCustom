; =========================================================
; Game Engine Function: sub_171B60
; Address            : 0x171B60 - 0x171FAA
; =========================================================

171B60:  PUSH            {R4-R7,LR}
171B62:  ADD             R7, SP, #0xC
171B64:  PUSH.W          {R11}
171B68:  LDR             R4, =(dword_381B58 - 0x171B72)
171B6A:  MOVW            R5, #0x19AC
171B6E:  ADD             R4, PC; dword_381B58
171B70:  LDR             R4, [R4]
171B72:  ADD.W           LR, R4, R5
171B76:  LDR             R6, [R4,R5]
171B78:  LDR.W           R12, [LR,#0x160]
171B7C:  LDR.W           R4, [R6,#0x130]
171B80:  CMP             R12, R4
171B82:  BNE             loc_171C48
171B84:  VMOV            S12, R3
171B88:  LDR.W           R3, [R6,#0x2F8]
171B8C:  VMOV            S10, R2
171B90:  LDR.W           R2, [LR,#0x108]
171B94:  VMOV            S8, R1
171B98:  LDR.W           R1, [LR,#0x144]
171B9C:  VLDR            S1, [R7,#arg_0]
171BA0:  CMP             R3, R2
171BA2:  ADD.W           R1, R1, #1
171BA6:  STR.W           R1, [LR,#0x144]
171BAA:  BEQ             loc_171C0E
171BAC:  VMOV.F32        S0, S1
171BB0:  VMOV.F32        S2, S12
171BB4:  VMOV.F32        S6, S10
171BB8:  VMOV.F32        S4, S8
171BBC:  LDR.W           R1, [LR,#0x198]
171BC0:  CMP             R1, #1
171BC2:  BHI             loc_171C52
171BC4:  VLDR            S14, [R6,#0x1DC]
171BC8:  VMOV.F32        S8, S0
171BCC:  VLDR            S12, [R6,#0x1D4]
171BD0:  VMOV.F32        S10, S6
171BD4:  VCMP.F32        S0, S14
171BD8:  VMRS            APSR_nzcv, FPSCR
171BDC:  VCMP.F32        S6, S14
171BE0:  IT GT
171BE2:  VMOVGT.F32      S8, S14
171BE6:  VMRS            APSR_nzcv, FPSCR
171BEA:  VCMP.F32        S0, S12
171BEE:  IT GT
171BF0:  VMOVGT.F32      S10, S14
171BF4:  VMRS            APSR_nzcv, FPSCR
171BF8:  VCMP.F32        S6, S12
171BFC:  IT MI
171BFE:  VMOVMI.F32      S8, S12
171C02:  VMRS            APSR_nzcv, FPSCR
171C06:  IT MI
171C08:  VMOVMI.F32      S10, S12
171C0C:  B               loc_171CAA
171C0E:  VLDR            S14, [R6,#0x1D0]
171C12:  VCMP.F32        S14, S8
171C16:  VMRS            APSR_nzcv, FPSCR
171C1A:  BHI             loc_171C48
171C1C:  VLDR            S3, [R6,#0x1D4]
171C20:  VCMP.F32        S3, S10
171C24:  VMRS            APSR_nzcv, FPSCR
171C28:  BHI             loc_171C48
171C2A:  VLDR            S5, [R6,#0x1D8]
171C2E:  VCMP.F32        S5, S12
171C32:  VMRS            APSR_nzcv, FPSCR
171C36:  BLT             loc_171C48
171C38:  VLDR            S4, [R6,#0x1DC]
171C3C:  VCMP.F32        S4, S1
171C40:  VMRS            APSR_nzcv, FPSCR
171C44:  BGE.W           loc_171F28
171C48:  MOVS            R1, #0
171C4A:  MOV             R0, R1
171C4C:  POP.W           {R11}
171C50:  POP             {R4-R7,PC}
171C52:  VLDR            S10, [R6,#0x1D8]
171C56:  VMOV.F32        S12, S2
171C5A:  VLDR            S8, [R6,#0x1D0]
171C5E:  VMOV.F32        S14, S4
171C62:  VCMP.F32        S2, S10
171C66:  VMRS            APSR_nzcv, FPSCR
171C6A:  VCMP.F32        S4, S10
171C6E:  IT GT
171C70:  VMOVGT.F32      S12, S10
171C74:  VMRS            APSR_nzcv, FPSCR
171C78:  VCMP.F32        S2, S8
171C7C:  IT GT
171C7E:  VMOVGT.F32      S14, S10
171C82:  VMRS            APSR_nzcv, FPSCR
171C86:  VCMP.F32        S4, S8
171C8A:  IT MI
171C8C:  VMOVMI.F32      S12, S8
171C90:  VMRS            APSR_nzcv, FPSCR
171C94:  IT MI
171C96:  VMOVMI.F32      S14, S8
171C9A:  VMOV.F32        S8, S0
171C9E:  VMOV.F32        S2, S12
171CA2:  VMOV.F32        S10, S6
171CA6:  VMOV.F32        S4, S14
171CAA:  VLDR            S12, [LR,#0x134]
171CAE:  VLDR            S14, [LR,#0x13C]
171CB2:  VCMP.F32        S2, S12
171CB6:  VMRS            APSR_nzcv, FPSCR
171CBA:  BPL             loc_171CC2
171CBC:  VSUB.F32        S0, S2, S12
171CC0:  B               loc_171CD4
171CC2:  VCMP.F32        S14, S4
171CC6:  VMRS            APSR_nzcv, FPSCR
171CCA:  ITE MI
171CCC:  VSUBMI.F32      S0, S4, S14
171CD0:  VLDRPL          S0, =0.0
171CD4:  VLDR            S1, [LR,#0x138]
171CD8:  VSUB.F32        S5, S8, S10
171CDC:  VLDR            S3, [LR,#0x140]
171CE0:  VMOV.F32        S11, S10
171CE4:  VMOV.F32        S13, S1
171CE8:  VLDR            S7, =0.8
171CEC:  VSUB.F32        S6, S3, S1
171CF0:  VLDR            S9, =0.2
171CF4:  VMLA.F32        S11, S5, S7
171CF8:  VMLA.F32        S13, S6, S9
171CFC:  VCMP.F32        S11, S13
171D00:  VMRS            APSR_nzcv, FPSCR
171D04:  BPL             loc_171D0C
171D06:  VSUB.F32        S6, S11, S13
171D0A:  B               loc_171D2A
171D0C:  VMOV.F32        S11, S10
171D10:  VMLA.F32        S11, S5, S9
171D14:  VMOV.F32        S5, S1
171D18:  VMLA.F32        S5, S6, S7
171D1C:  VCMP.F32        S5, S11
171D20:  VMRS            APSR_nzcv, FPSCR
171D24:  BPL             loc_171D74
171D26:  VSUB.F32        S6, S11, S5
171D2A:  VCMP.F32        S6, #0.0
171D2E:  MOVS            R1, #0
171D30:  VMRS            APSR_nzcv, FPSCR
171D34:  VCMP.F32        S0, #0.0
171D38:  IT NE
171D3A:  MOVNE           R1, #1
171D3C:  VMRS            APSR_nzcv, FPSCR
171D40:  ITT NE
171D42:  VCMPNE.F32      S6, #0.0
171D46:  VMRSNE          APSR_nzcv, FPSCR
171D4A:  BEQ             loc_171D7A
171D4C:  VLDR            S5, =1000.0
171D50:  VCMP.F32        S0, #0.0
171D54:  VMOV.F32        S7, #-1.0
171D58:  VMRS            APSR_nzcv, FPSCR
171D5C:  VDIV.F32        S5, S0, S5
171D60:  MOV.W           R1, #1
171D64:  VMOV.F32        S9, #1.0
171D68:  IT GT
171D6A:  VMOVGT.F32      S7, S9
171D6E:  VADD.F32        S0, S5, S7
171D72:  B               loc_171D7A
171D74:  VLDR            S6, =0.0
171D78:  MOVS            R1, #0
171D7A:  VADD.F32        S1, S1, S3
171D7E:  VADD.F32        S8, S8, S10
171D82:  VADD.F32        S4, S2, S4
171D86:  VADD.F32        S10, S12, S14
171D8A:  VABS.F32        S3, S6
171D8E:  VSUB.F32        S2, S8, S1
171D92:  VABS.F32        S1, S0
171D96:  VSUB.F32        S4, S4, S10
171D9A:  VABS.F32        S8, S2
171D9E:  VADD.F32        S12, S3, S1
171DA2:  VABS.F32        S14, S4
171DA6:  VADD.F32        S10, S14, S8
171DAA:  CBNZ            R1, loc_171DFA
171DAC:  VCMP.F32        S0, #0.0
171DB0:  VMRS            APSR_nzcv, FPSCR
171DB4:  BNE             loc_171DFA
171DB6:  VCMP.F32        S4, #0.0
171DBA:  VMRS            APSR_nzcv, FPSCR
171DBE:  ITT EQ
171DC0:  VCMPEQ.F32      S2, #0.0
171DC4:  VMRSEQ          APSR_nzcv, FPSCR
171DC8:  BEQ             loc_171E32
171DCA:  VCMP.F32        S4, #0.0
171DCE:  MOVS            R3, #0
171DD0:  VMRS            APSR_nzcv, FPSCR
171DD4:  MOV.W           R1, #2
171DD8:  VCMP.F32        S2, #0.0
171DDC:  IT GT
171DDE:  MOVGT           R3, #1
171DE0:  VMRS            APSR_nzcv, FPSCR
171DE4:  VCMP.F32        S14, S8
171DE8:  IT GT
171DEA:  MOVGT           R1, #3
171DEC:  VMRS            APSR_nzcv, FPSCR
171DF0:  IT GT
171DF2:  MOVGT           R1, R3
171DF4:  VMOV.F32        S8, S10
171DF8:  B               loc_171E4E
171DFA:  VCMP.F32        S0, #0.0
171DFE:  MOVS            R3, #0
171E00:  VMRS            APSR_nzcv, FPSCR
171E04:  MOV.W           R1, #2
171E08:  VCMP.F32        S6, #0.0
171E0C:  IT GT
171E0E:  MOVGT           R3, #1
171E10:  VMRS            APSR_nzcv, FPSCR
171E14:  IT GT
171E16:  MOVGT           R1, #3
171E18:  VCMP.F32        S1, S3
171E1C:  VMRS            APSR_nzcv, FPSCR
171E20:  IT GT
171E22:  MOVGT           R1, R3
171E24:  VMOV.F32        S4, S0
171E28:  VMOV.F32        S2, S6
171E2C:  VMOV.F32        S8, S12
171E30:  B               loc_171E4E
171E32:  VLDR            S4, =0.0
171E36:  MOVS            R1, #0
171E38:  LDR.W           R3, [LR,#0x10C]
171E3C:  VMOV.F32        S2, S4
171E40:  LDR.W           R4, [R6,#0x108]
171E44:  VMOV.F32        S8, S4
171E48:  CMP             R4, R3
171E4A:  IT CS
171E4C:  MOVCS           R1, #1
171E4E:  LDR.W           R3, [LR,#0x190]
171E52:  VLDR            S14, [R0,#0xC]
171E56:  CMP             R1, R3
171E58:  BNE             loc_171EB4
171E5A:  VCMP.F32        S12, S14
171E5E:  VMRS            APSR_nzcv, FPSCR
171E62:  BPL             loc_171E6E
171E64:  VSTR            S12, [R0,#0xC]
171E68:  VSTR            S10, [R0,#0x10]
171E6C:  B               loc_171F24
171E6E:  VCMP.F32        S12, S14
171E72:  VMRS            APSR_nzcv, FPSCR
171E76:  BNE             loc_171EB4
171E78:  VLDR            S12, [R0,#0x10]
171E7C:  VCMP.F32        S10, S12
171E80:  VMRS            APSR_nzcv, FPSCR
171E84:  BPL             loc_171E8C
171E86:  VSTR            S10, [R0,#0x10]
171E8A:  B               loc_171EAC
171E8C:  VCMP.F32        S10, S12
171E90:  VMRS            APSR_nzcv, FPSCR
171E94:  BNE             loc_171EB4
171E96:  AND.W           R1, R1, #2
171E9A:  CMP             R1, #2
171E9C:  IT EQ
171E9E:  VMOVEQ.F32      S0, S6
171EA2:  VCMP.F32        S0, #0.0
171EA6:  VMRS            APSR_nzcv, FPSCR
171EAA:  BPL             loc_171EB4
171EAC:  MOVS            R1, #1
171EAE:  B               loc_171EB6
171EB0:  DCD dword_381B58 - 0x171B72
171EB4:  MOVS            R1, #0
171EB6:  VLDR            S0, =3.4028e38
171EBA:  VCMP.F32        S14, S0
171EBE:  VMRS            APSR_nzcv, FPSCR
171EC2:  BNE.W           loc_171C4A
171EC6:  VLDR            S0, [R0,#0x14]
171ECA:  VCMP.F32        S8, S0
171ECE:  VMRS            APSR_nzcv, FPSCR
171ED2:  BPL.W           loc_171C4A
171ED6:  CMP.W           R12, #1
171EDA:  BNE.W           loc_171C4A
171EDE:  LDRB            R2, [R2,#0xB]
171EE0:  LSLS            R2, R2, #0x1B
171EE2:  BMI.W           loc_171C4A
171EE6:  VCMP.F32        S4, #0.0
171EEA:  VMRS            APSR_nzcv, FPSCR
171EEE:  BPL             loc_171EF2
171EF0:  CBZ             R3, loc_171F20
171EF2:  VCMP.F32        S4, #0.0
171EF6:  VMRS            APSR_nzcv, FPSCR
171EFA:  BLE             loc_171F00
171EFC:  CMP             R3, #1
171EFE:  BEQ             loc_171F20
171F00:  CMP             R3, #2
171F02:  BNE             loc_171F0E
171F04:  VCMP.F32        S2, #0.0
171F08:  VMRS            APSR_nzcv, FPSCR
171F0C:  BMI             loc_171F20
171F0E:  CMP             R3, #3
171F10:  BNE.W           loc_171C4A
171F14:  VCMP.F32        S2, #0.0
171F18:  VMRS            APSR_nzcv, FPSCR
171F1C:  BLE.W           loc_171C4A
171F20:  VSTR            S8, [R0,#0x14]
171F24:  MOVS            R1, #1
171F26:  B               loc_171C4A
171F28:  VCMP.F32        S4, S1
171F2C:  VMRS            APSR_nzcv, FPSCR
171F30:  VMOV.F32        S0, S1
171F34:  VCMP.F32        S5, S12
171F38:  IT MI
171F3A:  VMOVMI.F32      S0, S4
171F3E:  VMRS            APSR_nzcv, FPSCR
171F42:  VMOV.F32        S2, S12
171F46:  VCMP.F32        S4, S10
171F4A:  IT MI
171F4C:  VMOVMI.F32      S2, S5
171F50:  VMRS            APSR_nzcv, FPSCR
171F54:  VMOV.F32        S6, S10
171F58:  VCMP.F32        S5, S8
171F5C:  IT MI
171F5E:  VMOVMI.F32      S6, S4
171F62:  VMRS            APSR_nzcv, FPSCR
171F66:  VMOV.F32        S4, S8
171F6A:  VCMP.F32        S3, S1
171F6E:  IT MI
171F70:  VMOVMI.F32      S4, S5
171F74:  VMRS            APSR_nzcv, FPSCR
171F78:  VCMP.F32        S14, S12
171F7C:  IT GT
171F7E:  VMOVGT.F32      S0, S3
171F82:  VMRS            APSR_nzcv, FPSCR
171F86:  VCMP.F32        S3, S10
171F8A:  IT GT
171F8C:  VMOVGT.F32      S2, S14
171F90:  VMRS            APSR_nzcv, FPSCR
171F94:  VCMP.F32        S14, S8
171F98:  IT GT
171F9A:  VMOVGT.F32      S6, S3
171F9E:  VMRS            APSR_nzcv, FPSCR
171FA2:  IT GT
171FA4:  VMOVGT.F32      S4, S14
171FA8:  B               loc_171BBC
