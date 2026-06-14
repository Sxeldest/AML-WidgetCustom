; =========================================================
; Game Engine Function: _ZN4Fx_c7AddWoodER7CVectorS1_if
; Address            : 0x36413C - 0x3643B0
; =========================================================

36413C:  PUSH            {R4-R7,LR}
36413E:  ADD             R7, SP, #0xC
364140:  PUSH.W          {R8-R11}
364144:  SUB             SP, SP, #4
364146:  VPUSH           {D8-D15}
36414A:  SUB             SP, SP, #0x40; float
36414C:  LDR             R0, =(TheCamera_ptr - 0x36415A)
36414E:  MOV             R11, R1
364150:  MOV             R5, R2
364152:  VLDR            S0, [R11]
364156:  ADD             R0, PC; TheCamera_ptr
364158:  MOV             R4, R3
36415A:  LDR             R0, [R0]; TheCamera
36415C:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
36415E:  ADD.W           R2, R1, #0x30 ; '0'
364162:  CMP             R1, #0
364164:  IT EQ
364166:  ADDEQ           R2, R0, #4
364168:  VLDR            D16, [R11,#4]
36416C:  VLDR            S2, [R2]
364170:  VLDR            D17, [R2,#4]
364174:  VSUB.F32        S0, S2, S0
364178:  VSUB.F32        D16, D17, D16
36417C:  VMUL.F32        D1, D16, D16
364180:  VMUL.F32        S0, S0, S0
364184:  VADD.F32        S0, S0, S2
364188:  VADD.F32        S0, S0, S3
36418C:  VLDR            S2, =625.0
364190:  VCMPE.F32       S0, S2
364194:  VMRS            APSR_nzcv, FPSCR
364198:  BGT.W           loc_3643A2
36419C:  MOVW            R1, #0x999A
3641A0:  MOV.W           R0, #0x3F800000
3641A4:  MOVS            R2, #0
3641A6:  MOVT            R1, #0x3E99
3641AA:  STMEA.W         SP, {R0-R2}
3641AE:  MOV.W           R1, #0x3F000000; float
3641B2:  MOV.W           R2, #0x3E800000; float
3641B6:  STR             R0, [SP,#0xA0+var_94]; float
3641B8:  ADD             R0, SP, #0xA0+var_7C; this
3641BA:  MOVS            R3, #0; float
3641BC:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
3641C0:  CMP             R4, #1
3641C2:  BLT.W           loc_3643A2
3641C6:  LDR             R0, =(g_fx_ptr - 0x3641D8)
3641C8:  VMOV.F32        S21, #4.0
3641CC:  VMOV.F32        S23, #-2.0
3641D0:  MOVW            R6, #0x8BAD
3641D4:  ADD             R0, PC; g_fx_ptr
3641D6:  VLDR            S16, [R7,#arg_0]
3641DA:  VLDR            S18, =0.0001
3641DE:  ADD.W           R9, SP, #0xA0+var_88
3641E2:  LDR.W           R8, [R0]; g_fx
3641E6:  MOVT            R6, #0x68DB
3641EA:  VLDR            S20, =0.12
3641EE:  MOVW            R10, #0x2710
3641F2:  VLDR            S22, =0.13
3641F6:  VLDR            S24, =0.03
3641FA:  VLDR            S26, =0.12
3641FE:  VLDR            S28, =0.03
364202:  VLDR            S30, =0.04
364206:  VLDR            S17, =0.3
36420A:  VLDR            S19, =0.7
36420E:  BLX             rand
364212:  SMMUL.W         R1, R0, R6
364216:  ASRS            R2, R1, #0xC
364218:  ADD.W           R1, R2, R1,LSR#31
36421C:  MLS.W           R0, R1, R10, R0
364220:  VMOV            S0, R0
364224:  VCVT.F32.S32    S0, S0
364228:  VMUL.F32        S0, S0, S18
36422C:  VMUL.F32        S0, S0, S20
364230:  VADD.F32        S0, S0, S22
364234:  VSTR            S0, [SP,#0xA0+var_7C]
364238:  BLX             rand
36423C:  SMMUL.W         R1, R0, R6
364240:  ASRS            R2, R1, #0xC
364242:  ADD.W           R1, R2, R1,LSR#31
364246:  MLS.W           R0, R1, R10, R0
36424A:  VMOV            S0, R0
36424E:  VCVT.F32.S32    S0, S0
364252:  VMUL.F32        S0, S0, S18
364256:  VMUL.F32        S0, S0, S24
36425A:  VADD.F32        S0, S0, S26
36425E:  VSTR            S0, [SP,#0xA0+var_78]
364262:  BLX             rand
364266:  SMMUL.W         R1, R0, R6
36426A:  ASRS            R2, R1, #0xC
36426C:  ADD.W           R1, R2, R1,LSR#31
364270:  MLS.W           R0, R1, R10, R0
364274:  VMOV            S0, R0
364278:  VCVT.F32.S32    S0, S0
36427C:  VMUL.F32        S0, S0, S18
364280:  VMUL.F32        S0, S0, S28
364284:  VADD.F32        S0, S0, S30
364288:  VSTR            S0, [SP,#0xA0+var_74]
36428C:  BLX             rand
364290:  SMMUL.W         R1, R0, R6
364294:  ASRS            R2, R1, #0xC
364296:  ADD.W           R1, R2, R1,LSR#31
36429A:  MLS.W           R0, R1, R10, R0
36429E:  VMOV            S0, R0
3642A2:  VCVT.F32.S32    S0, S0
3642A6:  VMUL.F32        S0, S0, S18
3642AA:  VMUL.F32        S0, S0, S17
3642AE:  VADD.F32        S0, S0, S19
3642B2:  VSTR            S0, [SP,#0xA0+var_6C]
3642B6:  VLDR            S0, [R5]
3642BA:  VLDR            S2, [R5,#4]
3642BE:  VLDR            S4, [R5,#8]
3642C2:  VMUL.F32        S0, S0, S21
3642C6:  VMUL.F32        S2, S2, S21
3642CA:  VMUL.F32        S4, S4, S21
3642CE:  VSTR            S2, [SP,#0xA0+var_84]
3642D2:  VSTR            S0, [SP,#0xA0+var_88]
3642D6:  VSTR            S4, [SP,#0xA0+var_80]
3642DA:  BLX             rand
3642DE:  SMMUL.W         R1, R0, R6
3642E2:  ASRS            R2, R1, #0xC
3642E4:  ADD.W           R1, R2, R1,LSR#31
3642E8:  MLS.W           R0, R1, R10, R0
3642EC:  VMOV            S0, R0
3642F0:  VCVT.F32.S32    S0, S0
3642F4:  VLDR            S2, [SP,#0xA0+var_88]
3642F8:  VMUL.F32        S0, S0, S18
3642FC:  VMUL.F32        S0, S0, S21
364300:  VADD.F32        S0, S0, S23
364304:  VADD.F32        S0, S2, S0
364308:  VSTR            S0, [SP,#0xA0+var_88]
36430C:  BLX             rand
364310:  SMMUL.W         R1, R0, R6
364314:  ASRS            R2, R1, #0xC
364316:  ADD.W           R1, R2, R1,LSR#31
36431A:  MLS.W           R0, R1, R10, R0
36431E:  VMOV            S0, R0
364322:  VCVT.F32.S32    S0, S0
364326:  VLDR            S2, [SP,#0xA0+var_84]
36432A:  VMUL.F32        S0, S0, S18
36432E:  VMUL.F32        S0, S0, S21
364332:  VADD.F32        S0, S0, S23
364336:  VADD.F32        S0, S2, S0
36433A:  VSTR            S0, [SP,#0xA0+var_84]
36433E:  BLX             rand
364342:  SMMUL.W         R1, R0, R6
364346:  MOVS            R3, #0; int
364348:  ASRS            R2, R1, #0xC
36434A:  ADD.W           R1, R2, R1,LSR#31
36434E:  MOV             R2, R9; int
364350:  MLS.W           R0, R1, R10, R0
364354:  MOV             R1, #0x3F19999A
36435C:  VMOV            S0, R0
364360:  VCVT.F32.S32    S0, S0
364364:  VLDR            S2, [SP,#0xA0+var_80]
364368:  STR             R1, [SP,#0xA0+var_94]; float
36436A:  MOVS            R1, #0
36436C:  STR             R1, [SP,#0xA0+var_90]; int
36436E:  ADD             R1, SP, #0xA0+var_7C
364370:  VSTR            S16, [SP,#0xA0+var_98]
364374:  STR             R1, [SP,#0xA0+var_A0]; int
364376:  MOVS            R1, #0
364378:  LDR.W           R0, [R8]; int
36437C:  MOVT            R1, #0xBF80
364380:  STR             R1, [SP,#0xA0+var_9C]; float
364382:  MOV             R1, R11; int
364384:  VMUL.F32        S0, S0, S18
364388:  VMUL.F32        S0, S0, S21
36438C:  VADD.F32        S0, S0, S23
364390:  VADD.F32        S0, S2, S0
364394:  VSTR            S0, [SP,#0xA0+var_80]
364398:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
36439C:  SUBS            R4, #1
36439E:  BNE.W           loc_36420E
3643A2:  ADD             SP, SP, #0x40 ; '@'
3643A4:  VPOP            {D8-D15}
3643A8:  ADD             SP, SP, #4
3643AA:  POP.W           {R8-R11}
3643AE:  POP             {R4-R7,PC}
