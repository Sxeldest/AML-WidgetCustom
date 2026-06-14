; =========================================================
; Game Engine Function: sub_173CBC
; Address            : 0x173CBC - 0x173FC6
; =========================================================

173CBC:  PUSH            {R4-R7,LR}
173CBE:  ADD             R7, SP, #0xC
173CC0:  PUSH.W          {R8,R9,R11}
173CC4:  VPUSH           {D8-D9}
173CC8:  SUB             SP, SP, #0x10
173CCA:  VMOV.F32        S4, #1.0
173CCE:  VLDR            S0, [R1]
173CD2:  VLDR            S6, [R2]
173CD6:  VMOV.F32        S16, #-1.0
173CDA:  VLDR            S2, [R1,#4]
173CDE:  MOV             R4, R0
173CE0:  VLDR            S8, [R2,#4]
173CE4:  VSUB.F32        S6, S6, S0
173CE8:  LDR             R5, [R7,#arg_0]
173CEA:  VMOV.F32        S10, #0.5
173CEE:  VSUB.F32        S8, S8, S2
173CF2:  MOV             R6, R2
173CF4:  AND.W           R0, R5, #0xC
173CF8:  MOV             R9, R1
173CFA:  CMP             R0, #0xC
173CFC:  VMOV.F32        S12, S4
173D00:  AND.W           R0, R5, #0xA
173D04:  IT EQ
173D06:  VMOVEQ.F32      S12, S10
173D0A:  CMP             R0, #0xA
173D0C:  AND.W           R0, R5, #3
173D10:  IT EQ
173D12:  VMOVEQ.F32      S4, S10
173D16:  CMP             R0, #3
173D18:  VABS.F32        S6, S6
173D1C:  AND.W           R0, R5, #5
173D20:  IT EQ
173D22:  VMOVEQ.F32      S12, S10
173D26:  CMP             R0, #5
173D28:  IT EQ
173D2A:  VMOVEQ.F32      S4, S10
173D2E:  VMOV.F32        S10, S16
173D32:  VABS.F32        S8, S8
173D36:  VMLA.F32        S10, S6, S12
173D3A:  VMOV            S6, R3
173D3E:  VMLA.F32        S16, S8, S4
173D42:  VCMP.F32        S10, S6
173D46:  VMRS            APSR_nzcv, FPSCR
173D4A:  IT GT
173D4C:  VMOVGT.F32      S10, S6
173D50:  VCMP.F32        S10, S16
173D54:  VMRS            APSR_nzcv, FPSCR
173D58:  IT MI
173D5A:  VMOVMI.F32      S16, S10
173D5E:  CMP             R5, #0
173D60:  BEQ             loc_173E42
173D62:  VCMP.F32        S16, #0.0
173D66:  VMRS            APSR_nzcv, FPSCR
173D6A:  BLS             loc_173E42
173D6C:  VMOV.F32        S4, S16
173D70:  LSLS            R0, R5, #0x1F
173D72:  VLDR            S18, =0.0
173D76:  IT EQ
173D78:  VMOVEQ.F32      S4, S18
173D7C:  VMOV            R2, S4
173D80:  MOVS            R0, #9
173D82:  VADD.F32        S2, S2, S4
173D86:  ADD             R1, SP, #0x38+var_30
173D88:  VADD.F32        S0, S0, S4
173D8C:  STR             R0, [SP,#0x38+var_38]
173D8E:  MOV             R0, R4
173D90:  MOVS            R3, #6
173D92:  MOV.W           R8, #6
173D96:  VSTR            S2, [SP,#0x38+var_2C]
173D9A:  VSTR            S0, [SP,#0x38+var_30]
173D9E:  BL              sub_1739BC
173DA2:  VMOV.F32        S0, S16
173DA6:  LSLS            R0, R5, #0x1E
173DA8:  IT PL
173DAA:  VMOVPL.F32      S0, S18
173DAE:  VMOV            R2, S0
173DB2:  VLDR            S2, [R9,#4]
173DB6:  MOVS            R0, #0xC
173DB8:  VLDR            S4, [R6]
173DBC:  ADD             R1, SP, #0x38+var_30
173DBE:  VADD.F32        S2, S0, S2
173DC2:  STR             R0, [SP,#0x38+var_38]
173DC4:  VSUB.F32        S0, S4, S0
173DC8:  MOV             R0, R4
173DCA:  MOVS            R3, #9
173DCC:  VSTR            S2, [SP,#0x38+var_2C]
173DD0:  VSTR            S0, [SP,#0x38+var_30]
173DD4:  BL              sub_1739BC
173DD8:  VMOV.F32        S0, S16
173DDC:  LSLS            R0, R5, #0x1C
173DDE:  IT PL
173DE0:  VMOVPL.F32      S0, S18
173DE4:  VMOV            R2, S0
173DE8:  VLDR            S4, [R6,#4]
173DEC:  MOVS            R0, #3
173DEE:  VLDR            S2, [R6]
173DF2:  ADD             R1, SP, #0x38+var_30
173DF4:  VSUB.F32        S4, S4, S0
173DF8:  STR             R0, [SP,#0x38+var_38]
173DFA:  VSUB.F32        S0, S2, S0
173DFE:  MOV             R0, R4
173E00:  MOVS            R3, #0
173E02:  VSTR            S4, [SP,#0x38+var_2C]
173E06:  VSTR            S0, [SP,#0x38+var_30]
173E0A:  BL              sub_1739BC
173E0E:  LSLS            R0, R5, #0x1D
173E10:  IT PL
173E12:  VMOVPL.F32      S16, S18
173E16:  VMOV            R2, S16
173E1A:  VLDR            S0, [R6,#4]
173E1E:  VLDR            S2, [R9]
173E22:  ADD             R1, SP, #0x38+var_30
173E24:  VSUB.F32        S0, S0, S16
173E28:  MOV             R0, R4
173E2A:  VADD.F32        S2, S16, S2
173E2E:  MOVS            R3, #3
173E30:  STR.W           R8, [SP,#0x38+var_38]
173E34:  VSTR            S0, [SP,#0x38+var_2C]
173E38:  VSTR            S2, [SP,#0x38+var_30]
173E3C:  BL              sub_1739BC
173E40:  B               loc_173FBA
173E42:  LDRD.W          R0, R1, [R4,#0x58]
173E46:  CMP             R0, R1
173E48:  BNE             loc_173E88
173E4A:  CMP             R0, #0
173E4C:  ADD.W           R5, R0, #1
173E50:  ITTE NE
173E52:  ADDNE.W         R1, R0, R0,LSR#31
173E56:  ADDNE.W         R1, R0, R1,ASR#1
173E5A:  MOVEQ           R1, #8
173E5C:  CMP             R1, R5
173E5E:  IT GT
173E60:  MOVGT           R5, R1
173E62:  CMP             R0, R5
173E64:  BGE             loc_173E88
173E66:  LSLS            R0, R5, #3
173E68:  BL              sub_1654B0
173E6C:  LDR             R1, [R4,#0x60]; src
173E6E:  MOV             R8, R0
173E70:  CBZ             R1, loc_173E82
173E72:  LDR             R0, [R4,#0x58]
173E74:  LSLS            R2, R0, #3; n
173E76:  MOV             R0, R8; dest
173E78:  BLX             j_memcpy
173E7C:  LDR             R0, [R4,#0x60]
173E7E:  BL              sub_165578
173E82:  LDR             R0, [R4,#0x58]
173E84:  STRD.W          R5, R8, [R4,#0x5C]
173E88:  LDR             R1, [R4,#0x60]
173E8A:  LDRD.W          R2, R3, [R9]
173E8E:  STR.W           R2, [R1,R0,LSL#3]
173E92:  ADD.W           R0, R1, R0,LSL#3
173E96:  STR             R3, [R0,#4]
173E98:  LDR             R1, [R4,#0x58]
173E9A:  LDR             R2, [R4,#0x5C]
173E9C:  ADDS            R0, R1, #1
173E9E:  STR             R0, [R4,#0x58]
173EA0:  LDR.W           R3, [R9,#4]
173EA4:  CMP             R0, R2
173EA6:  LDR             R5, [R6]
173EA8:  STRD.W          R5, R3, [SP,#0x38+var_30]
173EAC:  BNE             loc_173EEA
173EAE:  ADDS            R5, R1, #2
173EB0:  CMP             R0, #0
173EB2:  ITTE NE
173EB4:  ADDNE.W         R1, R0, R0,LSR#31
173EB8:  ADDNE.W         R1, R0, R1,ASR#1
173EBC:  MOVEQ           R1, #8
173EBE:  CMP             R1, R5
173EC0:  IT GT
173EC2:  MOVGT           R5, R1
173EC4:  CMP             R0, R5
173EC6:  BGE             loc_173EEA
173EC8:  LSLS            R0, R5, #3
173ECA:  BL              sub_1654B0
173ECE:  LDR             R1, [R4,#0x60]; src
173ED0:  MOV             R8, R0
173ED2:  CBZ             R1, loc_173EE4
173ED4:  LDR             R0, [R4,#0x58]
173ED6:  LSLS            R2, R0, #3; n
173ED8:  MOV             R0, R8; dest
173EDA:  BLX             j_memcpy
173EDE:  LDR             R0, [R4,#0x60]
173EE0:  BL              sub_165578
173EE4:  LDR             R0, [R4,#0x58]
173EE6:  STRD.W          R5, R8, [R4,#0x5C]
173EEA:  LDR             R1, [R4,#0x60]
173EEC:  LDRD.W          R2, R3, [SP,#0x38+var_30]
173EF0:  STR.W           R2, [R1,R0,LSL#3]
173EF4:  ADD.W           R0, R1, R0,LSL#3
173EF8:  STR             R3, [R0,#4]
173EFA:  LDR             R1, [R4,#0x58]
173EFC:  LDR             R2, [R4,#0x5C]
173EFE:  ADDS            R0, R1, #1
173F00:  STR             R0, [R4,#0x58]
173F02:  CMP             R0, R2
173F04:  BNE             loc_173F42
173F06:  ADDS            R5, R1, #2
173F08:  CMP             R0, #0
173F0A:  ITTE NE
173F0C:  ADDNE.W         R1, R0, R0,LSR#31
173F10:  ADDNE.W         R1, R0, R1,ASR#1
173F14:  MOVEQ           R1, #8
173F16:  CMP             R1, R5
173F18:  IT GT
173F1A:  MOVGT           R5, R1
173F1C:  CMP             R0, R5
173F1E:  BGE             loc_173F42
173F20:  LSLS            R0, R5, #3
173F22:  BL              sub_1654B0
173F26:  LDR             R1, [R4,#0x60]; src
173F28:  MOV             R8, R0
173F2A:  CBZ             R1, loc_173F3C
173F2C:  LDR             R0, [R4,#0x58]
173F2E:  LSLS            R2, R0, #3; n
173F30:  MOV             R0, R8; dest
173F32:  BLX             j_memcpy
173F36:  LDR             R0, [R4,#0x60]
173F38:  BL              sub_165578
173F3C:  LDR             R0, [R4,#0x58]
173F3E:  STRD.W          R5, R8, [R4,#0x5C]
173F42:  LDR             R1, [R4,#0x60]
173F44:  LDRD.W          R2, R3, [R6]
173F48:  STR.W           R2, [R1,R0,LSL#3]
173F4C:  ADD.W           R0, R1, R0,LSL#3
173F50:  STR             R3, [R0,#4]
173F52:  LDR             R1, [R4,#0x58]
173F54:  LDR             R2, [R4,#0x5C]
173F56:  ADDS            R0, R1, #1
173F58:  STR             R0, [R4,#0x58]
173F5A:  LDR             R3, [R6,#4]
173F5C:  CMP             R0, R2
173F5E:  LDR.W           R6, [R9]
173F62:  STRD.W          R6, R3, [SP,#0x38+var_30]
173F66:  BNE             loc_173FA4
173F68:  ADDS            R6, R1, #2
173F6A:  CMP             R0, #0
173F6C:  ITTE NE
173F6E:  ADDNE.W         R1, R0, R0,LSR#31
173F72:  ADDNE.W         R1, R0, R1,ASR#1
173F76:  MOVEQ           R1, #8
173F78:  CMP             R1, R6
173F7A:  IT GT
173F7C:  MOVGT           R6, R1
173F7E:  CMP             R0, R6
173F80:  BGE             loc_173FA4
173F82:  LSLS            R0, R6, #3
173F84:  BL              sub_1654B0
173F88:  LDR             R1, [R4,#0x60]; src
173F8A:  MOV             R5, R0
173F8C:  CBZ             R1, loc_173F9E
173F8E:  LDR             R0, [R4,#0x58]
173F90:  LSLS            R2, R0, #3; n
173F92:  MOV             R0, R5; dest
173F94:  BLX             j_memcpy
173F98:  LDR             R0, [R4,#0x60]
173F9A:  BL              sub_165578
173F9E:  LDR             R0, [R4,#0x58]
173FA0:  STRD.W          R6, R5, [R4,#0x5C]
173FA4:  LDR             R1, [R4,#0x60]
173FA6:  LDRD.W          R2, R3, [SP,#0x38+var_30]
173FAA:  STR.W           R2, [R1,R0,LSL#3]
173FAE:  ADD.W           R0, R1, R0,LSL#3
173FB2:  STR             R3, [R0,#4]
173FB4:  LDR             R0, [R4,#0x58]
173FB6:  ADDS            R0, #1
173FB8:  STR             R0, [R4,#0x58]
173FBA:  ADD             SP, SP, #0x10
173FBC:  VPOP            {D8-D9}
173FC0:  POP.W           {R8,R9,R11}
173FC4:  POP             {R4-R7,PC}
