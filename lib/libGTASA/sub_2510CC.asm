; =========================================================
; Game Engine Function: sub_2510CC
; Address            : 0x2510CC - 0x2512EE
; =========================================================

2510CC:  PUSH            {R4-R7,LR}
2510CE:  ADD             R7, SP, #0xC
2510D0:  PUSH.W          {R8-R11}
2510D4:  SUB             SP, SP, #4
2510D6:  VPUSH           {D8-D10}
2510DA:  SUB             SP, SP, #0x20
2510DC:  LDR             R5, [R0,#0x20]
2510DE:  MOV             R4, R2
2510E0:  CMP             R1, #0
2510E2:  BEQ.W           loc_2512DE
2510E6:  LDRD.W          R6, R12, [R0,#0x14]
2510EA:  MOV             R10, R1
2510EC:  LDR             R2, [R0,#0x1C]
2510EE:  SUBS            R6, #1
2510F0:  STR             R6, [SP,#0x58+var_3C]
2510F2:  NEGS            R2, R2
2510F4:  STR             R2, [SP,#0x58+var_4C]
2510F6:  RSB.W           R2, R12, #0
2510FA:  STR             R2, [SP,#0x58+var_50]
2510FC:  MOVS            R6, #0
2510FE:  MOV             R2, R1
251100:  STR             R2, [SP,#0x58+var_58]
251102:  STR             R5, [SP,#0x58+var_54]
251104:  STRD.W          R4, R3, [SP,#0x58+var_48]
251108:  LDR             R1, [SP,#0x58+var_50]
25110A:  SUBS.W          R10, R10, #1
25110E:  LDR             R2, [SP,#0x58+var_3C]
251110:  ADD             R1, R5
251112:  LDR             R4, [R0,#0x10]
251114:  AND.W           R1, R1, R2
251118:  VLDR            S6, [R0,#0x24]
25111C:  VLDR            S5, [R0,#0x48]
251120:  ADD.W           R1, R4, R1,LSL#2
251124:  VLDR            S10, [R0,#0x28]
251128:  VLDR            S12, [R0,#0x2C]
25112C:  VLDR            S4, [R1]
251130:  LDR             R1, [SP,#0x58+var_4C]
251132:  VMUL.F32        S7, S4, S6
251136:  VLDR            S8, [R0,#0x3C]
25113A:  ADD             R1, R5
25113C:  VMUL.F32        S10, S4, S10
251140:  AND.W           R1, R1, R2
251144:  ADD.W           R2, R3, R6
251148:  VLDR            S2, [R0,#0x40]
25114C:  ADD.W           R8, R2, #0x4000
251150:  ADD.W           R1, R4, R1,LSL#2
251154:  VLDR            S9, [R2]
251158:  VLDR            S0, [R0,#0x44]
25115C:  ADD.W           R12, R2, #0xA000
251160:  VLDR            S6, [R1]
251164:  ADD.W           R1, R2, #0x10000
251168:  VADD.F32        S7, S9, S7
25116C:  ADD.W           R11, R2, #0xE000
251170:  VMUL.F32        S5, S6, S5
251174:  ADD.W           R3, R2, #0x8000
251178:  ADD.W           LR, R2, #0x2000
25117C:  VLDR            S14, [R0,#0x30]
251180:  VLDR            S1, [R0,#0x34]
251184:  ADD.W           R9, R2, #0x6000
251188:  VLDR            S3, [R0,#0x38]
25118C:  VMUL.F32        S8, S4, S8
251190:  STR             R1, [SP,#0x58+var_40]
251192:  VMUL.F32        S2, S4, S2
251196:  VLDR            S11, [R1]
25119A:  ADD.W           R1, R2, #0xC000
25119E:  VLDR            S9, [R11]
2511A2:  VMUL.F32        S0, S4, S0
2511A6:  VADD.F32        S5, S7, S5
2511AA:  VLDR            S13, [R1]
2511AE:  VLDR            S20, [LR]
2511B2:  VLDR            S15, [R12]
2511B6:  VLDR            S16, [R3]
2511BA:  VADD.F32        S10, S20, S10
2511BE:  VLDR            S7, [R9]
2511C2:  VADD.F32        S8, S13, S8
2511C6:  VLDR            S18, [R8]
2511CA:  VADD.F32        S2, S9, S2
2511CE:  VADD.F32        S0, S11, S0
2511D2:  VSTR            S5, [R2]
2511D6:  VLDR            S5, [R0,#0x4C]
2511DA:  VMUL.F32        S5, S6, S5
2511DE:  VADD.F32        S10, S10, S5
2511E2:  VSTR            S10, [LR]
2511E6:  VMUL.F32        S10, S4, S12
2511EA:  VLDR            S12, [R0,#0x50]
2511EE:  VMUL.F32        S12, S6, S12
2511F2:  VADD.F32        S10, S18, S10
2511F6:  VADD.F32        S10, S10, S12
2511FA:  VSTR            S10, [R8]
2511FE:  VMUL.F32        S10, S4, S14
251202:  VLDR            S12, [R0,#0x54]
251206:  VMUL.F32        S12, S6, S12
25120A:  VADD.F32        S10, S7, S10
25120E:  VADD.F32        S10, S10, S12
251212:  VSTR            S10, [R9]
251216:  VMUL.F32        S10, S4, S1
25121A:  VLDR            S12, [R0,#0x58]
25121E:  VMUL.F32        S12, S6, S12
251222:  VADD.F32        S10, S16, S10
251226:  VADD.F32        S10, S10, S12
25122A:  VSTR            S10, [R3]
25122E:  VMUL.F32        S10, S4, S3
251232:  VLDR            S12, [R0,#0x5C]
251236:  VMUL.F32        S12, S6, S12
25123A:  VADD.F32        S10, S15, S10
25123E:  VADD.F32        S10, S10, S12
251242:  VSTR            S10, [R12]
251246:  LDRD.W          R4, R3, [SP,#0x58+var_48]
25124A:  VLDR            S10, [R0,#0x60]
25124E:  VMUL.F32        S10, S6, S10
251252:  VADD.F32        S8, S8, S10
251256:  VSTR            S8, [R1]
25125A:  VLDR            S8, [R0,#0x64]
25125E:  LDR             R1, [SP,#0x58+var_40]
251260:  VMUL.F32        S8, S6, S8
251264:  VADD.F32        S2, S2, S8
251268:  VSTR            S2, [R11]
25126C:  VLDR            S2, [R0,#0x68]
251270:  VMUL.F32        S2, S6, S2
251274:  VADD.F32        S0, S0, S2
251278:  VSTR            S0, [R1]
25127C:  ADD.W           R1, R4, R6
251280:  VLDR            S2, [R0,#0x74]
251284:  ADD.W           R6, R6, #4
251288:  VLDR            S0, [R1]
25128C:  VLDR            S4, [R0,#0x70]
251290:  VADD.F32        S0, S6, S0
251294:  LDR             R1, [R0,#0x10]
251296:  VSUB.F32        S2, S2, S0
25129A:  VMUL.F32        S2, S4, S2
25129E:  VADD.F32        S0, S0, S2
2512A2:  VLDR            S2, [R0,#0x78]
2512A6:  VSUB.F32        S2, S2, S0
2512AA:  VMUL.F32        S2, S4, S2
2512AE:  VLDR            S4, [R0,#0x6C]
2512B2:  VSTR            S0, [R0,#0x74]
2512B6:  VADD.F32        S2, S0, S2
2512BA:  VSTR            S2, [R0,#0x78]
2512BE:  VMUL.F32        S4, S4, S2
2512C2:  LDR             R2, [SP,#0x58+var_3C]
2512C4:  AND.W           R2, R2, R5
2512C8:  ADD.W           R5, R5, #1
2512CC:  ADD.W           R1, R1, R2,LSL#2
2512D0:  VSTR            S4, [R1]
2512D4:  BNE.W           loc_251108
2512D8:  LDRD.W          R1, R5, [SP,#0x58+var_58]
2512DC:  ADD             R5, R1
2512DE:  STR             R5, [R0,#0x20]
2512E0:  ADD             SP, SP, #0x20 ; ' '
2512E2:  VPOP            {D8-D10}
2512E6:  ADD             SP, SP, #4
2512E8:  POP.W           {R8-R11}
2512EC:  POP             {R4-R7,PC}
