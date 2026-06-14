; =========================================================
; Game Engine Function: sub_98C8C
; Address            : 0x98C8C - 0x99088
; =========================================================

98C8C:  PUSH            {R4-R7,LR}
98C8E:  ADD             R7, SP, #0xC
98C90:  PUSH.W          {R8-R11}
98C94:  SUB             SP, SP, #4
98C96:  VPUSH           {D8}
98C9A:  LDR.W           LR, [R7,#arg_0]
98C9E:  VLDR            S2, [R2,#4]
98CA2:  VLDR            S0, [R2]
98CA6:  VLDR            S1, [LR,#0xC]
98CAA:  VLDR            S14, [LR,#8]
98CAE:  VSUB.F32        S6, S1, S2
98CB2:  VLDR            S5, [R1,#4]
98CB6:  VSUB.F32        S8, S14, S0
98CBA:  VLDR            S3, [R1]
98CBE:  VLDR            S12, [LR,#4]
98CC2:  VMOV.F32        S4, S5
98CC6:  VLDR            S10, [LR]
98CCA:  LDRD.W          R12, R2, [R7,#arg_4]
98CCE:  VCMP.F32        S5, S6
98CD2:  VMRS            APSR_nzcv, FPSCR
98CD6:  VCMP.F32        S3, S8
98CDA:  IT GT
98CDC:  VMOVGT.F32      S4, S6
98CE0:  VMRS            APSR_nzcv, FPSCR
98CE4:  VMOV.F32        S6, S3
98CE8:  VCMP.F32        S5, S12
98CEC:  IT GT
98CEE:  VMOVGT.F32      S6, S8
98CF2:  VMRS            APSR_nzcv, FPSCR
98CF6:  VCMP.F32        S3, S10
98CFA:  IT MI
98CFC:  VMOVMI.F32      S4, S12
98D00:  VMRS            APSR_nzcv, FPSCR
98D04:  IT MI
98D06:  VMOVMI.F32      S6, S10
98D0A:  LDR.W           R10, [R3]
98D0E:  CMP             R2, #1
98D10:  BNE             loc_98DEE
98D12:  LDR             R4, =(unk_531E8 - 0x98D28)
98D14:  MOV             R5, #0xFFFFFFFC
98D18:  VLDR            S3, [R12,#4]
98D1C:  MOV.W           R11, #0
98D20:  VLDR            S8, [R12,#8]
98D24:  ADD             R4, PC; unk_531E8
98D26:  VSUB.F32        S7, S3, S2
98D2A:  LDR.W           R8, [R12]
98D2E:  VSUB.F32        S9, S8, S0
98D32:  LDR.W           R9, [R12,#0xC]
98D36:  VLDR            S13, =0.0
98D3A:  ADDS.W          R2, R10, #1
98D3E:  VMOV            S11, R8
98D42:  IT NE
98D44:  SUBNE           R4, #4
98D46:  VMOV            S5, R9
98D4A:  IT NE
98D4C:  MOVNE           R5, #0xFFFFFFFB
98D50:  B               loc_98D58
98D52:  ADDS            R4, #4
98D54:  ADDS            R5, #1
98D56:  BCS             loc_98DFA
98D58:  ADDS            R2, R5, #5
98D5A:  MOV             R2, R4
98D5C:  IT EQ
98D5E:  MOVEQ           R2, R3
98D60:  LDR             R2, [R2]
98D62:  BEQ             loc_98D68
98D64:  CMP             R2, R10
98D66:  BEQ             loc_98D52
98D68:  VMOV.F32        S15, S13
98D6C:  CMP             R2, #3; switch 4 cases
98D6E:  VMOV.F32        S16, S13
98D72:  STRD.W          R11, R11, [R0]
98D76:  BHI             def_98D78; jumptable 00098D78 default case
98D78:  TBB.W           [PC,R2]; switch jump
98D7C:  DCB 2; jump table for switch statement
98D7D:  DCB 9
98D7E:  DCB 0x10
98D7F:  DCB 0x19
98D80:  STR.W           R9, [R0,#4]; jumptable 00098D78 case 0
98D84:  VMOV.F32        S15, S5
98D88:  VSTR            S9, [R0]
98D8C:  B               loc_98DA8
98D8E:  VSTR            S7, [R0,#4]; jumptable 00098D78 case 1
98D92:  VMOV.F32        S15, S7
98D96:  STR.W           R8, [R0]
98D9A:  B               loc_98DB6
98D9C:  VMOV.F32        S15, S7; jumptable 00098D78 case 2
98DA0:  VSTR            S9, [R0]
98DA4:  VSTR            S7, [R0,#4]
98DA8:  VMOV.F32        S16, S9
98DAC:  B               def_98D78; jumptable 00098D78 default case
98DAE:  STRD.W          R8, R9, [R0]; jumptable 00098D78 case 3
98DB2:  VMOV.F32        S15, S5
98DB6:  VMOV.F32        S16, S11
98DBA:  VCMP.F32        S16, S10; jumptable 00098D78 default case
98DBE:  VMRS            APSR_nzcv, FPSCR
98DC2:  ITT GE
98DC4:  VCMPGE.F32      S15, S12
98DC8:  VMRSGE          APSR_nzcv, FPSCR
98DCC:  BLT             loc_98D52
98DCE:  VADD.F32        S16, S0, S16
98DD2:  VCMP.F32        S16, S14
98DD6:  VMRS            APSR_nzcv, FPSCR
98DDA:  ITTT LS
98DDC:  VADDLS.F32      S15, S2, S15
98DE0:  VCMPLS.F32      S15, S1
98DE4:  VMRSLS          APSR_nzcv, FPSCR
98DE8:  BHI             loc_98D52
98DEA:  STR             R2, [R3]
98DEC:  B               loc_9907C
98DEE:  VLDR            S3, [R12,#4]
98DF2:  VLDR            S8, [R12,#8]
98DF6:  VLDR            S5, [R12,#0xC]
98DFA:  LDR             R5, =(unk_5335C - 0x98E08)
98DFC:  ADD.W           R8, LR, #8
98E00:  ADDS.W          R4, R10, #1
98E04:  ADD             R5, PC; unk_5335C
98E06:  MOV             R2, R5
98E08:  ITT NE
98E0A:  SUBNE           R2, #4
98E0C:  MOVNE           R2, R3
98E0E:  LDR.W           LR, [R2]
98E12:  SUBS.W          R6, R10, #0xFFFFFFFF
98E16:  IT NE
98E18:  MOVNE           R6, #1
98E1A:  CMP             R4, #0
98E1C:  IT EQ
98E1E:  CMPEQ           LR, R10
98E20:  BEQ             loc_98E78
98E22:  CMP.W           LR, #1
98E26:  VMOV.F32        S7, S10
98E2A:  MOV             R2, R8
98E2C:  IT EQ
98E2E:  VMOVEQ.F32      S7, S8
98E32:  CMP.W           LR, #0
98E36:  IT EQ
98E38:  MOVEQ           R2, R12
98E3A:  VLDR            S9, [R2]
98E3E:  VSUB.F32        S7, S9, S7
98E42:  VCMP.F32        S7, S0
98E46:  VMRS            APSR_nzcv, FPSCR
98E4A:  BMI             loc_98E78
98E4C:  VMOV.F32        S7, S12
98E50:  SUBS.W          R2, LR, #3
98E54:  IT EQ
98E56:  VMOVEQ.F32      S7, S5
98E5A:  VMOV.F32        S9, S1
98E5E:  CMP.W           LR, #2
98E62:  IT EQ
98E64:  VMOVEQ.F32      S9, S3
98E68:  VSUB.F32        S7, S9, S7
98E6C:  VCMP.F32        S7, S2
98E70:  VMRS            APSR_nzcv, FPSCR
98E74:  BPL.W           loc_98FE0
98E78:  CLZ.W           R2, R4
98E7C:  MOV.W           R9, R2,LSR#5
98E80:  LDR.W           LR, [R5,R9,LSL#2]
98E84:  CMP             LR, R10
98E86:  BEQ             loc_98EC2
98E88:  VMOV.F32        S7, S10
98E8C:  CMP             R4, #0
98E8E:  IT NE
98E90:  VMOVNE.F32      S7, S8
98E94:  VLDR            S9, [R8]
98E98:  VSUB.F32        S7, S9, S7
98E9C:  VCMP.F32        S7, S0
98EA0:  VMRS            APSR_nzcv, FPSCR
98EA4:  BMI             loc_98EC2
98EA6:  VMOV.F32        S7, S5
98EAA:  CMP             R4, #0
98EAC:  IT NE
98EAE:  VMOVNE.F32      S7, S12
98EB2:  VSUB.F32        S7, S1, S7
98EB6:  VCMP.F32        S7, S2
98EBA:  VMRS            APSR_nzcv, FPSCR
98EBE:  BPL.W           loc_99004
98EC2:  MOVS            R2, #2
98EC4:  CMP             R4, #0
98EC6:  IT NE
98EC8:  MOVNE           R2, #1
98ECA:  LDR.W           LR, [R5,R2,LSL#2]
98ECE:  CMP             LR, R10
98ED0:  BEQ             loc_98F0A
98ED2:  VLDR            S7, [R8]
98ED6:  VSUB.F32        S7, S7, S10
98EDA:  VCMP.F32        S7, S0
98EDE:  VMRS            APSR_nzcv, FPSCR
98EE2:  BMI             loc_98F0A
98EE4:  VMOV.F32        S7, S12
98EE8:  CMP             R4, #0
98EEA:  IT NE
98EEC:  VMOVNE.F32      S7, S5
98EF0:  VMOV.F32        S5, S3
98EF4:  IT NE
98EF6:  VMOVNE.F32      S5, S1
98EFA:  VSUB.F32        S5, S5, S7
98EFE:  VCMP.F32        S5, S2
98F02:  VMRS            APSR_nzcv, FPSCR
98F06:  BPL.W           loc_9900C
98F0A:  ADDS            R4, R2, #1
98F0C:  CMP             R4, #4
98F0E:  BEQ             loc_98F80
98F10:  LDR.W           LR, [R5,R4,LSL#2]
98F14:  CMP             LR, R10
98F16:  BEQ             loc_98F4C
98F18:  MOV             R6, R8
98F1A:  CMP             R4, #3
98F1C:  IT EQ
98F1E:  MOVEQ           R6, R12
98F20:  VLDR            S5, [R6]
98F24:  VSUB.F32        S5, S5, S10
98F28:  VCMP.F32        S5, S0
98F2C:  VMRS            APSR_nzcv, FPSCR
98F30:  BMI             loc_98F4C
98F32:  VMOV.F32        S5, S1
98F36:  SUBS            R6, R4, #2
98F38:  IT EQ
98F3A:  VMOVEQ.F32      S5, S3
98F3E:  VSUB.F32        S3, S5, S12
98F42:  VCMP.F32        S3, S2
98F46:  VMRS            APSR_nzcv, FPSCR
98F4A:  BPL             loc_99016
98F4C:  ADDS            R2, #2
98F4E:  CMP             R2, #4
98F50:  BEQ             loc_98F80
98F52:  LDR.W           LR, [R5,R2,LSL#2]
98F56:  CMP             LR, R10
98F58:  BEQ             loc_98F80
98F5A:  CMP             R2, #3
98F5C:  IT EQ
98F5E:  MOVEQ           R8, R12
98F60:  VLDR            S3, [R8]
98F64:  VSUB.F32        S3, S3, S10
98F68:  VCMP.F32        S3, S0
98F6C:  VMRS            APSR_nzcv, FPSCR
98F70:  ITTT PL
98F72:  VSUBPL.F32      S3, S1, S12
98F76:  VCMPPL.F32      S3, S2
98F7A:  VMRSPL          APSR_nzcv, FPSCR
98F7E:  BPL             loc_9902A
98F80:  MOV.W           R2, #0xFFFFFFFF
98F84:  STR             R2, [R3]
98F86:  VLDR            S6, [R1,#4]
98F8A:  VLDR            S4, [R1]
98F8E:  VADD.F32        S6, S2, S6
98F92:  VADD.F32        S4, S0, S4
98F96:  VCMP.F32        S6, S1
98F9A:  VMRS            APSR_nzcv, FPSCR
98F9E:  IT MI
98FA0:  VMOVMI.F32      S1, S6
98FA4:  VCMP.F32        S4, S14
98FA8:  VSUB.F32        S2, S1, S2
98FAC:  VMRS            APSR_nzcv, FPSCR
98FB0:  IT MI
98FB2:  VMOVMI.F32      S14, S4
98FB6:  VSUB.F32        S0, S14, S0
98FBA:  VCMP.F32        S2, S12
98FBE:  VMRS            APSR_nzcv, FPSCR
98FC2:  VCMP.F32        S0, S10
98FC6:  IT GE
98FC8:  VMOVGE.F32      S12, S2
98FCC:  VMRS            APSR_nzcv, FPSCR
98FD0:  IT GE
98FD2:  VMOVGE.F32      S10, S0
98FD6:  VSTR            S10, [R0]
98FDA:  VSTR            S12, [R0,#4]
98FDE:  B               loc_9907C
98FE0:  CLZ.W           R2, R2
98FE4:  SUB.W           R4, LR, #1
98FE8:  CLZ.W           R1, LR
98FEC:  CLZ.W           R4, R4
98FF0:  MOV.W           R9, R2,LSR#5
98FF4:  SUB.W           R2, LR, #2
98FF8:  CLZ.W           R2, R2
98FFC:  LSRS            R1, R1, #5
98FFE:  LSRS            R4, R4, #5
99000:  LSRS            R2, R2, #5
99002:  B               loc_9903A
99004:  MOVS            R1, #0
99006:  MOV             R4, R6
99008:  MOVS            R2, #0
9900A:  B               loc_9903A
9900C:  MOV             R2, R9
9900E:  MOVS            R1, #0
99010:  MOVS            R4, #0
99012:  MOV             R9, R6
99014:  B               loc_9903A
99016:  CLZ.W           R1, R6
9901A:  MOV.W           R9, #0
9901E:  LSRS            R2, R1, #5
99020:  SUBS            R1, R4, #3
99022:  CLZ.W           R1, R1
99026:  MOVS            R4, #0
99028:  B               loc_99038
9902A:  SUBS            R1, R2, #3
9902C:  MOVS            R4, #0
9902E:  CLZ.W           R1, R1
99032:  MOVS            R2, #0
99034:  MOV.W           R9, #0
99038:  LSRS            R1, R1, #5
9903A:  CMP             R4, #0
9903C:  VLDR            S10, [R12]
99040:  VLDR            S12, [R12,#4]
99044:  VLDR            S14, [R12,#0xC]
99048:  IT NE
9904A:  VMOVNE.F32      S6, S8
9904E:  CMP.W           R9, #0
99052:  IT NE
99054:  VMOVNE.F32      S4, S14
99058:  CMP             R1, #0
9905A:  VSUB.F32        S0, S10, S0
9905E:  IT NE
99060:  VMOVNE.F32      S6, S0
99064:  VSUB.F32        S2, S12, S2
99068:  CMP             R2, #0
9906A:  IT NE
9906C:  VMOVNE.F32      S4, S2
99070:  STR.W           LR, [R3]
99074:  VSTR            S6, [R0]
99078:  VSTR            S4, [R0,#4]
9907C:  VPOP            {D8}
99080:  ADD             SP, SP, #4
99082:  POP.W           {R8-R11}
99086:  POP             {R4-R7,PC}
