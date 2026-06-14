; =========================================================
; Game Engine Function: _Z32RpMatFXMaterialSetBumpMapTextureP10RpMaterialP9RwTexture
; Address            : 0x1C7208 - 0x1C7380
; =========================================================

1C7208:  PUSH            {R4-R7,LR}
1C720A:  ADD             R7, SP, #0xC
1C720C:  PUSH.W          {R8-R11}
1C7210:  SUB             SP, SP, #0x2C
1C7212:  MOV             R8, R0
1C7214:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C721E)
1C7216:  MOV             R11, R1
1C7218:  LDR             R1, =(__stack_chk_guard_ptr - 0x1C7222)
1C721A:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C721C:  MOVS            R5, #0
1C721E:  ADD             R1, PC; __stack_chk_guard_ptr
1C7220:  MOV.W           R9, #0
1C7224:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C7226:  LDR             R1, [R1]; __stack_chk_guard
1C7228:  LDR             R0, [R0]
1C722A:  LDR             R1, [R1]
1C722C:  STR             R1, [SP,#0x48+var_20]
1C722E:  LDR.W           R6, [R8,R0]
1C7232:  LDR             R0, [R6,#0x14]
1C7234:  CMP             R0, #1
1C7236:  IT NE
1C7238:  MOVNE           R5, #1
1C723A:  ORR.W           R0, R5, R5,LSL#1
1C723E:  ADD.W           R4, R6, R0,LSL#3
1C7242:  LDR.W           R0, [R4,#8]!
1C7246:  CBZ             R0, loc_1C7250
1C7248:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1C724C:  STR.W           R9, [R4]
1C7250:  ADD.W           R0, R5, R5,LSL#1
1C7254:  ADD.W           R9, R6, R0,LSL#3
1C7258:  MOV             R6, R9
1C725A:  LDR.W           R0, [R6,#4]!
1C725E:  CBZ             R0, loc_1C726C
1C7260:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1C7264:  MOVS            R0, #0
1C7266:  STR             R0, [R6]
1C7268:  STR.W           R0, [R9,#0x10]
1C726C:  CMP.W           R11, #0
1C7270:  BEQ             loc_1C72C0
1C7272:  STR.W           R11, [R4]
1C7276:  LDR.W           R1, [R11,#0x54]
1C727A:  LDR.W           R0, [R11]
1C727E:  ADDS            R1, #1
1C7280:  STR.W           R1, [R11,#0x54]
1C7284:  LDR.W           R10, [R8]
1C7288:  LDR             R0, [R0,#0xC]
1C728A:  CMP.W           R10, #0
1C728E:  BEQ             loc_1C729A
1C7290:  CMP             R0, #0
1C7292:  ITT NE
1C7294:  LDRNE.W         R0, [R10]
1C7298:  LDRNE           R0, [R0,#0xC]
1C729A:  CMP             R0, #0
1C729C:  BEQ             loc_1C735E
1C729E:  VMOV.I32        Q8, #0
1C72A2:  ADD             R0, SP, #0x48+var_40
1C72A4:  CMP.W           R10, #0
1C72A8:  VST1.64         {D16-D17}, [R0]!
1C72AC:  VST1.64         {D16-D17}, [R0]
1C72B0:  BEQ             loc_1C72C6
1C72B2:  ADD.W           R0, R10, #0x10
1C72B6:  STR             R0, [SP,#0x48+var_48]
1C72B8:  ADD.W           R0, R11, #0x10
1C72BC:  MOVS            R1, #1
1C72BE:  B               loc_1C72CE
1C72C0:  LDR.W           R0, [R8]
1C72C4:  B               loc_1C7348
1C72C6:  ADD.W           R0, R11, #0x10
1C72CA:  MOVS            R1, #0
1C72CC:  STR             R0, [SP,#0x48+var_44]
1C72CE:  MOV             R2, SP
1C72D0:  STR.W           R0, [R2,R1,LSL#2]
1C72D4:  ADD             R0, SP, #0x48+var_40
1C72D6:  MOVS            R1, #0
1C72D8:  LDR             R3, [SP,#0x48+var_48]
1C72DA:  LDRB            R2, [R3]
1C72DC:  CBZ             R2, loc_1C72F4
1C72DE:  ADDS            R3, #1
1C72E0:  STR             R3, [SP,#0x48+var_48]
1C72E2:  LDR             R3, [SP,#0x48+var_44]
1C72E4:  ADDS            R1, #1
1C72E6:  STRB.W          R2, [R0],#1
1C72EA:  LDRB            R2, [R3]
1C72EC:  CBNZ            R2, loc_1C72FA
1C72EE:  CMP             R1, #0x1E
1C72F0:  BLT             loc_1C72D8
1C72F2:  B               loc_1C7308
1C72F4:  LDR             R3, [SP,#0x48+var_44]
1C72F6:  LDRB            R2, [R3]
1C72F8:  CBZ             R2, loc_1C7308
1C72FA:  STRB.W          R2, [R0],#1
1C72FE:  ADDS            R1, #1
1C7300:  ADDS            R3, #1
1C7302:  STR             R3, [SP,#0x48+var_44]
1C7304:  CMP             R1, #0x1E
1C7306:  BLT             loc_1C72D8
1C7308:  MOVS            R5, #0
1C730A:  STRB            R5, [R0]
1C730C:  BLX             j__Z25RwTexDictionaryGetCurrentv; RwTexDictionaryGetCurrent(void)
1C7310:  MOV             R4, R0
1C7312:  CMP             R4, #0
1C7314:  STR             R5, [R6]
1C7316:  BEQ             loc_1C732E
1C7318:  ADD             R1, SP, #0x48+var_40
1C731A:  MOV             R0, R4
1C731C:  BLX             j__Z31RwTexDictionaryFindNamedTextureP15RwTexDictionaryPKc; RwTexDictionaryFindNamedTexture(RwTexDictionary *,char const*)
1C7320:  CMP             R0, #0
1C7322:  STR             R0, [R6]
1C7324:  BEQ             loc_1C732E
1C7326:  LDR             R1, [R0,#0x54]
1C7328:  ADDS            R1, #1
1C732A:  STR             R1, [R0,#0x54]
1C732C:  B               loc_1C7346
1C732E:  MOV             R0, R10
1C7330:  MOV             R1, R11
1C7332:  BLX             j__Z27_rpMatFXSetupBumpMapTexturePK9RwTextureS1_; _rpMatFXSetupBumpMapTexture(RwTexture const*,RwTexture const*)
1C7336:  MOV             R1, R0
1C7338:  CMP             R1, #0
1C733A:  STR             R1, [R6]
1C733C:  BEQ             loc_1C737A
1C733E:  CBZ             R4, loc_1C7346
1C7340:  MOV             R0, R4
1C7342:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
1C7346:  LDR             R0, [R6]
1C7348:  LDR             R0, [R0]
1C734A:  VMOV.F32        S2, #1.0
1C734E:  VLDR            S0, [R0,#0xC]
1C7352:  VCVT.F32.S32    S0, S0
1C7356:  VDIV.F32        S0, S2, S0
1C735A:  VSTR            S0, [R9,#0x10]
1C735E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C7366)
1C7360:  LDR             R1, [SP,#0x48+var_20]
1C7362:  ADD             R0, PC; __stack_chk_guard_ptr
1C7364:  LDR             R0, [R0]; __stack_chk_guard
1C7366:  LDR             R0, [R0]
1C7368:  SUBS            R0, R0, R1
1C736A:  ITTTT EQ
1C736C:  MOVEQ           R0, R8
1C736E:  ADDEQ           SP, SP, #0x2C ; ','
1C7370:  POPEQ.W         {R8-R11}
1C7374:  POPEQ           {R4-R7,PC}
1C7376:  BLX             __stack_chk_fail
1C737A:  MOV.W           R8, #0
1C737E:  B               loc_1C735E
