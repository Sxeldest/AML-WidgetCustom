; =========================================================
; Game Engine Function: sub_2661F0
; Address            : 0x2661F0 - 0x26635E
; =========================================================

2661F0:  PUSH            {R4-R7,LR}
2661F2:  ADD             R7, SP, #0xC
2661F4:  PUSH.W          {R8-R11}
2661F8:  SUB             SP, SP, #4
2661FA:  VPUSH           {D8-D9}
2661FE:  SUB             SP, SP, #0x50
266200:  MOV             R4, R0
266202:  MOV             R0, #0x161B0
26620A:  MOVW            R10, #0xAC44
26620E:  LDR             R5, [R4,R0]
266210:  ADR             R6, dword_266360
266212:  LDR             R0, =(SL_IID_ANDROIDSIMPLEBUFFERQUEUE_ptr - 0x266220)
266214:  LDRD.W          R2, R1, [R4,#0x10]
266218:  MOV.W           R8, #1
26621C:  ADD             R0, PC; SL_IID_ANDROIDSIMPLEBUFFERQUEUE_ptr
26621E:  VLD1.64         {D8-D9}, [R6@128]
266222:  MOV.W           R9, #0
266226:  LDR             R3, [R0]; SL_IID_ANDROIDSIMPLEBUFFERQUEUE
266228:  UMULL.W         R0, R1, R1, R10
26622C:  LDR.W           R11, [R4,#0x18]
266230:  STRD.W          R9, R8, [R4,#0xBC]
266234:  LDR             R6, [R3]
266236:  MOVS            R3, #0
266238:  BLX             __aeabi_uldivmod
26623C:  MUL.W           R0, R11, R0
266240:  MOV.W           R1, #0xFFFFFFFF
266244:  STRD.W          R1, R1, [R4,#0xC4]
266248:  STRD.W          R1, R1, [R4,#0xCC]
26624C:  MOVW            R2, #0x1402
266250:  STRD.W          R1, R1, [R4,#0xD4]
266254:  MOVS            R3, #2
266256:  STR.W           R1, [R4,#0xDC]
26625A:  MOVW            R1, #0x1501
26625E:  LSRS            R0, R0, #1
266260:  STRD.W          R10, R0, [R4,#0x10]
266264:  MOV             R0, #0x800007BD
26626C:  STRD.W          R3, R1, [R4,#0x18]
266270:  STR             R2, [R4,#0x20]
266272:  MOVS            R2, #0x10
266274:  STR             R3, [SP,#0x80+var_34]
266276:  MOV             R4, R5
266278:  STRD.W          R8, R6, [SP,#0x80+var_74]
26627C:  STR             R0, [SP,#0x80+var_38]
26627E:  ADD             R0, SP, #0x80+var_5C
266280:  MOV             R1, R0
266282:  VST1.32         {D8-D9}, [R1]!
266286:  STR             R2, [R1]
266288:  MOVS            R1, #3
26628A:  STRD.W          R1, R3, [SP,#0x80+var_48]
26628E:  ADD             R1, SP, #0x80+var_38
266290:  STRD.W          R1, R0, [SP,#0x80+var_64]
266294:  MOVS            R0, #4
266296:  STR             R0, [SP,#0x80+var_40]
266298:  LDR             R0, [R5,#8]
26629A:  STR             R0, [SP,#0x80+var_3C]
26629C:  ADD             R0, SP, #0x80+var_40
26629E:  STRD.W          R0, R9, [SP,#0x80+var_6C]
2662A2:  LDR.W           R0, [R4,#0xC]!
2662A6:  CMP             R0, #0
2662A8:  ITTT NE
2662AA:  LDRNE           R1, [R0]
2662AC:  LDRNE           R1, [R1,#0x18]
2662AE:  BLXNE           R1
2662B0:  LDR             R0, [R5,#4]
2662B2:  ADD             R2, SP, #0x80+var_70
2662B4:  STR.W           R9, [R5,#0xC]
2662B8:  ADD             R3, SP, #0x80+var_6C
2662BA:  LDR             R1, [R0]
2662BC:  LDR             R6, [R1,#8]
2662BE:  ADD             R1, SP, #0x80+var_74
2662C0:  STRD.W          R8, R2, [SP,#0x80+var_80]
2662C4:  ADD             R2, SP, #0x80+var_64
2662C6:  STR             R1, [SP,#0x80+var_78]
2662C8:  MOV             R1, R4
2662CA:  BLX             R6
2662CC:  CBZ             R0, loc_2662E8
2662CE:  LDR             R1, =(LogLevel_ptr - 0x2662D4)
2662D0:  ADD             R1, PC; LogLevel_ptr
2662D2:  LDR             R1, [R1]; LogLevel
2662D4:  LDR             R1, [R1]
2662D6:  CBZ             R1, loc_2662E8
2662D8:  SUBS            R0, #1
2662DA:  CMP             R0, #0xF
2662DC:  BHI             loc_266310
2662DE:  LDR             R1, =(off_661DF0 - 0x2662E4); "Preconditions violated" ...
2662E0:  ADD             R1, PC; off_661DF0
2662E2:  LDR.W           R1, [R1,R0,LSL#2]
2662E6:  B               loc_266314
2662E8:  CBNZ            R0, loc_266326
2662EA:  LDR             R0, [R4]
2662EC:  LDR             R1, [R0]
2662EE:  LDR             R2, [R1]
2662F0:  MOVS            R1, #0
2662F2:  BLX             R2
2662F4:  CBZ             R0, loc_266344
2662F6:  LDR             R1, =(LogLevel_ptr - 0x2662FC)
2662F8:  ADD             R1, PC; LogLevel_ptr
2662FA:  LDR             R1, [R1]; LogLevel
2662FC:  LDR             R1, [R1]
2662FE:  CBZ             R1, loc_266344
266300:  SUBS            R0, #1
266302:  CMP             R0, #0xF
266304:  BHI             loc_26634C
266306:  LDR             R1, =(off_661DF0 - 0x26630C); "Preconditions violated" ...
266308:  ADD             R1, PC; off_661DF0
26630A:  LDR.W           R1, [R1,R0,LSL#2]
26630E:  B               loc_266350
266310:  LDR             R1, =(aUnknownErrorCo - 0x266316); "Unknown error code"
266312:  ADD             R1, PC; "Unknown error code"
266314:  LDR             R0, =(aEe - 0x266320); "(EE)"
266316:  ADR             R3, aEngineCreateau; "engine->CreateAudioPlayer"
266318:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x266322); "%s: %s\n"
26631A:  STR             R1, [SP,#0x80+var_80]
26631C:  ADD             R0, PC; "(EE)"
26631E:  ADD             R2, PC; "%s: %s\n"
266320:  ADR             R1, aOpenslResetPla; "opensl_reset_playback"
266322:  BLX             j_al_print
266326:  LDR             R0, [R4]
266328:  CMP             R0, #0
26632A:  ITTT NE
26632C:  LDRNE           R1, [R0]
26632E:  LDRNE           R1, [R1,#0x18]
266330:  BLXNE           R1
266332:  MOVS            R0, #0
266334:  STR             R0, [R4]
266336:  ADD             SP, SP, #0x50 ; 'P'
266338:  VPOP            {D8-D9}
26633C:  ADD             SP, SP, #4
26633E:  POP.W           {R8-R11}
266342:  POP             {R4-R7,PC}
266344:  CMP             R0, #0
266346:  BNE             loc_266326
266348:  MOVS            R0, #1
26634A:  B               loc_266336
26634C:  LDR             R1, =(aUnknownErrorCo - 0x266352); "Unknown error code"
26634E:  ADD             R1, PC; "Unknown error code"
266350:  LDR             R0, =(aEe - 0x26635C); "(EE)"
266352:  ADR             R3, aBufferqueueRea; "bufferQueue->Realize"
266354:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x26635E); "%s: %s\n"
266356:  STR             R1, [SP,#0x80+var_80]
266358:  ADD             R0, PC; "(EE)"
26635A:  ADD             R2, PC; "%s: %s\n"
26635C:  B               loc_266320
