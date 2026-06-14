; =========================================================
; Game Engine Function: _ZN10COcclusion6AddOneEfffffffffjb
; Address            : 0x5AE1CC - 0x5AE48A
; =========================================================

5AE1CC:  PUSH            {R4,R5,R7,LR}
5AE1CE:  ADD             R7, SP, #8
5AE1D0:  VLDR            S2, [R7,#arg_0]
5AE1D4:  BIC.W           R3, R3, #0x80000000
5AE1D8:  VLDR            S0, [R7,#arg_4]
5AE1DC:  MOV.W           R12, #1
5AE1E0:  VABS.F32        S2, S2
5AE1E4:  MOV.W           LR, #0
5AE1E8:  VABS.F32        S4, S0
5AE1EC:  VMOV            S0, R3
5AE1F0:  VCVT.S32.F32    S0, S0
5AE1F4:  VCVT.S32.F32    S2, S2
5AE1F8:  VCVT.S32.F32    S4, S4
5AE1FC:  VMOV            R3, S2
5AE200:  CMP             R3, #0
5AE202:  VMOV            R3, S0
5AE206:  IT EQ
5AE208:  MOVEQ.W         R12, #2
5AE20C:  IT EQ
5AE20E:  MOVEQ.W         LR, #1
5AE212:  CMP             R3, #0
5AE214:  VMOV            R3, S4
5AE218:  IT EQ
5AE21A:  MOVEQ           LR, R12
5AE21C:  CMP             R3, #0
5AE21E:  IT EQ
5AE220:  ADDEQ.W         LR, LR, #1
5AE224:  CMP.W           LR, #1
5AE228:  BHI.W           locret_5AE488
5AE22C:  VLDR            S6, [R7,#arg_8]
5AE230:  VCMPE.F32       S6, #0.0
5AE234:  VMRS            APSR_nzcv, FPSCR
5AE238:  BGE             loc_5AE24C
5AE23A:  VLDR            S8, =360.0
5AE23E:  VADD.F32        S6, S6, S8
5AE242:  VCMPE.F32       S6, #0.0
5AE246:  VMRS            APSR_nzcv, FPSCR
5AE24A:  BLT             loc_5AE23E
5AE24C:  VLDR            S10, =360.0
5AE250:  VLDR            S8, [R7,#arg_C]
5AE254:  VCMPE.F32       S6, S10
5AE258:  VMRS            APSR_nzcv, FPSCR
5AE25C:  BLE             loc_5AE276
5AE25E:  VLDR            S12, =-360.0
5AE262:  VADD.F32        S6, S6, S12
5AE266:  VCMPE.F32       S6, S10
5AE26A:  VMRS            APSR_nzcv, FPSCR
5AE26E:  BGT             loc_5AE262
5AE270:  B               loc_5AE276
5AE272:  VADD.F32        S8, S8, S10
5AE276:  VCMPE.F32       S8, #0.0
5AE27A:  VMRS            APSR_nzcv, FPSCR
5AE27E:  BLT             loc_5AE272
5AE280:  VCMPE.F32       S8, S10
5AE284:  VLDR            S12, [R7,#arg_10]
5AE288:  VMRS            APSR_nzcv, FPSCR
5AE28C:  BLE             loc_5AE2A6
5AE28E:  VLDR            S14, =-360.0
5AE292:  VADD.F32        S8, S8, S14
5AE296:  VCMPE.F32       S8, S10
5AE29A:  VMRS            APSR_nzcv, FPSCR
5AE29E:  BGT             loc_5AE292
5AE2A0:  B               loc_5AE2A6
5AE2A2:  VADD.F32        S12, S12, S10
5AE2A6:  VCMPE.F32       S12, #0.0
5AE2AA:  VMRS            APSR_nzcv, FPSCR
5AE2AE:  BLT             loc_5AE2A2
5AE2B0:  LDR             R3, [R7,#arg_18]
5AE2B2:  VCMPE.F32       S12, S10
5AE2B6:  VMRS            APSR_nzcv, FPSCR
5AE2BA:  BLE             loc_5AE2CE
5AE2BC:  VLDR            S14, =-360.0
5AE2C0:  VADD.F32        S12, S12, S14
5AE2C4:  VCMPE.F32       S12, S10
5AE2C8:  VMRS            APSR_nzcv, FPSCR
5AE2CC:  BGT             loc_5AE2C0
5AE2CE:  VLDR            S3, =0.017453
5AE2D2:  VMOV            S10, R2
5AE2D6:  VMOV            S14, R1
5AE2DA:  CMP             R3, #0
5AE2DC:  VMUL.F32        S6, S6, S3
5AE2E0:  VMUL.F32        S8, S8, S3
5AE2E4:  VMUL.F32        S12, S12, S3
5AE2E8:  VMOV            S1, R0
5AE2EC:  BEQ             loc_5AE3AA
5AE2EE:  LDR             R0, =(_ZN10COcclusion25NumInteriorOccludersOnMapE_ptr - 0x5AE2F4)
5AE2F0:  ADD             R0, PC; _ZN10COcclusion25NumInteriorOccludersOnMapE_ptr
5AE2F2:  LDR             R0, [R0]; COcclusion::NumInteriorOccludersOnMap ...
5AE2F4:  LDR             R0, [R0]; COcclusion::NumInteriorOccludersOnMap
5AE2F6:  CMP             R0, #0x27 ; '''
5AE2F8:  IT GT
5AE2FA:  POPGT           {R4,R5,R7,PC}
5AE2FC:  VMOV.F32        S3, #4.0
5AE300:  VLDR            S5, =40.744
5AE304:  VCVT.F32.S32    S4, S4
5AE308:  LDR             R2, =(_ZN10COcclusion18aInteriorOccludersE_ptr - 0x5AE31A)
5AE30A:  VMUL.F32        S6, S6, S5
5AE30E:  ADD.W           R5, R0, R0,LSL#3
5AE312:  VMUL.F32        S12, S12, S5
5AE316:  ADD             R2, PC; _ZN10COcclusion18aInteriorOccludersE_ptr
5AE318:  VCVT.F32.S32    S2, S2
5AE31C:  LDR             R1, =(_ZN10COcclusion25NumInteriorOccludersOnMapE_ptr - 0x5AE32C)
5AE31E:  VCVT.F32.S32    S0, S0
5AE322:  LDR             R2, [R2]; COcclusion::aInteriorOccluders ...
5AE324:  VMUL.F32        S8, S8, S5
5AE328:  ADD             R1, PC; _ZN10COcclusion25NumInteriorOccludersOnMapE_ptr
5AE32A:  VMUL.F32        S1, S1, S3
5AE32E:  ADDS            R0, #1
5AE330:  VMUL.F32        S14, S14, S3
5AE334:  LDR             R1, [R1]; COcclusion::NumInteriorOccludersOnMap ...
5AE336:  VCVT.U32.F32    S6, S6
5AE33A:  VCVT.U32.F32    S12, S12
5AE33E:  VMUL.F32        S10, S10, S3
5AE342:  VMUL.F32        S2, S2, S3
5AE346:  VMUL.F32        S4, S4, S3
5AE34A:  VCVT.S32.F32    S1, S1
5AE34E:  VCVT.U32.F32    S8, S8
5AE352:  VMUL.F32        S0, S0, S3
5AE356:  VMOV            R3, S1
5AE35A:  STRH.W          R3, [R2,R5,LSL#1]
5AE35E:  VMOV            R3, S12
5AE362:  ADD.W           R2, R2, R5,LSL#1
5AE366:  STRB            R3, [R2,#0xE]
5AE368:  VMOV            R3, S8
5AE36C:  STRB            R3, [R2,#0xD]
5AE36E:  VMOV            R3, S6
5AE372:  VCVT.S32.F32    S6, S14
5AE376:  STRB            R3, [R2,#0xC]
5AE378:  VMOV            R3, S6
5AE37C:  VCVT.S32.F32    S8, S10
5AE380:  STRH            R3, [R2,#2]
5AE382:  VMOV            R3, S8
5AE386:  VCVT.S32.F32    S4, S4
5AE38A:  STRH            R3, [R2,#4]
5AE38C:  VCVT.S32.F32    S2, S2
5AE390:  VCVT.S32.F32    S0, S0
5AE394:  STR             R0, [R1]; COcclusion::NumInteriorOccludersOnMap
5AE396:  VMOV            R3, S2
5AE39A:  STRH            R3, [R2,#6]
5AE39C:  VMOV            R3, S0
5AE3A0:  STRH            R3, [R2,#8]
5AE3A2:  VMOV            R3, S4
5AE3A6:  STRH            R3, [R2,#0xA]
5AE3A8:  B               locret_5AE488
5AE3AA:  LDR             R0, =(_ZN10COcclusion17NumOccludersOnMapE_ptr - 0x5AE3B0)
5AE3AC:  ADD             R0, PC; _ZN10COcclusion17NumOccludersOnMapE_ptr
5AE3AE:  LDR             R0, [R0]; COcclusion::NumOccludersOnMap ...
5AE3B0:  LDR             R0, [R0]; COcclusion::NumOccludersOnMap
5AE3B2:  CMP.W           R0, #0x3E8
5AE3B6:  BGE             locret_5AE488
5AE3B8:  VLDR            S5, =40.744
5AE3BC:  VCVT.F32.S32    S4, S4
5AE3C0:  VCVT.F32.S32    S2, S2
5AE3C4:  LDR             R2, =(_ZN10COcclusion10aOccludersE_ptr - 0x5AE3D4)
5AE3C6:  VMUL.F32        S12, S12, S5
5AE3CA:  LDR             R1, =(_ZN10COcclusion11FarAwayListE_ptr - 0x5AE3DA)
5AE3CC:  VCVT.F32.S32    S0, S0
5AE3D0:  ADD             R2, PC; _ZN10COcclusion10aOccludersE_ptr
5AE3D2:  VMUL.F32        S8, S8, S5
5AE3D6:  ADD             R1, PC; _ZN10COcclusion11FarAwayListE_ptr
5AE3D8:  VMUL.F32        S6, S6, S5
5AE3DC:  LDR             R4, [R2]; COcclusion::aOccluders ...
5AE3DE:  ADD.W           R3, R0, R0,LSL#3
5AE3E2:  LDR             R2, [R1]; COcclusion::FarAwayList ...
5AE3E4:  VMOV.F32        S3, #4.0
5AE3E8:  LDR.W           LR, =(_ZN10COcclusion17NumOccludersOnMapE_ptr - 0x5AE3FC)
5AE3EC:  ADD.W           R1, R4, R3,LSL#1
5AE3F0:  LDR.W           R12, [R7,#arg_14]
5AE3F4:  VCVT.U32.F32    S12, S12
5AE3F8:  ADD             LR, PC; _ZN10COcclusion17NumOccludersOnMapE_ptr
5AE3FA:  CMP.W           R12, #0
5AE3FE:  VCVT.U32.F32    S8, S8
5AE402:  VCVT.U32.F32    S6, S6
5AE406:  VMUL.F32        S1, S1, S3
5AE40A:  VMUL.F32        S10, S10, S3
5AE40E:  VMOV            R5, S12
5AE412:  VMUL.F32        S14, S14, S3
5AE416:  VMUL.F32        S2, S2, S3
5AE41A:  VMUL.F32        S4, S4, S3
5AE41E:  VMUL.F32        S0, S0, S3
5AE422:  STRB            R5, [R1,#0xE]
5AE424:  VMOV            R5, S8
5AE428:  STRB            R5, [R1,#0xD]
5AE42A:  VMOV            R5, S6
5AE42E:  VCVT.S32.F32    S6, S10
5AE432:  STRB            R5, [R1,#0xC]
5AE434:  VCVT.S32.F32    S8, S1
5AE438:  VCVT.S32.F32    S10, S14
5AE43C:  VMOV            R5, S8
5AE440:  STRH.W          R5, [R4,R3,LSL#1]
5AE444:  VMOV            R3, S10
5AE448:  LDR.W           R5, [LR]; COcclusion::NumOccludersOnMap ...
5AE44C:  STRH            R3, [R1,#2]
5AE44E:  VMOV            R3, S6
5AE452:  VCVT.S32.F32    S4, S4
5AE456:  STRH            R3, [R1,#4]
5AE458:  VCVT.S32.F32    S2, S2
5AE45C:  VCVT.S32.F32    S0, S0
5AE460:  VMOV            R3, S2
5AE464:  STRH            R3, [R1,#6]
5AE466:  VMOV            R3, S0
5AE46A:  STRH            R3, [R1,#8]
5AE46C:  VMOV            R3, S4
5AE470:  STRH            R3, [R1,#0xA]
5AE472:  LDRH            R3, [R2]; COcclusion::FarAwayList
5AE474:  BFC.W           R3, #0xF, #0x11
5AE478:  IT NE
5AE47A:  ORRNE.W         R3, R3, #0x8000
5AE47E:  STRH            R0, [R2]; COcclusion::FarAwayList
5AE480:  STRH            R3, [R1,#0x10]
5AE482:  ADDS            R1, R0, #1
5AE484:  STR             R1, [R5]; COcclusion::NumOccludersOnMap
5AE486:  POP             {R4,R5,R7,PC}
5AE488:  POP             {R4,R5,R7,PC}
