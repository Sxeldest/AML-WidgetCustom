; =========================================================
; Game Engine Function: _ZN15CTouchInterface12DrawHelpIconEPKcfffi
; Address            : 0x2B11C0 - 0x2B1DB8
; =========================================================

2B11C0:  PUSH            {R4-R7,LR}
2B11C2:  ADD             R7, SP, #0xC
2B11C4:  PUSH.W          {R8-R11}
2B11C8:  SUB             SP, SP, #4
2B11CA:  VPUSH           {D8}
2B11CE:  SUB             SP, SP, #0x110; float
2B11D0:  MOV             R10, R0
2B11D2:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2B11DE)
2B11D6:  MOV             R4, R3
2B11D8:  MOV             R8, R2
2B11DA:  ADD             R0, PC; __stack_chk_guard_ptr
2B11DC:  MOV             R9, R1
2B11DE:  CMP.W           R10, #0
2B11E2:  LDR             R0, [R0]; __stack_chk_guard
2B11E4:  LDR             R0, [R0]
2B11E6:  STR             R0, [SP,#0x138+var_2C]
2B11E8:  BEQ.W           loc_2B1B4A
2B11EC:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x2B11F4)
2B11F0:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
2B11F2:  LDR             R0, [R0]; CFont::RenderState ...
2B11F4:  LDRB            R1, [R0,#(word_A29808 - 0xA297F4)]
2B11F6:  LDRB            R2, [R0,#(word_A29808+1 - 0xA297F4)]
2B11F8:  LDRB            R0, [R0,#(byte_A2980A - 0xA297F4)]
2B11FA:  ORRS            R1, R2
2B11FC:  ORRS            R0, R1
2B11FE:  LSLS            R0, R0, #0x18
2B1200:  BEQ.W           loc_2B1B4A
2B1204:  MOVS            R0, #0
2B1206:  ADR.W           R1, aWidget; "widget"
2B120A:  STRB.W          R0, [SP,#0x138+var_12C]
2B120E:  MOV             R0, R10; haystack
2B1210:  BLX             strstr
2B1214:  MOV             R5, R0
2B1216:  CBZ             R5, loc_2B1238
2B1218:  MOV             R0, R5; s
2B121A:  MOVS            R1, #0x7E ; '~'; c
2B121C:  BLX             strchr
2B1220:  CBZ             R0, loc_2B1238
2B1222:  SUBS            R6, R0, R5
2B1224:  ADD.W           R11, SP, #0x138+var_12C
2B1228:  MOV             R1, R5; char *
2B122A:  MOV             R0, R11; char *
2B122C:  MOV             R2, R6; size_t
2B122E:  BLX             strncpy
2B1232:  MOVS            R0, #0
2B1234:  STRB.W          R0, [R11,R6]
2B1238:  ADD             R0, SP, #0x138+var_12C; char *
2B123A:  BLX             strlen
2B123E:  CMP             R0, #0
2B1240:  BEQ.W           loc_2B1B4A
2B1244:  ADD             R0, SP, #0x138+var_12C; char *
2B1246:  ADR.W           R1, aWidgetExplicit; "widget_explicit_bicycle"
2B124A:  LDR             R5, [R7,#arg_0]
2B124C:  VMOV            S16, R4
2B1250:  BLX             strcasecmp
2B1254:  CMP             R0, #0
2B1256:  BEQ.W           loc_2B1B00
2B125A:  ADD             R0, SP, #0x138+var_12C; char *
2B125C:  ADR.W           R1, aWidgetExplicit_0; "widget_explicit_extinguisher"
2B1260:  BLX             strcasecmp
2B1264:  CMP             R0, #0
2B1266:  BEQ.W           loc_2B1B0C
2B126A:  ADD             R0, SP, #0x138+var_12C; char *
2B126C:  ADR.W           R1, aWidgetExplicit_1; "widget_explicit_punch"
2B1270:  BLX             strcasecmp
2B1274:  CMP             R0, #0
2B1276:  BEQ.W           loc_2B1B14
2B127A:  ADD             R0, SP, #0x138+var_12C; char *
2B127C:  ADR.W           R1, aWidgetExplicit_2; "widget_explicit_throw"
2B1280:  BLX             strcasecmp
2B1284:  CMP             R0, #0
2B1286:  BEQ.W           loc_2B1B1C
2B128A:  ADD             R0, SP, #0x138+var_12C; char *
2B128C:  ADR.W           R1, aWidgetExplicit_3; "widget_explicit_detonator"
2B1290:  BLX             strcasecmp
2B1294:  CMP             R0, #0
2B1296:  BEQ.W           loc_2B1B24
2B129A:  LDR.W           R1, =(aWidgetExplicit_4 - 0x2B12A4); "widget_explicit_shoot"
2B129E:  ADD             R0, SP, #0x138+var_12C; char *
2B12A0:  ADD             R1, PC; "widget_explicit_shoot"
2B12A2:  BLX             strcasecmp
2B12A6:  CMP             R0, #0
2B12A8:  BEQ.W           loc_2B1B2C
2B12AC:  LDR.W           R1, =(aWidgetExplicit_5 - 0x2B12B6); "widget_explicit_NVG"
2B12B0:  ADD             R0, SP, #0x138+var_12C; char *
2B12B2:  ADD             R1, PC; "widget_explicit_NVG"
2B12B4:  BLX             strcasecmp
2B12B8:  CMP             R0, #0
2B12BA:  BEQ.W           loc_2B1B34
2B12BE:  LDR.W           R1, =(aWidgetExplicit_6 - 0x2B12C8); "widget_explicit_prev_weapon"
2B12C2:  ADD             R0, SP, #0x138+var_12C; char *
2B12C4:  ADD             R1, PC; "widget_explicit_prev_weapon"
2B12C6:  BLX             strcasecmp
2B12CA:  CMP             R0, #0
2B12CC:  BEQ.W           loc_2B1B6E
2B12D0:  LDR.W           R1, =(aWidgetExplicit_7 - 0x2B12DA); "widget_explicit_next_weapon"
2B12D4:  ADD             R0, SP, #0x138+var_12C; char *
2B12D6:  ADD             R1, PC; "widget_explicit_next_weapon"
2B12D8:  BLX             strcasecmp
2B12DC:  CMP             R0, #0
2B12DE:  BEQ.W           loc_2B1B74
2B12E2:  LDR.W           R1, =(aWidgetExplicit_8 - 0x2B12EC); "widget_explicit_look_back_keyboard"
2B12E6:  ADD             R0, SP, #0x138+var_12C; char *
2B12E8:  ADD             R1, PC; "widget_explicit_look_back_keyboard"
2B12EA:  BLX             strcasecmp
2B12EE:  CMP             R0, #0
2B12F0:  BEQ.W           loc_2B1B7A
2B12F4:  LDR.W           R1, =(aWidgetExplicit_9 - 0x2B12FE); "widget_explicit_flight_ascend"
2B12F8:  ADD             R0, SP, #0x138+var_12C; char *
2B12FA:  ADD             R1, PC; "widget_explicit_flight_ascend"
2B12FC:  BLX             strcasecmp
2B1300:  CMP             R0, #0
2B1302:  BEQ.W           loc_2B1B80
2B1306:  LDR.W           R1, =(aWidgetExplicit_10 - 0x2B1310); "widget_explicit_flight_descend"
2B130A:  ADD             R0, SP, #0x138+var_12C; char *
2B130C:  ADD             R1, PC; "widget_explicit_flight_descend"
2B130E:  BLX             strcasecmp
2B1312:  CMP             R0, #0
2B1314:  BEQ.W           loc_2B1B86
2B1318:  LDR.W           R1, =(aWidgetExplicit_11 - 0x2B1322); "widget_explicit_flight_primary_attack"
2B131C:  ADD             R0, SP, #0x138+var_12C; char *
2B131E:  ADD             R1, PC; "widget_explicit_flight_primary_attack"
2B1320:  BLX             strcasecmp
2B1324:  CMP             R0, #0
2B1326:  BEQ.W           loc_2B1B8C
2B132A:  LDR.W           R1, =(aWidgetExplicit_12 - 0x2B1334); "widget_explicit_flight_secondary_attack"
2B132E:  ADD             R0, SP, #0x138+var_12C; char *
2B1330:  ADD             R1, PC; "widget_explicit_flight_secondary_attack"
2B1332:  BLX             strcasecmp
2B1336:  CMP             R0, #0
2B1338:  BEQ.W           loc_2B1B92
2B133C:  LDR.W           R1, =(aWidgetExplicit_13 - 0x2B1346); "widget_explicit_camera_zoom_in"
2B1340:  ADD             R0, SP, #0x138+var_12C; char *
2B1342:  ADD             R1, PC; "widget_explicit_camera_zoom_in"
2B1344:  BLX             strcasecmp
2B1348:  CMP             R0, #0
2B134A:  BEQ.W           loc_2B1B98
2B134E:  LDR.W           R1, =(aWidgetExplicit_14 - 0x2B1358); "widget_explicit_camera_zoom_out"
2B1352:  ADD             R0, SP, #0x138+var_12C; char *
2B1354:  ADD             R1, PC; "widget_explicit_camera_zoom_out"
2B1356:  BLX             strcasecmp
2B135A:  CMP             R0, #0
2B135C:  BEQ.W           loc_2B1B9E
2B1360:  LDR.W           R1, =(aWidgetExplicit_15 - 0x2B136A); "widget_explicit_bunny_hop"
2B1364:  ADD             R0, SP, #0x138+var_12C; char *
2B1366:  ADD             R1, PC; "widget_explicit_bunny_hop"
2B1368:  BLX             strcasecmp
2B136C:  CMP             R0, #0
2B136E:  BEQ.W           loc_2B1BA4
2B1372:  LDR.W           R1, =(aWidgetExplicit_16 - 0x2B137C); "widget_explicit_accept"
2B1376:  ADD             R0, SP, #0x138+var_12C; char *
2B1378:  ADD             R1, PC; "widget_explicit_accept"
2B137A:  BLX             strcasecmp
2B137E:  CMP             R0, #0
2B1380:  BEQ.W           loc_2B1BAA
2B1384:  LDR.W           R1, =(aWidgetExplicit_17 - 0x2B138E); "widget_explicit_look_x"
2B1388:  ADD             R0, SP, #0x138+var_12C; char *
2B138A:  ADD             R1, PC; "widget_explicit_look_x"
2B138C:  BLX             strcasecmp
2B1390:  CMP             R0, #0
2B1392:  BEQ.W           loc_2B1BB0
2B1396:  LDR.W           R1, =(aWidgetExplicit_18 - 0x2B13A0); "widget_explicit_move_x"
2B139A:  ADD             R0, SP, #0x138+var_12C; char *
2B139C:  ADD             R1, PC; "widget_explicit_move_x"
2B139E:  BLX             strcasecmp
2B13A2:  CMP             R0, #0
2B13A4:  BEQ.W           loc_2B1BB6
2B13A8:  LDR.W           R1, =(aWidgetExplicit_19 - 0x2B13B2); "widget_explicit_take_cover_left"
2B13AC:  ADD             R0, SP, #0x138+var_12C; char *
2B13AE:  ADD             R1, PC; "widget_explicit_take_cover_left"
2B13B0:  BLX             strcasecmp
2B13B4:  CMP             R0, #0
2B13B6:  BEQ.W           loc_2B1BBC
2B13BA:  LDR.W           R1, =(aWidgetExplicit_20 - 0x2B13C4); "widget_explicit_take_cover_right"
2B13BE:  ADD             R0, SP, #0x138+var_12C; char *
2B13C0:  ADD             R1, PC; "widget_explicit_take_cover_right"
2B13C2:  BLX             strcasecmp
2B13C6:  CMP             R0, #0
2B13C8:  BEQ.W           loc_2B1BC2
2B13CC:  LDR.W           R1, =(aWidgetExplicit_21 - 0x2B13D6); "widget_explicit_alt_attack"
2B13D0:  ADD             R0, SP, #0x138+var_12C; char *
2B13D2:  ADD             R1, PC; "widget_explicit_alt_attack"
2B13D4:  BLX             strcasecmp
2B13D8:  CMP             R0, #0
2B13DA:  BEQ.W           loc_2B1BC8
2B13DE:  LDR.W           R1, =(aWidgetExplicit_22 - 0x2B13E8); "widget_explicit_toggle_landing_gear"
2B13E2:  ADD             R0, SP, #0x138+var_12C; char *
2B13E4:  ADD             R1, PC; "widget_explicit_toggle_landing_gear"
2B13E6:  BLX             strcasecmp
2B13EA:  CMP             R0, #0
2B13EC:  BEQ.W           loc_2B1BCE
2B13F0:  LDR.W           R1, =(aWidgetExplicit_23 - 0x2B13FA); "widget_explicit_jump"
2B13F4:  ADD             R0, SP, #0x138+var_12C; char *
2B13F6:  ADD             R1, PC; "widget_explicit_jump"
2B13F8:  BLX             strcasecmp
2B13FC:  CMP             R0, #0
2B13FE:  BEQ.W           loc_2B1BD4
2B1402:  LDR.W           R1, =(aWidgetExplicit_24 - 0x2B140C); "widget_explicit_crouch"
2B1406:  ADD             R0, SP, #0x138+var_12C; char *
2B1408:  ADD             R1, PC; "widget_explicit_crouch"
2B140A:  BLX             strcasecmp
2B140E:  CMP             R0, #0
2B1410:  BEQ.W           loc_2B1BDA
2B1414:  LDR.W           R1, =(aWidgetCamera - 0x2B141E); "widget_camera"
2B1418:  ADD             R0, SP, #0x138+var_12C; char *
2B141A:  ADD             R1, PC; "widget_camera"
2B141C:  BLX             strcasecmp
2B1420:  CMP             R0, #0
2B1422:  BEQ.W           loc_2B1BF6
2B1426:  LDR.W           R1, =(aWidgetPedMove - 0x2B1430); "widget_ped_move"
2B142A:  ADD             R0, SP, #0x138+var_12C; char *
2B142C:  ADD             R1, PC; "widget_ped_move"
2B142E:  BLX             strcasecmp
2B1432:  CMP             R0, #0
2B1434:  BEQ.W           loc_2B1BF2
2B1438:  LDR.W           R1, =(aWidgetPedMoveL_6 - 0x2B1442); "widget_ped_move_left"
2B143C:  ADD             R0, SP, #0x138+var_12C; char *
2B143E:  ADD             R1, PC; "widget_ped_move_left"
2B1440:  BLX             strcasecmp
2B1444:  CMP             R0, #0
2B1446:  BEQ.W           loc_2B1BF2
2B144A:  LDR.W           R1, =(aWidgetPedMoveR_6 - 0x2B1454); "widget_ped_move_right"
2B144E:  ADD             R0, SP, #0x138+var_12C; char *
2B1450:  ADD             R1, PC; "widget_ped_move_right"
2B1452:  BLX             strcasecmp
2B1456:  CMP             R0, #0
2B1458:  BEQ.W           loc_2B1BF2
2B145C:  LDR.W           R1, =(aWidgetPedMoveU_6 - 0x2B1466); "widget_ped_move_up"
2B1460:  ADD             R0, SP, #0x138+var_12C; char *
2B1462:  ADD             R1, PC; "widget_ped_move_up"
2B1464:  BLX             strcasecmp
2B1468:  CMP             R0, #0
2B146A:  BEQ.W           loc_2B1BF2
2B146E:  LDR.W           R1, =(aWidgetPedMoveD_6 - 0x2B1478); "widget_ped_move_down"
2B1472:  ADD             R0, SP, #0x138+var_12C; char *
2B1474:  ADD             R1, PC; "widget_ped_move_down"
2B1476:  BLX             strcasecmp
2B147A:  CMP             R0, #0
2B147C:  BEQ.W           loc_2B1BF2
2B1480:  LDR.W           R1, =(aWidgetEnterCar - 0x2B148A); "widget_enter_car"
2B1484:  ADD             R0, SP, #0x138+var_12C; char *
2B1486:  ADD             R1, PC; "widget_enter_car"
2B1488:  BLX             strcasecmp
2B148C:  CMP             R0, #0
2B148E:  BEQ.W           loc_2B1C1C
2B1492:  LDR.W           R1, =(aWidgetBrake - 0x2B149C); "widget_brake"
2B1496:  ADD             R0, SP, #0x138+var_12C; char *
2B1498:  ADD             R1, PC; "widget_brake"
2B149A:  BLX             strcasecmp
2B149E:  CMP             R0, #0
2B14A0:  BEQ.W           loc_2B1C24
2B14A4:  LDR.W           R1, =(aWidgetSwipeRad_0 - 0x2B14AE); "widget_swipe_radio_up"
2B14A8:  ADD             R0, SP, #0x138+var_12C; char *
2B14AA:  ADD             R1, PC; "widget_swipe_radio_up"
2B14AC:  BLX             strcasecmp
2B14B0:  CMP             R0, #0
2B14B2:  BEQ.W           loc_2B1C20
2B14B6:  LDR.W           R1, =(aWidgetSwipeRad_1 - 0x2B14C0); "widget_swipe_radio_down"
2B14BA:  ADD             R0, SP, #0x138+var_12C; char *
2B14BC:  ADD             R1, PC; "widget_swipe_radio_down"
2B14BE:  BLX             strcasecmp
2B14C2:  CMP             R0, #0
2B14C4:  BEQ.W           loc_2B1C20
2B14C8:  LDR.W           R1, =(aWidgetPhone - 0x2B14D2); "widget_phone"
2B14CC:  ADD             R0, SP, #0x138+var_12C; char *
2B14CE:  ADD             R1, PC; "widget_phone"
2B14D0:  BLX             strcasecmp
2B14D4:  CMP             R0, #0
2B14D6:  BEQ.W           loc_2B1C28
2B14DA:  ADD             R0, SP, #0x138+var_12C; char *
2B14DC:  ADR.W           R1, aWidgetGift; "widget_gift"
2B14E0:  BLX             strcasecmp
2B14E4:  CMP             R0, #0
2B14E6:  BEQ.W           loc_2B1C2C
2B14EA:  LDR.W           R1, =(aWidgetKiss - 0x2B14F4); "widget_kiss"
2B14EE:  ADD             R0, SP, #0x138+var_12C; char *
2B14F0:  ADD             R1, PC; "widget_kiss"
2B14F2:  BLX             strcasecmp
2B14F6:  CMP             R0, #0
2B14F8:  BEQ.W           loc_2B1C30
2B14FC:  LDR.W           R1, =(aWidgetAttack - 0x2B1506); "widget_attack"
2B1500:  ADD             R0, SP, #0x138+var_12C; char *
2B1502:  ADD             R1, PC; "widget_attack"
2B1504:  BLX             strcasecmp
2B1508:  CMP             R0, #0
2B150A:  BEQ.W           loc_2B1C34
2B150E:  LDR.W           R1, =(aWidgetSwapWeap - 0x2B1518); "widget_swap_weapons"
2B1512:  ADD             R0, SP, #0x138+var_12C; char *
2B1514:  ADD             R1, PC; "widget_swap_weapons"
2B1516:  BLX             strcasecmp
2B151A:  CMP             R0, #0
2B151C:  BEQ.W           loc_2B1C38
2B1520:  LDR.W           R1, =(aWidgetPlayerIn - 0x2B152A); "widget_player_info"
2B1524:  ADD             R0, SP, #0x138+var_12C; char *
2B1526:  ADD             R1, PC; "widget_player_info"
2B1528:  BLX             strcasecmp
2B152C:  CMP             R0, #0
2B152E:  BEQ.W           loc_2B1C3C
2B1532:  LDR.W           R1, =(aWidgetGangFoll - 0x2B153C); "widget_gang_follow"
2B1536:  ADD             R0, SP, #0x138+var_12C; char *
2B1538:  ADD             R1, PC; "widget_gang_follow"
2B153A:  BLX             strcasecmp
2B153E:  CMP             R0, #0
2B1540:  BEQ.W           loc_2B1C44
2B1544:  LDR.W           R1, =(aWidgetLookLeft_0 - 0x2B154E); "widget_look_left"
2B1548:  ADD             R0, SP, #0x138+var_12C; char *
2B154A:  ADD             R1, PC; "widget_look_left"
2B154C:  BLX             strcasecmp
2B1550:  CMP             R0, #0
2B1552:  BEQ.W           loc_2B1C40
2B1556:  LDR.W           R1, =(aWidgetLookRigh - 0x2B1560); "widget_look_right"
2B155A:  ADD             R0, SP, #0x138+var_12C; char *
2B155C:  ADD             R1, PC; "widget_look_right"
2B155E:  BLX             strcasecmp
2B1562:  CMP             R0, #0
2B1564:  BEQ.W           loc_2B1C40
2B1568:  LDR.W           R1, =(aWidgetGangRecr - 0x2B1572); "widget_gang_recruit"
2B156C:  ADD             R0, SP, #0x138+var_12C; char *
2B156E:  ADD             R1, PC; "widget_gang_recruit"
2B1570:  BLX             strcasecmp
2B1574:  CMP             R0, #0
2B1576:  BEQ.W           loc_2B1C48
2B157A:  LDR.W           R1, =(aWidgetGangHold - 0x2B1584); "widget_gang_hold"
2B157E:  ADD             R0, SP, #0x138+var_12C; char *
2B1580:  ADD             R1, PC; "widget_gang_hold"
2B1582:  BLX             strcasecmp
2B1586:  CMP             R0, #0
2B1588:  BEQ.W           loc_2B1C4C
2B158C:  LDR.W           R1, =(aWidgetReplyYes - 0x2B1596); "widget_reply_yes"
2B1590:  ADD             R0, SP, #0x138+var_12C; char *
2B1592:  ADD             R1, PC; "widget_reply_yes"
2B1594:  BLX             strcasecmp
2B1598:  CMP             R0, #0
2B159A:  BEQ.W           loc_2B1C50
2B159E:  LDR.W           R1, =(aWidgetReplyNo - 0x2B15A8); "widget_reply_no"
2B15A2:  ADD             R0, SP, #0x138+var_12C; char *
2B15A4:  ADD             R1, PC; "widget_reply_no"
2B15A6:  BLX             strcasecmp
2B15AA:  CMP             R0, #0
2B15AC:  BEQ.W           loc_2B1C54
2B15B0:  LDR.W           R1, =(aWidgetBlackJac - 0x2B15BA); "widget_black_jack_hit"
2B15B4:  ADD             R0, SP, #0x138+var_12C; char *
2B15B6:  ADD             R1, PC; "widget_black_jack_hit"
2B15B8:  BLX             strcasecmp
2B15BC:  CMP             R0, #0
2B15BE:  BEQ.W           loc_2B1C58
2B15C2:  LDR.W           R1, =(aWidgetBlackJac_0 - 0x2B15CC); "widget_black_jack_stand"
2B15C6:  ADD             R0, SP, #0x138+var_12C; char *
2B15C8:  ADD             R1, PC; "widget_black_jack_stand"
2B15CA:  BLX             strcasecmp
2B15CE:  CMP             R0, #0
2B15D0:  BEQ.W           loc_2B1C5C
2B15D4:  LDR.W           R1, =(aWidgetBlackJac_1 - 0x2B15DE); "widget_black_jack_double"
2B15D8:  ADD             R0, SP, #0x138+var_12C; char *
2B15DA:  ADD             R1, PC; "widget_black_jack_double"
2B15DC:  BLX             strcasecmp
2B15E0:  CMP             R0, #0
2B15E2:  BEQ.W           loc_2B1C60
2B15E6:  LDR.W           R1, =(aWidgetBlackJac_2 - 0x2B15F0); "widget_black_jack_split"
2B15EA:  ADD             R0, SP, #0x138+var_12C; char *
2B15EC:  ADD             R1, PC; "widget_black_jack_split"
2B15EE:  BLX             strcasecmp
2B15F2:  CMP             R0, #0
2B15F4:  BEQ.W           loc_2B1C64
2B15F8:  LDR.W           R1, =(aWidgetMissionS - 0x2B1602); "widget_mission_start"
2B15FC:  ADD             R0, SP, #0x138+var_12C; char *
2B15FE:  ADD             R1, PC; "widget_mission_start"
2B1600:  BLX             strcasecmp
2B1604:  CMP             R0, #0
2B1606:  BEQ.W           loc_2B1C68
2B160A:  LDR.W           R1, =(aWidgetMissionC - 0x2B1614); "widget_mission_cancel"
2B160E:  ADD             R0, SP, #0x138+var_12C; char *
2B1610:  ADD             R1, PC; "widget_mission_cancel"
2B1612:  BLX             strcasecmp
2B1616:  CMP             R0, #0
2B1618:  BEQ.W           loc_2B1C6C
2B161C:  LDR.W           R1, =(aWidgetMissionS_0 - 0x2B1626); "widget_mission_start_vigilante"
2B1620:  ADD             R0, SP, #0x138+var_12C; char *
2B1622:  ADD             R1, PC; "widget_mission_start_vigilante"
2B1624:  BLX             strcasecmp
2B1628:  CMP             R0, #0
2B162A:  BEQ.W           loc_2B1C70
2B162E:  LDR.W           R1, =(aWidgetMissionC_0 - 0x2B1638); "widget_mission_cancel_vigilante"
2B1632:  ADD             R0, SP, #0x138+var_12C; char *
2B1634:  ADD             R1, PC; "widget_mission_cancel_vigilante"
2B1636:  BLX             strcasecmp
2B163A:  CMP             R0, #0
2B163C:  BEQ.W           loc_2B1C74
2B1640:  LDR.W           R1, =(aWidgetMinigame - 0x2B164A); "widget_minigame_start"
2B1644:  ADD             R0, SP, #0x138+var_12C; char *
2B1646:  ADD             R1, PC; "widget_minigame_start"
2B1648:  BLX             strcasecmp
2B164C:  CMP             R0, #0
2B164E:  BEQ.W           loc_2B1C78
2B1652:  LDR.W           R1, =(aWidgetMinigame_0 - 0x2B165C); "widget_minigame_cancel"
2B1656:  ADD             R0, SP, #0x138+var_12C; char *
2B1658:  ADD             R1, PC; "widget_minigame_cancel"
2B165A:  BLX             strcasecmp
2B165E:  CMP             R0, #0
2B1660:  BEQ.W           loc_2B1C7C
2B1664:  LDR.W           R1, =(aWidgetSkipCuts - 0x2B166E); "widget_skip_cutscene"
2B1668:  ADD             R0, SP, #0x138+var_12C; char *
2B166A:  ADD             R1, PC; "widget_skip_cutscene"
2B166C:  BLX             strcasecmp
2B1670:  CMP             R0, #0
2B1672:  BEQ.W           loc_2B1C80
2B1676:  LDR.W           R1, =(aWidgetGambling - 0x2B1680); "widget_gambling_continue"
2B167A:  ADD             R0, SP, #0x138+var_12C; char *
2B167C:  ADD             R1, PC; "widget_gambling_continue"
2B167E:  BLX             strcasecmp
2B1682:  CMP             R0, #0
2B1684:  BEQ.W           loc_2B1C84
2B1688:  LDR.W           R1, =(aWidgetGambling_0 - 0x2B1692); "widget_gambling_quit"
2B168C:  ADD             R0, SP, #0x138+var_12C; char *
2B168E:  ADD             R1, PC; "widget_gambling_quit"
2B1690:  BLX             strcasecmp
2B1694:  CMP             R0, #0
2B1696:  BEQ.W           loc_2B1C88
2B169A:  LDR.W           R1, =(aWidgetEnterTar - 0x2B16A4); "widget_enter_targeting"
2B169E:  ADD             R0, SP, #0x138+var_12C; char *
2B16A0:  ADD             R1, PC; "widget_enter_targeting"
2B16A2:  BLX             strcasecmp
2B16A6:  CMP             R0, #0
2B16A8:  BEQ.W           loc_2B1C8C
2B16AC:  LDR.W           R1, =(aWidgetZoomIn - 0x2B16B6); "widget_zoom_in"
2B16B0:  ADD             R0, SP, #0x138+var_12C; char *
2B16B2:  ADD             R1, PC; "widget_zoom_in"
2B16B4:  BLX             strcasecmp
2B16B8:  CMP             R0, #0
2B16BA:  BEQ.W           loc_2B1C90
2B16BE:  LDR.W           R1, =(aWidgetZoomOut - 0x2B16C8); "widget_zoom_out"
2B16C2:  ADD             R0, SP, #0x138+var_12C; char *
2B16C4:  ADD             R1, PC; "widget_zoom_out"
2B16C6:  BLX             strcasecmp
2B16CA:  CMP             R0, #0
2B16CC:  BEQ.W           loc_2B1C94
2B16D0:  LDR.W           R1, =(aWidgetCraneUp - 0x2B16DA); "widget_crane_up"
2B16D4:  ADD             R0, SP, #0x138+var_12C; char *
2B16D6:  ADD             R1, PC; "widget_crane_up"
2B16D8:  BLX             strcasecmp
2B16DC:  CMP             R0, #0
2B16DE:  BEQ.W           loc_2B1C98
2B16E2:  LDR.W           R1, =(aWidgetCraneDow - 0x2B16EC); "widget_crane_down"
2B16E6:  ADD             R0, SP, #0x138+var_12C; char *
2B16E8:  ADD             R1, PC; "widget_crane_down"
2B16EA:  BLX             strcasecmp
2B16EE:  CMP             R0, #0
2B16F0:  BEQ.W           loc_2B1C9C
2B16F4:  LDR.W           R1, =(aWidgetHelicopt - 0x2B16FE); "widget_helicopter_magnet_up"
2B16F8:  ADD             R0, SP, #0x138+var_12C; char *
2B16FA:  ADD             R1, PC; "widget_helicopter_magnet_up"
2B16FC:  BLX             strcasecmp
2B1700:  CMP             R0, #0
2B1702:  BEQ.W           loc_2B1CA0
2B1706:  LDR.W           R1, =(aWidgetHelicopt_0 - 0x2B1710); "widget_helicopter_magnet_down"
2B170A:  ADD             R0, SP, #0x138+var_12C; char *
2B170C:  ADD             R1, PC; "widget_helicopter_magnet_down"
2B170E:  BLX             strcasecmp
2B1712:  CMP             R0, #0
2B1714:  BEQ.W           loc_2B1CA4
2B1718:  LDR.W           R1, =(aWidgetVcShoot - 0x2B1722); "widget_vc_shoot"
2B171C:  ADD             R0, SP, #0x138+var_12C; char *
2B171E:  ADD             R1, PC; "widget_vc_shoot"
2B1720:  BLX             strcasecmp
2B1724:  CMP             R0, #0
2B1726:  BEQ.W           loc_2B1CA8
2B172A:  LDR.W           R1, =(aWidgetPurchase - 0x2B1734); "widget_purchase"
2B172E:  ADD             R0, SP, #0x138+var_12C; char *
2B1730:  ADD             R1, PC; "widget_purchase"
2B1732:  BLX             strcasecmp
2B1736:  CMP             R0, #0
2B1738:  BEQ.W           loc_2B1CAC
2B173C:  LDR.W           R1, =(aWidgetRaceLeft - 0x2B1746); "widget_race_left"
2B1740:  ADD             R0, SP, #0x138+var_12C; char *
2B1742:  ADD             R1, PC; "widget_race_left"
2B1744:  BLX             strcasecmp
2B1748:  CMP             R0, #0
2B174A:  BEQ.W           loc_2B1CB0
2B174E:  LDR.W           R1, =(aWidgetRaceRigh - 0x2B1758); "widget_race_right"
2B1752:  ADD             R0, SP, #0x138+var_12C; char *
2B1754:  ADD             R1, PC; "widget_race_right"
2B1756:  BLX             strcasecmp
2B175A:  CMP             R0, #0
2B175C:  BEQ.W           loc_2B1CB4
2B1760:  LDR.W           R1, =(aWidgetStoreBuy - 0x2B176A); "widget_store_buy"
2B1764:  ADD             R0, SP, #0x138+var_12C; char *
2B1766:  ADD             R1, PC; "widget_store_buy"
2B1768:  BLX             strcasecmp
2B176C:  CMP             R0, #0
2B176E:  BEQ.W           loc_2B1CB8
2B1772:  LDR.W           R1, =(aWidgetRoulette - 0x2B177C); "widget_roulette_up"
2B1776:  ADD             R0, SP, #0x138+var_12C; char *
2B1778:  ADD             R1, PC; "widget_roulette_up"
2B177A:  BLX             strcasecmp
2B177E:  CMP             R0, #0
2B1780:  BEQ.W           loc_2B1CBC
2B1784:  LDR.W           R1, =(aWidgetRoulette_0 - 0x2B178E); "widget_roulette_down"
2B1788:  ADD             R0, SP, #0x138+var_12C; char *
2B178A:  ADD             R1, PC; "widget_roulette_down"
2B178C:  BLX             strcasecmp
2B1790:  CMP             R0, #0
2B1792:  BEQ.W           loc_2B1CC0
2B1796:  LDR.W           R1, =(aWidgetRoulette_1 - 0x2B17A0); "widget_roulette_left"
2B179A:  ADD             R0, SP, #0x138+var_12C; char *
2B179C:  ADD             R1, PC; "widget_roulette_left"
2B179E:  BLX             strcasecmp
2B17A2:  CMP             R0, #0
2B17A4:  BEQ.W           loc_2B1CC4
2B17A8:  LDR.W           R1, =(aWidgetRoulette_2 - 0x2B17B2); "widget_roulette_right"
2B17AC:  ADD             R0, SP, #0x138+var_12C; char *
2B17AE:  ADD             R1, PC; "widget_roulette_right"
2B17B0:  BLX             strcasecmp
2B17B4:  CMP             R0, #0
2B17B6:  BEQ.W           loc_2B1CC8
2B17BA:  LDR.W           R1, =(aWidgetPlaceBet - 0x2B17C4); "widget_place_bet"
2B17BE:  ADD             R0, SP, #0x138+var_12C; char *
2B17C0:  ADD             R1, PC; "widget_place_bet"
2B17C2:  BLX             strcasecmp
2B17C6:  CMP             R0, #0
2B17C8:  BEQ.W           loc_2B1CCC
2B17CC:  LDR.W           R1, =(aWidgetRemoveBe - 0x2B17D6); "widget_remove_bet"
2B17D0:  ADD             R0, SP, #0x138+var_12C; char *
2B17D2:  ADD             R1, PC; "widget_remove_bet"
2B17D4:  BLX             strcasecmp
2B17D8:  CMP             R0, #0
2B17DA:  BEQ.W           loc_2B1CD0
2B17DE:  LDR.W           R1, =(aWidgetStoreAcc - 0x2B17E8); "widget_store_accept"
2B17E2:  ADD             R0, SP, #0x138+var_12C; char *
2B17E4:  ADD             R1, PC; "widget_store_accept"
2B17E6:  BLX             strcasecmp
2B17EA:  CMP             R0, #0
2B17EC:  BEQ.W           loc_2B1CD4
2B17F0:  LDR.W           R1, =(aWidgetStoreCan - 0x2B17FA); "widget_store_cancel"
2B17F4:  ADD             R0, SP, #0x138+var_12C; char *
2B17F6:  ADD             R1, PC; "widget_store_cancel"
2B17F8:  BLX             strcasecmp
2B17FC:  CMP             R0, #0
2B17FE:  BEQ.W           loc_2B1CD8
2B1802:  LDR.W           R1, =(aWidgetStoreBac - 0x2B180C); "widget_store_back"
2B1806:  ADD             R0, SP, #0x138+var_12C; char *
2B1808:  ADD             R1, PC; "widget_store_back"
2B180A:  BLX             strcasecmp
2B180E:  CMP             R0, #0
2B1810:  BEQ.W           loc_2B1CDC
2B1814:  LDR.W           R1, =(aWidgetButtonDi - 0x2B181E); "widget_button_dive"
2B1818:  ADD             R0, SP, #0x138+var_12C; char *
2B181A:  ADD             R1, PC; "widget_button_dive"
2B181C:  BLX             strcasecmp
2B1820:  CMP             R0, #0
2B1822:  BEQ.W           loc_2B1CE0
2B1826:  LDR.W           R1, =(aWidgetGrab - 0x2B1830); "widget_grab"
2B182A:  ADD             R0, SP, #0x138+var_12C; char *
2B182C:  ADD             R1, PC; "widget_grab"
2B182E:  BLX             strcasecmp
2B1832:  CMP             R0, #0
2B1834:  BEQ.W           loc_2B1CE4
2B1838:  LDR.W           R1, =(aWidgetVehicleB - 0x2B1842); "widget_vehicle_bomb"
2B183C:  ADD             R0, SP, #0x138+var_12C; char *
2B183E:  ADD             R1, PC; "widget_vehicle_bomb"
2B1840:  BLX             strcasecmp
2B1844:  CMP             R0, #0
2B1846:  BEQ.W           loc_2B1CE8
2B184A:  LDR.W           R1, =(aWidgetNitro - 0x2B1854); "widget_nitro"
2B184E:  ADD             R0, SP, #0x138+var_12C; char *
2B1850:  ADD             R1, PC; "widget_nitro"
2B1852:  BLX             strcasecmp
2B1856:  CMP             R0, #0
2B1858:  BEQ.W           loc_2B1CEC
2B185C:  LDR.W           R1, =(aWidgetMagnet - 0x2B1866); "widget_magnet"
2B1860:  ADD             R0, SP, #0x138+var_12C; char *
2B1862:  ADD             R1, PC; "widget_magnet"
2B1864:  BLX             strcasecmp
2B1868:  CMP             R0, #0
2B186A:  BEQ.W           loc_2B1CF0
2B186E:  LDR.W           R1, =(aWidgetDropItem - 0x2B1878); "widget_drop_item"
2B1872:  ADD             R0, SP, #0x138+var_12C; char *
2B1874:  ADD             R1, PC; "widget_drop_item"
2B1876:  BLX             strcasecmp
2B187A:  CMP             R0, #0
2B187C:  BEQ.W           loc_2B1CF4
2B1880:  LDR.W           R1, =(aWidgetDropCran - 0x2B188A); "widget_drop_crane"
2B1884:  ADD             R0, SP, #0x138+var_12C; char *
2B1886:  ADD             R1, PC; "widget_drop_crane"
2B1888:  BLX             strcasecmp
2B188C:  CMP             R0, #0
2B188E:  BEQ.W           loc_2B1CF8
2B1892:  LDR.W           R1, =(aWidgetVehicleS_13 - 0x2B189C); "widget_vehicle_shoot_left"
2B1896:  ADD             R0, SP, #0x138+var_12C; char *
2B1898:  ADD             R1, PC; "widget_vehicle_shoot_left"
2B189A:  BLX             strcasecmp
2B189E:  CMP             R0, #0
2B18A0:  BEQ.W           loc_2B1CFC
2B18A4:  LDR.W           R1, =(aWidgetVehicleS_14 - 0x2B18AE); "widget_vehicle_shoot_right"
2B18A8:  ADD             R0, SP, #0x138+var_12C; char *
2B18AA:  ADD             R1, PC; "widget_vehicle_shoot_right"
2B18AC:  BLX             strcasecmp
2B18B0:  CMP             R0, #0
2B18B2:  BEQ.W           loc_2B1D00
2B18B6:  LDR.W           R1, =(aWidgetVehicleT - 0x2B18C0); "widget_vehicle_turret_left"
2B18BA:  ADD             R0, SP, #0x138+var_12C; char *
2B18BC:  ADD             R1, PC; "widget_vehicle_turret_left"
2B18BE:  BLX             strcasecmp
2B18C2:  CMP             R0, #0
2B18C4:  BEQ.W           loc_2B1D04
2B18C8:  LDR.W           R1, =(aWidgetVehicleT_0 - 0x2B18D2); "widget_vehicle_turret_right"
2B18CC:  ADD             R0, SP, #0x138+var_12C; char *
2B18CE:  ADD             R1, PC; "widget_vehicle_turret_right"
2B18D0:  BLX             strcasecmp
2B18D4:  CMP             R0, #0
2B18D6:  BEQ.W           loc_2B1D08
2B18DA:  LDR.W           R1, =(aWidgetHorn - 0x2B18E4); "widget_horn"
2B18DE:  ADD             R0, SP, #0x138+var_12C; char *
2B18E0:  ADD             R1, PC; "widget_horn"
2B18E2:  BLX             strcasecmp
2B18E6:  CMP             R0, #0
2B18E8:  BEQ.W           loc_2B1D0C
2B18EC:  LDR.W           R1, =(aWidgetStinger - 0x2B18F6); "widget_stinger"
2B18F0:  ADD             R0, SP, #0x138+var_12C; char *
2B18F2:  ADD             R1, PC; "widget_stinger"
2B18F4:  BLX             strcasecmp
2B18F8:  CMP             R0, #0
2B18FA:  BEQ.W           loc_2B1D10
2B18FE:  LDR.W           R1, =(aWidgetRocket - 0x2B1908); "widget_rocket"
2B1902:  ADD             R0, SP, #0x138+var_12C; char *
2B1904:  ADD             R1, PC; "widget_rocket"
2B1906:  BLX             strcasecmp
2B190A:  CMP             R0, #0
2B190C:  BEQ.W           loc_2B1D14
2B1910:  LDR.W           R1, =(aWidgetBasketba - 0x2B191A); "widget_basketball_shoot"
2B1914:  ADD             R0, SP, #0x138+var_12C; char *
2B1916:  ADD             R1, PC; "widget_basketball_shoot"
2B1918:  BLX             strcasecmp
2B191C:  CMP             R0, #0
2B191E:  BEQ.W           loc_2B1D18
2B1922:  LDR.W           R1, =(aWidgetArcadeBu - 0x2B192C); "widget_arcade_button"
2B1926:  ADD             R0, SP, #0x138+var_12C; char *
2B1928:  ADD             R1, PC; "widget_arcade_button"
2B192A:  BLX             strcasecmp
2B192E:  CMP             R0, #0
2B1930:  BEQ.W           loc_2B1D1C
2B1934:  LDR.W           R1, =(aWidgetArcadePo - 0x2B193E); "widget_arcade_power_off"
2B1938:  ADD             R0, SP, #0x138+var_12C; char *
2B193A:  ADD             R1, PC; "widget_arcade_power_off"
2B193C:  BLX             strcasecmp
2B1940:  CMP             R0, #0
2B1942:  BEQ.W           loc_2B1D20
2B1946:  LDR.W           R1, =(aWidgetArcadeRe - 0x2B1950); "widget_arcade_reset"
2B194A:  ADD             R0, SP, #0x138+var_12C; char *
2B194C:  ADD             R1, PC; "widget_arcade_reset"
2B194E:  BLX             strcasecmp
2B1952:  CMP             R0, #0
2B1954:  BEQ.W           loc_2B1D24
2B1958:  LDR.W           R1, =(aWidgetArcadeJo - 0x2B1962); "widget_arcade_joystick"
2B195C:  ADD             R0, SP, #0x138+var_12C; char *
2B195E:  ADD             R1, PC; "widget_arcade_joystick"
2B1960:  BLX             strcasecmp
2B1964:  CMP             R0, #0
2B1966:  BEQ.W           loc_2B1D28
2B196A:  LDR.W           R1, =(aWidgetTrainNex - 0x2B1974); "widget_train_next_station"
2B196E:  ADD             R0, SP, #0x138+var_12C; char *
2B1970:  ADD             R1, PC; "widget_train_next_station"
2B1972:  BLX             strcasecmp
2B1976:  CMP             R0, #0
2B1978:  BEQ.W           loc_2B1D2C
2B197C:  LDR.W           R1, =(aWidgetTapMeter - 0x2B1986); "widget_tap_meter_button"
2B1980:  ADD             R0, SP, #0x138+var_12C; char *
2B1982:  ADD             R1, PC; "widget_tap_meter_button"
2B1984:  BLX             strcasecmp
2B1988:  CMP             R0, #0
2B198A:  BEQ.W           loc_2B1D30
2B198E:  LDR.W           R1, =(aWidgetHandbrak - 0x2B1998); "widget_handbrake"
2B1992:  ADD             R0, SP, #0x138+var_12C; char *
2B1994:  ADD             R1, PC; "widget_handbrake"
2B1996:  BLX             strcasecmp
2B199A:  CMP             R0, #0
2B199C:  BEQ.W           loc_2B1D34
2B19A0:  LDR.W           R1, =(aWidgetAutoHydr - 0x2B19AA); "widget_auto_hydraulics"
2B19A4:  ADD             R0, SP, #0x138+var_12C; char *
2B19A6:  ADD             R1, PC; "widget_auto_hydraulics"
2B19A8:  BLX             strcasecmp
2B19AC:  CMP             R0, #0
2B19AE:  BEQ.W           loc_2B1D38
2B19B2:  LDR.W           R1, =(aWidgetRadar - 0x2B19BC); "widget_radar"
2B19B6:  ADD             R0, SP, #0x138+var_12C; char *
2B19B8:  ADD             R1, PC; "widget_radar"
2B19BA:  BLX             strcasecmp
2B19BE:  CMP             R0, #0
2B19C0:  BEQ.W           loc_2B1D3C
2B19C4:  LDR.W           R1, =(aWidgetRhythmEx - 0x2B19CE); "widget_rhythm_exit"
2B19C8:  ADD             R0, SP, #0x138+var_12C; char *
2B19CA:  ADD             R1, PC; "widget_rhythm_exit"
2B19CC:  BLX             strcasecmp
2B19D0:  CMP             R0, #0
2B19D2:  BEQ.W           loc_2B1D40
2B19D6:  LDR.W           R1, =(aWidgetAirGun - 0x2B19E0); "widget_air_gun"
2B19DA:  ADD             R0, SP, #0x138+var_12C; char *
2B19DC:  ADD             R1, PC; "widget_air_gun"
2B19DE:  BLX             strcasecmp
2B19E2:  CMP             R0, #0
2B19E4:  BEQ.W           loc_2B1D44
2B19E8:  LDR.W           R1, =(aWidgetSchoolLe - 0x2B19F2); "widget_school_left"
2B19EC:  ADD             R0, SP, #0x138+var_12C; char *
2B19EE:  ADD             R1, PC; "widget_school_left"
2B19F0:  BLX             strcasecmp
2B19F4:  CMP             R0, #0
2B19F6:  BEQ.W           loc_2B1D48
2B19FA:  LDR.W           R1, =(aWidgetSchoolRi - 0x2B1A04); "widget_school_right"
2B19FE:  ADD             R0, SP, #0x138+var_12C; char *
2B1A00:  ADD             R1, PC; "widget_school_right"
2B1A02:  BLX             strcasecmp
2B1A06:  CMP             R0, #0
2B1A08:  BEQ.W           loc_2B1D4C
2B1A0C:  LDR.W           R1, =(aWidgetHydrauli - 0x2B1A16); "widget_hydraulics"
2B1A10:  ADD             R0, SP, #0x138+var_12C; char *
2B1A12:  ADD             R1, PC; "widget_hydraulics"
2B1A14:  BLX             strcasecmp
2B1A18:  CMP             R0, #0
2B1A1A:  BEQ.W           loc_2B1D50
2B1A1E:  LDR.W           R1, =(aWidgetGymEasie - 0x2B1A28); "widget_gym_easier"
2B1A22:  ADD             R0, SP, #0x138+var_12C; char *
2B1A24:  ADD             R1, PC; "widget_gym_easier"
2B1A26:  BLX             strcasecmp
2B1A2A:  CMP             R0, #0
2B1A2C:  BEQ.W           loc_2B1D54
2B1A30:  LDR.W           R1, =(aWidgetGymHarde - 0x2B1A3A); "widget_gym_harder"
2B1A34:  ADD             R0, SP, #0x138+var_12C; char *
2B1A36:  ADD             R1, PC; "widget_gym_harder"
2B1A38:  BLX             strcasecmp
2B1A3C:  CMP             R0, #0
2B1A3E:  BEQ.W           loc_2B1D58
2B1A42:  LDR.W           R1, =(aWidgetSchoolCo - 0x2B1A4C); "widget_school_continue"
2B1A46:  ADD             R0, SP, #0x138+var_12C; char *
2B1A48:  ADD             R1, PC; "widget_school_continue"
2B1A4A:  BLX             strcasecmp
2B1A4E:  CMP             R0, #0
2B1A50:  BEQ.W           loc_2B1D5C
2B1A54:  LDR.W           R1, =(aWidgetSchoolEx - 0x2B1A5E); "widget_school_exit"
2B1A58:  ADD             R0, SP, #0x138+var_12C; char *
2B1A5A:  ADD             R1, PC; "widget_school_exit"
2B1A5C:  BLX             strcasecmp
2B1A60:  CMP             R0, #0
2B1A62:  BEQ.W           loc_2B1D60
2B1A66:  LDR.W           R1, =(aWidgetItbExit - 0x2B1A70); "widget_itb_exit"
2B1A6A:  ADD             R0, SP, #0x138+var_12C; char *
2B1A6C:  ADD             R1, PC; "widget_itb_exit"
2B1A6E:  BLX             strcasecmp
2B1A72:  CMP             R0, #0
2B1A74:  BEQ.W           loc_2B1D64
2B1A78:  LDR.W           R1, =(aWidgetVideoPok - 0x2B1A82); "widget_video_poker_exit"
2B1A7C:  ADD             R0, SP, #0x138+var_12C; char *
2B1A7E:  ADD             R1, PC; "widget_video_poker_exit"
2B1A80:  BLX             strcasecmp
2B1A84:  CMP             R0, #0
2B1A86:  BEQ.W           loc_2B1D68
2B1A8A:  LDR.W           R1, =(aWidgetThumbCir - 0x2B1A94); "widget_thumb_circle"
2B1A8E:  ADD             R0, SP, #0x138+var_12C; char *
2B1A90:  ADD             R1, PC; "widget_thumb_circle"
2B1A92:  BLX             strcasecmp
2B1A96:  CMP             R0, #0
2B1A98:  BEQ.W           loc_2B1D6C
2B1A9C:  LDR.W           R1, =(aWidgetAccelera - 0x2B1AA6); "widget_accelerate"
2B1AA0:  ADD             R0, SP, #0x138+var_12C; char *
2B1AA2:  ADD             R1, PC; "widget_accelerate"
2B1AA4:  BLX             strcasecmp
2B1AA8:  CMP             R0, #0
2B1AAA:  BEQ.W           loc_2B1D70
2B1AAE:  LDR.W           R1, =(aWidgetButtonSw - 0x2B1AB8); "widget_button_swim"
2B1AB2:  ADD             R0, SP, #0x138+var_12C; char *
2B1AB4:  ADD             R1, PC; "widget_button_swim"
2B1AB6:  BLX             strcasecmp
2B1ABA:  CMP             R0, #0
2B1ABC:  BEQ.W           loc_2B1D84
2B1AC0:  LDR.W           R1, =(aWidgetSprint - 0x2B1ACA); "widget_sprint"
2B1AC4:  ADD             R0, SP, #0x138+var_12C; char *
2B1AC6:  ADD             R1, PC; "widget_sprint"
2B1AC8:  BLX             strcasecmp
2B1ACC:  CMP             R0, #0
2B1ACE:  BEQ.W           loc_2B1D92
2B1AD2:  LDR.W           R1, =(aWidgetVehicleS_15 - 0x2B1ADC); "widget_vehicle_steer_left"
2B1AD6:  ADD             R0, SP, #0x138+var_12C; char *
2B1AD8:  ADD             R1, PC; "widget_vehicle_steer_left"
2B1ADA:  BLX             strcasecmp
2B1ADE:  CMP             R0, #0
2B1AE0:  BEQ.W           loc_2B1DA6
2B1AE4:  LDR.W           R1, =(aWidgetVehicleS_16 - 0x2B1AEE); "widget_vehicle_steer_right"
2B1AE8:  ADD             R0, SP, #0x138+var_12C; char *
2B1AEA:  ADD             R1, PC; "widget_vehicle_steer_right"
2B1AEC:  BLX             strcasecmp
2B1AF0:  CBNZ            R0, loc_2B1B4A
2B1AF2:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B1AFA)
2B1AF6:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B1AF8:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B1AFA:  LDR             R1, [R0,#(dword_6F37AC - 0x6F3794)]
2B1AFC:  MOVS            R0, #6
2B1AFE:  B               loc_2B1DB0
2B1B00:  LDR.W           R1, =(aHudBicycle_0 - 0x2B1B0C); "hud_bicycle"
2B1B04:  MOVS            R0, #5
2B1B06:  STR             R5, [SP,#0x138+var_134]
2B1B08:  ADD             R1, PC; "hud_bicycle"
2B1B0A:  B               loc_2B1B3E
2B1B0C:  LDR.W           R1, =(aHudExtinguishe - 0x2B1B14); "hud_extinguisher"
2B1B10:  ADD             R1, PC; "hud_extinguisher"
2B1B12:  B               loc_2B1B3A
2B1B14:  LDR.W           R1, =(aWidgetExplicit_27+0x10 - 0x2B1B1C); "punch"
2B1B18:  ADD             R1, PC; "punch"
2B1B1A:  B               loc_2B1B3A
2B1B1C:  LDR.W           R1, =(aHudThrow - 0x2B1B24); "hud_throw"
2B1B20:  ADD             R1, PC; "hud_throw"
2B1B22:  B               loc_2B1B3A
2B1B24:  LDR.W           R1, =(aHudDetonator - 0x2B1B2C); "hud_detonator"
2B1B28:  ADD             R1, PC; "hud_detonator"
2B1B2A:  B               loc_2B1B3A
2B1B2C:  LDR.W           R1, =(aWidgetVcShoot+0xA - 0x2B1B34); "shoot"
2B1B30:  ADD             R1, PC; "shoot"
2B1B32:  B               loc_2B1B3A
2B1B34:  LDR.W           R1, =(aGoggles - 0x2B1B3C); "goggles"
2B1B38:  ADD             R1, PC; "goggles"
2B1B3A:  MOVS            R0, #1; int
2B1B3C:  STR             R5, [SP,#0x138+var_134]; int
2B1B3E:  VSTR            S16, [SP,#0x138+var_138]
2B1B42:  MOV             R2, R9; int
2B1B44:  MOV             R3, R8; int
2B1B46:  BLX             j__ZN13CWidgetButton20DrawHelpIconExplicitE10HIDMappingPKcfffi; CWidgetButton::DrawHelpIconExplicit(HIDMapping,char const*,float,float,float,int)
2B1B4A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2B1B54)
2B1B4E:  LDR             R1, [SP,#0x138+var_2C]
2B1B50:  ADD             R0, PC; __stack_chk_guard_ptr
2B1B52:  LDR             R0, [R0]; __stack_chk_guard
2B1B54:  LDR             R0, [R0]
2B1B56:  SUBS            R0, R0, R1
2B1B58:  ITTTT EQ
2B1B5A:  ADDEQ           SP, SP, #0x110
2B1B5C:  VPOPEQ          {D8}
2B1B60:  ADDEQ           SP, SP, #4
2B1B62:  POPEQ.W         {R8-R11}
2B1B66:  IT EQ
2B1B68:  POPEQ           {R4-R7,PC}; float
2B1B6A:  BLX             __stack_chk_fail
2B1B6E:  MOVS            R0, #0
2B1B70:  MOVS            R1, #0x10
2B1B72:  B               loc_2B1BDE
2B1B74:  MOVS            R0, #0
2B1B76:  MOVS            R1, #0xF
2B1B78:  B               loc_2B1BDE
2B1B7A:  MOVS            R0, #0
2B1B7C:  MOVS            R1, #0x15
2B1B7E:  B               loc_2B1BDE
2B1B80:  MOVS            R0, #0
2B1B82:  MOVS            R1, #0x56 ; 'V'
2B1B84:  B               loc_2B1BDE
2B1B86:  MOVS            R0, #0
2B1B88:  MOVS            R1, #0x57 ; 'W'
2B1B8A:  B               loc_2B1BDE
2B1B8C:  MOVS            R0, #0
2B1B8E:  MOVS            R1, #0x58 ; 'X'
2B1B90:  B               loc_2B1BDE
2B1B92:  MOVS            R0, #0
2B1B94:  MOVS            R1, #0x59 ; 'Y'
2B1B96:  B               loc_2B1BDE
2B1B98:  MOVS            R0, #0
2B1B9A:  MOVS            R1, #9
2B1B9C:  B               loc_2B1BDE
2B1B9E:  MOVS            R0, #0
2B1BA0:  MOVS            R1, #0xA
2B1BA2:  B               loc_2B1BDE
2B1BA4:  MOVS            R0, #0
2B1BA6:  MOVS            R1, #0x5F ; '_'
2B1BA8:  B               loc_2B1BDE
2B1BAA:  MOVS            R0, #0
2B1BAC:  MOVS            R1, #0x38 ; '8'
2B1BAE:  B               loc_2B1BDE
2B1BB0:  MOVS            R0, #0
2B1BB2:  MOVS            R1, #0x1C
2B1BB4:  B               loc_2B1BDE
2B1BB6:  MOVS            R0, #0
2B1BB8:  MOVS            R1, #0x1E
2B1BBA:  B               loc_2B1BDE
2B1BBC:  MOVS            R0, #0
2B1BBE:  MOVS            R1, #0x64 ; 'd'
2B1BC0:  B               loc_2B1BDE
2B1BC2:  MOVS            R0, #0
2B1BC4:  MOVS            R1, #0x65 ; 'e'
2B1BC6:  B               loc_2B1BDE
2B1BC8:  MOVS            R0, #0
2B1BCA:  MOVS            R1, #0x62 ; 'b'
2B1BCC:  B               loc_2B1BDE
2B1BCE:  MOVS            R0, #0
2B1BD0:  MOVS            R1, #0x66 ; 'f'
2B1BD2:  B               loc_2B1BDE
2B1BD4:  MOVS            R0, #0
2B1BD6:  MOVS            R1, #3
2B1BD8:  B               loc_2B1BDE
2B1BDA:  MOVS            R0, #0
2B1BDC:  MOVS            R1, #4; int
2B1BDE:  STRD.W          R5, R0, [SP,#0x138+var_134]; int
2B1BE2:  MOV             R0, R10; int
2B1BE4:  VSTR            S16, [SP,#0x138+var_138]
2B1BE8:  MOV             R2, R9; int
2B1BEA:  MOV             R3, R8; int
2B1BEC:  BLX             j__ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib; CHID::DrawHelpIcon(char const*,HIDMapping,float,float,float,int,bool)
2B1BF0:  B               loc_2B1B4A
2B1BF2:  MOVS            R0, #0xA7
2B1BF4:  B               loc_2B1BF8
2B1BF6:  MOVS            R0, #0x12
2B1BF8:  LDR.W           R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B1C00)
2B1BFC:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B1BFE:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B1C00:  LDR.W           R0, [R1,R0,LSL#2]
2B1C04:  CMP             R0, #0
2B1C06:  BEQ             loc_2B1B4A
2B1C08:  LDR             R1, [R0]
2B1C0A:  MOV             R2, R9
2B1C0C:  MOV             R3, R8
2B1C0E:  LDR             R6, [R1,#0x10]
2B1C10:  ADD             R1, SP, #0x138+var_12C
2B1C12:  STR             R5, [SP,#0x138+var_134]
2B1C14:  VSTR            S16, [SP,#0x138+var_138]
2B1C18:  BLX             R6
2B1C1A:  B               loc_2B1B4A
2B1C1C:  MOVS            R0, #0
2B1C1E:  B               loc_2B1BF8
2B1C20:  MOVS            R0, #0xA6
2B1C22:  B               loc_2B1BF8
2B1C24:  MOVS            R0, #3
2B1C26:  B               loc_2B1BF8
2B1C28:  MOVS            R0, #8
2B1C2A:  B               loc_2B1BF8
2B1C2C:  MOVS            R0, #9
2B1C2E:  B               loc_2B1BF8
2B1C30:  MOVS            R0, #0xA
2B1C32:  B               loc_2B1BF8
2B1C34:  MOVS            R0, #1
2B1C36:  B               loc_2B1BF8
2B1C38:  MOVS            R0, #0x1D
2B1C3A:  B               loc_2B1BF8
2B1C3C:  MOVS            R0, #0xA0
2B1C3E:  B               loc_2B1BF8
2B1C40:  MOVS            R0, #0xAF
2B1C42:  B               loc_2B1BF8
2B1C44:  MOVS            R0, #0x6C ; 'l'
2B1C46:  B               loc_2B1BF8
2B1C48:  MOVS            R0, #0x6A ; 'j'
2B1C4A:  B               loc_2B1BF8
2B1C4C:  MOVS            R0, #0x6D ; 'm'
2B1C4E:  B               loc_2B1BF8
2B1C50:  MOVS            R0, #0x6E ; 'n'
2B1C52:  B               loc_2B1BF8
2B1C54:  MOVS            R0, #0x6F ; 'o'
2B1C56:  B               loc_2B1BF8
2B1C58:  MOVS            R0, #0x5D ; ']'
2B1C5A:  B               loc_2B1BF8
2B1C5C:  MOVS            R0, #0x5E ; '^'
2B1C5E:  B               loc_2B1BF8
2B1C60:  MOVS            R0, #0x5C ; '\'
2B1C62:  B               loc_2B1BF8
2B1C64:  MOVS            R0, #0x5B ; '['
2B1C66:  B               loc_2B1BF8
2B1C68:  MOVS            R0, #0x45 ; 'E'
2B1C6A:  B               loc_2B1BF8
2B1C6C:  MOVS            R0, #0x47 ; 'G'
2B1C6E:  B               loc_2B1BF8
2B1C70:  MOVS            R0, #0x46 ; 'F'
2B1C72:  B               loc_2B1BF8
2B1C74:  MOVS            R0, #0x48 ; 'H'
2B1C76:  B               loc_2B1BF8
2B1C78:  MOVS            R0, #0x49 ; 'I'
2B1C7A:  B               loc_2B1BF8
2B1C7C:  MOVS            R0, #0x4A ; 'J'
2B1C7E:  B               loc_2B1BF8
2B1C80:  MOVS            R0, #0x29 ; ')'
2B1C82:  B               loc_2B1BF8
2B1C84:  MOVS            R0, #0x5A ; 'Z'
2B1C86:  B               loc_2B1BF8
2B1C88:  MOVS            R0, #0x59 ; 'Y'
2B1C8A:  B               loc_2B1BF8
2B1C8C:  MOVS            R0, #0x13
2B1C8E:  B               loc_2B1BF8
2B1C90:  MOVS            R0, #0x32 ; '2'
2B1C92:  B               loc_2B1BF8
2B1C94:  MOVS            R0, #0x33 ; '3'
2B1C96:  B               loc_2B1BF8
2B1C98:  MOVS            R0, #0x2C ; ','
2B1C9A:  B               loc_2B1BF8
2B1C9C:  MOVS            R0, #0x2D ; '-'
2B1C9E:  B               loc_2B1BF8
2B1CA0:  MOVS            R0, #0x2E ; '.'
2B1CA2:  B               loc_2B1BF8
2B1CA4:  MOVS            R0, #0x2F ; '/'
2B1CA6:  B               loc_2B1BF8
2B1CA8:  MOVS            R0, #0x15
2B1CAA:  B               loc_2B1BF8
2B1CAC:  MOVS            R0, #0x1C
2B1CAE:  B               loc_2B1BF8
2B1CB0:  MOVS            R0, #0x34 ; '4'
2B1CB2:  B               loc_2B1BF8
2B1CB4:  MOVS            R0, #0x35 ; '5'
2B1CB6:  B               loc_2B1BF8
2B1CB8:  MOVS            R0, #0x39 ; '9'
2B1CBA:  B               loc_2B1BF8
2B1CBC:  MOVS            R0, #0x3A ; ':'
2B1CBE:  B               loc_2B1BF8
2B1CC0:  MOVS            R0, #0x3B ; ';'
2B1CC2:  B               loc_2B1BF8
2B1CC4:  MOVS            R0, #0x3C ; '<'
2B1CC6:  B               loc_2B1BF8
2B1CC8:  MOVS            R0, #0x3D ; '='
2B1CCA:  B               loc_2B1BF8
2B1CCC:  MOVS            R0, #0x3E ; '>'
2B1CCE:  B               loc_2B1BF8
2B1CD0:  MOVS            R0, #0x3F ; '?'
2B1CD2:  B               loc_2B1BF8
2B1CD4:  MOVS            R0, #0x36 ; '6'
2B1CD6:  B               loc_2B1BF8
2B1CD8:  MOVS            R0, #0x37 ; '7'
2B1CDA:  B               loc_2B1BF8
2B1CDC:  MOVS            R0, #0x38 ; '8'
2B1CDE:  B               loc_2B1BF8
2B1CE0:  MOVS            R0, #0x21 ; '!'
2B1CE2:  B               loc_2B1BF8
2B1CE4:  MOVS            R0, #0x42 ; 'B'
2B1CE6:  B               loc_2B1BF8
2B1CE8:  MOVS            R0, #0x19
2B1CEA:  B               loc_2B1BF8
2B1CEC:  MOVS            R0, #0x1E
2B1CEE:  B               loc_2B1BF8
2B1CF0:  MOVS            R0, #0x43 ; 'C'
2B1CF2:  B               loc_2B1BF8
2B1CF4:  MOVS            R0, #0xF
2B1CF6:  B               loc_2B1BF8
2B1CF8:  MOVS            R0, #0xE
2B1CFA:  B               loc_2B1BF8
2B1CFC:  MOVS            R0, #0x10
2B1CFE:  B               loc_2B1BF8
2B1D00:  MOVS            R0, #0x11
2B1D02:  B               loc_2B1BF8
2B1D04:  MOVS            R0, #0x1A
2B1D06:  B               loc_2B1BF8
2B1D08:  MOVS            R0, #0x1B
2B1D0A:  B               loc_2B1BF8
2B1D0C:  MOVS            R0, #7
2B1D0E:  B               loc_2B1BF8
2B1D10:  MOVS            R0, #0x44 ; 'D'
2B1D12:  B               loc_2B1BF8
2B1D14:  MOVS            R0, #0x18
2B1D16:  B               loc_2B1BF8
2B1D18:  MOVS            R0, #0x57 ; 'W'
2B1D1A:  B               loc_2B1BF8
2B1D1C:  MOVS            R0, #0x25 ; '%'
2B1D1E:  B               loc_2B1BF8
2B1D20:  MOVS            R0, #0x26 ; '&'
2B1D22:  B               loc_2B1BF8
2B1D24:  MOVS            R0, #0x27 ; '''
2B1D26:  B               loc_2B1BF8
2B1D28:  MOVS            R0, #0x28 ; '('
2B1D2A:  B               loc_2B1BF8
2B1D2C:  MOVS            R0, #0x2A ; '*'
2B1D2E:  B               loc_2B1BF8
2B1D30:  MOVS            R0, #0x2B ; '+'
2B1D32:  B               loc_2B1BF8
2B1D34:  MOVS            R0, #4
2B1D36:  B               loc_2B1BF8
2B1D38:  MOVS            R0, #0xD
2B1D3A:  B               loc_2B1BF8
2B1D3C:  MOVS            R0, #0xA1
2B1D3E:  B               loc_2B1BF8
2B1D40:  MOVS            R0, #0x66 ; 'f'
2B1D42:  B               loc_2B1BF8
2B1D44:  MOVS            R0, #0x17
2B1D46:  B               loc_2B1BF8
2B1D48:  MOVS            R0, #0x4C ; 'L'
2B1D4A:  B               loc_2B1BF8
2B1D4C:  MOVS            R0, #0x4D ; 'M'
2B1D4E:  B               loc_2B1BF8
2B1D50:  MOVS            R0, #0xC
2B1D52:  B               loc_2B1BF8
2B1D54:  MOVS            R0, #0x30 ; '0'
2B1D56:  B               loc_2B1BF8
2B1D58:  MOVS            R0, #0x31 ; '1'
2B1D5A:  B               loc_2B1BF8
2B1D5C:  MOVS            R0, #0x4F ; 'O'
2B1D5E:  B               loc_2B1BF8
2B1D60:  MOVS            R0, #0x4B ; 'K'
2B1D62:  B               loc_2B1BF8
2B1D64:  MOVS            R0, #0x95
2B1D66:  B               loc_2B1BF8
2B1D68:  MOVS            R0, #0x86
2B1D6A:  B               loc_2B1BF8
2B1D6C:  MOVS            R0, #0xA4
2B1D6E:  B               loc_2B1BF8
2B1D70:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2B1D76)
2B1D72:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2B1D74:  LDR             R0, [R0]; MobileSettings::settings ...
2B1D76:  LDR.W           R1, [R0,#(dword_6E051C - 0x6E03F4)]
2B1D7A:  MOVS            R0, #2
2B1D7C:  CMP             R1, #1
2B1D7E:  IT EQ
2B1D80:  MOVEQ           R0, #0x9E
2B1D82:  B               loc_2B1BF8
2B1D84:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2B1D8A)
2B1D86:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2B1D88:  LDR             R0, [R0]; MobileSettings::settings ...
2B1D8A:  LDR.W           R1, [R0,#(dword_6E051C - 0x6E03F4)]
2B1D8E:  MOVS            R0, #0x22 ; '"'
2B1D90:  B               loc_2B1D9E
2B1D92:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2B1D98)
2B1D94:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2B1D96:  LDR             R0, [R0]; MobileSettings::settings ...
2B1D98:  LDR.W           R1, [R0,#(dword_6E051C - 0x6E03F4)]
2B1D9C:  MOVS            R0, #0x1F
2B1D9E:  CMP             R1, #1
2B1DA0:  IT EQ
2B1DA2:  MOVEQ           R0, #0xA8
2B1DA4:  B               loc_2B1BF8
2B1DA6:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B1DAC)
2B1DA8:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B1DAA:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B1DAC:  LDR             R1, [R0,#(dword_6F37A8 - 0x6F3794)]
2B1DAE:  MOVS            R0, #5
2B1DB0:  CMP             R1, #0
2B1DB2:  IT EQ
2B1DB4:  MOVEQ           R0, #0xA7
2B1DB6:  B               loc_2B1BF8
