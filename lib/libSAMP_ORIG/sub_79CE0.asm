; =========================================================
; Game Engine Function: sub_79CE0
; Address            : 0x79CE0 - 0x7A3A4
; =========================================================

79CE0:  CMP             R1, #0
79CE2:  IT EQ
79CE4:  MOVEQ           R1, #1
79CE6:  CMP             R1, #3
79CE8:  BEQ             loc_79D00
79CEA:  CMP             R1, #2
79CEC:  BEQ             loc_79D40
79CEE:  CMP             R1, #1
79CF0:  ITT EQ
79CF2:  MOVEQ           R1, R2
79CF4:  BEQ.W           loc_79E4C
79CF8:  LDR             R0, =(aUnknownMode - 0x79CFE); "Unknown mode" ...
79CFA:  ADD             R0, PC; "Unknown mode"
79CFC:  B.W             sub_6C73C
79D00:  PUSH            {R4,R6,R7,LR}
79D02:  ADD             R7, SP, #0x10+var_8
79D04:  LDR             R1, =(dword_1A4548 - 0x79D0C)
79D06:  LDR             R4, =(dword_116D38 - 0x79D0E)
79D08:  ADD             R1, PC; dword_1A4548
79D0A:  ADD             R4, PC; dword_116D38
79D0C:  LDR             R3, [R1]
79D0E:  LDR             R1, [R4]
79D10:  CMP             R3, #1
79D12:  BNE             loc_79D46
79D14:  CMP             R1, #0x19
79D16:  BCC             loc_79D46
79D18:  LDR             R0, =(off_114B10 - 0x79D1E)
79D1A:  ADD             R0, PC; off_114B10
79D1C:  LDR             R0, [R0]; dword_1A442C
79D1E:  LDR             R0, [R0]
79D20:  ADD.W           R12, R0, #0x94
79D24:  MOVS            R0, #0
79D26:  LDM.W           R12, {R1,R2,R12}
79D2A:  LDR             R3, =(byte_1A44AD - 0x79D32)
79D2C:  LDR             R4, =(dword_1A454C - 0x79D36)
79D2E:  ADD             R3, PC; byte_1A44AD
79D30:  STRB            R0, [R2,#8]
79D32:  ADD             R4, PC; dword_1A454C
79D34:  STRB            R0, [R1,#8]
79D36:  STRB            R0, [R3]
79D38:  STR             R0, [R4]
79D3A:  STRB.W          R0, [R12,#8]
79D3E:  POP             {R4,R6,R7,PC}
79D40:  MOV             R1, R2
79D42:  B.W             loc_7A128
79D46:  LDR             R4, =(off_114B94 - 0x79D4E)
79D48:  CMP             R0, #0
79D4A:  ADD             R4, PC; off_114B94
79D4C:  LDR             R4, [R4]; dword_116C78
79D4E:  VLDR            S2, [R4]
79D52:  VNEG.F32        S0, S2
79D56:  IT NE
79D58:  VMOVNE.F32      S0, S2
79D5C:  CMP             R2, #3
79D5E:  IT EQ
79D60:  CMPEQ           R3, #1
79D62:  BEQ             loc_79DAA
79D64:  CMP             R2, #4
79D66:  IT EQ
79D68:  CMPEQ           R3, #1
79D6A:  BEQ             loc_79DE0
79D6C:  CMP             R2, #5
79D6E:  IT EQ
79D70:  CMPEQ           R3, #1
79D72:  BNE             locret_79DA8
79D74:  LDR             R0, =(off_114AD8 - 0x79D7E)
79D76:  MOV.W           R3, #0x13A0
79D7A:  ADD             R0, PC; off_114AD8
79D7C:  LDR             R0, [R0]; dword_1A4434
79D7E:  LDR             R0, [R0]
79D80:  LDR.W           R0, [R0,#0x3B0]
79D84:  LDR             R0, [R0]
79D86:  LDR             R2, =(off_114B58 - 0x79D8E)
79D88:  LDRH            R0, [R0,R3]
79D8A:  ADD             R2, PC; off_114B58
79D8C:  MOV.W           R3, #0x23C
79D90:  LDR             R2, [R2]; unk_1176A0
79D92:  MLA.W           R0, R0, R3, R2
79D96:  MOVS            R2, #0x34 ; '4'
79D98:  MLA.W           R0, R1, R2, R0
79D9C:  VLDR            S2, [R0,#0x28]
79DA0:  VADD.F32        S0, S0, S2
79DA4:  VSTR            S0, [R0,#0x28]
79DA8:  POP             {R4,R6,R7,PC}
79DAA:  LDR             R0, =(off_114AD8 - 0x79DB4)
79DAC:  MOV.W           R3, #0x13A0
79DB0:  ADD             R0, PC; off_114AD8
79DB2:  LDR             R0, [R0]; dword_1A4434
79DB4:  LDR             R0, [R0]
79DB6:  LDR.W           R0, [R0,#0x3B0]
79DBA:  LDR             R0, [R0]
79DBC:  LDR             R2, =(off_114B58 - 0x79DC4)
79DBE:  LDRH            R0, [R0,R3]
79DC0:  ADD             R2, PC; off_114B58
79DC2:  MOV.W           R3, #0x23C
79DC6:  LDR             R2, [R2]; unk_1176A0
79DC8:  MLA.W           R0, R0, R3, R2
79DCC:  MOVS            R2, #0x34 ; '4'
79DCE:  MLA.W           R0, R1, R2, R0
79DD2:  VLDR            S2, [R0,#0x20]
79DD6:  VADD.F32        S0, S0, S2
79DDA:  VSTR            S0, [R0,#0x20]
79DDE:  POP             {R4,R6,R7,PC}
79DE0:  LDR             R0, =(off_114AD8 - 0x79DEA)
79DE2:  MOV.W           R3, #0x13A0
79DE6:  ADD             R0, PC; off_114AD8
79DE8:  LDR             R0, [R0]; dword_1A4434
79DEA:  LDR             R0, [R0]
79DEC:  LDR.W           R0, [R0,#0x3B0]
79DF0:  LDR             R0, [R0]
79DF2:  LDR             R2, =(off_114B58 - 0x79DFA)
79DF4:  LDRH            R0, [R0,R3]
79DF6:  ADD             R2, PC; off_114B58
79DF8:  MOV.W           R3, #0x23C
79DFC:  LDR             R2, [R2]; unk_1176A0
79DFE:  MLA.W           R0, R0, R3, R2
79E02:  MOVS            R2, #0x34 ; '4'
79E04:  MLA.W           R0, R1, R2, R0
79E08:  VLDR            S2, [R0,#0x24]
79E0C:  VADD.F32        S0, S0, S2
79E10:  VSTR            S0, [R0,#0x24]
79E14:  POP             {R4,R6,R7,PC}
79E16:  ALIGN 4
79E18:  DCD dword_1A4548 - 0x79D0C
79E1C:  DCD dword_116D38 - 0x79D0E
79E20:  DCD off_114B10 - 0x79D1E
79E24:  DCD byte_1A44AD - 0x79D32
79E28:  DCD dword_1A454C - 0x79D36
79E2C:  DCD off_114B94 - 0x79D4E
79E30:  DCD off_114AD8 - 0x79DB4
79E34:  DCD off_114B58 - 0x79DC4
79E38:  DCD off_114AD8 - 0x79DEA
79E3C:  DCD off_114B58 - 0x79DFA
79E40:  DCD off_114AD8 - 0x79D7E
79E44:  DCD off_114B58 - 0x79D8E
79E48:  DCD aUnknownMode - 0x79CFE
79E4C:  PUSH            {R4,R5,R7,LR}
79E4E:  ADD             R7, SP, #0x10+var_8
79E50:  MOV             LR, R0
79E52:  LDR             R0, =(dword_1A4548 - 0x79E5A)
79E54:  LDR             R2, =(dword_116D38 - 0x79E5C)
79E56:  ADD             R0, PC; dword_1A4548
79E58:  ADD             R2, PC; dword_116D38
79E5A:  LDR             R3, [R0]
79E5C:  LDR.W           R12, [R2]
79E60:  CMP             R3, #1
79E62:  BNE             loc_79E90
79E64:  MOVS            R2, #0
79E66:  CMP.W           R12, #0x19
79E6A:  BCC             loc_79EBC
79E6C:  LDR             R0, =(off_114B10 - 0x79E72)
79E6E:  ADD             R0, PC; off_114B10
79E70:  LDR             R0, [R0]; dword_1A442C
79E72:  LDR             R0, [R0]
79E74:  LDRD.W          R1, R3, [R0,#0x94]
79E78:  LDR.W           R0, [R0,#0x9C]
79E7C:  LDR             R4, =(byte_1A44AD - 0x79E84)
79E7E:  LDR             R5, =(dword_1A454C - 0x79E88)
79E80:  ADD             R4, PC; byte_1A44AD
79E82:  STRB            R2, [R3,#8]
79E84:  ADD             R5, PC; dword_1A454C
79E86:  STRB            R2, [R1,#8]
79E88:  STRB            R2, [R4]
79E8A:  STR             R2, [R5]
79E8C:  STRB            R2, [R0,#8]
79E8E:  POP             {R4,R5,R7,PC}
79E90:  CMP             R3, #2
79E92:  BNE             loc_79EE8
79E94:  UXTH.W          R0, R12
79E98:  CMP.W           R0, #0x3E8
79E9C:  BHI             loc_79F7C
79E9E:  LDR             R2, =(off_114AD8 - 0x79EA4)
79EA0:  ADD             R2, PC; off_114AD8
79EA2:  LDR             R2, [R2]; dword_1A4434
79EA4:  LDR             R2, [R2]
79EA6:  LDR.W           R2, [R2,#0x3B0]
79EAA:  LDR             R2, [R2,#0x10]
79EAC:  ADD.W           R0, R2, R0,LSL#2
79EB0:  LDR.W           R0, [R0,#0x3EC]
79EB4:  CMP             R0, #0
79EB6:  BEQ             loc_79F7C
79EB8:  MOVS            R2, #1
79EBA:  B               loc_79EEC
79EBC:  LDR             R0, =(off_114AD8 - 0x79EC6)
79EBE:  MOV.W           R5, #0x13A0
79EC2:  ADD             R0, PC; off_114AD8
79EC4:  LDR             R0, [R0]; dword_1A4434
79EC6:  LDR             R0, [R0]
79EC8:  LDR.W           R0, [R0,#0x3B0]
79ECC:  LDR             R0, [R0]
79ECE:  LDR             R4, =(off_114B58 - 0x79ED6)
79ED0:  LDRH            R0, [R0,R5]
79ED2:  ADD             R4, PC; off_114B58
79ED4:  MOV.W           R5, #0x23C
79ED8:  LDR             R4, [R4]; unk_1176A0
79EDA:  MLA.W           R0, R0, R5, R4
79EDE:  ADD.W           R0, R0, R12,LSL#2
79EE2:  LDR.W           R0, [R0,#0x214]
79EE6:  B               loc_79EEC
79EE8:  MOVS            R2, #0
79EEA:  MOVS            R0, #0
79EEC:  LDR             R4, =(off_114B8C - 0x79EF6)
79EEE:  CMP.W           LR, #0
79EF2:  ADD             R4, PC; off_114B8C
79EF4:  LDR             R4, [R4]; dword_116C70
79EF6:  VLDR            S2, [R4]
79EFA:  VNEG.F32        S0, S2
79EFE:  IT NE
79F00:  VMOVNE.F32      S0, S2
79F04:  CMP             R1, #5
79F06:  BEQ             loc_79FA2
79F08:  CMP             R1, #4
79F0A:  BEQ             loc_79FE2
79F0C:  CMP             R1, #3
79F0E:  BNE             locret_79E8E
79F10:  CMP             R3, #1
79F12:  BNE             loc_79F48
79F14:  LDR             R1, =(off_114AD8 - 0x79F1E)
79F16:  MOV.W           R5, #0x13A0
79F1A:  ADD             R1, PC; off_114AD8
79F1C:  LDR             R1, [R1]; dword_1A4434
79F1E:  LDR             R1, [R1]
79F20:  LDR.W           R1, [R1,#0x3B0]
79F24:  LDR             R1, [R1]
79F26:  LDR             R3, =(off_114B58 - 0x79F2E)
79F28:  LDRH            R1, [R1,R5]
79F2A:  ADD             R3, PC; off_114B58
79F2C:  MOV.W           R5, #0x23C
79F30:  LDR             R3, [R3]; unk_1176A0
79F32:  MLA.W           R1, R1, R5, R3
79F36:  MOVS            R3, #0x34 ; '4'
79F38:  MLA.W           R1, R12, R3, R1
79F3C:  VLDR            S2, [R1,#0x10]
79F40:  VADD.F32        S2, S0, S2
79F44:  VSTR            S2, [R1,#0x10]
79F48:  CMP             R2, #0
79F4A:  BEQ             locret_79E8E
79F4C:  LDR             R1, [R0,#4]
79F4E:  VLDR            S2, =0.0
79F52:  CMP             R1, #0
79F54:  BEQ.W           loc_7A07A
79F58:  LDR             R1, [R1,#0x14]
79F5A:  VMOV.F32        S4, S2
79F5E:  VMOV.F32        S6, S2
79F62:  CMP             R1, #0
79F64:  ITTTT NE
79F66:  LDRNE           R2, [R1,#0x30]
79F68:  LDRNE           R3, [R1,#0x34]
79F6A:  LDRNE           R1, [R1,#0x38]
79F6C:  VMOVNE          S6, R1
79F70:  ITT NE
79F72:  VMOVNE          S4, R3
79F76:  VMOVNE          S2, R2
79F7A:  B               loc_7A082
79F7C:  LDR             R0, =(off_114B10 - 0x79F84)
79F7E:  MOVS            R5, #0
79F80:  ADD             R0, PC; off_114B10
79F82:  LDR             R0, [R0]; dword_1A442C
79F84:  LDR             R0, [R0]
79F86:  LDRD.W          R1, R2, [R0,#0x94]
79F8A:  LDR.W           R0, [R0,#0x9C]
79F8E:  LDR             R3, =(byte_1A44AD - 0x79F96)
79F90:  LDR             R4, =(dword_1A454C - 0x79F9A)
79F92:  ADD             R3, PC; byte_1A44AD
79F94:  STRB            R5, [R2,#8]
79F96:  ADD             R4, PC; dword_1A454C
79F98:  STRB            R5, [R1,#8]
79F9A:  STRB            R5, [R3]
79F9C:  STR             R5, [R4]
79F9E:  STRB            R5, [R0,#8]
79FA0:  POP             {R4,R5,R7,PC}
79FA2:  CMP             R3, #2
79FA4:  BEQ             loc_7A022
79FA6:  CMP             R3, #1
79FA8:  IT NE
79FAA:  POPNE           {R4,R5,R7,PC}
79FAC:  LDR             R0, =(off_114AD8 - 0x79FB6)
79FAE:  MOV.W           R2, #0x13A0
79FB2:  ADD             R0, PC; off_114AD8
79FB4:  LDR             R0, [R0]; dword_1A4434
79FB6:  LDR             R0, [R0]
79FB8:  LDR.W           R0, [R0,#0x3B0]
79FBC:  LDR             R0, [R0]
79FBE:  LDR             R1, =(off_114B58 - 0x79FC6)
79FC0:  LDRH            R0, [R0,R2]
79FC2:  ADD             R1, PC; off_114B58
79FC4:  MOV.W           R2, #0x23C
79FC8:  LDR             R1, [R1]; unk_1176A0
79FCA:  MLA.W           R0, R0, R2, R1
79FCE:  MOVS            R1, #0x34 ; '4'
79FD0:  MLA.W           R0, R12, R1, R0
79FD4:  VLDR            S2, [R0,#8]
79FD8:  VADD.F32        S0, S0, S2
79FDC:  VSTR            S0, [R0,#8]
79FE0:  POP             {R4,R5,R7,PC}
79FE2:  CMP             R3, #2
79FE4:  BEQ             loc_7A04E
79FE6:  CMP             R3, #1
79FE8:  BNE.W           locret_79E8E
79FEC:  LDR             R0, =(off_114AD8 - 0x79FF6)
79FEE:  MOV.W           R2, #0x13A0
79FF2:  ADD             R0, PC; off_114AD8
79FF4:  LDR             R0, [R0]; dword_1A4434
79FF6:  LDR             R0, [R0]
79FF8:  LDR.W           R0, [R0,#0x3B0]
79FFC:  LDR             R0, [R0]
79FFE:  LDR             R1, =(off_114B58 - 0x7A006)
7A000:  LDRH            R0, [R0,R2]
7A002:  ADD             R1, PC; off_114B58
7A004:  MOV.W           R2, #0x23C
7A008:  LDR             R1, [R1]; unk_1176A0
7A00A:  MLA.W           R0, R0, R2, R1
7A00E:  MOVS            R1, #0x34 ; '4'
7A010:  MLA.W           R0, R12, R1, R0
7A014:  VLDR            S2, [R0,#0xC]
7A018:  VADD.F32        S0, S0, S2
7A01C:  VSTR            S0, [R0,#0xC]
7A020:  POP             {R4,R5,R7,PC}
7A022:  LDR             R1, [R0,#4]
7A024:  VLDR            S2, =0.0
7A028:  CBZ             R1, loc_7A09A
7A02A:  LDR             R1, [R1,#0x14]
7A02C:  VMOV.F32        S4, S2
7A030:  VMOV.F32        S6, S2
7A034:  CMP             R1, #0
7A036:  ITTTT NE
7A038:  LDRNE           R2, [R1,#0x30]
7A03A:  LDRNE           R3, [R1,#0x34]
7A03C:  LDRNE           R1, [R1,#0x38]
7A03E:  VMOVNE          S2, R1
7A042:  ITT NE
7A044:  VMOVNE          S4, R3
7A048:  VMOVNE          S6, R2
7A04C:  B               loc_7A0A2
7A04E:  LDR             R1, [R0,#4]
7A050:  VLDR            S2, =0.0
7A054:  CBZ             R1, loc_7A0BA
7A056:  LDR             R1, [R1,#0x14]
7A058:  VMOV.F32        S4, S2
7A05C:  VMOV.F32        S6, S2
7A060:  CMP             R1, #0
7A062:  ITTTT NE
7A064:  LDRNE           R2, [R1,#0x30]
7A066:  LDRNE           R3, [R1,#0x34]
7A068:  LDRNE           R1, [R1,#0x38]
7A06A:  VMOVNE          S2, R1
7A06E:  ITT NE
7A070:  VMOVNE          S4, R3
7A074:  VMOVNE          S6, R2
7A078:  B               loc_7A0C2
7A07A:  VMOV.F32        S4, S2
7A07E:  VMOV.F32        S6, S2
7A082:  VADD.F32        S0, S0, S2
7A086:  VMOV            R2, S4
7A08A:  VMOV            R3, S6
7A08E:  VMOV            R1, S0
7A092:  POP.W           {R4,R5,R7,LR}
7A096:  B.W             sub_66064
7A09A:  VMOV.F32        S4, S2
7A09E:  VMOV.F32        S6, S2
7A0A2:  VADD.F32        S0, S0, S2
7A0A6:  VMOV            R1, S6
7A0AA:  VMOV            R2, S4
7A0AE:  VMOV            R3, S0
7A0B2:  POP.W           {R4,R5,R7,LR}
7A0B6:  B.W             sub_66064
7A0BA:  VMOV.F32        S4, S2
7A0BE:  VMOV.F32        S6, S2
7A0C2:  VADD.F32        S0, S0, S4
7A0C6:  VMOV            R1, S6
7A0CA:  VMOV            R3, S2
7A0CE:  VMOV            R2, S0
7A0D2:  POP.W           {R4,R5,R7,LR}
7A0D6:  B.W             sub_66064
7A0DA:  ALIGN 4
7A0DC:  DCFS 0.0
7A0E0:  DCD dword_1A4548 - 0x79E5A
7A0E4:  DCD dword_116D38 - 0x79E5C
7A0E8:  DCD off_114AD8 - 0x79EC6
7A0EC:  DCD off_114B58 - 0x79ED6
7A0F0:  DCD off_114AD8 - 0x79EA4
7A0F4:  DCD off_114B8C - 0x79EF6
7A0F8:  DCD off_114AD8 - 0x79F1E
7A0FC:  DCD off_114B58 - 0x79F2E
7A100:  DCD off_114AD8 - 0x79FF6
7A104:  DCD off_114B58 - 0x7A006
7A108:  DCD off_114AD8 - 0x79FB6
7A10C:  DCD off_114B58 - 0x79FC6
7A110:  DCD off_114B10 - 0x79E72
7A114:  DCD byte_1A44AD - 0x79E84
7A118:  DCD dword_1A454C - 0x79E88
7A11C:  DCD off_114B10 - 0x79F84
7A120:  DCD byte_1A44AD - 0x79F96
7A124:  DCD dword_1A454C - 0x79F9A
7A128:  PUSH            {R4,R5,R7,LR}
7A12A:  ADD             R7, SP, #0x10+var_8
7A12C:  VPUSH           {D8}
7A130:  SUB             SP, SP, #0x20 ; ' '
7A132:  LDR             R2, =(dword_1A4548 - 0x7A13A)
7A134:  LDR             R4, =(dword_116D38 - 0x7A13C)
7A136:  ADD             R2, PC; dword_1A4548
7A138:  ADD             R4, PC; dword_116D38
7A13A:  LDR             R3, [R2]
7A13C:  LDR             R2, =(__stack_chk_guard_ptr - 0x7A144)
7A13E:  CMP             R3, #1
7A140:  ADD             R2, PC; __stack_chk_guard_ptr
7A142:  LDR             R2, [R2]; __stack_chk_guard
7A144:  LDR             R2, [R2]
7A146:  STR             R2, [SP,#0x38+var_1C]
7A148:  LDR             R2, [R4]
7A14A:  BNE             loc_7A178
7A14C:  CMP             R2, #0x19
7A14E:  BCC             loc_7A178
7A150:  LDR             R0, =(off_114B10 - 0x7A156)
7A152:  ADD             R0, PC; off_114B10
7A154:  LDR             R0, [R0]; dword_1A442C
7A156:  LDR             R0, [R0]
7A158:  ADD.W           R12, R0, #0x94
7A15C:  MOVS            R0, #0
7A15E:  LDM.W           R12, {R1,R2,R12}
7A162:  LDR             R3, =(byte_1A44AD - 0x7A16A)
7A164:  LDR             R4, =(dword_1A454C - 0x7A16E)
7A166:  ADD             R3, PC; byte_1A44AD
7A168:  STRB            R0, [R2,#8]
7A16A:  ADD             R4, PC; dword_1A454C
7A16C:  STRB            R0, [R1,#8]
7A16E:  STRB            R0, [R3]
7A170:  STR             R0, [R4]
7A172:  STRB.W          R0, [R12,#8]
7A176:  B               loc_7A38A
7A178:  CMP             R3, #2
7A17A:  BNE             loc_7A1C2
7A17C:  UXTH            R4, R2
7A17E:  CMP.W           R4, #0x3E8
7A182:  BHI             loc_7A19C
7A184:  LDR             R5, =(off_114AD8 - 0x7A18A)
7A186:  ADD             R5, PC; off_114AD8
7A188:  LDR             R5, [R5]; dword_1A4434
7A18A:  LDR             R5, [R5]
7A18C:  LDR.W           R5, [R5,#0x3B0]
7A190:  LDR             R5, [R5,#0x10]
7A192:  ADD.W           R5, R5, R4,LSL#2
7A196:  LDR.W           R4, [R5,#0x3EC]
7A19A:  CBNZ            R4, loc_7A1C4
7A19C:  LDR             R0, =(off_114B10 - 0x7A1A4)
7A19E:  MOVS            R5, #0
7A1A0:  ADD             R0, PC; off_114B10
7A1A2:  LDR             R0, [R0]; dword_1A442C
7A1A4:  LDR             R0, [R0]
7A1A6:  LDRD.W          R1, R2, [R0,#0x94]
7A1AA:  LDR.W           R0, [R0,#0x9C]
7A1AE:  LDR             R3, =(byte_1A44AD - 0x7A1B6)
7A1B0:  LDR             R4, =(dword_1A454C - 0x7A1BA)
7A1B2:  ADD             R3, PC; byte_1A44AD
7A1B4:  STRB            R5, [R2,#8]
7A1B6:  ADD             R4, PC; dword_1A454C
7A1B8:  STRB            R5, [R1,#8]
7A1BA:  STRB            R5, [R3]
7A1BC:  STR             R5, [R4]
7A1BE:  STRB            R5, [R0,#8]
7A1C0:  B               loc_7A38A
7A1C2:  MOVS            R4, #0
7A1C4:  LDR             R5, =(off_114B90 - 0x7A1CC)
7A1C6:  CMP             R0, #0
7A1C8:  ADD             R5, PC; off_114B90
7A1CA:  LDR             R5, [R5]; dword_116C74
7A1CC:  VLDR            S0, [R5]
7A1D0:  VNEG.F32        S16, S0
7A1D4:  IT NE
7A1D6:  VMOVNE.F32      S16, S0
7A1DA:  CMP             R1, #5
7A1DC:  BEQ             loc_7A26E
7A1DE:  CMP             R1, #4
7A1E0:  BEQ             loc_7A2AE
7A1E2:  CMP             R1, #3
7A1E4:  BNE.W           loc_7A38A
7A1E8:  CMP             R3, #1
7A1EA:  BNE             loc_7A220
7A1EC:  LDR             R0, =(off_114AD8 - 0x7A1F6)
7A1EE:  MOV.W           R5, #0x13A0
7A1F2:  ADD             R0, PC; off_114AD8
7A1F4:  LDR             R0, [R0]; dword_1A4434
7A1F6:  LDR             R0, [R0]
7A1F8:  LDR.W           R0, [R0,#0x3B0]
7A1FC:  LDR             R0, [R0]
7A1FE:  LDR             R1, =(off_114B58 - 0x7A206)
7A200:  LDRH            R0, [R0,R5]
7A202:  ADD             R1, PC; off_114B58
7A204:  MOV.W           R5, #0x23C
7A208:  LDR             R1, [R1]; unk_1176A0
7A20A:  MLA.W           R0, R0, R5, R1
7A20E:  MOVS            R1, #0x34 ; '4'
7A210:  MLA.W           R0, R2, R1, R0
7A214:  VLDR            S0, [R0,#0x14]
7A218:  VADD.F32        S0, S16, S0
7A21C:  VSTR            S0, [R0,#0x14]
7A220:  CMP             R3, #2
7A222:  BNE.W           loc_7A38A
7A226:  LDR             R0, =(off_114AB0 - 0x7A236)
7A228:  MOV             R1, #0x1021F1
7A230:  ADD             R2, SP, #0x38+var_24
7A232:  ADD             R0, PC; off_114AB0
7A234:  ADD             R3, SP, #0x38+var_28
7A236:  LDR             R0, [R0]; dword_1A4408
7A238:  LDR             R0, [R0]
7A23A:  ADDS            R5, R0, R1
7A23C:  ADD             R1, SP, #0x38+var_20
7A23E:  MOV             R0, R4
7A240:  BLX             R5
7A242:  VLDR            S0, [SP,#0x38+var_20]
7A246:  VLDR            S4, [SP,#0x38+var_24]
7A24A:  VADD.F32        S0, S16, S0
7A24E:  VLDR            S2, [SP,#0x38+var_28]
7A252:  VCVT.F64.F32    D17, S4
7A256:  LDR             R1, [R4,#8]
7A258:  LDR             R0, =(unk_52394 - 0x7A25E)
7A25A:  ADD             R0, PC; unk_52394
7A25C:  VCVT.F64.F32    D16, S0
7A260:  VMOV            R2, R3, D16
7A264:  VSTR            S0, [SP,#0x38+var_20]
7A268:  VCVT.F64.F32    D16, S2
7A26C:  B               loc_7A37E
7A26E:  CMP             R3, #2
7A270:  BEQ             loc_7A2EC
7A272:  CMP             R3, #1
7A274:  BNE.W           loc_7A38A
7A278:  LDR             R0, =(off_114AD8 - 0x7A282)
7A27A:  MOV.W           R3, #0x13A0
7A27E:  ADD             R0, PC; off_114AD8
7A280:  LDR             R0, [R0]; dword_1A4434
7A282:  LDR             R0, [R0]
7A284:  LDR.W           R0, [R0,#0x3B0]
7A288:  LDR             R0, [R0]
7A28A:  LDR             R1, =(off_114B58 - 0x7A292)
7A28C:  LDRH            R0, [R0,R3]
7A28E:  ADD             R1, PC; off_114B58
7A290:  MOV.W           R3, #0x23C
7A294:  LDR             R1, [R1]; unk_1176A0
7A296:  MLA.W           R0, R0, R3, R1
7A29A:  MOVS            R1, #0x34 ; '4'
7A29C:  MLA.W           R0, R2, R1, R0
7A2A0:  VLDR            S0, [R0,#0x1C]
7A2A4:  VADD.F32        S0, S16, S0
7A2A8:  VSTR            S0, [R0,#0x1C]
7A2AC:  B               loc_7A38A
7A2AE:  CMP             R3, #2
7A2B0:  BEQ             loc_7A338
7A2B2:  CMP             R3, #1
7A2B4:  BNE             loc_7A38A
7A2B6:  LDR             R0, =(off_114AD8 - 0x7A2C0)
7A2B8:  MOV.W           R3, #0x13A0
7A2BC:  ADD             R0, PC; off_114AD8
7A2BE:  LDR             R0, [R0]; dword_1A4434
7A2C0:  LDR             R0, [R0]
7A2C2:  LDR.W           R0, [R0,#0x3B0]
7A2C6:  LDR             R0, [R0]
7A2C8:  LDR             R1, =(off_114B58 - 0x7A2D0)
7A2CA:  LDRH            R0, [R0,R3]
7A2CC:  ADD             R1, PC; off_114B58
7A2CE:  MOV.W           R3, #0x23C
7A2D2:  LDR             R1, [R1]; unk_1176A0
7A2D4:  MLA.W           R0, R0, R3, R1
7A2D8:  MOVS            R1, #0x34 ; '4'
7A2DA:  MLA.W           R0, R2, R1, R0
7A2DE:  VLDR            S0, [R0,#0x18]
7A2E2:  VADD.F32        S0, S16, S0
7A2E6:  VSTR            S0, [R0,#0x18]
7A2EA:  B               loc_7A38A
7A2EC:  LDR             R0, =(off_114AB0 - 0x7A2FC)
7A2EE:  MOV             R1, #0x1021F1
7A2F6:  ADD             R2, SP, #0x38+var_24
7A2F8:  ADD             R0, PC; off_114AB0
7A2FA:  ADD             R3, SP, #0x38+var_28
7A2FC:  LDR             R0, [R0]; dword_1A4408
7A2FE:  LDR             R0, [R0]
7A300:  ADDS            R5, R0, R1
7A302:  ADD             R1, SP, #0x38+var_20
7A304:  MOV             R0, R4
7A306:  BLX             R5
7A308:  VLDR            S0, [SP,#0x38+var_20]
7A30C:  VLDR            S2, [SP,#0x38+var_24]
7A310:  VCVT.F64.F32    D16, S0
7A314:  LDR             R1, [R4,#8]
7A316:  VMOV            R2, R3, D16
7A31A:  VLDR            S0, [SP,#0x38+var_28]
7A31E:  VCVT.F64.F32    D16, S2
7A322:  LDR             R0, =(unk_52394 - 0x7A328)
7A324:  ADD             R0, PC; unk_52394
7A326:  VADD.F32        S0, S16, S0
7A32A:  VCVT.F64.F32    D17, S0
7A32E:  VSTR            S0, [SP,#0x38+var_28]
7A332:  VSTMEA          SP, {D16-D17}
7A336:  B               loc_7A386
7A338:  LDR             R0, =(off_114AB0 - 0x7A348)
7A33A:  MOV             R1, #0x1021F1
7A342:  ADD             R2, SP, #0x38+var_24
7A344:  ADD             R0, PC; off_114AB0
7A346:  ADD             R3, SP, #0x38+var_28
7A348:  LDR             R0, [R0]; dword_1A4408
7A34A:  LDR             R0, [R0]
7A34C:  ADDS            R5, R0, R1
7A34E:  ADD             R1, SP, #0x38+var_20
7A350:  MOV             R0, R4
7A352:  BLX             R5
7A354:  VLDR            S0, [SP,#0x38+var_20]
7A358:  VLDR            S2, [SP,#0x38+var_28]
7A35C:  VCVT.F64.F32    D16, S0
7A360:  LDR             R1, [R4,#8]
7A362:  VLDR            S0, [SP,#0x38+var_24]
7A366:  VMOV            R2, R3, D16
7A36A:  LDR             R0, =(unk_52394 - 0x7A374)
7A36C:  VCVT.F64.F32    D16, S2
7A370:  ADD             R0, PC; unk_52394
7A372:  VADD.F32        S0, S16, S0
7A376:  VCVT.F64.F32    D17, S0
7A37A:  VSTR            S0, [SP,#0x38+var_24]
7A37E:  VSTR            D17, [SP,#0x38+var_38]
7A382:  VSTR            D16, [SP,#0x38+var_30]
7A386:  BL              sub_682E8
7A38A:  LDR             R0, [SP,#0x38+var_1C]
7A38C:  LDR             R1, =(__stack_chk_guard_ptr - 0x7A392)
7A38E:  ADD             R1, PC; __stack_chk_guard_ptr
7A390:  LDR             R1, [R1]; __stack_chk_guard
7A392:  LDR             R1, [R1]
7A394:  CMP             R1, R0
7A396:  ITTT EQ
7A398:  ADDEQ           SP, SP, #0x20 ; ' '
7A39A:  VPOPEQ          {D8}
7A39E:  POPEQ           {R4,R5,R7,PC}
7A3A0:  BLX             __stack_chk_fail
