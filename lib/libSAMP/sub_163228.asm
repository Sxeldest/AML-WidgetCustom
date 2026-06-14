; =========================================================
; Game Engine Function: sub_163228
; Address            : 0x163228 - 0x1633C8
; =========================================================

163228:  PUSH            {R4-R7,LR}
16322A:  ADD             R7, SP, #0xC
16322C:  PUSH.W          {R8-R10}
163230:  VPUSH           {D8-D15}
163234:  SUB             SP, SP, #0x50; float
163236:  MOV             R9, R0
163238:  LDR             R0, [R0]
16323A:  VLDR            S2, [R7,#arg_0]
16323E:  VMOV            S0, R3
163242:  CBZ             R0, loc_16326C
163244:  LDR             R0, [R0]
163246:  CBZ             R0, loc_16326C
163248:  VCMP.F32        S0, #0.0
16324C:  VMRS            APSR_nzcv, FPSCR
163250:  VCMP.F32        S2, #0.0
163254:  ITT EQ
163256:  VLDREQ          S0, [R0,#0xC]
16325A:  VCVTEQ.F32.S32  S0, S0
16325E:  VMRS            APSR_nzcv, FPSCR
163262:  ITT EQ
163264:  VLDREQ          S2, [R0,#0x10]
163268:  VCVTEQ.F32.S32  S2, S2
16326C:  VCMP.F32        S0, #0.0
163270:  VMRS            APSR_nzcv, FPSCR
163274:  ITT NE
163276:  VCMPNE.F32      S2, #0.0
16327A:  VMRSNE          APSR_nzcv, FPSCR
16327E:  BEQ.W           loc_1633BC
163282:  VLDR            S6, [R7,#arg_4]
163286:  VMOV.F32        S10, #1.0
16328A:  VLDR            S12, =0.71
16328E:  VMOV            S8, R2
163292:  VCMP.F32        S6, #0.0
163296:  LDR.W           R8, [R7,#arg_8]
16329A:  VMRS            APSR_nzcv, FPSCR
16329E:  IT NE
1632A0:  VMOVNE.F32      S10, S12
1632A4:  VMUL.F32        S2, S10, S2
1632A8:  VMUL.F32        S0, S10, S0
1632AC:  VCMP.F32        S6, #0.0
1632B0:  VMOV            S4, R1
1632B4:  VMRS            APSR_nzcv, FPSCR
1632B8:  VCVT.S32.F32    S2, S2
1632BC:  VCVT.S32.F32    S0, S0
1632C0:  BEQ             loc_16335E
1632C2:  VCVT.F64.F32    D16, S6
1632C6:  ADD.W           R10, SP, #0xA8+var_88
1632CA:  ADD             R6, SP, #0xA8+var_90
1632CC:  ADD             R5, SP, #0xA8+var_80
1632CE:  MOVS            R4, #0
1632D0:  VLDR            D17, =-0.785398163
1632D4:  VMOV.I32        D11, #0
1632D8:  VCVT.F64.S32    D9, S2
1632DC:  VADD.F64        D8, D16, D17
1632E0:  VCVT.F64.S32    D10, S0
1632E4:  VCVT.F64.F32    D12, S8
1632E8:  VCVT.F64.F32    D13, S4
1632EC:  VMOV.F64        D15, #1.0
1632F0:  VLDR            D14, =1.57079633
1632F4:  VMOV.F64        D16, D8
1632F8:  MOV             R2, R10
1632FA:  MOV             R3, R6
1632FC:  VMLA.F64        D16, D11, D14
163300:  VMOV            R0, R1, D16
163304:  BLX             sincos
163308:  VMOV.F64        D18, D12
16330C:  ADDS            R0, R5, R4
16330E:  ADDS            R4, #8
163310:  CMP             R4, #0x20 ; ' '
163312:  VLDR            D16, [SP,#0xA8+var_90]
163316:  VLDR            D17, [SP,#0xA8+var_88]
16331A:  VMLS.F64        D18, D16, D9
16331E:  VMOV.F64        D16, D13
163322:  VMLA.F64        D16, D17, D10
163326:  VADD.F64        D11, D11, D15
16332A:  VCVT.F32.F64    S0, D18
16332E:  VCVT.F32.F64    S2, D16
163332:  VSTR            S2, [R0,#8]
163336:  VSTR            S0, [R0,#0xC]
16333A:  BNE             loc_1632F4
16333C:  VLDR            S4, [SP,#0xA8+var_78]
163340:  VLDR            S8, [SP,#0xA8+var_74]
163344:  VLDR            S0, [SP,#0xA8+var_70]
163348:  VLDR            S2, [SP,#0xA8+var_6C]
16334C:  VLDR            S6, [SP,#0xA8+var_64]
163350:  VLDR            S10, [SP,#0xA8+var_68]
163354:  VLDR            S12, [SP,#0xA8+var_5C]
163358:  VLDR            S14, [SP,#0xA8+var_60]
16335C:  B               loc_163392
16335E:  VMOV.F32        S6, #0.5
163362:  VCVT.F32.S32    S2, S2
163366:  VCVT.F32.S32    S0, S0
16336A:  VMUL.F32        S2, S2, S6
16336E:  VMUL.F32        S10, S0, S6
163372:  VADD.F32        S6, S2, S8
163376:  VSUB.F32        S2, S8, S2
16337A:  VADD.F32        S0, S10, S4
16337E:  VSUB.F32        S4, S4, S10
163382:  VMOV.F32        S12, S6
163386:  VMOV.F32        S8, S2
16338A:  VMOV.F32        S10, S0
16338E:  VMOV.F32        S14, S4
163392:  VMOV            R1, S14; int
163396:  MOV             R0, R9; int
163398:  VMOV            R2, S12; int
16339C:  STR.W           R8, [SP,#0xA8+var_94]; int
1633A0:  VMOV            R3, S10; int
1633A4:  VSTR            S6, [SP,#0xA8+var_A8]
1633A8:  VSTR            S4, [SP,#0xA8+var_A4]
1633AC:  VSTR            S8, [SP,#0xA8+var_A0]
1633B0:  VSTR            S0, [SP,#0xA8+var_9C]
1633B4:  VSTR            S2, [SP,#0xA8+var_98]
1633B8:  BL              sub_1633DC
1633BC:  ADD             SP, SP, #0x50 ; 'P'
1633BE:  VPOP            {D8-D15}
1633C2:  POP.W           {R8-R10}
1633C6:  POP             {R4-R7,PC}
