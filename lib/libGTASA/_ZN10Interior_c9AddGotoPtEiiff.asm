; =========================================================
; Game Engine Function: _ZN10Interior_c9AddGotoPtEiiff
; Address            : 0x447CC0 - 0x447E02
; =========================================================

447CC0:  PUSH            {R4-R7,LR}
447CC2:  ADD             R7, SP, #0xC
447CC4:  PUSH.W          {R11}
447CC8:  SUB             SP, SP, #0x10
447CCA:  MOV             R4, R0
447CCC:  MOV             R5, R2
447CCE:  LDRSB.W         R0, [R4,#0x40C]
447CD2:  MOV             R6, R1
447CD4:  CMP             R0, #0xF
447CD6:  BGT.W           loc_447DFA
447CDA:  LDR             R0, [R4,#0x14]
447CDC:  LDRB            R1, [R0,#2]
447CDE:  CMP             R1, R6
447CE0:  BLE.W           loc_447DFA
447CE4:  CMP             R6, #0
447CE6:  BLT             loc_447D00
447CE8:  LDRB            R2, [R0,#3]
447CEA:  CMP             R2, R5
447CEC:  BLS             loc_447D00
447CEE:  RSB.W           R2, R6, R6,LSL#4
447CF2:  ADD.W           R2, R4, R2,LSL#1
447CF6:  ADD             R2, R5
447CF8:  LDRB.W          R2, [R2,#0x68]
447CFC:  CMP             R2, #3
447CFE:  BEQ             loc_447D1C
447D00:  CMP             R6, #0
447D02:  BLT             loc_447DFA
447D04:  LDRB            R2, [R0,#3]
447D06:  CMP             R2, R5
447D08:  BLS             loc_447DFA
447D0A:  RSB.W           R2, R6, R6,LSL#4
447D0E:  ADD.W           R2, R4, R2,LSL#1
447D12:  ADD             R2, R5
447D14:  LDRB.W          R2, [R2,#0x68]
447D18:  CMP             R2, #7
447D1A:  BNE             loc_447DFA
447D1C:  NEGS            R1, R1
447D1E:  VMOV            S6, R6
447D22:  VMOV.F32        S4, #0.5
447D26:  VLDR            S0, [R7,#arg_0]
447D2A:  VMOV            S8, R1
447D2E:  MOVS            R2, #1
447D30:  VCVT.F32.S32    S6, S6
447D34:  VCVT.F32.S32    S8, S8
447D38:  VMOV            S2, R3
447D3C:  ADD.W           R3, R4, #0x18
447D40:  VADD.F32        S2, S6, S2
447D44:  VMUL.F32        S6, S8, S4
447D48:  VADD.F32        S2, S2, S6
447D4C:  VADD.F32        S2, S2, S4
447D50:  VSTR            S2, [SP,#0x20+var_20]
447D54:  VMOV            S2, R5
447D58:  LDRB            R1, [R0,#3]
447D5A:  VCVT.F32.S32    S2, S2
447D5E:  NEGS            R1, R1
447D60:  VMOV            S6, R1
447D64:  VCVT.F32.S32    S6, S6
447D68:  VADD.F32        S0, S2, S0
447D6C:  VMUL.F32        S2, S6, S4
447D70:  VADD.F32        S0, S0, S2
447D74:  VADD.F32        S0, S0, S4
447D78:  VSTR            S0, [SP,#0x20+var_20+4]
447D7C:  LDRB            R0, [R0,#4]
447D7E:  NEGS            R0, R0
447D80:  VMOV            S0, R0
447D84:  MOV             R0, SP
447D86:  MOV             R1, R0
447D88:  VCVT.F32.S32    S0, S0
447D8C:  VMUL.F32        S0, S0, S4
447D90:  VSTR            S0, [SP,#0x20+var_18]
447D94:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
447D98:  LDRSB.W         R0, [R4,#0x40C]
447D9C:  ADD.W           R1, R4, #0x410
447DA0:  VLDR            D16, [SP,#0x20+var_20]
447DA4:  LDR             R2, [SP,#0x20+var_18]
447DA6:  ADD.W           R0, R1, R0,LSL#4
447DAA:  STR             R2, [R0,#0xC]
447DAC:  VSTR            D16, [R0,#4]
447DB0:  LDRB.W          R0, [R4,#0x40C]
447DB4:  SXTB            R2, R0
447DB6:  LSLS            R3, R2, #4
447DB8:  STRB            R6, [R1,R3]
447DBA:  ADD.W           R1, R1, R2,LSL#4
447DBE:  STRB            R5, [R1,#1]
447DC0:  ORR.W           R1, R5, R6
447DC4:  CMP             R1, #0
447DC6:  BLT             loc_447DF4
447DC8:  LDR             R1, [R4,#0x14]
447DCA:  LDRB            R2, [R1,#2]
447DCC:  CMP             R2, R6
447DCE:  ITT GT
447DD0:  LDRBGT          R1, [R1,#3]
447DD2:  CMPGT           R1, R5
447DD4:  BLE             loc_447DF4
447DD6:  RSB.W           R1, R6, R6,LSL#4
447DDA:  ADD.W           R1, R4, R1,LSL#1
447DDE:  ADD             R1, R5
447DE0:  LDRB.W          R2, [R1,#0x68]!
447DE4:  CMP             R2, #3
447DE6:  IT NE
447DE8:  CMPNE           R2, #0
447DEA:  BNE             loc_447DF4
447DEC:  MOVS            R0, #4
447DEE:  STRB            R0, [R1]
447DF0:  LDRB.W          R0, [R4,#0x40C]
447DF4:  ADDS            R0, #1
447DF6:  STRB.W          R0, [R4,#0x40C]
447DFA:  ADD             SP, SP, #0x10
447DFC:  POP.W           {R11}
447E00:  POP             {R4-R7,PC}
