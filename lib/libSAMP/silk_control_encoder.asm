; =========================================================
; Game Engine Function: silk_control_encoder
; Address            : 0x1A81A8 - 0x1A87C0
; =========================================================

1A81A8:  PUSH            {R4-R7,LR}
1A81AA:  ADD             R7, SP, #0xC
1A81AC:  PUSH.W          {R8-R11}
1A81B0:  SUB             SP, SP, #0xC
1A81B2:  MOV             R8, R1
1A81B4:  MOV             R4, R0
1A81B6:  MOVW            R0, #0x17BC
1A81BA:  LDR.W           R1, [R8,#0x30]
1A81BE:  LDR             R5, [R7,#arg_0]
1A81C0:  MOVW            R6, #0x11D4
1A81C4:  STR             R1, [R4,R0]
1A81C6:  MOVW            R1, #0x1244
1A81CA:  MOVW            R10, #0x123C
1A81CE:  LDR.W           R0, [R8,#0x34]
1A81D2:  STR             R0, [R4,R1]
1A81D4:  MOVW            R1, #0x11CC
1A81D8:  LDR.W           R0, [R8,#8]
1A81DC:  STR             R0, [R4,R1]
1A81DE:  LDR.W           R1, [R8,#0xC]
1A81E2:  STR             R1, [R4,R6]
1A81E4:  MOVW            R6, #0x11D8
1A81E8:  LDR.W           R1, [R8,#0x10]
1A81EC:  STR             R1, [R4,R6]
1A81EE:  MOVW            R6, #0x11DC
1A81F2:  LDR.W           R1, [R8,#0x14]
1A81F6:  STR             R1, [R4,R6]
1A81F8:  MOVW            R6, #0x17C8
1A81FC:  LDR.W           R1, [R8,#0x28]
1A8200:  STR             R1, [R4,R6]
1A8202:  MOVW            R6, #0x1678
1A8206:  LDR.W           R1, [R8]
1A820A:  STR             R1, [R4,R6]
1A820C:  MOVW            R1, #0x11B8
1A8210:  LDR.W           R6, [R8,#4]
1A8214:  STR             R2, [R4,R1]
1A8216:  MOVW            R1, #0x167C
1A821A:  STR             R6, [R4,R1]
1A821C:  MOV.W           R1, #0x1680
1A8220:  STR             R3, [R4,R1]
1A8222:  LDR.W           R1, [R4,R10]
1A8226:  CBZ             R1, loc_1A8232
1A8228:  MOVW            R1, #0x1248
1A822C:  LDR             R1, [R4,R1]
1A822E:  CMP             R1, #0
1A8230:  BEQ             loc_1A82E2
1A8232:  MOV             R0, R4
1A8234:  MOV             R1, R8
1A8236:  BLX             j_silk_control_audio_bandwidth
1A823A:  MOV             R6, R0
1A823C:  CMP             R5, #0
1A823E:  IT NE
1A8240:  MOVNE           R6, R5
1A8242:  MOV             R0, R4
1A8244:  MOV             R1, R6
1A8246:  BL              sub_1A87F4
1A824A:  MOVW            R1, #0x1204
1A824E:  LDR.W           R12, [R8,#0x18]
1A8252:  LDR             R2, [R4,R1]
1A8254:  STR             R0, [SP,#0x28+var_24]
1A8256:  CMP             R2, R12
1A8258:  BNE             loc_1A8270
1A825A:  MOV.W           R0, #0x11E0
1A825E:  ADD.W           R11, R4, #0x11E0
1A8262:  LDR             R2, [R4,R0]
1A8264:  MOVS            R0, #0
1A8266:  STR             R0, [SP,#0x28+var_20]
1A8268:  CMP             R2, R6
1A826A:  BNE.W           loc_1A838A
1A826E:  B               loc_1A84D8
1A8270:  ADD             R1, R4
1A8272:  STR             R1, [SP,#0x28+var_28]
1A8274:  SUB.W           R1, R12, #0xA
1A8278:  MOVS            R3, #0
1A827A:  CMP             R1, #0x1E
1A827C:  BHI             loc_1A8290
1A827E:  MOVS            R2, #1
1A8280:  LSL.W           R1, R2, R1
1A8284:  MOV             R2, #0x40000401
1A828C:  TST             R1, R2
1A828E:  BNE             loc_1A829A
1A8290:  CMP.W           R12, #0x3C ; '<'
1A8294:  IT NE
1A8296:  MOVNE           R3, #0xFFFFFF99
1A829A:  CMP.W           R12, #0xA
1A829E:  STR             R3, [SP,#0x28+var_20]
1A82A0:  BGT             loc_1A830A
1A82A2:  LDR.W           R3, =(silk_pitch_contour_10_ms_iCDF_ptr - 0x1A82B4)
1A82A6:  MOV.W           R1, #0x11E0
1A82AA:  LDR.W           R9, =(silk_pitch_contour_10_ms_NB_iCDF_ptr - 0x1A82C2)
1A82AE:  SXTH            R5, R6
1A82B0:  ADD             R3, PC; silk_pitch_contour_10_ms_iCDF_ptr
1A82B2:  LDR             R2, [R4,R1]
1A82B4:  CMP.W           R12, #0xA
1A82B8:  MOV.W           R1, #1
1A82BC:  LDR             R3, [R3]; silk_pitch_contour_10_ms_iCDF
1A82BE:  ADD             R9, PC; silk_pitch_contour_10_ms_NB_iCDF_ptr
1A82C0:  RSB.W           R5, R5, R5,LSL#3
1A82C4:  IT EQ
1A82C6:  MOVEQ           R1, #2
1A82C8:  CMP             R2, #8
1A82CA:  IT EQ
1A82CC:  LDREQ.W         R3, [R9]; silk_pitch_contour_10_ms_NB_iCDF
1A82D0:  MOV.W           LR, #1
1A82D4:  SMULBB.W        R10, R12, R6
1A82D8:  ADD.W           R11, R4, #0x11E0
1A82DC:  MOV.W           R9, R5,LSL#1
1A82E0:  B               loc_1A834E
1A82E2:  MOVW            R1, #0x11D0
1A82E6:  LDR             R1, [R4,R1]
1A82E8:  CMP             R0, R1
1A82EA:  BEQ.W           loc_1A8444
1A82EE:  MOV.W           R0, #0x11E0
1A82F2:  LDR             R1, [R4,R0]
1A82F4:  CMP             R1, #1
1A82F6:  BLT.W           loc_1A8444
1A82FA:  MOV             R0, R4
1A82FC:  ADD             SP, SP, #0xC
1A82FE:  POP.W           {R8-R11}
1A8302:  POP.W           {R4-R7,LR}
1A8306:  B.W             sub_1A87F4
1A830A:  MOVW            R3, #0xCCCD
1A830E:  LDR.W           R2, =(silk_pitch_contour_iCDF_ptr - 0x1A8322)
1A8312:  MOVT            R3, #0xCCCC
1A8316:  LDR.W           LR, =(silk_pitch_contour_NB_iCDF_ptr - 0x1A832C)
1A831A:  UMULL.W         R3, R5, R12, R3
1A831E:  ADD             R2, PC; silk_pitch_contour_iCDF_ptr
1A8320:  MOV.W           R1, #0x11E0
1A8324:  LDR             R3, [R2]; silk_pitch_contour_iCDF
1A8326:  LDR             R2, [R4,R1]
1A8328:  ADD             LR, PC; silk_pitch_contour_NB_iCDF_ptr
1A832A:  SXTH            R1, R6
1A832C:  CMP             R2, #8
1A832E:  ADD.W           R11, R4, #0x11E0
1A8332:  IT EQ
1A8334:  LDREQ.W         R3, [LR]; silk_pitch_contour_NB_iCDF
1A8338:  MOV.W           LR, R5,LSR#4
1A833C:  ADD.W           R5, R1, R1,LSL#1
1A8340:  ADD.W           R1, R1, R1,LSL#2
1A8344:  MOV.W           R10, R1,LSL#2
1A8348:  MOV.W           R9, R5,LSL#3
1A834C:  MOVS            R1, #4
1A834E:  MOVW            R5, #0x11E4
1A8352:  STR             R1, [R4,R5]
1A8354:  MOVW            R1, #0x1670
1A8358:  STR.W           LR, [R4,R1]
1A835C:  MOVW            R1, #0x11E8
1A8360:  STR.W           R10, [R4,R1]
1A8364:  MOVW            R1, #0x11C4
1A8368:  MOVW            R10, #0x123C
1A836C:  STR.W           R9, [R4,R1]
1A8370:  MOVW            R1, #0x1250
1A8374:  STR             R3, [R4,R1]
1A8376:  MOVS            R1, #0
1A8378:  LDR             R0, [SP,#0x28+var_28]
1A837A:  STR.W           R12, [R0]
1A837E:  MOV.W           R0, #0x1200
1A8382:  STR             R1, [R4,R0]
1A8384:  CMP             R2, R6
1A8386:  BEQ.W           loc_1A84D8
1A838A:  MOVW            R0, #0x1C0C
1A838E:  MOVS            R5, #0
1A8390:  STR             R5, [R4,R0]
1A8392:  MOVW            R0, #0x1C08
1A8396:  MOV.W           R9, #0x1C00
1A839A:  STR             R5, [R4,R0]
1A839C:  MOVW            R0, #0x1C04
1A83A0:  MOV.W           R1, #0x1120; n
1A83A4:  STR             R5, [R4,R0]
1A83A6:  MOVW            R0, #0x166C
1A83AA:  STR             R5, [R4,R0]
1A83AC:  MOVW            R0, #0x1674
1A83B0:  STR             R5, [R4,R0]
1A83B2:  MOV.W           R0, #0x1200
1A83B6:  STR             R5, [R4,R0]
1A83B8:  ADD.W           R0, R4, #0x94; int
1A83BC:  STR.W           R5, [R4,R9]
1A83C0:  STRD.W          R5, R5, [R4,#0x10]
1A83C4:  BLX             sub_22178C
1A83C8:  MOVW            R3, #0x118C
1A83CC:  MOV.W           R2, #0x10000
1A83D0:  STR             R2, [R4,R3]
1A83D2:  MOVW            R2, #0x117C
1A83D6:  MOVS            R3, #0x64 ; 'd'
1A83D8:  LDR.W           R0, =(silk_pitch_contour_10_ms_iCDF_ptr - 0x1A83E8)
1A83DC:  MOVS            R1, #1
1A83DE:  STR             R3, [R4,R2]
1A83E0:  MOVW            R2, #0x1238
1A83E4:  ADD             R0, PC; silk_pitch_contour_10_ms_iCDF_ptr
1A83E6:  STR             R1, [R4,R2]
1A83E8:  MOV.W           R2, #0x11C0
1A83EC:  LDR.W           R1, =(silk_pitch_contour_10_ms_NB_iCDF_ptr - 0x1A83F8)
1A83F0:  STR             R3, [R4,R2]
1A83F2:  MOVS            R2, #0xA
1A83F4:  ADD             R1, PC; silk_pitch_contour_10_ms_NB_iCDF_ptr
1A83F6:  LDR.W           R12, =(silk_pitch_contour_iCDF_ptr - 0x1A8406)
1A83FA:  STRB.W          R2, [R4,R9]
1A83FE:  MOVW            R2, #0x11BD
1A8402:  ADD             R12, PC; silk_pitch_contour_iCDF_ptr
1A8404:  LDR.W           LR, =(silk_pitch_contour_NB_iCDF_ptr - 0x1A840E)
1A8408:  STRB            R5, [R4,R2]
1A840A:  ADD             LR, PC; silk_pitch_contour_NB_iCDF_ptr
1A840C:  LDR             R2, [R0]; silk_pitch_contour_10_ms_iCDF
1A840E:  MOVW            R0, #0x11E4
1A8412:  STR.W           R6, [R11]
1A8416:  LDR             R0, [R4,R0]
1A8418:  LDR             R1, [R1]; silk_pitch_contour_10_ms_NB_iCDF
1A841A:  CMP             R0, #4
1A841C:  ITT EQ
1A841E:  LDREQ.W         R1, [LR]; silk_pitch_contour_NB_iCDF
1A8422:  LDREQ.W         R2, [R12]; silk_pitch_contour_iCDF
1A8426:  CMP             R6, #8
1A8428:  IT EQ
1A842A:  MOVEQ           R2, R1
1A842C:  MOVW            R1, #0x1250
1A8430:  STR             R2, [R4,R1]
1A8432:  ORR.W           R1, R6, #4
1A8436:  CMP             R1, #0xC
1A8438:  BNE             loc_1A8448
1A843A:  LDR             R1, =(silk_NLSF_CB_NB_MB_ptr - 0x1A8440)
1A843C:  ADD             R1, PC; silk_NLSF_CB_NB_MB_ptr
1A843E:  LDR             R2, [R1]; silk_NLSF_CB_NB_MB
1A8440:  MOVS            R1, #0xA
1A8442:  B               loc_1A8450
1A8444:  MOVS            R0, #0
1A8446:  B               loc_1A864C
1A8448:  LDR             R1, =(silk_NLSF_CB_WB_ptr - 0x1A844E)
1A844A:  ADD             R1, PC; silk_NLSF_CB_WB_ptr
1A844C:  LDR             R2, [R1]; silk_NLSF_CB_WB
1A844E:  MOVS            R1, #0x10
1A8450:  MOVW            R3, #0x1254
1A8454:  CMP             R0, #4
1A8456:  STR             R2, [R4,R3]
1A8458:  MOV.W           R2, #0x1220
1A845C:  MOVW            R3, #0x11F4
1A8460:  STR             R1, [R4,R2]
1A8462:  MOVW            R2, #0x11EC
1A8466:  ADD.W           R1, R6, R6,LSL#2
1A846A:  STR             R1, [R4,R2]
1A846C:  MOV.W           R2, R6,LSL#16
1A8470:  MOV.W           R2, R2,ASR#15
1A8474:  STR             R2, [R4,R3]
1A8476:  SXTH            R3, R6
1A8478:  ADD.W           R5, R3, R3,LSL#2
1A847C:  MOV.W           R1, R1,LSL#16
1A8480:  MOV.W           R2, #0xE
1A8484:  SMULBT.W        R0, R0, R1
1A8488:  MOV.W           R1, R5,LSL#2
1A848C:  MOVW            R5, #0x11F0
1A8490:  IT EQ
1A8492:  MOVEQ           R2, #0x18
1A8494:  STR             R1, [R4,R5]
1A8496:  ADD.W           R1, R3, R3,LSL#3
1A849A:  SMULBB.W        R2, R2, R3
1A849E:  LSLS            R1, R1, #1
1A84A0:  MOVW            R3, #0x11C8
1A84A4:  STR             R1, [R4,R3]
1A84A6:  MOVW            R1, #0x11C4
1A84AA:  CMP             R6, #0x10
1A84AC:  STR             R2, [R4,R1]
1A84AE:  MOVW            R1, #0x11E8
1A84B2:  STR             R0, [R4,R1]
1A84B4:  BNE             loc_1A84C2
1A84B6:  LDR             R0, =(silk_uniform8_iCDF_ptr - 0x1A84C0)
1A84B8:  MOVW            R1, #0x124C
1A84BC:  ADD             R0, PC; silk_uniform8_iCDF_ptr
1A84BE:  LDR             R0, [R0]; silk_uniform8_iCDF
1A84C0:  B               loc_1A84D6
1A84C2:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0x1A84CC)
1A84C4:  CMP             R6, #0xC
1A84C6:  LDR             R1, =(silk_uniform6_iCDF_ptr - 0x1A84CE)
1A84C8:  ADD             R0, PC; silk_uniform4_iCDF_ptr
1A84CA:  ADD             R1, PC; silk_uniform6_iCDF_ptr
1A84CC:  LDR             R0, [R0]; silk_uniform4_iCDF
1A84CE:  IT EQ
1A84D0:  LDREQ           R0, [R1]; silk_uniform6_iCDF
1A84D2:  MOVW            R1, #0x124C
1A84D6:  STR             R0, [R4,R1]
1A84D8:  LDR.W           LR, [R8,#0x24]
1A84DC:  ADD.W           R12, R4, R10
1A84E0:  CMP.W           LR, #0
1A84E4:  BLE             loc_1A853C
1A84E6:  CMP.W           LR, #1
1A84EA:  BNE             loc_1A857E
1A84EC:  MOVW            R0, #0x122C
1A84F0:  MOVW            R1, #0xC28F
1A84F4:  STR             R1, [R4,R0]
1A84F6:  MOVW            R0, #0x1224
1A84FA:  MOVS            R1, #1
1A84FC:  STR             R1, [R4,R0]
1A84FE:  MOVW            R5, #0x1228
1A8502:  MOV.W           R10, #8
1A8506:  MOVW            R0, #0x121C
1A850A:  MOVS            R3, #0xE
1A850C:  STR.W           R10, [R4,R5]
1A8510:  STR             R3, [R4,R0]
1A8512:  MOVW            R0, #0x1214
1A8516:  MOVS            R3, #0
1A8518:  STR             R1, [R4,R0]
1A851A:  MOVW            R0, #0x1218
1A851E:  MOV.W           R1, #0x11E0
1A8522:  STR             R3, [R4,R0]
1A8524:  MOVW            R0, #0x1234
1A8528:  LDR             R6, [R4,R1]
1A852A:  MOVS            R1, #3
1A852C:  STR             R1, [R4,R0]
1A852E:  MOVW            R1, #0x11F8
1A8532:  ADD.W           R0, R6, R6,LSL#2
1A8536:  STR             R0, [R4,R1]
1A8538:  ADDS            R1, R4, R5
1A853A:  B               loc_1A85D0
1A853C:  MOVW            R0, #0x122C
1A8540:  MOVW            R1, #0xCCCD
1A8544:  STR             R1, [R4,R0]
1A8546:  MOVW            R0, #0x1224
1A854A:  MOVS            R3, #0
1A854C:  STR             R3, [R4,R0]
1A854E:  MOVW            R1, #0x1228
1A8552:  MOV.W           R10, #6
1A8556:  MOVW            R0, #0x121C
1A855A:  MOVS            R5, #0xC
1A855C:  STR.W           R10, [R4,R1]
1A8560:  STR             R5, [R4,R0]
1A8562:  MOVW            R0, #0x1214
1A8566:  MOVS            R5, #1
1A8568:  STR             R5, [R4,R0]
1A856A:  MOVW            R0, #0x1218
1A856E:  MOV.W           R5, #0x11E0
1A8572:  STR             R3, [R4,R0]
1A8574:  MOVW            R0, #0x1234
1A8578:  LDR             R6, [R4,R5]
1A857A:  MOVS            R5, #2
1A857C:  B               loc_1A85C2
1A857E:  CMP.W           LR, #2
1A8582:  BGT             loc_1A8654
1A8584:  MOVW            R0, #0x122C
1A8588:  MOVW            R1, #0xCCCD
1A858C:  STR             R1, [R4,R0]
1A858E:  MOVW            R0, #0x1224
1A8592:  MOVS            R3, #0
1A8594:  STR             R3, [R4,R0]
1A8596:  MOVW            R1, #0x1228
1A859A:  MOV.W           R10, #6
1A859E:  MOVW            R0, #0x121C
1A85A2:  MOVS            R5, #0xC
1A85A4:  STR.W           R10, [R4,R1]
1A85A8:  STR             R5, [R4,R0]
1A85AA:  MOVW            R0, #0x1214
1A85AE:  MOVS            R5, #2
1A85B0:  STR             R5, [R4,R0]
1A85B2:  MOVW            R0, #0x1218
1A85B6:  STR             R3, [R4,R0]
1A85B8:  MOV.W           R0, #0x11E0
1A85BC:  LDR             R6, [R4,R0]
1A85BE:  MOVW            R0, #0x1234
1A85C2:  STR             R5, [R4,R0]
1A85C4:  ADD.W           R0, R6, R6,LSL#1
1A85C8:  MOVW            R5, #0x11F8
1A85CC:  ADD             R1, R4
1A85CE:  STR             R0, [R4,R5]
1A85D0:  LDR.W           R11, [SP,#0x28+var_24]
1A85D4:  MOV.W           R5, #0x1220
1A85D8:  MOV.W           R2, #0x1240
1A85DC:  LDR             R5, [R4,R5]
1A85DE:  STR             R3, [R4,R2]
1A85E0:  CMP             R10, R5
1A85E2:  IT LT
1A85E4:  MOVLT           R5, R10
1A85E6:  MOVW            R3, #0x17CC
1A85EA:  STR             R5, [R1]
1A85EC:  MOVW            R1, #0x1210
1A85F0:  STR.W           LR, [R4,R1]
1A85F4:  ADD.W           R1, R6, R6,LSL#2
1A85F8:  ADD.W           R0, R1, R0,LSL#1
1A85FC:  MOVW            R1, #0x11FC
1A8600:  LDR             R2, [R4,R3]
1A8602:  STR             R0, [R4,R1]
1A8604:  MOVW            R0, #0x1208
1A8608:  LDR.W           R1, [R8,#0x20]
1A860C:  STR             R1, [R4,R0]
1A860E:  LDR.W           R0, [R8,#0x2C]
1A8612:  STR             R0, [R4,R3]
1A8614:  CMP             R0, #0
1A8616:  LDR             R6, [SP,#0x28+var_20]
1A8618:  BEQ             loc_1A8642
1A861A:  MOVS            R0, #7
1A861C:  CBZ             R2, loc_1A863C
1A861E:  UXTH            R2, R1
1A8620:  MOVW            R3, #0x6666
1A8624:  MULS            R2, R3
1A8626:  MOV             R3, #0xFFFF999A
1A862E:  SMLABT.W        R0, R3, R1, R0
1A8632:  SUB.W           R0, R0, R2,LSR#16
1A8636:  CMP             R0, #2
1A8638:  IT LE
1A863A:  MOVLE           R0, #2
1A863C:  MOVW            R1, #0x17D0
1A8640:  STR             R0, [R4,R1]
1A8642:  MOVS            R0, #1
1A8644:  STR.W           R0, [R12]
1A8648:  ADD.W           R0, R6, R11
1A864C:  ADD             SP, SP, #0xC
1A864E:  POP.W           {R8-R11}
1A8652:  POP             {R4-R7,PC}
1A8654:  CMP.W           LR, #3
1A8658:  BNE             loc_1A86A4
1A865A:  MOVW            R0, #0x122C
1A865E:  MOVW            R1, #0xC28F
1A8662:  STR             R1, [R4,R0]
1A8664:  MOVW            R0, #0x1224
1A8668:  MOVS            R1, #1
1A866A:  STR             R1, [R4,R0]
1A866C:  MOVW            R1, #0x1228
1A8670:  MOV.W           R10, #8
1A8674:  MOVW            R0, #0x121C
1A8678:  MOVS            R3, #0xE
1A867A:  STR.W           R10, [R4,R1]
1A867E:  MOV.W           R5, #0x11E0
1A8682:  STR             R3, [R4,R0]
1A8684:  MOVW            R0, #0x1214
1A8688:  MOVS            R3, #2
1A868A:  STR             R3, [R4,R0]
1A868C:  MOVW            R0, #0x1218
1A8690:  MOVS            R3, #0
1A8692:  STR             R3, [R4,R0]
1A8694:  MOVW            R0, #0x1234
1A8698:  LDR             R6, [R4,R5]
1A869A:  MOVS            R5, #4
1A869C:  STR             R5, [R4,R0]
1A869E:  ADD.W           R0, R6, R6,LSL#2
1A86A2:  B               loc_1A85C8
1A86A4:  CMP.W           LR, #5
1A86A8:  BGT             loc_1A8704
1A86AA:  MOVW            R0, #0x122C
1A86AE:  MOVW            R1, #0xBD71
1A86B2:  STR             R1, [R4,R0]
1A86B4:  MOVW            R0, #0x1224
1A86B8:  MOVS            R1, #1
1A86BA:  STR             R1, [R4,R0]
1A86BC:  MOVW            R9, #0x1228
1A86C0:  MOV.W           R10, #0xA
1A86C4:  MOVW            R0, #0x121C
1A86C8:  MOVS            R3, #0x10
1A86CA:  STR.W           R10, [R4,R9]
1A86CE:  MOVS            R5, #6
1A86D0:  STR             R3, [R4,R0]
1A86D2:  MOVW            R0, #0x1214
1A86D6:  MOVS            R3, #2
1A86D8:  STR             R3, [R4,R0]
1A86DA:  MOV.W           R0, #0x11E0
1A86DE:  LDR             R6, [R4,R0]
1A86E0:  MOVW            R0, #0x1218
1A86E4:  STR             R1, [R4,R0]
1A86E6:  MOVW            R1, #0x1234
1A86EA:  MOVW            R0, #0x3D7
1A86EE:  STR             R5, [R4,R1]
1A86F0:  MOVW            R1, #0x11F8
1A86F4:  MUL.W           R3, R6, R0
1A86F8:  ADD.W           R0, R6, R6,LSL#2
1A86FC:  STR             R0, [R4,R1]
1A86FE:  ADD.W           R1, R4, R9
1A8702:  B               loc_1A85D0
1A8704:  MOVW            R0, #0x1224
1A8708:  LDR.W           R11, [SP,#0x28+var_24]
1A870C:  ADD             R0, R4
1A870E:  CMP.W           LR, #7
1A8712:  BGT             loc_1A876A
1A8714:  MOVS            R1, #1
1A8716:  MOVW            R9, #0x1228
1A871A:  STR             R1, [R0]
1A871C:  MOV.W           R10, #0xC
1A8720:  MOVW            R0, #0x122C
1A8724:  MOVW            R3, #0xB852
1A8728:  STR.W           R10, [R4,R9]
1A872C:  MOVS            R5, #8
1A872E:  STR             R3, [R4,R0]
1A8730:  MOVW            R0, #0x121C
1A8734:  MOVS            R3, #0x14
1A8736:  STR             R3, [R4,R0]
1A8738:  MOVW            R0, #0x1214
1A873C:  MOVS            R3, #3
1A873E:  STR             R3, [R4,R0]
1A8740:  MOV.W           R0, #0x11E0
1A8744:  LDR             R6, [R4,R0]
1A8746:  MOVW            R0, #0x1218
1A874A:  STR             R1, [R4,R0]
1A874C:  MOVW            R1, #0x1234
1A8750:  MOVW            R0, #0x3D7
1A8754:  STR             R5, [R4,R1]
1A8756:  MOVW            R1, #0x11F8
1A875A:  MUL.W           R3, R6, R0
1A875E:  ADD.W           R0, R6, R6,LSL#2
1A8762:  STR             R0, [R4,R1]
1A8764:  ADD.W           R1, R4, R9
1A8768:  B               loc_1A85D4
1A876A:  MOVS            R1, #2
1A876C:  MOV.W           R10, #0x10
1A8770:  STR             R1, [R0]
1A8772:  MOVW            R1, #0x1228
1A8776:  MOVW            R0, #0x122C
1A877A:  MOVW            R3, #0xB333
1A877E:  STR.W           R10, [R4,R1]
1A8782:  MOVW            R5, #0x1234
1A8786:  ADD             R1, R4
1A8788:  STR             R3, [R4,R0]
1A878A:  MOVW            R0, #0x121C
1A878E:  MOVS            R3, #0x18
1A8790:  STR             R3, [R4,R0]
1A8792:  MOVW            R0, #0x1214
1A8796:  MOVS            R3, #4
1A8798:  STR             R3, [R4,R0]
1A879A:  MOV.W           R3, #0x11E0
1A879E:  MOVW            R0, #0x1218
1A87A2:  LDR             R6, [R4,R3]
1A87A4:  MOVS            R3, #1
1A87A6:  STR             R3, [R4,R0]
1A87A8:  MOVW            R0, #0x3D7
1A87AC:  MUL.W           R3, R6, R0
1A87B0:  ADD.W           R0, R6, R6,LSL#2
1A87B4:  STR.W           R10, [R4,R5]
1A87B8:  MOVW            R5, #0x11F8
1A87BC:  STR             R0, [R4,R5]
1A87BE:  B               loc_1A85D4
