; =========================================================
; Game Engine Function: _ZN5CBike26DoBurstAndSoftGroundRatiosEv
; Address            : 0x567040 - 0x56739C
; =========================================================

567040:  PUSH            {R4-R7,LR}
567042:  ADD             R7, SP, #0xC
567044:  PUSH.W          {R8-R11}
567048:  SUB             SP, SP, #4
56704A:  VPUSH           {D8-D15}
56704E:  SUB             SP, SP, #0x18
567050:  MOV             R5, R0
567052:  MOV.W           R0, #0x1010101
567056:  STR             R0, [SP,#0x78+var_64]
567058:  VMOV.F32        S16, #1.0
56705C:  LDR             R0, [R5,#0x14]
56705E:  VMOV.F32        S30, #0.5
567062:  VLDR            S0, [R5,#0x48]
567066:  VMOV.F32        S19, #1.5
56706A:  VLDR            S2, [R5,#0x4C]
56706E:  ADD.W           R2, R5, #0x670
567072:  VLDR            S6, [R0,#0x10]
567076:  MOVS            R6, #1
567078:  VLDR            S8, [R0,#0x14]
56707C:  MOV.W           R8, #0
567080:  VMUL.F32        S0, S0, S6
567084:  VLDR            S10, [R0,#0x18]
567088:  VMUL.F32        S2, S2, S8
56708C:  VLDR            S4, [R5,#0x50]
567090:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5670A2)
567092:  MOV.W           R9, #0
567096:  VMUL.F32        S4, S4, S10
56709A:  LDRSH.W         R1, [R5,#0x26]
56709E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5670A0:  VLDR            S20, =0.3
5670A4:  VLDR            S26, =0.000015259
5670A8:  MOV.W           R10, #0
5670AC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5670AE:  VLDR            S28, =0.2
5670B2:  VADD.F32        S0, S0, S2
5670B6:  VADD.F32        S0, S0, S4
5670BA:  VABS.F32        S18, S0
5670BE:  VLDR            S0, =40.0
5670C2:  VMUL.F32        S0, S18, S0
5670C6:  VDIV.F32        S22, S18, S20
5670CA:  VCVT.U32.F32    S0, S0
5670CE:  LDR.W           R1, [R0,R1,LSL#2]
5670D2:  VMOV            R0, S0
5670D6:  ADDS            R0, #0x62 ; 'b'
5670D8:  VMOV            S0, R0
5670DC:  ADD.W           R0, R1, #0x5C ; '\'
5670E0:  VCVT.F32.S32    S24, S0
5670E4:  STR             R0, [SP,#0x78+var_74]
5670E6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5670F0)
5670E8:  STR             R1, [SP,#0x78+var_70]
5670EA:  ADD             R1, SP, #0x78+var_64
5670EC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5670EE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5670F0:  STR             R0, [SP,#0x78+var_78]
5670F2:  STRD.W          R5, R2, [SP,#0x78+var_6C]
5670F6:  LDRB.W          R0, [R2,R10]
5670FA:  CMP.W           R10, #1
5670FE:  ITT EQ
567100:  MOVEQ.W         R9, #2
567104:  MOVEQ           R6, #3
567106:  CMP             R0, #1
567108:  BEQ             loc_567120
56710A:  CMP             R0, #2
56710C:  BNE             loc_56718E
56710E:  ADDW            R0, R5, #0x724
567112:  MOV.W           R3, #0x3F800000
567116:  STR.W           R3, [R0,R9,LSL#2]
56711A:  STR.W           R3, [R0,R6,LSL#2]
56711E:  B               loc_5672B4
567120:  BLX             rand
567124:  UXTH            R0, R0
567126:  VMOV            S0, R0
56712A:  VCVT.F32.S32    S0, S0
56712E:  VMUL.F32        S0, S0, S26
567132:  VMUL.F32        S0, S0, S24
567136:  VCVT.S32.F32    S0, S0
56713A:  VMOV            R0, S0
56713E:  CMP             R0, #0x63 ; 'c'
567140:  BGT.W           loc_5672B0
567144:  ADD.W           R0, R5, R9,LSL#2
567148:  ADDW            R1, R0, #0x784
56714C:  ADDW            R0, R0, #0x794
567150:  VLDR            S2, [R0]
567154:  ADDW            R0, R5, #0x724
567158:  VLDR            S0, [R1]
56715C:  ADD.W           R1, R0, R9,LSL#2
567160:  ADD.W           R0, R0, R6,LSL#2
567164:  VSUB.F32        S0, S2, S0
567168:  VMUL.F32        S0, S0, S28
56716C:  VDIV.F32        S0, S0, S2
567170:  VLDR            S2, [R1]
567174:  VADD.F32        S2, S2, S0
567178:  VMIN.F32        D1, D1, D8
56717C:  VSTR            S2, [R1]
567180:  VLDR            S2, [R0]
567184:  VADD.F32        S0, S2, S0
567188:  VMIN.F32        D0, D0, D8
56718C:  B               loc_5672AC
56718E:  ADD.W           R4, R5, R9,LSL#2
567192:  ADDW            R11, R4, #0x724
567196:  VLDR            S21, [R11]
56719A:  VCMPE.F32       S21, S16
56719E:  VMRS            APSR_nzcv, FPSCR
5671A2:  BGE             loc_5671B2
5671A4:  MOVS            R0, #0x2C ; ','
5671A6:  MLA.W           R0, R9, R0, R5
5671AA:  LDRB.W          R0, [R0,#0x697]
5671AE:  CMP             R0, #0xB2
5671B0:  BEQ             loc_5671D6
5671B2:  ADD.W           R0, R5, R6,LSL#2
5671B6:  ADDW            R0, R0, #0x724
5671BA:  VLDR            S0, [R0]
5671BE:  VCMPE.F32       S0, S16
5671C2:  VMRS            APSR_nzcv, FPSCR
5671C6:  BGE             loc_5672BC
5671C8:  MOVS            R0, #0x2C ; ','
5671CA:  MLA.W           R0, R6, R0, R5
5671CE:  LDRB.W          R0, [R0,#0x697]
5671D2:  CMP             R0, #0xB2
5671D4:  BNE             loc_5672BC
5671D6:  LDRD.W          R0, R1, [SP,#0x78+var_74]
5671DA:  CMP.W           R10, #0
5671DE:  VCMPE.F32       S18, S20
5671E2:  IT EQ
5671E4:  ADDEQ.W         R0, R1, #0x58 ; 'X'
5671E8:  VMRS            APSR_nzcv, FPSCR
5671EC:  VLDR            S0, [R0]
5671F0:  ADD.W           R0, R2, R8
5671F4:  VMUL.F32        S0, S0, S30
5671F8:  VDIV.F32        S25, S19, S0
5671FC:  VMUL.F32        S0, S22, S25
567200:  IT GT
567202:  VMOVGT.F32      S25, S0
567206:  VLDR            S27, [R0,#0xF4]
56720A:  VLDR            S23, [R0,#0xFC]
56720E:  VDIV.F32        S31, S27, S25
567212:  VMOV            R0, S31; x
567216:  BLX             floorf
56721A:  MOV             R5, R0
56721C:  LDR             R0, [SP,#0x78+var_78]
56721E:  VLDR            S0, [R0]
567222:  VMUL.F32        S0, S23, S0
567226:  VADD.F32        S0, S27, S0
56722A:  VDIV.F32        S25, S0, S25
56722E:  VMOV            R0, S25; x
567232:  BLX             floorf
567236:  VMOV            S2, R5
56723A:  LDR             R5, [SP,#0x78+var_6C]
56723C:  VMOV            S0, R0
567240:  VSUB.F32        S2, S31, S2
567244:  VSUB.F32        S0, S25, S0
567248:  VCMPE.F32       S23, #0.0
56724C:  VMRS            APSR_nzcv, FPSCR
567250:  BLE             loc_56725C
567252:  VCMPE.F32       S0, S2
567256:  VMRS            APSR_nzcv, FPSCR
56725A:  BLT             loc_567270
56725C:  VCMPE.F32       S23, #0.0
567260:  VMRS            APSR_nzcv, FPSCR
567264:  BGE             loc_5672B0
567266:  VCMPE.F32       S0, S2
56726A:  VMRS            APSR_nzcv, FPSCR
56726E:  BLE             loc_5672B0
567270:  ADDW            R0, R4, #0x784
567274:  VLDR            S0, [R0]
567278:  ADDW            R0, R4, #0x794
56727C:  VLDR            S2, [R0]
567280:  ADD.W           R0, R5, R6,LSL#2
567284:  ADDW            R0, R0, #0x724
567288:  VSUB.F32        S0, S2, S0
56728C:  VMUL.F32        S0, S0, S20
567290:  VDIV.F32        S0, S0, S2
567294:  VSUB.F32        S2, S21, S0
567298:  VMAX.F32        D1, D1, D14
56729C:  VSTR            S2, [R11]
5672A0:  VLDR            S2, [R0]
5672A4:  VSUB.F32        S0, S2, S0
5672A8:  VMAX.F32        D0, D0, D14
5672AC:  VSTR            S0, [R0]
5672B0:  LDR             R2, [SP,#0x78+var_68]
5672B2:  ADD             R1, SP, #0x78+var_64
5672B4:  MOVS            R0, #0
5672B6:  STRB.W          R0, [R1,R9]
5672BA:  STRB            R0, [R1,R6]
5672BC:  ADD.W           R10, R10, #1
5672C0:  ADD.W           R8, R8, #4
5672C4:  CMP.W           R10, #2
5672C8:  BNE.W           loc_5670F6
5672CC:  VLDR            S22, =-0.7
5672D0:  VMOV.F32        S26, #0.25
5672D4:  LDR             R0, =(g_surfaceInfos_ptr - 0x5672E6)
5672D6:  ADDW            R6, R5, #0x724
5672DA:  VMUL.F32        S0, S18, S22
5672DE:  ADDW            R5, R5, #0x697
5672E2:  ADD             R0, PC; g_surfaceInfos_ptr
5672E4:  VLDR            S24, =0.15
5672E8:  VLDR            S28, =0.4
5672EC:  MOVS            R4, #0
5672EE:  LDR.W           R8, [R0]; g_surfaceInfos
5672F2:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x5672F8)
5672F4:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
5672F6:  VDIV.F32        S0, S0, S20
5672FA:  LDR.W           R9, [R0]; CWeather::WetRoads ...
5672FE:  VADD.F32        S18, S0, S16
567302:  VLDR            S20, =0.1
567306:  LDRB            R0, [R1,R4]
567308:  CBZ             R0, loc_567384
56730A:  VLDR            S0, [R6]
56730E:  VCMPE.F32       S0, S16
567312:  VMRS            APSR_nzcv, FPSCR
567316:  BGE             loc_567384
567318:  LDRB            R1, [R5]; unsigned int
56731A:  MOV             R0, R8; this
56731C:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
567320:  ADD             R1, SP, #0x78+var_64
567322:  CMP             R0, #4
567324:  BNE             loc_567384
567326:  LDR             R0, [SP,#0x78+var_6C]
567328:  LDRH            R0, [R0,#0x26]
56732A:  CMP.W           R0, #0x1B0
56732E:  BEQ             loc_567384
567330:  VMOV.F32        S0, S20
567334:  LDR             R0, [SP,#0x78+var_6C]
567336:  LDR.W           R0, [R0,#0x390]
56733A:  TST.W           R0, #0x200000
56733E:  BNE             loc_56734C
567340:  LSLS            R0, R0, #0xB
567342:  VMOV.F32        S0, S24
567346:  IT PL
567348:  VMOVPL.F32      S0, S26
56734C:  VLDR            S2, [R9]
567350:  VLDR            S6, [R6,#0x60]
567354:  VMUL.F32        S2, S2, S22
567358:  VLDR            S8, [R6,#0x70]
56735C:  VLDR            S4, [R6]
567360:  VSUB.F32        S6, S8, S6
567364:  VADD.F32        S2, S18, S2
567368:  VMAX.F32        D1, D1, D14
56736C:  VMUL.F32        S0, S0, S2
567370:  VMUL.F32        S0, S6, S0
567374:  VDIV.F32        S0, S0, S8
567378:  VADD.F32        S0, S4, S0
56737C:  VMIN.F32        D0, D0, D8
567380:  VSTR            S0, [R6]
567384:  ADDS            R4, #1
567386:  ADDS            R6, #4
567388:  ADDS            R5, #0x2C ; ','
56738A:  CMP             R4, #4
56738C:  BNE             loc_567306
56738E:  ADD             SP, SP, #0x18
567390:  VPOP            {D8-D15}
567394:  ADD             SP, SP, #4
567396:  POP.W           {R8-R11}
56739A:  POP             {R4-R7,PC}
