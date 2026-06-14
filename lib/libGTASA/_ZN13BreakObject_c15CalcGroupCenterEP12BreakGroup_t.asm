; =========================================================
; Game Engine Function: _ZN13BreakObject_c15CalcGroupCenterEP12BreakGroup_t
; Address            : 0x451130 - 0x45136C
; =========================================================

451130:  PUSH            {R4,R6,R7,LR}
451132:  ADD             R7, SP, #8
451134:  VPUSH           {D8-D14}
451138:  SUB             SP, SP, #0x18
45113A:  MOV             R4, R1
45113C:  LDRH.W          R0, [R4,#0x4E]
451140:  CBZ             R0, loc_4511B2
451142:  VLDR            S21, =1.0e7
451146:  MOVS            R2, #0
451148:  LDR             R1, [R4,#0x50]
45114A:  VMOV.F32        S20, S21
45114E:  VLDR            D9, =-5.88762936e53
451152:  VMOV.F32        S22, S21
451156:  VLDR            S16, =-1.0e7
45115A:  ADDS            R1, #0x10
45115C:  VLDR            S0, [R1,#-0x10]
451160:  MOV             R3, R1
451162:  VLDR            D16, [R1,#-0xC]
451166:  ADDS            R2, #1
451168:  VMAX.F32        D17, D16, D9
45116C:  VLD1.32         {D18}, [R3]!
451170:  VMIN.F32        D16, D16, D10
451174:  CMP             R2, R0
451176:  VMAX.F32        D19, D0, D8
45117A:  VMIN.F32        D20, D0, D11
45117E:  VLDR            S0, [R1,#-4]
451182:  VMAX.F32        D17, D18, D17
451186:  VMIN.F32        D16, D18, D16
45118A:  VMAX.F32        D18, D0, D19
45118E:  VLDR            D19, [R1,#0xC]
451192:  VMIN.F32        D20, D0, D20
451196:  VLDR            S0, [R3]
45119A:  VMAX.F32        D9, D19, D17
45119E:  ADD.W           R1, R1, #0x48 ; 'H'
4511A2:  VMIN.F32        D10, D19, D16
4511A6:  VMAX.F32        D8, D0, D18
4511AA:  VMIN.F32        D11, D0, D20
4511AE:  BLT             loc_45115C
4511B0:  B               loc_4511C2
4511B2:  VLDR            D10, =5.88762753e53
4511B6:  VLDR            D9, =-5.88762936e53
4511BA:  VLDR            S22, =1.0e7
4511BE:  VLDR            S16, =-1.0e7
4511C2:  VMOV.F32        S24, #0.5
4511C6:  ADD             R2, SP, #0x58+var_4C
4511C8:  VADD.F32        S0, S16, S22
4511CC:  ADDS            R1, R2, #4
4511CE:  VADD.F32        D16, D9, D10
4511D2:  ADDS            R2, #8
4511D4:  VMOV.I32        D17, #0x3F000000
4511D8:  CMP             R0, #0
4511DA:  VMUL.F32        D14, D16, D17
4511DE:  VMUL.F32        S26, S0, S24
4511E2:  VST1.32         {D14[0]}, [R1@32]
4511E6:  VST1.32         {D14[1]}, [R2@32]
4511EA:  VSTR            S26, [SP,#0x58+var_4C]
4511EE:  BEQ             loc_4512B8
4511F0:  MOVS            R0, #0
4511F2:  MOVS            R2, #0
4511F4:  LDR             R3, [R4,#0x50]
4511F6:  ADDS            R2, #1
4511F8:  ADD             R3, R0
4511FA:  VLDR            S0, [R3]
4511FE:  VSUB.F32        S0, S0, S26
451202:  VSTR            S0, [R3]
451206:  LDR             R3, [R4,#0x50]
451208:  VLDR            S0, [SP,#0x58+var_48]
45120C:  ADD             R3, R0
45120E:  VLDR            S2, [R3,#4]
451212:  VSUB.F32        S0, S2, S0
451216:  VSTR            S0, [R3,#4]
45121A:  LDR             R3, [R4,#0x50]
45121C:  VLDR            S0, [SP,#0x58+var_44]
451220:  ADD             R3, R0
451222:  VLDR            S2, [R3,#8]
451226:  VSUB.F32        S0, S2, S0
45122A:  VSTR            S0, [R3,#8]
45122E:  LDR             R3, [R4,#0x50]
451230:  VLDR            S0, [SP,#0x58+var_4C]
451234:  ADD             R3, R0
451236:  VLDR            S2, [R3,#0xC]
45123A:  VSUB.F32        S0, S2, S0
45123E:  VSTR            S0, [R3,#0xC]
451242:  LDR             R3, [R4,#0x50]
451244:  VLDR            S0, [SP,#0x58+var_48]
451248:  ADD             R3, R0
45124A:  VLDR            S2, [R3,#0x10]
45124E:  VSUB.F32        S0, S2, S0
451252:  VSTR            S0, [R3,#0x10]
451256:  LDR             R3, [R4,#0x50]
451258:  VLDR            S0, [SP,#0x58+var_44]
45125C:  ADD             R3, R0
45125E:  VLDR            S2, [R3,#0x14]
451262:  VSUB.F32        S0, S2, S0
451266:  VSTR            S0, [R3,#0x14]
45126A:  LDR             R3, [R4,#0x50]
45126C:  VLDR            S0, [SP,#0x58+var_4C]
451270:  ADD             R3, R0
451272:  VLDR            S2, [R3,#0x18]
451276:  VSUB.F32        S0, S2, S0
45127A:  VSTR            S0, [R3,#0x18]
45127E:  LDR             R3, [R4,#0x50]
451280:  VLDR            S0, [SP,#0x58+var_48]
451284:  ADD             R3, R0
451286:  VLDR            S2, [R3,#0x1C]
45128A:  VSUB.F32        S0, S2, S0
45128E:  VSTR            S0, [R3,#0x1C]
451292:  LDR             R3, [R4,#0x50]
451294:  VLDR            S0, [SP,#0x58+var_44]
451298:  ADD             R3, R0
45129A:  ADDS            R0, #0x48 ; 'H'
45129C:  VLDR            S2, [R3,#0x20]
4512A0:  VSUB.F32        S0, S2, S0
4512A4:  VSTR            S0, [R3,#0x20]
4512A8:  LDRH.W          R3, [R4,#0x4E]
4512AC:  VLDR            S26, [SP,#0x58+var_4C]
4512B0:  CMP             R2, R3
4512B2:  BLT             loc_4511F4
4512B4:  VLDR            D14, [R1]
4512B8:  ADD             R1, SP, #0x58+var_4C
4512BA:  MOV             R0, SP
4512BC:  MOV             R2, R4
4512BE:  BLX             j__Z20RwV3dTransformVectorP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformVector(RwV3d *,RwV3d const*,RwMatrixTag const*)
4512C2:  VLDR            S0, [R4,#0x30]
4512C6:  VSUB.F32        D16, D10, D14
4512CA:  VLDR            S6, [SP,#0x58+var_58]
4512CE:  VSUB.F32        D17, D9, D14
4512D2:  VLDR            S2, [R4,#0x34]
4512D6:  VADD.F32        S0, S0, S6
4512DA:  VLDR            S4, [R4,#0x38]
4512DE:  VSUB.F32        S6, S16, S26
4512E2:  VSTR            S0, [R4,#0x30]
4512E6:  VLDR            S0, [SP,#0x58+var_54]
4512EA:  VADD.F32        S0, S2, S0
4512EE:  VSUB.F32        S2, S22, S26
4512F2:  VSTR            S0, [R4,#0x34]
4512F6:  VLDR            S0, [SP,#0x58+var_50]
4512FA:  VADD.F32        S4, S4, S0
4512FE:  VSUB.F32        S0, S6, S2
451302:  VSUB.F32        D1, D17, D16
451306:  VSTR            S4, [R4,#0x38]
45130A:  VCMPE.F32       S0, S2
45130E:  VMRS            APSR_nzcv, FPSCR
451312:  ITT LE
451314:  VCMPELE.F32     S0, S3
451318:  VMRSLE          APSR_nzcv, FPSCR
45131C:  BGT             loc_451322
45131E:  MOVS            R0, #0
451320:  B               loc_451358
451322:  VCMPE.F32       S2, S0
451326:  VMRS            APSR_nzcv, FPSCR
45132A:  ITT LE
45132C:  VCMPELE.F32     S2, S3
451330:  VMRSLE          APSR_nzcv, FPSCR
451334:  BGT             loc_45133E
451336:  MOVS            R0, #1
451338:  VMOV.F32        S0, S2
45133C:  B               loc_451358
45133E:  VCMPE.F32       S3, S2
451342:  VMRS            APSR_nzcv, FPSCR
451346:  ITT LE
451348:  VCMPELE.F32     S3, S0
45134C:  VMRSLE          APSR_nzcv, FPSCR
451350:  BGT             loc_451364
451352:  VMOV.F32        S0, S3
451356:  MOVS            R0, #2
451358:  VMUL.F32        S0, S0, S24
45135C:  STRB.W          R0, [R4,#0x58]
451360:  VSTR            S0, [R4,#0x5C]
451364:  ADD             SP, SP, #0x18
451366:  VPOP            {D8-D14}
45136A:  POP             {R4,R6,R7,PC}
