; =========================================================
; Game Engine Function: sub_261FD0
; Address            : 0x261FD0 - 0x2623FE
; =========================================================

261FD0:  PUSH            {R4-R7,LR}
261FD2:  ADD             R7, SP, #0xC
261FD4:  PUSH.W          {R8-R11}
261FD8:  SUB             SP, SP, #4
261FDA:  VPUSH           {D8-D15}
261FDE:  SUB             SP, SP, #0x20
261FE0:  MOV             R6, R0
261FE2:  MOVW            R0, #0x81E0
261FE6:  MOV             R9, R3
261FE8:  CMP             R1, #0
261FEA:  ADD             R0, R6
261FEC:  STRD.W          R0, R1, [SP,#0x80+var_80]
261FF0:  BEQ.W           loc_262352
261FF4:  VMOV.F32        S18, #1.0
261FF8:  LDR.W           R11, [R6,#0x1D8]
261FFC:  VMOV.F32        S20, #0.5
262000:  LDRD.W          R10, R0, [SP,#0x80+var_80]
262004:  VLDR            S16, =6.2832
262008:  B               loc_262010
26200A:  ALIGN 4
26200C:  DCFS 6.2832
262010:  STRD.W          R0, R2, [SP,#0x80+var_78]
262014:  VLDR            S4, [R6,#0x2C]
262018:  VLDR            S0, [R2]
26201C:  VLDR            S2, [R6,#0x1C]
262020:  VLDR            S22, [R6,#0x18]
262024:  VLDR            S24, [R6,#0x20]
262028:  VCVT.F32.U32    S4, S4
26202C:  VLDR            S6, [R6,#0x30]
262030:  VSUB.F32        S2, S2, S0
262034:  VCVT.F32.U32    S6, S6
262038:  VLDR            S26, [R6,#0x3C]
26203C:  VMUL.F32        S4, S4, S16
262040:  VMUL.F32        S2, S22, S2
262044:  VDIV.F32        S4, S4, S6
262048:  VMOV            R0, S4; x
26204C:  VLDR            S4, [R6,#0x34]
262050:  VLDR            S6, [R6,#0x38]
262054:  VADD.F32        S30, S0, S2
262058:  VSUB.F32        S4, S4, S26
26205C:  VMUL.F32        S28, S4, S6
262060:  BLX             cosf
262064:  VMOV            S0, R0
262068:  LDRD.W          R0, R1, [R6,#0x24]
26206C:  VADD.F32        S2, S26, S28
262070:  VSTR            S30, [R6,#0x1C]
262074:  VSUB.F32        S0, S18, S0
262078:  VSUB.F32        S4, S24, S30
26207C:  VMUL.F32        S0, S0, S2
262080:  VMUL.F32        S4, S22, S4
262084:  VADD.F32        S0, S0, S18
262088:  VADD.F32        S4, S30, S4
26208C:  VCVT.S32.F32    S6, S0
262090:  VSTR            S2, [R6,#0x3C]
262094:  VSTR            S4, [R6,#0x20]
262098:  VMOV            R2, S6
26209C:  VCVT.F32.U32    S2, S6
2620A0:  VSUB.F32        S0, S0, S2
2620A4:  SUB.W           R2, R11, R2
2620A8:  SUBS            R3, R2, #1
2620AA:  ANDS            R2, R0
2620AC:  ANDS            R3, R0
2620AE:  AND.W           R0, R0, R11
2620B2:  ADD.W           R2, R1, R2,LSL#2
2620B6:  ADD.W           R0, R1, R0,LSL#2
2620BA:  VLDR            S6, [R2]
2620BE:  ADD.W           R2, R1, R3,LSL#2
2620C2:  VLDR            S8, [R2]
2620C6:  VSTR            S4, [R0]
2620CA:  VSUB.F32        S2, S8, S6
2620CE:  LDRD.W          R0, R1, [R6,#0x2C]
2620D2:  LDRD.W          R4, R5, [R6,#0x40]
2620D6:  ADDS            R0, #1
2620D8:  VMUL.F32        S0, S2, S0
2620DC:  VADD.F32        S22, S6, S0
2620E0:  BLX             __aeabi_uidivmod
2620E4:  LDR.W           R0, [R6,#0x1D8]
2620E8:  STR             R1, [R6,#0x2C]
2620EA:  ANDS            R0, R4
2620EC:  ADD.W           R0, R5, R0,LSL#2
2620F0:  VSTR            S22, [R0]
2620F4:  LDR.W           R2, [R6,#0x84]
2620F8:  LDR.W           R0, [R6,#0x1D8]
2620FC:  LDR.W           R12, [R6,#0x64]
262100:  VLDR            S0, [R6,#0x54]
262104:  SUBS            R2, R0, R2
262106:  VLDR            S2, [R6,#0x58]
26210A:  AND.W           R8, R12, R2
26210E:  VLDR            S4, [R6,#0x5C]
262112:  VLDR            S6, [R6,#0x60]
262116:  LDRD.W          R11, R5, [R6,#0x74]
26211A:  LDRD.W          R4, R1, [R6,#0x88]
26211E:  LDR             R3, [R6,#0x6C]
262120:  SUBS            R1, R0, R1
262122:  SUBS            R2, R0, R4
262124:  LDR             R4, [R6,#0x70]
262126:  ANDS            R3, R2
262128:  LDR             R2, [R6,#0x68]
26212A:  AND.W           R1, R1, R11
26212E:  LDR.W           LR, [R6,#0x90]
262132:  ADD.W           R3, R4, R3,LSL#2
262136:  ADD.W           R1, R5, R1,LSL#2
26213A:  SUB.W           R5, R0, LR
26213E:  VLDR            S8, [R3]
262142:  ADD.W           R3, R2, R8,LSL#2
262146:  VLDR            S10, [R3]
26214A:  VMUL.F32        S2, S2, S8
26214E:  VLDR            S8, [R1]
262152:  VMUL.F32        S0, S0, S10
262156:  LDRD.W          R3, R1, [R6,#0x7C]
26215A:  VMUL.F32        S4, S4, S8
26215E:  ANDS            R3, R5
262160:  ADD.W           R5, R6, #0x40 ; '@'
262164:  ADD.W           R1, R1, R3,LSL#2
262168:  VLDR            S10, [R1]
26216C:  VADD.F32        S8, S0, S2
262170:  LDM             R5, {R1,R3,R5}
262172:  VMUL.F32        S6, S6, S10
262176:  SUBS            R5, R0, R5
262178:  AND.W           R0, R0, R12
26217C:  ANDS            R1, R5
26217E:  ADD.W           R5, R6, #0xB8
262182:  ADD.W           R0, R2, R0,LSL#2
262186:  ADD.W           R1, R3, R1,LSL#2
26218A:  VADD.F32        S8, S8, S4
26218E:  VLDR            S10, [R1]
262192:  VADD.F32        S8, S8, S6
262196:  VMUL.F32        S8, S8, S20
26219A:  VADD.F32        S8, S10, S8
26219E:  VSUB.F32        S0, S8, S0
2621A2:  VSUB.F32        S2, S8, S2
2621A6:  VSUB.F32        S4, S8, S4
2621AA:  VSUB.F32        S6, S8, S6
2621AE:  VSTR            S0, [R0]
2621B2:  LDRD.W          R0, R1, [R6,#0x6C]
2621B6:  LDR.W           R2, [R6,#0x1D8]
2621BA:  ANDS            R0, R2
2621BC:  ADD.W           R0, R1, R0,LSL#2
2621C0:  VSTR            S2, [R0]
2621C4:  LDRD.W          R0, R1, [R6,#0x74]
2621C8:  LDR.W           R2, [R6,#0x1D8]
2621CC:  ANDS            R0, R2
2621CE:  ADD.W           R0, R1, R0,LSL#2
2621D2:  VSTR            S4, [R0]
2621D6:  LDRD.W          R0, R1, [R6,#0x7C]
2621DA:  LDR.W           R2, [R6,#0x1D8]
2621DE:  ANDS            R0, R2
2621E0:  ADD.W           R0, R1, R0,LSL#2
2621E4:  VSTR            S6, [R0]
2621E8:  VLDR            S8, [R6,#0x50]
2621EC:  VMUL.F32        S0, S0, S8
2621F0:  VMUL.F32        S2, S2, S8
2621F4:  VMUL.F32        S4, S4, S8
2621F8:  VMUL.F32        S6, S6, S8
2621FC:  VSTR            S0, [R10]
262200:  VSTR            S2, [R10,#4]
262204:  VSTR            S4, [R10,#8]
262208:  VSTR            S6, [R10,#0xC]
26220C:  LDR             R0, [R6,#0x4C]
26220E:  LDR.W           R1, [R6,#0x1D8]
262212:  VLDR            S0, [R6,#0xD0]
262216:  LDRD.W          R2, R3, [R6,#0x40]
26221A:  SUBS            R0, R1, R0
26221C:  ANDS            R0, R2
26221E:  ADD.W           R0, R3, R0,LSL#2
262222:  VLDR            S22, [R0]
262226:  LDRD.W          R0, R2, [R6,#0xB8]
26222A:  VMUL.F32        S0, S22, S0
26222E:  ANDS            R0, R1
262230:  ADD.W           R0, R2, R0,LSL#2
262234:  VSTR            S0, [R0]
262238:  VSTR            S0, [SP,#0x80+var_70]
26223C:  LDM             R5, {R0-R3,R5}
26223E:  LDR.W           R4, [R6,#0x1D8]
262242:  SUBS            R2, R4, R2
262244:  ANDS            R2, R0
262246:  LDR.W           R2, [R1,R2,LSL#2]
26224A:  STR             R2, [SP,#0x80+var_6C]
26224C:  SUBS            R2, R4, R3
26224E:  ANDS            R2, R0
262250:  LDR.W           R2, [R1,R2,LSL#2]
262254:  STR             R2, [SP,#0x80+var_68]
262256:  SUBS            R2, R4, R5
262258:  ANDS            R0, R2
26225A:  LDR.W           R0, [R1,R0,LSL#2]
26225E:  ADD             R1, SP, #0x80+var_70
262260:  STR             R0, [SP,#0x80+var_64]
262262:  MOV             R0, #0xFFFFF800
26226A:  MOV             R4, R0
26226C:  ADD.W           R0, R10, R4,LSL#2
262270:  SUB.W           R2, R0, #0x6000
262274:  MOV             R0, R6
262276:  BL              sub_262404
26227A:  LDR.W           R1, [R6,#0x1C0]
26227E:  LDR.W           R0, [R6,#0x1D8]
262282:  VLDR            S0, [R6,#0x1B4]
262286:  VLDR            S2, [R6,#0x1D0]
26228A:  SUBS            R1, R0, R1
26228C:  LDRD.W          R2, R3, [R6,#0x1A4]
262290:  ANDS            R1, R2
262292:  ADD.W           R2, R6, #0x1D4
262296:  ADD.W           R1, R3, R1,LSL#2
26229A:  VLD1.32         {D18[]-D19[]}, [R2@32]
26229E:  VLDR            S4, [R1]
2622A2:  ADD.W           R1, R10, R4,LSL#4
2622A6:  VLD1.32         {D16-D17}, [R1]
2622AA:  ADD.W           R10, R10, #0x10
2622AE:  VMUL.F32        S0, S0, S4
2622B2:  VMUL.F32        Q8, Q9, Q8
2622B6:  VMUL.F32        S2, S2, S0
2622BA:  VDUP.32         Q9, D1[0]
2622BE:  VADD.F32        Q8, Q9, Q8
2622C2:  VST1.32         {D16-D17}, [R1]
2622C6:  VLDR            S2, [R6,#0x1A0]
2622CA:  VLDR            S8, [R6,#0x1C8]
2622CE:  VMUL.F32        S2, S22, S2
2622D2:  LDR.W           R1, [R6,#0x1C4]
2622D6:  VLDR            S4, [R6,#0x1B8]
2622DA:  VLDR            S6, [R6,#0x1BC]
2622DE:  SUBS            R1, R0, R1
2622E0:  VADD.F32        S0, S0, S2
2622E4:  VLDR            S2, [R6,#0x1CC]
2622E8:  LDRD.W          R2, R3, [R6,#0x1AC]
2622EC:  ANDS            R1, R2
2622EE:  ANDS            R0, R2
2622F0:  ADD.W           R1, R3, R1,LSL#2
2622F4:  ADD.W           R0, R3, R0,LSL#2
2622F8:  VSUB.F32        S2, S2, S0
2622FC:  VMUL.F32        S2, S8, S2
262300:  VADD.F32        S0, S0, S2
262304:  VMUL.F32        S2, S0, S4
262308:  VSTR            S0, [R6,#0x1CC]
26230C:  VLDR            S8, [R1]
262310:  VMUL.F32        S6, S6, S8
262314:  VSUB.F32        S10, S8, S2
262318:  VSUB.F32        S2, S6, S2
26231C:  VMUL.F32        S4, S4, S10
262320:  VADD.F32        S0, S0, S4
262324:  VSTR            S0, [R0]
262328:  LDRD.W          R0, R1, [R6,#0x1A4]
26232C:  LDR.W           R2, [R6,#0x1D8]
262330:  ANDS            R0, R2
262332:  LDR             R2, [SP,#0x80+var_74]
262334:  ADD.W           R0, R1, R0,LSL#2
262338:  ADDS            R2, #4
26233A:  VSTR            S2, [R0]
26233E:  LDR.W           R0, [R6,#0x1D8]
262342:  ADD.W           R11, R0, #1
262346:  LDR             R0, [SP,#0x80+var_78]
262348:  STR.W           R11, [R6,#0x1D8]
26234C:  SUBS            R0, #1
26234E:  BNE.W           loc_262010
262352:  LDRD.W          R11, R2, [SP,#0x80+var_80]
262356:  ADD.W           R12, R6, #0x1E0
26235A:  ADD.W           R8, R6, #0x17C
26235E:  ADD.W           R10, R6, #0x94
262362:  VLDR            S0, =0.00001
262366:  MOVS            R3, #0
262368:  MOV.W           LR, #0xC
26236C:  MOVS            R5, #0
26236E:  ADD.W           R1, R10, R5,LSL#2
262372:  ADD.W           R4, R8, R5,LSL#2
262376:  AND.W           R0, LR, R3,LSL#2
26237A:  VLDR            S4, [R1]
26237E:  VLDR            S2, [R4]
262382:  VCMPE.F32       S4, S0
262386:  VMRS            APSR_nzcv, FPSCR
26238A:  BLE             loc_2623B4
26238C:  CBZ             R2, loc_2623B4
26238E:  ADD.W           R6, R11, R0
262392:  MOV             R1, R2
262394:  MOV             R4, R9
262396:  VLDR            S6, [R6]
26239A:  ADDS            R6, #0x10
26239C:  VLDR            S8, [R4]
2623A0:  SUBS            R1, #1
2623A2:  VMUL.F32        S6, S4, S6
2623A6:  VADD.F32        S6, S8, S6
2623AA:  VSTR            S6, [R4]
2623AE:  ADD.W           R4, R4, #4
2623B2:  BNE             loc_262396
2623B4:  VCMPE.F32       S2, S0
2623B8:  VMRS            APSR_nzcv, FPSCR
2623BC:  BLE             loc_2623E4
2623BE:  CBZ             R2, loc_2623E4
2623C0:  ADD             R0, R12
2623C2:  MOV             R1, R2
2623C4:  MOV             R4, R9
2623C6:  VLDR            S4, [R0]
2623CA:  ADDS            R0, #0x10
2623CC:  VLDR            S6, [R4]
2623D0:  SUBS            R1, #1
2623D2:  VMUL.F32        S4, S2, S4
2623D6:  VADD.F32        S4, S6, S4
2623DA:  VSTR            S4, [R4]
2623DE:  ADD.W           R4, R4, #4
2623E2:  BNE             loc_2623C6
2623E4:  ADDS            R5, #1
2623E6:  ADDS            R3, #1
2623E8:  ADD.W           R9, R9, #0x2000
2623EC:  CMP             R5, #9
2623EE:  BNE             loc_26236E
2623F0:  ADD             SP, SP, #0x20 ; ' '
2623F2:  VPOP            {D8-D15}
2623F6:  ADD             SP, SP, #4
2623F8:  POP.W           {R8-R11}
2623FC:  POP             {R4-R7,PC}
