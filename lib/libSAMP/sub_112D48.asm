; =========================================================
; Game Engine Function: sub_112D48
; Address            : 0x112D48 - 0x112F3E
; =========================================================

112D48:  PUSH            {R4-R7,LR}
112D4A:  ADD             R7, SP, #0xC
112D4C:  PUSH.W          {R8,R9,R11}
112D50:  VPUSH           {D8}
112D54:  SUB             SP, SP, #8
112D56:  MOV             R8, R0
112D58:  BL              sub_11318C
112D5C:  CMP             R0, #0
112D5E:  BEQ.W           loc_112F32
112D62:  LDR             R0, =(off_23494C - 0x112D68)
112D64:  ADD             R0, PC; off_23494C
112D66:  LDR             R0, [R0]; dword_23DF24
112D68:  LDR             R0, [R0]
112D6A:  ADD.W           R0, R0, #0x9F0000
112D6E:  ADD.W           R0, R0, #0xC900
112D72:  VLDR            S0, [R0]
112D76:  VLDR            S2, [R0,#4]
112D7A:  VCVT.F32.S32    S0, S0
112D7E:  LDR.W           R0, [R8,#0x858]
112D82:  VCVT.F32.S32    S16, S2
112D86:  LDR             R3, [R0]
112D88:  LDR             R3, [R3,#0xC]
112D8A:  VMOV            R1, S0
112D8E:  VMOV            R2, S16
112D92:  BLX             R3
112D94:  VLDR            S0, =1485.0
112D98:  LDR.W           R0, [R8,#0x858]
112D9C:  VDIV.F32        S0, S16, S0
112DA0:  LDR             R2, [R0]
112DA2:  LDR             R2, [R2]
112DA4:  VMOV            R1, S0
112DA8:  BLX             R2
112DAA:  MOVS            R0, #0
112DAC:  BL              sub_163D4C
112DB0:  MOVS            R0, #0
112DB2:  MOVS            R1, #0
112DB4:  BL              sub_163CEC
112DB8:  MOVS            R0, #0
112DBA:  BL              sub_163CA4
112DBE:  MOVS            R0, #1
112DC0:  BL              sub_163D1C
112DC4:  MOVS            R0, #1
112DC6:  BL              sub_163C8C
112DCA:  MOV.W           R0, #0xFFFFFFFF
112DCE:  STR             R0, [SP,#0x28+var_24]
112DD0:  ADD             R0, SP, #0x28+var_24
112DD2:  BL              sub_163C74
112DD6:  MOVS            R0, #1
112DD8:  BL              sub_163D80
112DDC:  MOVS            R0, #0
112DDE:  BL              sub_163D98
112DE2:  LDR.W           R0, [R8,#0x858]
112DE6:  LDR             R1, [R0]
112DE8:  LDR             R1, [R1,#0x1C]
112DEA:  BLX             R1
112DEC:  LDR.W           R0, [R8,#0x858]
112DF0:  LDR             R1, [R0]
112DF2:  LDR             R1, [R1,#0x20]
112DF4:  BLX             R1
112DF6:  BL              sub_1082E4
112DFA:  LDR.W           R4, [R0,#0x590]
112DFE:  LDR             R1, [R4,#0x4C]
112E00:  LDR             R0, [R4,#0x48]
112E02:  LDR             R2, [R4,#0x50]
112E04:  VMOV            S0, R1
112E08:  VMOV            S2, R0
112E0C:  LDR.W           R0, [R8,#0x858]
112E10:  VMUL.F32        S0, S0, S0
112E14:  VMLA.F32        S0, S2, S2
112E18:  VMOV            S2, R2
112E1C:  LDR             R2, [R0]
112E1E:  LDR             R2, [R2,#0x24]
112E20:  VMLA.F32        S0, S2, S2
112E24:  VLDR            S2, =175.0
112E28:  VSQRT.F32       S0, S0
112E2C:  VMUL.F32        S0, S0, S2
112E30:  VMOV            R1, S0
112E34:  BLX             R2
112E36:  LDR.W           R0, [R8,#0x858]
112E3A:  LDR.W           R1, [R8,#0x84C]
112E3E:  LDRB.W          R2, [R8,#0x79]
112E42:  LDR             R3, [R0]
112E44:  LDR             R3, [R3,#0x2C]
112E46:  BLX             R3
112E48:  LDR.W           R0, [R8,#0x858]
112E4C:  LDR.W           R1, [R8,#0x850]
112E50:  LDR             R2, [R0]
112E52:  LDR             R2, [R2,#0x28]
112E54:  BLX             R2
112E56:  LDR.W           R0, [R8,#0x858]
112E5A:  LDR.W           R1, [R4,#0x4CC]
112E5E:  LDR             R2, [R0]
112E60:  LDR             R2, [R2,#0x30]
112E62:  BLX             R2
112E64:  LDR             R0, =(off_23496C - 0x112E6E)
112E66:  LDRB.W          R1, [R4,#0x42C]
112E6A:  ADD             R0, PC; off_23496C
112E6C:  LDR             R0, [R0]; dword_23DEF4
112E6E:  UBFX.W          R5, R1, #4, #1
112E72:  LDR             R0, [R0]
112E74:  CBZ             R0, loc_112EDE
112E76:  LDR.W           R0, [R0,#0x3B0]
112E7A:  LDR             R6, [R0,#4]
112E7C:  MOVW            R0, #0xEA60
112E80:  LDR             R2, [R6,R0]
112E82:  ADD             R0, R6
112E84:  LDR             R1, [R0,#4]
112E86:  LDR             R0, [R2]
112E88:  CMP             R2, R1
112E8A:  BEQ             loc_112EAA
112E8C:  ADD.W           R3, R6, R0,LSL#2
112E90:  MOV.W           R1, #0x1F40
112E94:  LDR             R3, [R3,R1]
112E96:  CMP             R3, R4
112E98:  BEQ             loc_112EAA
112E9A:  ADDS            R2, #4
112E9C:  LDR.W           R0, [R2],#4
112EA0:  ADD.W           R3, R6, R0,LSL#2
112EA4:  LDR             R3, [R3,R1]
112EA6:  CMP             R3, R4
112EA8:  BNE             loc_112E9C
112EAA:  UXTH.W          R9, R0
112EAE:  MOV             R0, R6
112EB0:  MOV             R1, R9
112EB2:  BL              sub_F2396
112EB6:  LDR.W           R0, [R6,R9,LSL#2]
112EBA:  ADD.W           R1, R8, R9
112EBE:  LDR             R2, [R0,#0x1C]
112EC0:  LDRB.W          R0, [R1,#0x7C]
112EC4:  CMP             R2, #0
112EC6:  IT NE
112EC8:  ADDNE           R5, #2
112ECA:  CMP             R0, #3
112ECC:  BNE             loc_112ED2
112ECE:  ADDS            R5, #0x60 ; '`'
112ED0:  B               loc_112EDE
112ED2:  CMP             R0, #1
112ED4:  IT EQ
112ED6:  ADDEQ           R5, #0x20 ; ' '
112ED8:  CMP             R0, #2
112EDA:  IT EQ
112EDC:  ADDEQ           R5, #0x40 ; '@'
112EDE:  LDR.W           R0, [R8,#0x858]
112EE2:  LDRB.W          R1, [R8,#0x78]
112EE6:  LDR.W           R2, [R4,#0x508]
112EEA:  LDR             R3, [R0]
112EEC:  CMP             R2, #0
112EEE:  IT NE
112EF0:  ORRNE.W         R5, R5, #4
112EF4:  CMP             R1, #0
112EF6:  LDR             R2, [R3,#0x34]
112EF8:  IT NE
112EFA:  ORRNE.W         R5, R5, #8
112EFE:  MOV             R1, R5
112F00:  BLX             R2
112F02:  LDRB.W          R0, [R8,#0x7A]
112F06:  CBZ             R0, loc_112F2C
112F08:  LDRB.W          R1, [R8,#0x7B]
112F0C:  LDR.W           R0, [R8,#0x854]
112F10:  CBZ             R1, loc_112F20
112F12:  ADDS            R1, R0, #2
112F14:  CMP             R0, #0xFD
112F16:  IT GT
112F18:  MOVGT           R1, #0
112F1A:  STR.W           R1, [R8,#0x854]
112F1E:  B               loc_112F22
112F20:  MOV             R1, R0
112F22:  LDR.W           R0, [R8,#0x858]
112F26:  LDR             R2, [R0]
112F28:  LDR             R2, [R2,#0x38]
112F2A:  BLX             R2
112F2C:  MOVS            R0, #0
112F2E:  BL              sub_163C8C
112F32:  ADD             SP, SP, #8
112F34:  VPOP            {D8}
112F38:  POP.W           {R8,R9,R11}
112F3C:  POP             {R4-R7,PC}
