; =========================================================
; Game Engine Function: _ZN6CGlass28HasGlassBeenShatteredAtCoorsEfff
; Address            : 0x5AD08C - 0x5AD38A
; =========================================================

5AD08C:  PUSH            {R4-R7,LR}
5AD08E:  ADD             R7, SP, #0xC
5AD090:  PUSH.W          {R8-R11}
5AD094:  SUB             SP, SP, #4
5AD096:  VPUSH           {D8-D14}
5AD09A:  SUB             SP, SP, #0x30
5AD09C:  VMOV.F32        S0, #-30.0
5AD0A0:  VLDR            S20, =50.0
5AD0A4:  VMOV            S16, R0
5AD0A8:  VLDR            S22, =60.0
5AD0AC:  VMOV            S18, R1
5AD0B0:  MOV             R8, R2
5AD0B2:  VADD.F32        S2, S16, S0
5AD0B6:  VADD.F32        S24, S18, S0
5AD0BA:  VDIV.F32        S2, S2, S20
5AD0BE:  VADD.F32        S2, S2, S22
5AD0C2:  VMOV            R0, S2; x
5AD0C6:  VMOV.F32        S2, #30.0
5AD0CA:  VADD.F32        S26, S18, S2
5AD0CE:  VADD.F32        S28, S16, S2
5AD0D2:  BLX.W           floorf
5AD0D6:  VDIV.F32        S0, S24, S20
5AD0DA:  MOV             R5, R0
5AD0DC:  VADD.F32        S0, S0, S22
5AD0E0:  VMOV            R0, S0; x
5AD0E4:  BLX.W           floorf
5AD0E8:  VDIV.F32        S0, S28, S20
5AD0EC:  MOV             R6, R0
5AD0EE:  VADD.F32        S0, S0, S22
5AD0F2:  VMOV            R0, S0; x
5AD0F6:  BLX.W           floorf
5AD0FA:  VDIV.F32        S0, S26, S20
5AD0FE:  MOV             R4, R0
5AD100:  VADD.F32        S0, S0, S22
5AD104:  VMOV            R0, S0; x
5AD108:  BLX.W           floorf
5AD10C:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5AD11C)
5AD10E:  VMOV            S6, R5
5AD112:  VMOV            S0, R0
5AD116:  MOVS            R2, #0x77 ; 'w'
5AD118:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5AD11A:  VMOV            S2, R4
5AD11E:  VCVT.S32.F32    S6, S6
5AD122:  MOVS            R5, #0
5AD124:  LDR             R0, [R1]; CWorld::ms_nCurrentScanCode ...
5AD126:  VCVT.S32.F32    S0, S0
5AD12A:  VMOV            S4, R6
5AD12E:  LDRH            R0, [R0]; this
5AD130:  VCVT.S32.F32    S2, S2
5AD134:  VCVT.S32.F32    S4, S4
5AD138:  VMOV            R4, S0
5AD13C:  VMOV            R1, S2
5AD140:  VMOV            R6, S4
5AD144:  CMP             R4, #0x77 ; 'w'
5AD146:  IT GE
5AD148:  MOVGE           R4, R2
5AD14A:  CMP             R1, #0x77 ; 'w'
5AD14C:  IT LT
5AD14E:  MOVLT           R2, R1
5AD150:  VMOV            R1, S6
5AD154:  CMP             R6, #0
5AD156:  STR             R2, [SP,#0x88+var_60]
5AD158:  IT LE
5AD15A:  MOVLE           R6, R5
5AD15C:  CMP             R1, #0
5AD15E:  IT GT
5AD160:  MOVGT           R5, R1
5AD162:  MOVW            R1, #0xFFFF
5AD166:  CMP             R0, R1
5AD168:  BEQ             loc_5AD16E
5AD16A:  ADDS            R0, #1
5AD16C:  B               loc_5AD174
5AD16E:  BLX.W           j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
5AD172:  MOVS            R0, #1
5AD174:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5AD17C)
5AD176:  CMP             R6, R4
5AD178:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5AD17A:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
5AD17C:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
5AD17E:  BGT.W           loc_5AD37A
5AD182:  MOVS            R0, #0
5AD184:  VMOV.F32        S22, #20.0
5AD188:  STR             R0, [SP,#0x88+var_5C]
5AD18A:  VMOV            S20, R8
5AD18E:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x5AD194)
5AD190:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
5AD192:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
5AD194:  STR             R0, [SP,#0x88+var_6C]
5AD196:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x5AD19C)
5AD198:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
5AD19A:  LDR             R0, [R0]; CWorld::ms_aSectors ...
5AD19C:  STR             R0, [SP,#0x88+var_70]
5AD19E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5AD1A4)
5AD1A0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5AD1A2:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
5AD1A6:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5AD1AC)
5AD1A8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5AD1AA:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
5AD1AC:  STR             R0, [SP,#0x88+var_74]
5AD1AE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5AD1B4)
5AD1B0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5AD1B2:  LDR.W           R11, [R0]; CModelInfo::ms_modelInfoPtrs ...
5AD1B6:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5AD1BC)
5AD1B8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5AD1BA:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
5AD1BC:  STR             R0, [SP,#0x88+var_78]
5AD1BE:  STRD.W          R5, R4, [SP,#0x88+var_84]
5AD1C2:  LDR             R0, [SP,#0x88+var_60]
5AD1C4:  STR             R6, [SP,#0x88+var_7C]
5AD1C6:  CMP             R5, R0
5AD1C8:  BGT.W           loc_5AD34E
5AD1CC:  CMP             R6, #0x77 ; 'w'
5AD1CE:  MOV.W           R0, #0x77 ; 'w'
5AD1D2:  IT LT
5AD1D4:  MOVLT           R0, R6
5AD1D6:  MOV             R8, R5
5AD1D8:  RSB.W           R0, R0, R0,LSL#4
5AD1DC:  LSLS            R0, R0, #3
5AD1DE:  STR             R0, [SP,#0x88+var_64]
5AD1E0:  LSLS            R0, R6, #4
5AD1E2:  UXTB            R0, R0
5AD1E4:  STR             R0, [SP,#0x88+var_68]
5AD1E6:  LDR             R1, [SP,#0x88+var_68]
5AD1E8:  AND.W           R0, R8, #0xF
5AD1EC:  CMP.W           R8, #0x77 ; 'w'
5AD1F0:  ORR.W           R0, R0, R1
5AD1F4:  LDR             R1, [SP,#0x88+var_6C]
5AD1F6:  ADD.W           R0, R0, R0,LSL#1
5AD1FA:  ADD.W           R0, R1, R0,LSL#2
5AD1FE:  MOV.W           R1, #0x77 ; 'w'
5AD202:  IT LT
5AD204:  MOVLT           R1, R8
5AD206:  LDR             R6, [R0,#8]
5AD208:  LDR             R0, [SP,#0x88+var_64]
5AD20A:  CMP             R6, #0
5AD20C:  ADD.W           R4, R1, R0
5AD210:  BEQ             loc_5AD2A8
5AD212:  LDR             R5, [SP,#0x88+var_78]
5AD214:  LDRD.W          R10, R6, [R6]
5AD218:  LDRB.W          R0, [R10,#0x3A]
5AD21C:  AND.W           R0, R0, #7
5AD220:  CMP             R0, #4
5AD222:  BNE             loc_5AD2A4
5AD224:  LDRSH.W         R0, [R10,#0x26]
5AD228:  LDR.W           R0, [R11,R0,LSL#2]
5AD22C:  LDR             R1, [R0]
5AD22E:  LDR             R1, [R1,#8]
5AD230:  BLX             R1
5AD232:  CBZ             R0, loc_5AD2A4
5AD234:  LDRH            R0, [R0,#0x28]
5AD236:  AND.W           R0, R0, #0x7000
5AD23A:  ORR.W           R0, R0, #0x800
5AD23E:  CMP.W           R0, #0x2800
5AD242:  BNE             loc_5AD2A4
5AD244:  LDRH.W          R1, [R10,#0x30]
5AD248:  LDRH            R0, [R5]
5AD24A:  CMP             R1, R0
5AD24C:  BEQ             loc_5AD2A4
5AD24E:  LDR.W           R1, [R10,#0x14]
5AD252:  STRH.W          R0, [R10,#0x30]
5AD256:  ADD.W           R0, R1, #0x30 ; '0'
5AD25A:  CMP             R1, #0
5AD25C:  IT EQ
5AD25E:  ADDEQ.W         R0, R10, #4
5AD262:  VLDR            S0, [R0]
5AD266:  VLDR            S2, [R0,#4]
5AD26A:  VSUB.F32        S0, S16, S0
5AD26E:  VLDR            S4, [R0,#8]
5AD272:  VSUB.F32        S2, S18, S2
5AD276:  VSUB.F32        S4, S20, S4
5AD27A:  VMUL.F32        S0, S0, S0
5AD27E:  VMUL.F32        S2, S2, S2
5AD282:  VMUL.F32        S4, S4, S4
5AD286:  VADD.F32        S0, S0, S2
5AD28A:  VADD.F32        S0, S0, S4
5AD28E:  VSQRT.F32       S0, S0
5AD292:  VCMPE.F32       S0, S22
5AD296:  VMRS            APSR_nzcv, FPSCR
5AD29A:  ITT LT
5AD29C:  STRLT.W         R10, [SP,#0x88+var_5C]
5AD2A0:  VMOVLT.F32      S22, S0
5AD2A4:  CMP             R6, #0
5AD2A6:  BNE             loc_5AD214
5AD2A8:  LDR             R0, [SP,#0x88+var_70]
5AD2AA:  ADD.W           R0, R0, R4,LSL#3
5AD2AE:  LDR             R4, [R0,#4]
5AD2B0:  CMP             R4, #0
5AD2B2:  BEQ             loc_5AD340
5AD2B4:  LDR             R5, [SP,#0x88+var_74]
5AD2B6:  LDRD.W          R6, R4, [R4]
5AD2BA:  LDRB.W          R0, [R6,#0x3A]
5AD2BE:  AND.W           R0, R0, #7
5AD2C2:  CMP             R0, #4
5AD2C4:  BNE             loc_5AD33C
5AD2C6:  LDRSH.W         R0, [R6,#0x26]
5AD2CA:  LDR.W           R0, [R9,R0,LSL#2]
5AD2CE:  LDR             R1, [R0]
5AD2D0:  LDR             R1, [R1,#8]
5AD2D2:  BLX             R1
5AD2D4:  CBZ             R0, loc_5AD33C
5AD2D6:  LDRH            R0, [R0,#0x28]
5AD2D8:  AND.W           R0, R0, #0x7000
5AD2DC:  ORR.W           R0, R0, #0x800
5AD2E0:  CMP.W           R0, #0x2800
5AD2E4:  BNE             loc_5AD33C
5AD2E6:  LDRH            R1, [R6,#0x30]
5AD2E8:  LDRH            R0, [R5]
5AD2EA:  CMP             R1, R0
5AD2EC:  BEQ             loc_5AD33C
5AD2EE:  LDR             R1, [R6,#0x14]
5AD2F0:  STRH            R0, [R6,#0x30]
5AD2F2:  ADD.W           R0, R1, #0x30 ; '0'
5AD2F6:  CMP             R1, #0
5AD2F8:  IT EQ
5AD2FA:  ADDEQ           R0, R6, #4
5AD2FC:  VLDR            S0, [R0]
5AD300:  VLDR            S2, [R0,#4]
5AD304:  VSUB.F32        S0, S16, S0
5AD308:  VLDR            S4, [R0,#8]
5AD30C:  VSUB.F32        S2, S18, S2
5AD310:  VSUB.F32        S4, S20, S4
5AD314:  VMUL.F32        S0, S0, S0
5AD318:  VMUL.F32        S2, S2, S2
5AD31C:  VMUL.F32        S4, S4, S4
5AD320:  VADD.F32        S0, S0, S2
5AD324:  VADD.F32        S0, S0, S4
5AD328:  VSQRT.F32       S0, S0
5AD32C:  VCMPE.F32       S0, S22
5AD330:  VMRS            APSR_nzcv, FPSCR
5AD334:  ITT LT
5AD336:  STRLT           R6, [SP,#0x88+var_5C]
5AD338:  VMOVLT.F32      S22, S0
5AD33C:  CMP             R4, #0
5AD33E:  BNE             loc_5AD2B6
5AD340:  LDR             R1, [SP,#0x88+var_60]
5AD342:  ADD.W           R0, R8, #1
5AD346:  CMP             R8, R1
5AD348:  MOV             R8, R0
5AD34A:  BLT.W           loc_5AD1E6
5AD34E:  LDR             R2, [SP,#0x88+var_7C]
5AD350:  LDR             R1, [SP,#0x88+var_80]
5AD352:  ADDS            R0, R2, #1
5AD354:  LDR             R5, [SP,#0x88+var_84]
5AD356:  CMP             R2, R1
5AD358:  MOV             R6, R0
5AD35A:  BLT.W           loc_5AD1C2
5AD35E:  LDR             R1, [SP,#0x88+var_5C]
5AD360:  CBZ             R1, loc_5AD37A
5AD362:  LDRB.W          R0, [R1,#0x3A]
5AD366:  AND.W           R0, R0, #7
5AD36A:  CMP             R0, #5
5AD36C:  ITTE NE
5AD36E:  LDRBNE.W        R0, [R1,#0x144]
5AD372:  UBFXNE.W        R0, R0, #5, #1
5AD376:  MOVEQ           R0, #0
5AD378:  B               loc_5AD37C
5AD37A:  MOVS            R0, #0
5AD37C:  ADD             SP, SP, #0x30 ; '0'
5AD37E:  VPOP            {D8-D14}
5AD382:  ADD             SP, SP, #4
5AD384:  POP.W           {R8-R11}
5AD388:  POP             {R4-R7,PC}
