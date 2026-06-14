; =========================================================
; Game Engine Function: sub_251E8C
; Address            : 0x251E8C - 0x252600
; =========================================================

251E8C:  PUSH            {R4-R7,LR}
251E8E:  ADD             R7, SP, #0xC
251E90:  PUSH.W          {R8-R11}
251E94:  SUB             SP, SP, #4
251E96:  VPUSH           {D8-D15}
251E9A:  SUB             SP, SP, #0x10
251E9C:  MOV             R8, R0
251E9E:  LDR.W           R0, =(EmulateEAXReverb_ptr - 0x251EAA)
251EA2:  MOV             R11, R1
251EA4:  MOV             R5, R2
251EA6:  ADD             R0, PC; EmulateEAXReverb_ptr
251EA8:  LDR             R2, [R5]
251EAA:  LDR             R1, [R0]; EmulateEAXReverb
251EAC:  CMP.W           R2, #0x8000
251EB0:  LDR.W           R0, [R11,#0x10]
251EB4:  LDRB            R1, [R1]
251EB6:  IT EQ
251EB8:  CMPEQ           R1, #0
251EBA:  BEQ             loc_251ECA
251EBC:  VLDR            S0, =31416.0
251EC0:  CMP             R2, #1
251EC2:  BEQ             loc_251EE4
251EC4:  CBNZ            R1, loc_251EE4
251EC6:  MOVS            R4, #0
251EC8:  B               loc_251EF0
251ECA:  LDR.W           R1, =(sub_261FD0+1 - 0x251ED8)
251ECE:  MOVS            R4, #1
251ED0:  VLDR            S0, =6.2832
251ED4:  ADD             R1, PC; sub_261FD0
251ED6:  STR.W           R1, [R8,#0xC]
251EDA:  VLDR            S2, [R5,#0x68]
251EDE:  VMUL.F32        S0, S2, S0
251EE2:  B               loc_251EF0
251EE4:  LDR.W           R1, =(sub_252648+1 - 0x251EEE)
251EE8:  MOVS            R4, #0
251EEA:  ADD             R1, PC; sub_252648
251EEC:  STR.W           R1, [R8,#0xC]
251EF0:  VMOV            S2, R0
251EF4:  VCVT.F32.U32    S22, S2
251EF8:  VDIV.F32        S0, S0, S22
251EFC:  VMOV            R0, S0; x
251F00:  BLX             cosf
251F04:  VLDR            S29, =0.9999
251F08:  VMOV            S19, R0
251F0C:  VLDR            S0, [R5,#0x10]
251F10:  VCMPE.F32       S0, S29
251F14:  VMRS            APSR_nzcv, FPSCR
251F18:  BGE             loc_251FA4
251F1A:  VMOV.F32        S2, #1.0
251F1E:  VLDR            S6, =0.001
251F22:  VMUL.F32        S4, S19, S19
251F26:  VMAX.F32        D0, D0, D3
251F2A:  VADD.F32        S6, S0, S0
251F2E:  VSUB.F32        S8, S2, S19
251F32:  VMUL.F32        S10, S0, S0
251F36:  VSUB.F32        S4, S2, S4
251F3A:  VMUL.F32        S6, S8, S6
251F3E:  VMUL.F32        S4, S4, S10
251F42:  VSUB.F32        S4, S6, S4
251F46:  VMUL.F32        S6, S19, S0
251F4A:  VSUB.F32        S0, S2, S0
251F4E:  VSQRT.F32       S4, S4
251F52:  VSUB.F32        S6, S2, S6
251F56:  VSUB.F32        S2, S6, S4
251F5A:  VDIV.F32        S0, S2, S0
251F5E:  B               loc_251FA8
251F60:  DCFS 31416.0
251F64:  DCFS 6.2832
251F68:  DCFS 0.9999
251F6C:  DCFS 0.001
251F70:  DCFS 0.0
251F74:  DCFS 0.1
251F78:  DCFS 0.0045
251F7C:  DCFS 0.0015
251F80:  DCFS 0.0135
251F84:  DCFS 0.0405
251F88:  DCFS 0.01266
251F8C:  DCFS 0.00633
251F90:  DCFS 0.003165
251F94:  DCFS 1.0472
251F98:  DCFS 1.7321
251F9C:  DCFS 343.3
251FA0:  DCFS 0.041575
251FA4:  VLDR            S0, =0.0
251FA8:  CMP             R4, #1
251FAA:  VSTR            S0, [R8,#0x18]
251FAE:  STR             R4, [SP,#0x70+var_64]
251FB0:  BNE             loc_252002
251FB2:  VLDR            S0, =0.1
251FB6:  VLDR            S4, [R5,#0x64]
251FBA:  VLDR            S2, [R5,#0x60]
251FBE:  VMUL.F32        S0, S4, S0
251FC2:  VMOV.F32        S4, #0.5
251FC6:  VMUL.F32        S0, S2, S0
251FCA:  VMUL.F32        S2, S2, S22
251FCE:  VMUL.F32        S0, S0, S4
251FD2:  VCVT.S32.F32    S2, S2
251FD6:  LDRD.W          R0, R2, [R8,#0x2C]
251FDA:  VMUL.F32        S0, S0, S4
251FDE:  VMOV            R3, S2
251FE2:  VMUL.F32        S16, S0, S22
251FE6:  CMP             R3, #1
251FE8:  IT LS
251FEA:  MOVLS           R3, #1
251FEC:  UMULL.W         R0, R1, R3, R0
251FF0:  STR.W           R3, [R8,#0x30]
251FF4:  MOVS            R3, #0
251FF6:  BLX             __aeabi_uldivmod
251FFA:  STR.W           R0, [R8,#0x2C]
251FFE:  VSTR            S16, [R8,#0x34]
252002:  VLDR            S0, [R5,#0x20]
252006:  VMOV.F32        S28, #0.5
25200A:  VLDR            S2, [R5,#0x28]
25200E:  MOVW            R6, #0x126F
252012:  VLDR            S4, =0.0045
252016:  MOVT            R6, #0x3A83
25201A:  VADD.F32        S2, S0, S2
25201E:  VLDR            S8, =0.0015
252022:  VMUL.F32        S0, S0, S22
252026:  VLDR            S10, =0.0135
25202A:  VLDR            S12, =0.0405
25202E:  MOV             R0, R6; x
252030:  VMOV.F32        S24, #4.0
252034:  VMUL.F32        S2, S2, S22
252038:  VCVT.S32.F32    S0, S0
25203C:  VCVT.S32.F32    S2, S2
252040:  VSTR            S0, [R8,#0x48]
252044:  VSTR            S2, [R8,#0x4C]
252048:  VLDR            S6, [R5,#0x28]
25204C:  VLDR            S0, [R5,#0xC]
252050:  VDIV.F32        S4, S4, S6
252054:  VDIV.F32        S8, S8, S6
252058:  VDIV.F32        S10, S10, S6
25205C:  VDIV.F32        S6, S12, S6
252060:  VMOV            R1, S4; y
252064:  VLDR            S2, [R5,#0x1C]
252068:  VMUL.F32        S0, S0, S28
25206C:  VMOV            R4, S8
252070:  VMOV            R9, S10
252074:  VMOV            R10, S6
252078:  VMUL.F32        S0, S0, S2
25207C:  VSTR            S0, [R8,#0x50]
252080:  BLX             powf
252084:  STR.W           R0, [R8,#0x58]
252088:  MOV             R0, R6; x
25208A:  MOV             R1, R4; y
25208C:  BLX             powf
252090:  STR.W           R0, [R8,#0x54]
252094:  MOV             R0, R6; x
252096:  MOV             R1, R9; y
252098:  BLX             powf
25209C:  STR.W           R0, [R8,#0x5C]
2520A0:  MOV             R0, R6; x
2520A2:  MOV             R1, R10; y
2520A4:  BLX             powf
2520A8:  STR.W           R0, [R8,#0x60]
2520AC:  VMOV.F32        S16, #1.0
2520B0:  VLDR            S0, [R5,#4]
2520B4:  VLDR            S2, =0.01266
2520B8:  VMUL.F32        S0, S0, S24
2520BC:  VLDR            S4, =0.00633
2520C0:  VLDR            S6, =0.003165
2520C4:  VADD.F32        S0, S0, S16
2520C8:  VMUL.F32        S2, S0, S2
2520CC:  VMUL.F32        S4, S0, S4
2520D0:  VMUL.F32        S0, S0, S6
2520D4:  VLDR            S6, =1.0472
2520D8:  VMUL.F32        S2, S2, S22
2520DC:  VMUL.F32        S4, S4, S22
2520E0:  VMUL.F32        S0, S0, S22
2520E4:  VCVT.S32.F32    S2, S2
2520E8:  VCVT.S32.F32    S4, S4
2520EC:  VCVT.S32.F32    S0, S0
2520F0:  VSTR            S0, [R8,#0xC0]
2520F4:  VSTR            S4, [R8,#0xC4]
2520F8:  VSTR            S2, [R8,#0xC8]
2520FC:  VLDR            S0, [R5,#8]
252100:  VMUL.F32        S0, S0, S6
252104:  VMOV            R4, S0
252108:  MOV             R0, R4; x
25210A:  BLX             cosf
25210E:  MOV             R6, R0
252110:  MOV             R0, R4; x
252112:  BLX             sinf
252116:  VLDR            S0, =1.7321
25211A:  VMOV            S2, R0
25211E:  VMOV            S30, R6
252122:  VDIV.F32        S0, S2, S0
252126:  VDIV.F32        S0, S0, S30
25212A:  VSTR            S0, [R8,#0xD8]
25212E:  LDRB.W          R0, [R5,#0x34]
252132:  VLDR            S26, [R5,#0x18]
252136:  CMP             R0, #0
252138:  STR.W           R11, [SP,#0x70+var_6C]
25213C:  BEQ             loc_252180
25213E:  VLDR            S0, [R5,#0x2C]
252142:  VCMPE.F32       S0, S16
252146:  VMRS            APSR_nzcv, FPSCR
25214A:  BGE             loc_252180
25214C:  VMOV            R0, S0; x
252150:  VLDR            S18, [R5,#0x14]
252154:  BLX             log10f
252158:  VMOV            S0, R0
25215C:  VMOV.F32        S2, #-3.0
252160:  VMUL.F32        S0, S18, S0
252164:  VDIV.F32        S0, S0, S2
252168:  VLDR            S2, =343.3
25216C:  VMUL.F32        S0, S0, S2
252170:  VLDR            S2, =0.1
252174:  VDIV.F32        S0, S16, S0
252178:  VMAX.F32        D16, D0, D1
25217C:  VMIN.F32        D13, D16, D13
252180:  VLDR            S0, [R5,#4]
252184:  MOVW            R4, #0x126F
252188:  VLDR            S31, [R5,#0x14]
25218C:  MOVT            R4, #0x3A83
252190:  VMUL.F32        S0, S0, S24
252194:  MOV             R0, R4; x
252196:  VLDR            S18, [R5,#8]
25219A:  VLDR            S20, [R5,#0xC]
25219E:  VADD.F32        S23, S0, S16
2521A2:  VLDR            S0, =0.041575
2521A6:  VMUL.F32        S0, S23, S0
2521AA:  VDIV.F32        S0, S0, S31
2521AE:  VMOV            R1, S0; y
2521B2:  BLX             powf
2521B6:  VMOV            S0, R0
2521BA:  STR             R5, [SP,#0x70+var_68]
2521BC:  VLDR            S2, [R5,#0x24]
2521C0:  VMUL.F32        S4, S18, S18
2521C4:  VMUL.F32        S0, S0, S0
2521C8:  ADR.W           R9, dword_252614
2521CC:  VMUL.F32        S2, S20, S2
2521D0:  ADR.W           R10, dword_252624
2521D4:  VMUL.F32        S6, S19, S19
2521D8:  VLDR            S24, =0.0
2521DC:  VMUL.F32        S20, S26, S31
2521E0:  MOVS            R5, #(dword_252614 - 0x252614)
2521E2:  VMUL.F32        S4, S4, S28
2521E6:  VSUB.F32        S0, S16, S0
2521EA:  VMUL.F32        S2, S30, S2
2521EE:  VMOV.F32        S28, S19
2521F2:  VSUB.F32        S19, S16, S19
2521F6:  VSUB.F32        S21, S16, S6
2521FA:  VSQRT.F32       S0, S0
2521FE:  VSTR            S2, [R8,#0xCC]
252202:  VSTR            S0, [R8,#0xD0]
252206:  VSTR            S4, [R8,#0xD4]
25220A:  ADD.W           R0, R9, R5
25220E:  VLDR            S0, [R0]
252212:  MOV             R0, R4; x
252214:  VDIV.F32        S0, S0, S31
252218:  VMOV            R1, S0; y
25221C:  BLX             powf
252220:  MOV             R6, R0
252222:  ADD.W           R0, R10, R5
252226:  ADD.W           R11, R8, R5
25222A:  VLDR            S0, [R0]
25222E:  MOV             R0, R4; x
252230:  VMUL.F32        S18, S23, S0
252234:  VDIV.F32        S0, S18, S31
252238:  VMOV            R1, S0; y
25223C:  VMUL.F32        S0, S18, S22
252240:  VCVT.S32.F32    S0, S0
252244:  VSTR            S0, [R11,#0x14C]
252248:  BLX             powf
25224C:  VMOV            S25, R0
252250:  STR.W           R6, [R11,#0xDC]
252254:  VMOV            D0, D12
252258:  STR.W           R0, [R11,#0x11C]
25225C:  VCMPE.F32       S26, S16
252260:  VMRS            APSR_nzcv, FPSCR
252264:  BGE             loc_2522CA
252266:  VDIV.F32        S0, S18, S20
25226A:  MOV             R0, R4; x
25226C:  VMOV            R1, S0; y
252270:  BLX             powf
252274:  VMOV            S0, R0
252278:  VMOV.F64        D1, D12
25227C:  VDIV.F32        S0, S0, S25
252280:  VMUL.F32        S0, S0, S0
252284:  VCMPE.F32       S0, S29
252288:  VMRS            APSR_nzcv, FPSCR
25228C:  BGE             loc_2522C2
25228E:  VLDR            S2, =0.001
252292:  VMAX.F32        D0, D0, D1
252296:  VMUL.F32        S2, S0, S0
25229A:  VADD.F32        S4, S0, S0
25229E:  VMUL.F32        S2, S21, S2
2522A2:  VMUL.F32        S4, S19, S4
2522A6:  VSUB.F32        S2, S4, S2
2522AA:  VMUL.F32        S4, S28, S0
2522AE:  VSUB.F32        S0, S16, S0
2522B2:  VSQRT.F32       S2, S2
2522B6:  VSUB.F32        S4, S16, S4
2522BA:  VSUB.F32        S2, S4, S2
2522BE:  VDIV.F32        S2, S2, S0
2522C2:  VLDR            S0, =0.98
2522C6:  VMIN.F32        D0, D1, D0
2522CA:  VMUL.F32        S2, S30, S25
2522CE:  ADDS            R5, #4
2522D0:  CMP             R5, #0x10
2522D2:  VSTR            S0, [R11,#0x15C]
2522D6:  VSTR            S2, [R11,#0x11C]
2522DA:  BNE             loc_25220A
2522DC:  LDR             R0, [SP,#0x70+var_64]
2522DE:  CMP             R0, #1
2522E0:  BNE             loc_2523CC
2522E2:  LDR             R5, [SP,#0x70+var_68]
2522E4:  MOV             R4, #0x3A83126F
2522EC:  MOV             R0, R4; x
2522EE:  VLDR            S23, [R5,#0x14]
2522F2:  VLDR            S25, [R5,#0x58]
2522F6:  VLDR            S30, [R5,#8]
2522FA:  VDIV.F32        S0, S25, S23
2522FE:  VMOV            R1, S0; y
252302:  VLDR            S20, [R5,#0xC]
252306:  VLDR            S24, [R5,#0x24]
25230A:  BLX             powf
25230E:  VLDR            S0, =0.0133
252312:  VMOV            S31, R0
252316:  VMOV.F32        S4, #0.5
25231A:  VDIV.F32        S0, S0, S23
25231E:  VMUL.F32        S2, S31, S31
252322:  VMOV            R1, S0; y
252326:  VMUL.F32        S0, S25, S22
25232A:  VLDR            S22, [R5,#0x5C]
25232E:  VSUB.F32        S2, S16, S2
252332:  VCVT.S32.F32    S0, S0
252336:  VSQRT.F32       S18, S2
25233A:  VMUL.F32        S2, S30, S30
25233E:  VSTR            S0, [R8,#0x1C0]
252342:  VMUL.F32        S2, S2, S4
252346:  VSTR            S2, [R8,#0x1B8]
25234A:  STR.W           R0, [R8,#0x1B4]
25234E:  MOV             R0, R4; x
252350:  BLX             powf
252354:  VCMPE.F32       S26, S16
252358:  STR.W           R0, [R8,#0x1BC]
25235C:  VMRS            APSR_nzcv, FPSCR
252360:  VSTR            S18, [R8,#0x1A0]
252364:  BGE             loc_25245E
252366:  VMUL.F32        S0, S26, S23
25236A:  MOV             R0, #0x3A83126F; x
252372:  VDIV.F32        S0, S25, S0
252376:  VMOV            R1, S0; y
25237A:  BLX             powf
25237E:  VMOV            S0, R0
252382:  LDR             R6, [SP,#0x70+var_6C]
252384:  VDIV.F32        S0, S0, S31
252388:  VMUL.F32        S0, S0, S0
25238C:  VCMPE.F32       S0, S29
252390:  VMRS            APSR_nzcv, FPSCR
252394:  BGE             loc_252466
252396:  VLDR            S2, =0.001
25239A:  VMAX.F32        D0, D0, D1
25239E:  VMUL.F32        S2, S0, S0
2523A2:  VADD.F32        S4, S0, S0
2523A6:  VMUL.F32        S2, S21, S2
2523AA:  VMUL.F32        S4, S19, S4
2523AE:  VSUB.F32        S2, S4, S2
2523B2:  VMUL.F32        S4, S28, S0
2523B6:  VSUB.F32        S0, S16, S0
2523BA:  VSQRT.F32       S2, S2
2523BE:  VSUB.F32        S4, S16, S4
2523C2:  VSUB.F32        S2, S4, S2
2523C6:  VDIV.F32        S0, S2, S0
2523CA:  B               loc_25246A
2523CC:  LDR             R0, [SP,#0x70+var_68]
2523CE:  VLDR            S0, [R0,#0xB8]
2523D2:  LDR             R0, =(ReverbBoost_ptr - 0x2523DA)
2523D4:  LDR             R6, [SP,#0x70+var_6C]
2523D6:  ADD             R0, PC; ReverbBoost_ptr
2523D8:  VLDR            S2, [R6,#0x128]
2523DC:  LDR             R0, [R0]; ReverbBoost
2523DE:  VCVT.F32.U32    S2, S2
2523E2:  LDR.W           R1, [R8,#0x1DC]
2523E6:  VLDR            S4, [R0]
2523EA:  MOVS            R0, #0
2523EC:  STR             R0, [R1]
2523EE:  LDR.W           R1, [R8,#0x1DC]
2523F2:  STR             R0, [R1,#4]
2523F4:  LDR.W           R1, [R8,#0x1DC]
2523F8:  STR             R0, [R1,#8]
2523FA:  LDR.W           R1, [R8,#0x1DC]
2523FE:  STR             R0, [R1,#0xC]
252400:  LDR.W           R1, [R8,#0x1DC]
252404:  STR             R0, [R1,#0x10]
252406:  LDR.W           R1, [R8,#0x1DC]
25240A:  STR             R0, [R1,#0x14]
25240C:  LDR.W           R1, [R8,#0x1DC]
252410:  STR             R0, [R1,#0x18]
252412:  LDR.W           R1, [R8,#0x1DC]
252416:  STR             R0, [R1,#0x1C]
252418:  LDR.W           R1, [R8,#0x1DC]
25241C:  STR             R0, [R1,#0x20]
25241E:  LDR.W           R0, [R6,#0x128]
252422:  CMP             R0, #0
252424:  BEQ.W           loc_2525F2
252428:  VMOV.F32        S6, #2.0
25242C:  ADD.W           R0, R6, #0xE0
252430:  MOVS            R1, #0
252432:  VDIV.F32        S2, S6, S2
252436:  VSQRT.F32       S2, S2
25243A:  VMUL.F32        S2, S4, S2
25243E:  VMUL.F32        S0, S0, S2
252442:  LDR.W           R2, [R0,R1,LSL#2]
252446:  ADDS            R1, #1
252448:  LDR.W           R3, [R8,#0x1DC]
25244C:  ADD.W           R2, R3, R2,LSL#2
252450:  VSTR            S0, [R2]
252454:  LDR.W           R2, [R6,#0x128]
252458:  CMP             R1, R2
25245A:  BCC             loc_252442
25245C:  B               loc_2525F2
25245E:  VLDR            S0, =0.0
252462:  LDR             R6, [SP,#0x70+var_6C]
252464:  B               loc_252472
252466:  VLDR            S0, =0.0
25246A:  VLDR            S2, =0.98
25246E:  VMIN.F32        D0, D0, D1
252472:  VMOV.F32        S2, #-0.5
252476:  VSTR            S0, [R8,#0x1C8]
25247A:  VSUB.F32        S4, S16, S30
25247E:  LDR             R0, =(ReverbBoost_ptr - 0x252488)
252480:  VMUL.F32        S6, S20, S24
252484:  ADD             R0, PC; ReverbBoost_ptr
252486:  LDR             R0, [R0]; ReverbBoost
252488:  VMUL.F32        S2, S22, S2
25248C:  VMUL.F32        S2, S4, S2
252490:  VMUL.F32        S4, S6, S22
252494:  VADD.F32        S2, S2, S16
252498:  VSTR            S4, [R8,#0x1D0]
25249C:  VSTR            S2, [R8,#0x1D4]
2524A0:  VMOV.F32        S2, #2.0
2524A4:  VLDR            S4, [R5,#0xB8]
2524A8:  VLDR            S0, [R6,#0x128]
2524AC:  VCVT.F32.U32    S0, S0
2524B0:  VLDR            S8, [R5,#0x44]
2524B4:  VLDR            S18, [R5,#0x4C]
2524B8:  VMUL.F32        S8, S8, S8
2524BC:  VLDR            S20, [R5,#0x54]
2524C0:  VDIV.F32        S6, S2, S0
2524C4:  VLDR            S0, [R5,#0x40]
2524C8:  VSQRT.F32       S12, S6
2524CC:  VMUL.F32        S10, S0, S0
2524D0:  VLDR            S2, [R5,#0x48]
2524D4:  VMIN.F32        D11, D6, D8
2524D8:  VLDR            S6, [R0]
2524DC:  VMUL.F32        S14, S2, S2
2524E0:  VADD.F32        S8, S10, S8
2524E4:  VADD.F32        S10, S8, S14
2524E8:  VLDR            S8, [R5,#0x50]
2524EC:  VCMPE.F32       S10, S16
2524F0:  VMRS            APSR_nzcv, FPSCR
2524F4:  BLE             loc_252506
2524F6:  VSQRT.F32       S10, S10
2524FA:  VDIV.F32        S10, S16, S10
2524FE:  VMUL.F32        S2, S2, S10
252502:  VMUL.F32        S0, S0, S10
252506:  VMUL.F32        S24, S4, S6
25250A:  VMUL.F32        S4, S8, S8
25250E:  VMUL.F32        S6, S18, S18
252512:  VMUL.F32        S8, S20, S20
252516:  VADD.F32        S4, S6, S4
25251A:  VADD.F32        S4, S4, S8
25251E:  VCMPE.F32       S4, S16
252522:  VMRS            APSR_nzcv, FPSCR
252526:  BLE             loc_252538
252528:  VSQRT.F32       S4, S4
25252C:  VDIV.F32        S4, S16, S4
252530:  VMUL.F32        S20, S20, S4
252534:  VMUL.F32        S18, S18, S4
252538:  VMUL.F32        S4, S0, S0
25253C:  ADD.W           R2, R8, #0xA4
252540:  VMUL.F32        S6, S2, S2
252544:  ADD.W           R5, R8, #0x94
252548:  VSUB.F32        S19, S16, S22
25254C:  MOVS            R4, #0
25254E:  VMOV            R0, S0; y
252552:  STR.W           R4, [R8,#0xB4]
252556:  VMOV            R1, S2; x
25255A:  VMOV.I32        Q7, #0
25255E:  VADD.F32        S4, S6, S4
252562:  VST1.32         {D14-D15}, [R2]
252566:  VST1.32         {D14-D15}, [R5]
25256A:  VSQRT.F32       S26, S4
25256E:  VMUL.F32        S0, S19, S26
252572:  VADD.F32        S0, S22, S0
252576:  VMUL.F32        S21, S24, S0
25257A:  BLX             atan2f
25257E:  VSUB.F32        S0, S16, S26
252582:  VLDR            S26, =3.1416
252586:  VMOV            R3, S21
25258A:  MOV             R1, R0
25258C:  MOV             R0, R6
25258E:  STR             R5, [SP,#0x70+var_70]
252590:  VMUL.F32        S0, S0, S26
252594:  VMOV            R2, S0
252598:  BLX             j_ComputeAngleGains
25259C:  VMUL.F32        S0, S18, S18
2525A0:  ADD.W           R2, R8, #0x18C
2525A4:  VMUL.F32        S2, S20, S20
2525A8:  ADD.W           R5, R8, #0x17C
2525AC:  VMOV            R0, S18; y
2525B0:  VST1.32         {D14-D15}, [R2]
2525B4:  VMOV            R1, S20; x
2525B8:  VST1.32         {D14-D15}, [R5]
2525BC:  STR.W           R4, [R8,#0x19C]
2525C0:  VADD.F32        S0, S2, S0
2525C4:  VSQRT.F32       S21, S0
2525C8:  VMUL.F32        S0, S19, S21
2525CC:  VADD.F32        S0, S22, S0
2525D0:  VMUL.F32        S18, S24, S0
2525D4:  BLX             atan2f
2525D8:  VSUB.F32        S0, S16, S21
2525DC:  MOV             R1, R0
2525DE:  VMOV            R3, S18
2525E2:  MOV             R0, R6
2525E4:  STR             R5, [SP,#0x70+var_70]
2525E6:  VMUL.F32        S0, S0, S26
2525EA:  VMOV            R2, S0
2525EE:  BLX             j_ComputeAngleGains
2525F2:  ADD             SP, SP, #0x10
2525F4:  VPOP            {D8-D15}
2525F8:  ADD             SP, SP, #4
2525FA:  POP.W           {R8-R11}
2525FE:  POP             {R4-R7,PC}
