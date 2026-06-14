; =========================================================
; Game Engine Function: _Z16BuildPixelSourcej
; Address            : 0x1CE158 - 0x1CE814
; =========================================================

1CE158:  PUSH            {R4-R7,LR}
1CE15A:  ADD             R7, SP, #0xC
1CE15C:  PUSH.W          {R8-R11}
1CE160:  SUB.W           SP, SP, #0x214
1CE164:  MOV             R4, R0
1CE166:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1CE16E)
1CE16A:  ADD             R0, PC; __stack_chk_guard_ptr
1CE16C:  LDR             R0, [R0]; __stack_chk_guard
1CE16E:  LDR             R0, [R0]
1CE170:  STR             R0, [SP,#0x230+var_20]
1CE172:  BLX             j__Z13OS_SystemChipv; OS_SystemChip(void)
1CE176:  ADD             R6, SP, #0x230+var_220
1CE178:  ADR.W           R2, aPrecisionMediu; "precision mediump float;"
1CE17C:  STR             R0, [SP,#0x230+var_230]
1CE17E:  MOV.W           R1, #0x200
1CE182:  MOV             R0, R6
1CE184:  BL.W            sub_5E6B74
1CE188:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE192)
1CE18C:  MOV             R1, R6; src
1CE18E:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE190:  BLX             strcat
1CE194:  ANDS.W          R0, R4, #0x20 ; ' '
1CE198:  STR             R0, [SP,#0x230+var_224]
1CE19A:  BEQ             loc_1CE1D4
1CE19C:  ADD             R6, SP, #0x230+var_220
1CE19E:  ADR.W           R2, aUniformSampler; "uniform sampler2D Diffuse;"
1CE1A2:  MOV.W           R1, #0x200
1CE1A6:  MOV             R0, R6
1CE1A8:  BL.W            sub_5E6B74
1CE1AC:  LDR.W           R5, =(byte_6B8BE8 - 0x1CE1B6)
1CE1B0:  MOV             R1, R6; src
1CE1B2:  ADD             R5, PC; byte_6B8BE8
1CE1B4:  MOV             R0, R5; dest
1CE1B6:  BLX             strcat
1CE1BA:  LDR.W           R2, =(aVaryingMediump - 0x1CE1C8); "varying mediump vec2 Out_Tex0;"
1CE1BE:  ADD             R6, SP, #0x230+var_220
1CE1C0:  MOV.W           R1, #0x200
1CE1C4:  ADD             R2, PC; "varying mediump vec2 Out_Tex0;"
1CE1C6:  MOV             R0, R6
1CE1C8:  BL.W            sub_5E6B74
1CE1CC:  MOV             R0, R5; dest
1CE1CE:  MOV             R1, R6; src
1CE1D0:  BLX             strcat
1CE1D4:  MOV             R8, #0x1000040
1CE1DC:  TST.W           R4, R8
1CE1E0:  BEQ             loc_1CE238
1CE1E2:  ADD             R5, SP, #0x230+var_220
1CE1E4:  ADR.W           R2, aUniformSampler_0; "uniform sampler2D EnvMap;"
1CE1E8:  MOV.W           R1, #0x200
1CE1EC:  MOV             R0, R5
1CE1EE:  BL.W            sub_5E6B74
1CE1F2:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE1FC)
1CE1F6:  MOV             R1, R5; src
1CE1F8:  ADD             R6, PC; byte_6B8BE8
1CE1FA:  MOV             R0, R6; dest
1CE1FC:  BLX             strcat
1CE200:  LDR.W           R2, =(aUniformLowpFlo - 0x1CE20E); "uniform lowp float EnvMapCoefficient;"
1CE204:  ADD             R5, SP, #0x230+var_220
1CE206:  MOV.W           R1, #0x200
1CE20A:  ADD             R2, PC; "uniform lowp float EnvMapCoefficient;"
1CE20C:  MOV             R0, R5
1CE20E:  BL.W            sub_5E6B74
1CE212:  MOV             R0, R6; dest
1CE214:  MOV             R1, R5; src
1CE216:  BLX             strcat
1CE21A:  LSLS            R0, R4, #0x19
1CE21C:  BMI             loc_1CE26E
1CE21E:  LDR.W           R2, =(aVaryingMediump_0 - 0x1CE22C); "varying mediump vec3 Out_Refl;"
1CE222:  ADD             R5, SP, #0x230+var_220
1CE224:  MOV.W           R1, #0x200
1CE228:  ADD             R2, PC; "varying mediump vec3 Out_Refl;"
1CE22A:  MOV             R0, R5
1CE22C:  BL.W            sub_5E6B74
1CE230:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE238)
1CE234:  ADD             R0, PC; byte_6B8BE8
1CE236:  B               loc_1CE286
1CE238:  LSLS            R0, R4, #0xF
1CE23A:  BPL             loc_1CE28C
1CE23C:  ADD             R5, SP, #0x230+var_220
1CE23E:  ADR.W           R2, aUniformSampler_0; "uniform sampler2D EnvMap;"
1CE242:  MOV.W           R1, #0x200
1CE246:  MOV             R0, R5
1CE248:  BL.W            sub_5E6B74
1CE24C:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE256)
1CE250:  MOV             R1, R5; src
1CE252:  ADD             R6, PC; byte_6B8BE8
1CE254:  MOV             R0, R6; dest
1CE256:  BLX             strcat
1CE25A:  ADD             R5, SP, #0x230+var_220
1CE25C:  ADR.W           R2, aUniformFloatDe; "uniform float DetailTiling;"
1CE260:  MOV.W           R1, #0x200
1CE264:  MOV             R0, R5
1CE266:  BL.W            sub_5E6B74
1CE26A:  MOV             R0, R6
1CE26C:  B               loc_1CE286
1CE26E:  LDR.W           R2, =(aVaryingMediump_1 - 0x1CE27C); "varying mediump vec2 Out_Tex1;"
1CE272:  ADD             R5, SP, #0x230+var_220
1CE274:  MOV.W           R1, #0x200
1CE278:  ADD             R2, PC; "varying mediump vec2 Out_Tex1;"
1CE27A:  MOV             R0, R5
1CE27C:  BL.W            sub_5E6B74
1CE280:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE288)
1CE284:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE286:  MOV             R1, R5; src
1CE288:  BLX             strcat
1CE28C:  ANDS.W          R0, R4, #0x400
1CE290:  STR             R0, [SP,#0x230+var_228]
1CE292:  BEQ             loc_1CE2CC
1CE294:  LDR.W           R2, =(aVaryingMediump_2 - 0x1CE2A2); "varying mediump float Out_FogAmt;"
1CE298:  ADD             R5, SP, #0x230+var_220
1CE29A:  MOV.W           R1, #0x200
1CE29E:  ADD             R2, PC; "varying mediump float Out_FogAmt;"
1CE2A0:  MOV             R0, R5
1CE2A2:  BL.W            sub_5E6B74
1CE2A6:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE2B0)
1CE2AA:  MOV             R1, R5; src
1CE2AC:  ADD             R6, PC; byte_6B8BE8
1CE2AE:  MOV             R0, R6; dest
1CE2B0:  BLX             strcat
1CE2B4:  ADD             R5, SP, #0x230+var_220
1CE2B6:  ADR.W           R2, aUniformLowpVec; "uniform lowp vec3 FogColor;"
1CE2BA:  MOV.W           R1, #0x200
1CE2BE:  MOV             R0, R5
1CE2C0:  BL.W            sub_5E6B74
1CE2C4:  MOV             R0, R6; dest
1CE2C6:  MOV             R1, R5; src
1CE2C8:  BLX             strcat
1CE2CC:  ANDS.W          R9, R4, #0x12
1CE2D0:  BEQ             loc_1CE2F0
1CE2D2:  LDR.W           R2, =(aVaryingLowpVec - 0x1CE2E0); "varying lowp vec4 Out_Color;"
1CE2D6:  ADD             R5, SP, #0x230+var_220
1CE2D8:  MOV.W           R1, #0x200
1CE2DC:  ADD             R2, PC; "varying lowp vec4 Out_Color;"
1CE2DE:  MOV             R0, R5
1CE2E0:  BL.W            sub_5E6B74
1CE2E4:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE2EE)
1CE2E8:  MOV             R1, R5; src
1CE2EA:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE2EC:  BLX             strcat
1CE2F0:  ADD.W           R0, R8, #0x180
1CE2F4:  AND.W           R10, R4, R0
1CE2F8:  ANDS.W          R0, R4, #0x2000
1CE2FC:  STR             R0, [SP,#0x230+var_22C]
1CE2FE:  IT NE
1CE300:  CMPNE.W         R10, #0
1CE304:  BEQ             loc_1CE324
1CE306:  LDR.W           R2, =(aVaryingLowpVec_0 - 0x1CE314); "varying lowp vec3 Out_Spec;"
1CE30A:  ADD             R5, SP, #0x230+var_220
1CE30C:  MOV.W           R1, #0x200
1CE310:  ADD             R2, PC; "varying lowp vec3 Out_Spec;"
1CE312:  MOV             R0, R5
1CE314:  BL.W            sub_5E6B74
1CE318:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE322)
1CE31C:  MOV             R1, R5; src
1CE31E:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE320:  BLX             strcat
1CE324:  ANDS.W          R8, R4, #4
1CE328:  BEQ             loc_1CE348
1CE32A:  LDR.W           R2, =(aUniformLowpFlo_0 - 0x1CE338); "uniform lowp float AlphaModulate;"
1CE32E:  ADD             R5, SP, #0x230+var_220
1CE330:  MOV.W           R1, #0x200
1CE334:  ADD             R2, PC; "uniform lowp float AlphaModulate;"
1CE336:  MOV             R0, R5
1CE338:  BL.W            sub_5E6B74
1CE33C:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE346)
1CE340:  MOV             R1, R5; src
1CE342:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE344:  BLX             strcat
1CE348:  ANDS.W          R11, R4, #0x80000
1CE34C:  BEQ             loc_1CE3A2
1CE34E:  LDR.W           R2, =(aVaryingMediump_3 - 0x1CE35C); "varying mediump vec2 Out_WaterDetail;"
1CE352:  ADD             R5, SP, #0x230+var_220
1CE354:  MOV.W           R1, #0x200
1CE358:  ADD             R2, PC; "varying mediump vec2 Out_WaterDetail;"
1CE35A:  MOV             R0, R5
1CE35C:  BL.W            sub_5E6B74
1CE360:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE36A)
1CE364:  MOV             R1, R5; src
1CE366:  ADD             R6, PC; byte_6B8BE8
1CE368:  MOV             R0, R6; dest
1CE36A:  BLX             strcat
1CE36E:  LDR.W           R2, =(aVaryingMediump_4 - 0x1CE37C); "varying mediump vec2 Out_WaterDetail2;"
1CE372:  ADD             R5, SP, #0x230+var_220
1CE374:  MOV.W           R1, #0x200
1CE378:  ADD             R2, PC; "varying mediump vec2 Out_WaterDetail2;"
1CE37A:  MOV             R0, R5
1CE37C:  BL.W            sub_5E6B74
1CE380:  MOV             R0, R6; dest
1CE382:  MOV             R1, R5; src
1CE384:  BLX             strcat
1CE388:  LDR.W           R2, =(aVaryingMediump_5 - 0x1CE396); "varying mediump float Out_WaterAlphaBle"...
1CE38C:  ADD             R5, SP, #0x230+var_220
1CE38E:  MOV.W           R1, #0x200
1CE392:  ADD             R2, PC; "varying mediump float Out_WaterAlphaBle"...
1CE394:  MOV             R0, R5
1CE396:  BL.W            sub_5E6B74
1CE39A:  MOV             R0, R6; dest
1CE39C:  MOV             R1, R5; src
1CE39E:  BLX             strcat
1CE3A2:  LDR.W           R2, =(aVoidMain - 0x1CE3B0); "void main()"
1CE3A6:  ADD             R5, SP, #0x230+var_220
1CE3A8:  MOV.W           R1, #0x200
1CE3AC:  ADD             R2, PC; "void main()"
1CE3AE:  MOV             R0, R5
1CE3B0:  BL.W            sub_5E6B74
1CE3B4:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE3BE)
1CE3B8:  MOV             R1, R5; src
1CE3BA:  ADD             R6, PC; byte_6B8BE8
1CE3BC:  MOV             R0, R6; dest
1CE3BE:  BLX             strcat
1CE3C2:  ADD             R5, SP, #0x230+var_220
1CE3C4:  ADR.W           R2, dword_1CE904
1CE3C8:  MOV.W           R1, #0x200
1CE3CC:  MOV             R0, R5
1CE3CE:  BL.W            sub_5E6B74
1CE3D2:  MOV             R0, R6; dest
1CE3D4:  MOV             R1, R5; src
1CE3D6:  BLX             strcat
1CE3DA:  LDR.W           R2, =(aLowpVec4Fcolor - 0x1CE3E8); "lowp vec4 fcolor;"
1CE3DE:  ADD             R5, SP, #0x230+var_220
1CE3E0:  MOV.W           R1, #0x200
1CE3E4:  ADD             R2, PC; "lowp vec4 fcolor;"
1CE3E6:  MOV             R0, R5
1CE3E8:  BL.W            sub_5E6B74
1CE3EC:  MOV             R0, R6; dest
1CE3EE:  MOV             R1, R5; src
1CE3F0:  BLX             strcat
1CE3F4:  LDR             R0, [SP,#0x230+var_224]
1CE3F6:  CMP             R0, #0
1CE3F8:  BEQ             loc_1CE426
1CE3FA:  LSLS            R0, R4, #0x14
1CE3FC:  BMI             loc_1CE446
1CE3FE:  LDR.W           R0, =(RQCaps_ptr - 0x1CE406)
1CE402:  ADD             R0, PC; RQCaps_ptr
1CE404:  LDR             R0, [R0]; RQCaps
1CE406:  LDRB            R0, [R0,#(byte_6B8BAA - 0x6B8B9C)]
1CE408:  CMP             R0, #0
1CE40A:  BEQ             loc_1CE49E
1CE40C:  LDR.W           R2, =(aLowpVec4Diffus - 0x1CE41A); "lowp vec4 diffuseColor = texture2D(Diff"...
1CE410:  ADD             R5, SP, #0x230+var_220
1CE412:  MOV.W           R1, #0x200
1CE416:  ADD             R2, PC; "lowp vec4 diffuseColor = texture2D(Diff"...
1CE418:  MOV             R0, R5
1CE41A:  BL.W            sub_5E6B74
1CE41E:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE426)
1CE422:  ADD             R0, PC; byte_6B8BE8
1CE424:  B               loc_1CE4B6
1CE426:  CMP.W           R9, #0
1CE42A:  BEQ             loc_1CE460
1CE42C:  LDR.W           R2, =(aFcolorOutColor - 0x1CE43A); "fcolor = Out_Color;"
1CE430:  ADD             R5, SP, #0x230+var_220
1CE432:  MOV.W           R1, #0x200
1CE436:  ADD             R2, PC; "fcolor = Out_Color;"
1CE438:  MOV             R0, R5
1CE43A:  BL.W            sub_5E6B74
1CE43E:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE446)
1CE442:  ADD             R0, PC; byte_6B8BE8
1CE444:  B               loc_1CE478
1CE446:  LDR.W           R2, =(aLowpVec4Diffus_0 - 0x1CE454); "lowp vec4 diffuseColor = texture2D(Diff"...
1CE44A:  ADD             R5, SP, #0x230+var_220
1CE44C:  MOV.W           R1, #0x200
1CE450:  ADD             R2, PC; "lowp vec4 diffuseColor = texture2D(Diff"...
1CE452:  MOV             R0, R5
1CE454:  BL.W            sub_5E6B74
1CE458:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE460)
1CE45C:  ADD             R0, PC; byte_6B8BE8
1CE45E:  B               loc_1CE4B6
1CE460:  LDR.W           R2, =(aFcolor00 - 0x1CE46E); "fcolor = 0.0;"
1CE464:  ADD             R5, SP, #0x230+var_220
1CE466:  MOV.W           R1, #0x200
1CE46A:  ADD             R2, PC; "fcolor = 0.0;"
1CE46C:  MOV             R0, R5
1CE46E:  BL.W            sub_5E6B74
1CE472:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE47A)
1CE476:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE478:  MOV             R1, R5; src
1CE47A:  BLX             strcat
1CE47E:  LSLS            R0, R4, #0x19
1CE480:  BPL.W           loc_1CE5A8
1CE484:  LDR.W           R2, =(aFcolorXyzMixFc - 0x1CE492); "fcolor.xyz = mix(fcolor.xyz, texture2D("...
1CE488:  ADD             R5, SP, #0x230+var_220
1CE48A:  MOV.W           R1, #0x200
1CE48E:  ADD             R2, PC; "fcolor.xyz = mix(fcolor.xyz, texture2D("...
1CE490:  MOV             R0, R5
1CE492:  BL.W            sub_5E6B74
1CE496:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE49E)
1CE49A:  ADD             R0, PC; byte_6B8BE8
1CE49C:  B               loc_1CE5A2
1CE49E:  LDR.W           R2, =(aLowpVec4Diffus_1 - 0x1CE4AC); "lowp vec4 diffuseColor = texture2D(Diff"...
1CE4A2:  ADD             R5, SP, #0x230+var_220
1CE4A4:  MOV.W           R1, #0x200
1CE4A8:  ADD             R2, PC; "lowp vec4 diffuseColor = texture2D(Diff"...
1CE4AA:  MOV             R0, R5
1CE4AC:  BL.W            sub_5E6B74
1CE4B0:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE4B8)
1CE4B4:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE4B6:  MOV             R1, R5; src
1CE4B8:  BLX             strcat
1CE4BC:  LDR.W           R2, =(aFcolorDiffusec - 0x1CE4CA); "fcolor = diffuseColor;"
1CE4C0:  ADD             R5, SP, #0x230+var_220
1CE4C2:  MOV.W           R1, #0x200
1CE4C6:  ADD             R2, PC; "fcolor = diffuseColor;"
1CE4C8:  MOV             R0, R5
1CE4CA:  BL.W            sub_5E6B74
1CE4CE:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE4D8)
1CE4D2:  MOV             R1, R5; src
1CE4D4:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE4D6:  BLX             strcat
1CE4DA:  CMP.W           R9, #0
1CE4DE:  BEQ             loc_1CE502
1CE4E0:  LSLS            R0, R4, #0xF
1CE4E2:  BMI             loc_1CE50E
1CE4E4:  LDR.W           R2, =(aFcolorOutColor_0 - 0x1CE4F2); "fcolor *= Out_Color;"
1CE4E8:  ADD             R5, SP, #0x230+var_220
1CE4EA:  MOV.W           R1, #0x200
1CE4EE:  ADD             R2, PC; "fcolor *= Out_Color;"
1CE4F0:  MOV             R0, R5
1CE4F2:  BL.W            sub_5E6B74
1CE4F6:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE500)
1CE4FA:  MOV             R1, R5; src
1CE4FC:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE4FE:  BLX             strcat
1CE502:  CMP.W           R11, #0
1CE506:  BNE             loc_1CE54E
1CE508:  LSLS            R0, R4, #0x19
1CE50A:  BMI             loc_1CE58A
1CE50C:  B               loc_1CE5A8
1CE50E:  CMP.W           R11, #0
1CE512:  BEQ             loc_1CE568
1CE514:  LDR.W           R2, =(aFloatWaterdeta - 0x1CE522); "float waterDetail = texture2D(EnvMap, O"...
1CE518:  ADD             R5, SP, #0x230+var_220
1CE51A:  MOV.W           R1, #0x200
1CE51E:  ADD             R2, PC; "float waterDetail = texture2D(EnvMap, O"...
1CE520:  MOV             R0, R5
1CE522:  BL.W            sub_5E6B74
1CE526:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE530)
1CE52A:  MOV             R1, R5; src
1CE52C:  ADD             R6, PC; byte_6B8BE8
1CE52E:  MOV             R0, R6; dest
1CE530:  BLX             strcat
1CE534:  LDR.W           R2, =(aFcolorVec4OutC - 0x1CE542); "fcolor *= vec4(Out_Color.xyz * waterDet"...
1CE538:  ADD             R5, SP, #0x230+var_220
1CE53A:  MOV.W           R1, #0x200
1CE53E:  ADD             R2, PC; "fcolor *= vec4(Out_Color.xyz * waterDet"...
1CE540:  MOV             R0, R5
1CE542:  BL.W            sub_5E6B74
1CE546:  MOV             R0, R6; dest
1CE548:  MOV             R1, R5; src
1CE54A:  BLX             strcat
1CE54E:  LDR.W           R2, =(aFcolorAOutWate - 0x1CE55C); "fcolor.a += Out_WaterAlphaBlend;"
1CE552:  ADD             R5, SP, #0x230+var_220
1CE554:  MOV.W           R1, #0x200
1CE558:  ADD             R2, PC; "fcolor.a += Out_WaterAlphaBlend;"
1CE55A:  MOV             R0, R5
1CE55C:  BL.W            sub_5E6B74
1CE560:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE568)
1CE564:  ADD             R0, PC; byte_6B8BE8
1CE566:  B               loc_1CE580
1CE568:  LDR.W           R2, =(aFcolorVec4OutC_0 - 0x1CE576); "fcolor *= vec4(Out_Color.xyz * texture2"...
1CE56C:  ADD             R5, SP, #0x230+var_220
1CE56E:  MOV.W           R1, #0x200
1CE572:  ADD             R2, PC; "fcolor *= vec4(Out_Color.xyz * texture2"...
1CE574:  MOV             R0, R5
1CE576:  BL.W            sub_5E6B74
1CE57A:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE582)
1CE57E:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE580:  MOV             R1, R5; src
1CE582:  BLX             strcat
1CE586:  LSLS            R0, R4, #0x19
1CE588:  BPL             loc_1CE5A8
1CE58A:  LDR.W           R2, =(aFcolorXyzMixFc - 0x1CE598); "fcolor.xyz = mix(fcolor.xyz, texture2D("...
1CE58E:  ADD             R5, SP, #0x230+var_220
1CE590:  MOV.W           R1, #0x200
1CE594:  ADD             R2, PC; "fcolor.xyz = mix(fcolor.xyz, texture2D("...
1CE596:  MOV             R0, R5
1CE598:  BL.W            sub_5E6B74
1CE59C:  LDR.W           R0, =(byte_6B8BE8 - 0x1CE5A4)
1CE5A0:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE5A2:  MOV             R1, R5; src
1CE5A4:  BLX             strcat
1CE5A8:  LSLS            R0, R4, #7
1CE5AA:  BPL             loc_1CE630
1CE5AC:  LDR.W           R2, =(aVec2ReflposNor - 0x1CE5BA); "vec2 ReflPos = normalize(Out_Refl.xy) *"...
1CE5B0:  ADD             R5, SP, #0x230+var_220
1CE5B2:  MOV.W           R1, #0x200
1CE5B6:  ADD             R2, PC; "vec2 ReflPos = normalize(Out_Refl.xy) *"...
1CE5B8:  MOV             R0, R5
1CE5BA:  BL.W            sub_5E6B74
1CE5BE:  LDR.W           R6, =(byte_6B8BE8 - 0x1CE5C8)
1CE5C2:  MOV             R1, R5; src
1CE5C4:  ADD             R6, PC; byte_6B8BE8
1CE5C6:  MOV             R0, R6; dest
1CE5C8:  BLX             strcat
1CE5CC:  LDR.W           R2, =(aReflposReflpos - 0x1CE5DA); "ReflPos = (ReflPos * vec2(0.5,0.5)) + v"...
1CE5D0:  ADD             R5, SP, #0x230+var_220
1CE5D2:  MOV.W           R1, #0x200
1CE5D6:  ADD             R2, PC; "ReflPos = (ReflPos * vec2(0.5,0.5)) + v"...
1CE5D8:  MOV             R0, R5
1CE5DA:  BL.W            sub_5E6B74
1CE5DE:  MOV             R0, R6; dest
1CE5E0:  MOV             R1, R5; src
1CE5E2:  BLX             strcat
1CE5E6:  LDR.W           R2, =(aLowpVec4Reflte - 0x1CE5F4); "lowp vec4 ReflTexture =  texture2D(EnvM"...
1CE5EA:  ADD             R5, SP, #0x230+var_220
1CE5EC:  MOV.W           R1, #0x200
1CE5F0:  ADD             R2, PC; "lowp vec4 ReflTexture =  texture2D(EnvM"...
1CE5F2:  MOV             R0, R5
1CE5F4:  BL.W            sub_5E6B74
1CE5F8:  MOV             R0, R6; dest
1CE5FA:  MOV             R1, R5; src
1CE5FC:  BLX             strcat
1CE600:  LDR             R2, =(aFcolorXyzMixFc_0 - 0x1CE60C); "fcolor.xyz = mix(fcolor.xyz,ReflTexture"...
1CE602:  ADD             R5, SP, #0x230+var_220
1CE604:  MOV.W           R1, #0x200
1CE608:  ADD             R2, PC; "fcolor.xyz = mix(fcolor.xyz,ReflTexture"...
1CE60A:  MOV             R0, R5
1CE60C:  BL.W            sub_5E6B74
1CE610:  MOV             R0, R6; dest
1CE612:  MOV             R1, R5; src
1CE614:  BLX             strcat
1CE618:  LDR             R2, =(aFcolorWRefltex - 0x1CE624); "fcolor.w += ReflTexture.b * 0.125;"
1CE61A:  ADD             R5, SP, #0x230+var_220
1CE61C:  MOV.W           R1, #0x200
1CE620:  ADD             R2, PC; "fcolor.w += ReflTexture.b * 0.125;"
1CE622:  MOV             R0, R5
1CE624:  BL.W            sub_5E6B74
1CE628:  MOV             R0, R6; dest
1CE62A:  MOV             R1, R5; src
1CE62C:  BLX             strcat
1CE630:  LDR             R0, =(RQCaps_ptr - 0x1CE63A)
1CE632:  CMP.W           R10, #0
1CE636:  ADD             R0, PC; RQCaps_ptr
1CE638:  LDR             R0, [R0]; RQCaps
1CE63A:  LDRB            R0, [R0,#(byte_6B8BA4 - 0x6B8B9C)]
1CE63C:  ITT NE
1CE63E:  LDRNE           R1, [SP,#0x230+var_22C]
1CE640:  CMPNE           R1, #0
1CE642:  BEQ             loc_1CE668
1CE644:  CBNZ            R0, loc_1CE668
1CE646:  LDR             R2, =(aFcolorXyzOutSp - 0x1CE652); "fcolor.xyz += Out_Spec;"
1CE648:  ADD             R5, SP, #0x230+var_220
1CE64A:  MOV.W           R1, #0x200
1CE64E:  ADD             R2, PC; "fcolor.xyz += Out_Spec;"
1CE650:  MOV             R0, R5
1CE652:  BL.W            sub_5E6B74
1CE656:  LDR             R0, =(byte_6B8BE8 - 0x1CE65E)
1CE658:  MOV             R1, R5; src
1CE65A:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE65C:  BLX             strcat
1CE660:  LDR             R0, =(RQCaps_ptr - 0x1CE666)
1CE662:  ADD             R0, PC; RQCaps_ptr
1CE664:  LDR             R0, [R0]; RQCaps
1CE666:  LDRB            R0, [R0,#(byte_6B8BA4 - 0x6B8B9C)]
1CE668:  CBNZ            R0, loc_1CE688
1CE66A:  LDR             R0, [SP,#0x230+var_228]
1CE66C:  CBZ             R0, loc_1CE688
1CE66E:  LDR             R2, =(aFcolorXyzMixFc_1 - 0x1CE67A); "fcolor.xyz = mix(fcolor.xyz, FogColor, "...
1CE670:  ADD             R5, SP, #0x230+var_220
1CE672:  MOV.W           R1, #0x200
1CE676:  ADD             R2, PC; "fcolor.xyz = mix(fcolor.xyz, FogColor, "...
1CE678:  MOV             R0, R5
1CE67A:  BL.W            sub_5E6B74
1CE67E:  LDR             R0, =(byte_6B8BE8 - 0x1CE686)
1CE680:  MOV             R1, R5; src
1CE682:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE684:  BLX             strcat
1CE688:  LSLS            R0, R4, #5
1CE68A:  BPL             loc_1CE6A6
1CE68C:  LDR             R2, =(aFcolorXyzFcolo - 0x1CE698); "fcolor.xyz += fcolor.xyz * 0.5;"
1CE68E:  ADD             R5, SP, #0x230+var_220
1CE690:  MOV.W           R1, #0x200
1CE694:  ADD             R2, PC; "fcolor.xyz += fcolor.xyz * 0.5;"
1CE696:  MOV             R0, R5
1CE698:  BL.W            sub_5E6B74
1CE69C:  LDR             R0, =(byte_6B8BE8 - 0x1CE6A4)
1CE69E:  MOV             R1, R5; src
1CE6A0:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE6A2:  BLX             strcat
1CE6A6:  LDR             R2, =(aGlFragcolorFco - 0x1CE6B2); "gl_FragColor = fcolor;"
1CE6A8:  ADD             R5, SP, #0x230+var_220
1CE6AA:  MOV.W           R1, #0x200
1CE6AE:  ADD             R2, PC; "gl_FragColor = fcolor;"
1CE6B0:  MOV             R0, R5
1CE6B2:  BL.W            sub_5E6B74
1CE6B6:  LDR             R0, =(byte_6B8BE8 - 0x1CE6BE)
1CE6B8:  MOV             R1, R5; src
1CE6BA:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE6BC:  BLX             strcat
1CE6C0:  LSLS            R0, R4, #0x1F
1CE6C2:  BEQ             loc_1CE7C0
1CE6C4:  LDR             R2, =(aAtbegin_1 - 0x1CE6D0); "/*ATBEGIN*/"
1CE6C6:  ADD             R5, SP, #0x230+var_220
1CE6C8:  MOV.W           R1, #0x200
1CE6CC:  ADD             R2, PC; "/*ATBEGIN*/"
1CE6CE:  MOV             R0, R5
1CE6D0:  BL.W            sub_5E6B74
1CE6D4:  LDR             R0, =(byte_6B8BE8 - 0x1CE6DC)
1CE6D6:  MOV             R1, R5; src
1CE6D8:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE6DA:  BLX             strcat
1CE6DE:  LDR             R1, [SP,#0x230+var_230]
1CE6E0:  AND.W           R0, R4, #0x800
1CE6E4:  CMP             R1, #0xD
1CE6E6:  BNE             loc_1CE708
1CE6E8:  LDR             R1, [SP,#0x230+var_224]
1CE6EA:  CBZ             R1, loc_1CE708
1CE6EC:  CBNZ            R0, loc_1CE73A
1CE6EE:  LSLS            R0, R4, #0x16
1CE6F0:  BMI             loc_1CE772
1CE6F2:  LDR             R2, =(aIfDiffusecolor - 0x1CE6FE); "if (diffuseColor.a < 0.2) { discard; }"
1CE6F4:  ADD             R4, SP, #0x230+var_220
1CE6F6:  MOV.W           R1, #0x200
1CE6FA:  ADD             R2, PC; "if (diffuseColor.a < 0.2) { discard; }"
1CE6FC:  MOV             R0, R4
1CE6FE:  BL.W            sub_5E6B74
1CE702:  LDR             R0, =(byte_6B8BE8 - 0x1CE708)
1CE704:  ADD             R0, PC; byte_6B8BE8
1CE706:  B               loc_1CE7A0
1CE708:  CBNZ            R0, loc_1CE724
1CE70A:  LSLS            R0, R4, #0x16
1CE70C:  BMI             loc_1CE750
1CE70E:  LDR             R2, =(aIfGlFragcolorA - 0x1CE71A); "if (gl_FragColor.a < 0.2) { discard; }"
1CE710:  ADD             R4, SP, #0x230+var_220
1CE712:  MOV.W           R1, #0x200
1CE716:  ADD             R2, PC; "if (gl_FragColor.a < 0.2) { discard; }"
1CE718:  MOV             R0, R4
1CE71A:  BL.W            sub_5E6B74
1CE71E:  LDR             R0, =(byte_6B8BE8 - 0x1CE724)
1CE720:  ADD             R0, PC; byte_6B8BE8
1CE722:  B               loc_1CE7A0
1CE724:  LDR             R2, =(aIfGlFragcolorA_0 - 0x1CE730); "if (gl_FragColor.a < 0.8) { discard; }"
1CE726:  ADD             R4, SP, #0x230+var_220
1CE728:  MOV.W           R1, #0x200
1CE72C:  ADD             R2, PC; "if (gl_FragColor.a < 0.8) { discard; }"
1CE72E:  MOV             R0, R4
1CE730:  BL.W            sub_5E6B74
1CE734:  LDR             R0, =(byte_6B8BE8 - 0x1CE73A)
1CE736:  ADD             R0, PC; byte_6B8BE8
1CE738:  B               loc_1CE7A0
1CE73A:  LDR             R2, =(aIfDiffusecolor_0 - 0x1CE746); "if (diffuseColor.a < 0.8) { discard; }"
1CE73C:  ADD             R4, SP, #0x230+var_220
1CE73E:  MOV.W           R1, #0x200
1CE742:  ADD             R2, PC; "if (diffuseColor.a < 0.8) { discard; }"
1CE744:  MOV             R0, R4
1CE746:  BL.W            sub_5E6B74
1CE74A:  LDR             R0, =(byte_6B8BE8 - 0x1CE750)
1CE74C:  ADD             R0, PC; byte_6B8BE8
1CE74E:  B               loc_1CE7A0
1CE750:  LDR             R2, =(aIfGlFragcolorA_1 - 0x1CE75C); "if (gl_FragColor.a < 0.5) { discard; }"
1CE752:  ADD             R4, SP, #0x230+var_220
1CE754:  MOV.W           R1, #0x200
1CE758:  ADD             R2, PC; "if (gl_FragColor.a < 0.5) { discard; }"
1CE75A:  MOV             R0, R4
1CE75C:  BL.W            sub_5E6B74
1CE760:  LDR             R5, =(byte_6B8BE8 - 0x1CE768)
1CE762:  MOV             R1, R4; src
1CE764:  ADD             R5, PC; byte_6B8BE8
1CE766:  MOV             R0, R5; dest
1CE768:  BLX             strcat
1CE76C:  LDR             R2, =(aGlFragcolorAOu - 0x1CE772); "gl_FragColor.a = Out_Color.a;"
1CE76E:  ADD             R2, PC; "gl_FragColor.a = Out_Color.a;"
1CE770:  B               loc_1CE792
1CE772:  LDR             R2, =(aGlFragcolorAOu - 0x1CE77E); "gl_FragColor.a = Out_Color.a;"
1CE774:  ADD             R4, SP, #0x230+var_220
1CE776:  MOV.W           R1, #0x200
1CE77A:  ADD             R2, PC; "gl_FragColor.a = Out_Color.a;"
1CE77C:  MOV             R0, R4
1CE77E:  BL.W            sub_5E6B74
1CE782:  LDR             R5, =(byte_6B8BE8 - 0x1CE78A)
1CE784:  MOV             R1, R4; src
1CE786:  ADD             R5, PC; byte_6B8BE8
1CE788:  MOV             R0, R5; dest
1CE78A:  BLX             strcat
1CE78E:  LDR             R2, =(aIfDiffusecolor_1 - 0x1CE794); "if (diffuseColor.a < 0.5) { discard; }"
1CE790:  ADD             R2, PC; "if (diffuseColor.a < 0.5) { discard; }"
1CE792:  ADD             R4, SP, #0x230+var_220
1CE794:  MOV.W           R1, #0x200
1CE798:  MOV             R0, R4
1CE79A:  BL.W            sub_5E6B74
1CE79E:  MOV             R0, R5; dest
1CE7A0:  MOV             R1, R4; src
1CE7A2:  BLX             strcat
1CE7A6:  LDR             R2, =(aAtend_1 - 0x1CE7B2); "/*ATEND*/"
1CE7A8:  ADD             R4, SP, #0x230+var_220
1CE7AA:  MOV.W           R1, #0x200
1CE7AE:  ADD             R2, PC; "/*ATEND*/"
1CE7B0:  MOV             R0, R4
1CE7B2:  BL.W            sub_5E6B74
1CE7B6:  LDR             R0, =(byte_6B8BE8 - 0x1CE7BE)
1CE7B8:  MOV             R1, R4; src
1CE7BA:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE7BC:  BLX             strcat
1CE7C0:  CMP.W           R8, #0
1CE7C4:  BEQ             loc_1CE7E0
1CE7C6:  LDR             R2, =(aGlFragcolorAAl - 0x1CE7D2); "gl_FragColor.a *= AlphaModulate;"
1CE7C8:  ADD             R4, SP, #0x230+var_220
1CE7CA:  MOV.W           R1, #0x200
1CE7CE:  ADD             R2, PC; "gl_FragColor.a *= AlphaModulate;"
1CE7D0:  MOV             R0, R4
1CE7D2:  BL.W            sub_5E6B74
1CE7D6:  LDR             R0, =(byte_6B8BE8 - 0x1CE7DE)
1CE7D8:  MOV             R1, R4; src
1CE7DA:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE7DC:  BLX             strcat
1CE7E0:  ADD             R4, SP, #0x230+var_220
1CE7E2:  ADR             R2, dword_1CEA04
1CE7E4:  MOV.W           R1, #0x200
1CE7E8:  MOV             R0, R4
1CE7EA:  BL.W            sub_5E6B74
1CE7EE:  LDR             R0, =(byte_6B8BE8 - 0x1CE7F6)
1CE7F0:  MOV             R1, R4; src
1CE7F2:  ADD             R0, PC; byte_6B8BE8 ; dest
1CE7F4:  BLX             strcat
1CE7F8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CE800)
1CE7FA:  LDR             R1, [SP,#0x230+var_20]
1CE7FC:  ADD             R0, PC; __stack_chk_guard_ptr
1CE7FE:  LDR             R0, [R0]; __stack_chk_guard
1CE800:  LDR             R0, [R0]
1CE802:  SUBS            R0, R0, R1
1CE804:  ITTT EQ
1CE806:  ADDEQ.W         SP, SP, #0x214
1CE80A:  POPEQ.W         {R8-R11}
1CE80E:  POPEQ           {R4-R7,PC}
1CE810:  BLX             __stack_chk_fail
