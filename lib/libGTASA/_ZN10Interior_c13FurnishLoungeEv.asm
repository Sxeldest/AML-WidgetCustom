; =========================================================
; Game Engine Function: _ZN10Interior_c13FurnishLoungeEv
; Address            : 0x44B1F0 - 0x44BAD2
; =========================================================

44B1F0:  PUSH            {R4-R7,LR}
44B1F2:  ADD             R7, SP, #0xC
44B1F4:  PUSH.W          {R8-R11}
44B1F8:  SUB             SP, SP, #4
44B1FA:  VPUSH           {D8-D9}
44B1FE:  SUB             SP, SP, #0x68
44B200:  MOV             R8, R0
44B202:  MOVS            R4, #1
44B204:  LDR.W           R0, [R8,#0x14]
44B208:  MOVS            R5, #0
44B20A:  MOVS            R2, #0; int
44B20C:  MOVS            R3, #2; int
44B20E:  MOVS            R6, #2
44B210:  LDRB            R1, [R0,#2]
44B212:  STR             R1, [SP,#0x98+var_60]
44B214:  LDRB            R1, [R0,#3]
44B216:  STR             R1, [SP,#0x98+var_64]
44B218:  MOVS            R1, #7
44B21A:  LDRSB.W         R0, [R0,#5]
44B21E:  STRD.W          R4, R1, [SP,#0x98+var_98]; int
44B222:  SUBS            R1, R0, #1; int
44B224:  MOV             R0, R8; this
44B226:  STR             R5, [SP,#0x98+var_90]; unsigned __int8
44B228:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B22C:  LDR.W           R0, [R8,#0x14]
44B230:  MOVS            R2, #0; int
44B232:  MOVS            R3, #1; int
44B234:  LDRSB.W         R0, [R0,#5]
44B238:  STRD.W          R4, R6, [SP,#0x98+var_98]; int
44B23C:  SUBS            R1, R0, #2; int
44B23E:  MOV             R0, R8; this
44B240:  STR             R5, [SP,#0x98+var_90]; unsigned __int8
44B242:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B246:  LDR.W           R0, [R8,#0x14]
44B24A:  MOVS            R2, #0; int
44B24C:  MOVS            R3, #1; int
44B24E:  LDRSB.W         R0, [R0,#5]
44B252:  STRD.W          R4, R6, [SP,#0x98+var_98]; int
44B256:  ADDS            R1, R0, #1; int
44B258:  MOV             R0, R8; this
44B25A:  STR             R5, [SP,#0x98+var_90]; unsigned __int8
44B25C:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B260:  ADD             R0, SP, #0x98+var_38
44B262:  ADD             R2, SP, #0x98+var_34
44B264:  ADD             R1, SP, #0x98+var_40
44B266:  STR             R0, [SP,#0x98+var_78]; int *
44B268:  ADD             R0, SP, #0x98+var_44
44B26A:  ADD             R3, SP, #0x98+var_3C
44B26C:  MOV.W           R6, #0xFFFFFFFF
44B270:  STRD.W          R5, R4, [SP,#0x98+var_98]; int
44B274:  STRD.W          R6, R5, [SP,#0x98+var_90]; int
44B278:  STRD.W          R3, R1, [SP,#0x98+var_88]; int
44B27C:  MOVS            R1, #2; int
44B27E:  STRD.W          R0, R2, [SP,#0x98+var_80]; int *
44B282:  MOV             R0, R8; this
44B284:  MOVS            R2, #2; int
44B286:  MOV.W           R3, #0xFFFFFFFF; int
44B28A:  BLX             j__ZN10Interior_c22PlaceFurnitureInCornerEiiifiiiPiS0_S0_S0_S0_; Interior_c::PlaceFurnitureInCorner(int,int,int,float,int,int,int,int *,int *,int *,int *,int *)
44B28E:  LDR             R1, [SP,#0x98+var_3C]; int
44B290:  CBZ             R0, loc_44B29E
44B292:  MOV             R0, R8; this
44B294:  BLX             j__ZN10Interior_c12Lounge_AddTVEiiii; Interior_c::Lounge_AddTV(int,int,int,int)
44B298:  LDR             R1, [SP,#0x98+var_3C]
44B29A:  MOV             R0, R1
44B29C:  B               loc_44B2A2
44B29E:  MOV.W           R0, #0xFFFFFFFF
44B2A2:  STR             R0, [SP,#0x98+var_5C]
44B2A4:  MOV             R0, R8; this
44B2A6:  MOVS            R2, #2; int
44B2A8:  MOVS            R3, #2; int
44B2AA:  STR             R4, [SP,#0x98+var_98]; unsigned __int8
44B2AC:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B2B0:  LDR.W           R0, [R8,#0x14]
44B2B4:  LDRB            R1, [R0,#2]
44B2B6:  LDRB            R0, [R0,#3]
44B2B8:  SUB.W           R10, R1, #2
44B2BC:  CMP             R1, #3
44B2BE:  SUB.W           R11, R0, #2
44B2C2:  STR             R0, [SP,#0x98+var_68]
44B2C4:  BCC             loc_44B2FA
44B2C6:  MOVS            R5, #0
44B2C8:  MOV.W           R9, #3
44B2CC:  MOVS            R6, #1
44B2CE:  MOVS            R4, #0
44B2D0:  ADDS            R4, #1
44B2D2:  MOV             R0, R8; this
44B2D4:  MOV             R2, R11; int
44B2D6:  MOVS            R3, #1; int
44B2D8:  MOV             R1, R4; int
44B2DA:  STRD.W          R6, R9, [SP,#0x98+var_98]; int
44B2DE:  STR             R5, [SP,#0x98+var_90]; unsigned __int8
44B2E0:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B2E4:  MOV             R0, R8; this
44B2E6:  MOV             R1, R4; int
44B2E8:  MOVS            R2, #1; int
44B2EA:  MOVS            R3, #1; int
44B2EC:  STRD.W          R6, R9, [SP,#0x98+var_98]; int
44B2F0:  STR             R5, [SP,#0x98+var_90]; int
44B2F2:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B2F6:  CMP             R10, R4
44B2F8:  BNE             loc_44B2D0
44B2FA:  LDR             R0, [SP,#0x98+var_68]
44B2FC:  CMP             R0, #3
44B2FE:  BCC             loc_44B330
44B300:  MOV.W           R9, #0
44B304:  MOVS            R6, #3
44B306:  MOVS            R5, #1
44B308:  MOVS            R4, #0
44B30A:  ADDS            R4, #1
44B30C:  MOV             R0, R8; this
44B30E:  MOVS            R1, #1; int
44B310:  MOVS            R3, #1; int
44B312:  MOV             R2, R4; int
44B314:  STMEA.W         SP, {R5,R6,R9}
44B318:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B31C:  MOV             R0, R8; this
44B31E:  MOV             R1, R10; int
44B320:  MOV             R2, R4; int
44B322:  MOVS            R3, #1; int
44B324:  STMEA.W         SP, {R5,R6,R9}
44B328:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B32C:  CMP             R11, R4
44B32E:  BNE             loc_44B30A
44B330:  MOVS            R4, #0
44B332:  MOV             R0, R8; this
44B334:  MOVS            R1, #1; int
44B336:  MOVS            R2, #1; int
44B338:  MOVS            R3, #0; float
44B33A:  STR             R4, [SP,#0x98+var_98]; float
44B33C:  MOVS            R6, #1
44B33E:  BLX             j__ZN10Interior_c9AddGotoPtEiiff; Interior_c::AddGotoPt(int,int,float,float)
44B342:  MOV             R0, R8; this
44B344:  MOVS            R1, #1; int
44B346:  MOV             R2, R11; int
44B348:  MOVS            R3, #0; float
44B34A:  STR             R4, [SP,#0x98+var_98]; float
44B34C:  BLX             j__ZN10Interior_c9AddGotoPtEiiff; Interior_c::AddGotoPt(int,int,float,float)
44B350:  MOV             R0, R8; this
44B352:  MOV             R1, R10; int
44B354:  MOVS            R2, #1; int
44B356:  MOVS            R3, #0; float
44B358:  STR             R4, [SP,#0x98+var_98]; float
44B35A:  BLX             j__ZN10Interior_c9AddGotoPtEiiff; Interior_c::AddGotoPt(int,int,float,float)
44B35E:  MOV             R0, R8; this
44B360:  MOV             R1, R10; int
44B362:  MOV             R2, R11; int
44B364:  MOVS            R3, #0; float
44B366:  STR             R4, [SP,#0x98+var_98]; float
44B368:  BLX             j__ZN10Interior_c9AddGotoPtEiiff; Interior_c::AddGotoPt(int,int,float,float)
44B36C:  MOV             R0, R8; this
44B36E:  MOVS            R1, #0; int
44B370:  MOVS            R2, #2; int
44B372:  MOVS            R3, #2; int
44B374:  STR             R4, [SP,#0x98+var_98]; unsigned __int8
44B376:  MOV.W           R9, #2
44B37A:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B37E:  MOV             R0, R8; this
44B380:  MOVS            R1, #2; int
44B382:  MOVS            R2, #2; int
44B384:  MOVS            R3, #2; int
44B386:  STR             R4, [SP,#0x98+var_98]; unsigned __int8
44B388:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B38C:  MOV             R0, R8; this
44B38E:  MOVS            R1, #1; int
44B390:  MOVS            R2, #2; int
44B392:  MOVS            R3, #2; int
44B394:  STR             R4, [SP,#0x98+var_98]; unsigned __int8
44B396:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B39A:  MOV             R0, R8; this
44B39C:  MOVS            R1, #3; int
44B39E:  MOVS            R2, #2; int
44B3A0:  MOVS            R3, #2; int
44B3A2:  STR             R4, [SP,#0x98+var_98]; float
44B3A4:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B3A8:  LDR.W           R0, =(g_furnitureMan_ptr - 0x44B3B6)
44B3AC:  MOVS            R2, #0; int
44B3AE:  LDR.W           R1, [R8,#0x14]
44B3B2:  ADD             R0, PC; g_furnitureMan_ptr
44B3B4:  LDRB            R3, [R1,#0x1F]; unsigned __int8
44B3B6:  MOVS            R1, #2; int
44B3B8:  LDR             R0, [R0]; g_furnitureMan ; this
44B3BA:  BLX             j__ZN18FurnitureManager_c11GetRandomIdEiih; FurnitureManager_c::GetRandomId(int,int,uchar)
44B3BE:  ADD             R5, SP, #0x98+var_48
44B3C0:  MOV.W           R11, #0xFFFFFFFF
44B3C4:  ADD             R1, SP, #0x98+var_3C
44B3C6:  STRB.W          R0, [R8,#0x791]
44B3CA:  STRD.W          R4, R4, [SP,#0x98+var_78]; int *
44B3CE:  SXTB            R3, R0; int
44B3D0:  STR             R4, [SP,#0x98+var_70]; int *
44B3D2:  MOV             R0, R8; this
44B3D4:  STMEA.W         SP, {R4,R6,R11}
44B3D8:  MOVS            R2, #0; int
44B3DA:  STRD.W          R11, R4, [SP,#0x98+var_8C]; int
44B3DE:  STRD.W          R1, R5, [SP,#0x98+var_84]; int *
44B3E2:  MOVS            R1, #2; int
44B3E4:  STR             R4, [SP,#0x98+var_7C]; int *
44B3E6:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B3EA:  MOV             R3, R0; CEntity *
44B3EC:  CBZ             R3, loc_44B452
44B3EE:  LDR             R2, [SP,#0x98+var_48]; int
44B3F0:  MOV             R0, R8; this
44B3F2:  LDR             R1, [SP,#0x98+var_3C]; int
44B3F4:  BLX             j__ZN10Interior_c18Lounge_AddSofaInfoEiiP7CEntity; Interior_c::Lounge_AddSofaInfo(int,int,CEntity *)
44B3F8:  LDR             R0, [SP,#0x98+var_3C]
44B3FA:  ADD             R2, SP, #0x98+var_90
44B3FC:  LDR             R1, [SP,#0x98+var_48]
44B3FE:  MOV.W           R3, #0xFFFFFFFF; int
44B402:  STRD.W          R4, R4, [SP,#0x98+var_74]; int *
44B406:  STRD.W          R4, R6, [SP,#0x98+var_98]; float
44B40A:  STM.W           R2, {R0,R1,R9}
44B40E:  MOV             R0, R8; this
44B410:  MOVS            R1, #2; int
44B412:  MOVS            R2, #4; int
44B414:  STRD.W          R4, R4, [SP,#0x98+var_84]; int *
44B418:  STRD.W          R4, R4, [SP,#0x98+var_7C]; int *
44B41C:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B420:  CBNZ            R0, loc_44B452
44B422:  LDR             R0, [SP,#0x98+var_3C]
44B424:  MOVS            R2, #0
44B426:  MOVS            R3, #1
44B428:  LDR             R1, [SP,#0x98+var_48]
44B42A:  STRD.W          R2, R2, [SP,#0x98+var_78]; int *
44B42E:  MOV.W           R12, #3
44B432:  STR             R2, [SP,#0x98+var_70]; int *
44B434:  STRD.W          R2, R3, [SP,#0x98+var_98]; float
44B438:  ADD             R3, SP, #0x98+var_90
44B43A:  STM.W           R3, {R0,R1,R12}
44B43E:  MOV             R0, R8; this
44B440:  MOVS            R1, #2; int
44B442:  STRD.W          R2, R2, [SP,#0x98+var_84]; int *
44B446:  MOV.W           R3, #0xFFFFFFFF; int
44B44A:  STR             R2, [SP,#0x98+var_7C]; int *
44B44C:  MOVS            R2, #4; int
44B44E:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B452:  LDRSB.W         R3, [R8,#0x791]; int
44B456:  MOV             R0, R8; this
44B458:  MOVS            R1, #2; int
44B45A:  MOVS            R2, #1; int
44B45C:  STRD.W          R4, R4, [SP,#0x98+var_78]; int *
44B460:  ADD.W           R9, SP, #0x98+var_3C
44B464:  STR             R4, [SP,#0x98+var_70]; int *
44B466:  STMEA.W         SP, {R4,R6,R11}
44B46A:  STRD.W          R11, R4, [SP,#0x98+var_8C]; int
44B46E:  STRD.W          R9, R5, [SP,#0x98+var_84]; int
44B472:  STR             R4, [SP,#0x98+var_7C]; int *
44B474:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B478:  MOV             R3, R0; CEntity *
44B47A:  CBZ             R3, loc_44B486
44B47C:  LDR             R2, [SP,#0x98+var_48]; int
44B47E:  MOV             R0, R8; this
44B480:  LDR             R1, [SP,#0x98+var_3C]; int
44B482:  BLX             j__ZN10Interior_c19Lounge_AddChairInfoEiiP7CEntity; Interior_c::Lounge_AddChairInfo(int,int,CEntity *)
44B486:  LDRD.W          R1, R0, [SP,#0x98+var_64]
44B48A:  MOVS            R2, #1
44B48C:  LDRSB.W         R3, [R8,#0x791]; int
44B490:  ADDS            R4, R1, R0
44B492:  MOVS            R0, #0
44B494:  MOV.W           R1, #0xFFFFFFFF
44B498:  STRD.W          R0, R0, [SP,#0x98+var_78]; int *
44B49C:  STR             R0, [SP,#0x98+var_70]; int *
44B49E:  STRD.W          R0, R2, [SP,#0x98+var_98]; float
44B4A2:  MOVS            R2, #1; int
44B4A4:  STRD.W          R1, R1, [SP,#0x98+var_90]; int
44B4A8:  MOVS            R1, #2; int
44B4AA:  STRD.W          R0, R9, [SP,#0x98+var_88]; int
44B4AE:  STRD.W          R5, R0, [SP,#0x98+var_80]; int *
44B4B2:  MOV             R0, R8; this
44B4B4:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B4B8:  LDR             R6, [SP,#0x98+var_5C]
44B4BA:  MOV             R3, R0; CEntity *
44B4BC:  CBZ             R3, loc_44B4C8
44B4BE:  LDR             R2, [SP,#0x98+var_48]; int
44B4C0:  MOV             R0, R8; this
44B4C2:  LDR             R1, [SP,#0x98+var_3C]; int
44B4C4:  BLX             j__ZN10Interior_c19Lounge_AddChairInfoEiiP7CEntity; Interior_c::Lounge_AddChairInfo(int,int,CEntity *)
44B4C8:  CMP             R4, #0xF
44B4CA:  BCC             loc_44B506
44B4CC:  LDRSB.W         R3, [R8,#0x791]; int
44B4D0:  MOVS            R0, #0
44B4D2:  MOV.W           R1, #0xFFFFFFFF
44B4D6:  MOVS            R2, #1
44B4D8:  STRD.W          R0, R0, [SP,#0x98+var_78]; int *
44B4DC:  STR             R0, [SP,#0x98+var_70]; int *
44B4DE:  STRD.W          R0, R2, [SP,#0x98+var_98]; float
44B4E2:  MOVS            R2, #1; int
44B4E4:  STRD.W          R1, R1, [SP,#0x98+var_90]; int
44B4E8:  MOVS            R1, #2; int
44B4EA:  STRD.W          R0, R9, [SP,#0x98+var_88]; int
44B4EE:  STRD.W          R5, R0, [SP,#0x98+var_80]; int *
44B4F2:  MOV             R0, R8; this
44B4F4:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B4F8:  MOV             R3, R0; CEntity *
44B4FA:  CBZ             R3, loc_44B506
44B4FC:  LDR             R2, [SP,#0x98+var_48]; int
44B4FE:  MOV             R0, R8; this
44B500:  LDR             R1, [SP,#0x98+var_3C]; int
44B502:  BLX             j__ZN10Interior_c19Lounge_AddChairInfoEiiP7CEntity; Interior_c::Lounge_AddChairInfo(int,int,CEntity *)
44B506:  CBZ             R6, loc_44B544
44B508:  MOVS            R4, #0
44B50A:  MOV             R0, R8; this
44B50C:  MOVS            R1, #0; int
44B50E:  MOVS            R2, #2; int
44B510:  MOVS            R3, #0; int
44B512:  STR             R4, [SP,#0x98+var_98]; unsigned __int8
44B514:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B518:  CMP             R6, #2
44B51A:  BEQ             loc_44B554
44B51C:  MOV             R0, R8; this
44B51E:  MOVS            R1, #2; int
44B520:  MOVS            R2, #2; int
44B522:  MOVS            R3, #0; int
44B524:  STR             R4, [SP,#0x98+var_98]; unsigned __int8
44B526:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B52A:  CMP             R6, #1
44B52C:  BEQ             loc_44B564
44B52E:  MOVS            R0, #0
44B530:  MOVS            R1, #1; int
44B532:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
44B534:  MOV             R0, R8; this
44B536:  MOVS            R2, #2; int
44B538:  MOVS            R3, #0; int
44B53A:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B53E:  CMP             R6, #3
44B540:  BNE             loc_44B564
44B542:  B               loc_44B574
44B544:  MOVS            R0, #0
44B546:  MOVS            R1, #2; int
44B548:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
44B54A:  MOV             R0, R8; this
44B54C:  MOVS            R2, #2; int
44B54E:  MOVS            R3, #0; int
44B550:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B554:  MOVS            R0, #0
44B556:  MOVS            R1, #1; int
44B558:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
44B55A:  MOV             R0, R8; this
44B55C:  MOVS            R2, #2; int
44B55E:  MOVS            R3, #0; int
44B560:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B564:  MOVS            R0, #0
44B566:  MOVS            R1, #3; int
44B568:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
44B56A:  MOV             R0, R8; this
44B56C:  MOVS            R2, #2; int
44B56E:  MOVS            R3, #0; int
44B570:  BLX             j__ZN10Interior_c14SetCornerTilesEiiih; Interior_c::SetCornerTiles(int,int,int,uchar)
44B574:  MOVS            R5, #0
44B576:  ADD             R0, SP, #0x98+var_50
44B578:  STRD.W          R0, R5, [SP,#0x98+var_78]; int *
44B57C:  ADD             R0, SP, #0x98+var_4C
44B57E:  MOV.W           R6, #0xFFFFFFFF
44B582:  MOV.W           R10, #1
44B586:  STR             R5, [SP,#0x98+var_70]; int *
44B588:  MOVS            R1, #2; int
44B58A:  STRD.W          R5, R10, [SP,#0x98+var_98]; float
44B58E:  MOVS            R2, #6; int
44B590:  STRD.W          R6, R6, [SP,#0x98+var_90]; float
44B594:  MOV.W           R3, #0xFFFFFFFF; int
44B598:  STRD.W          R5, R9, [SP,#0x98+var_88]; int
44B59C:  STRD.W          R5, R0, [SP,#0x98+var_80]; int *
44B5A0:  MOV             R0, R8; this
44B5A2:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B5A6:  MOVW            R9, #0xFFFF
44B5AA:  CMP             R0, #0
44B5AC:  BEQ             loc_44B636
44B5AE:  VLDR            S0, [SP,#0x98+var_50]
44B5B2:  VLDR            S2, [SP,#0x98+var_4C]
44B5B6:  VCVT.F32.S32    S16, S0
44B5BA:  VCVT.F32.S32    S18, S2
44B5BE:  LDR             R1, [SP,#0x98+var_3C]
44B5C0:  VMOV.F32        S0, #0.5
44B5C4:  ORR.W           R0, R1, #2
44B5C8:  AND.W           R4, R1, #3
44B5CC:  CMP             R0, #2
44B5CE:  BNE             loc_44B5D6
44B5D0:  VADD.F32        S18, S18, S0
44B5D4:  B               loc_44B5E2
44B5D6:  VADD.F32        S0, S16, S0
44B5DA:  CMP             R0, #3
44B5DC:  IT EQ
44B5DE:  VMOVEQ.F32      S16, S0
44B5E2:  LDR.W           R0, =(g_furnitureMan_ptr - 0x44B5F4)
44B5E6:  SXTH.W          R3, R9; __int16
44B5EA:  LDR.W           R1, [R8,#0x14]
44B5EE:  MOVS            R2, #8; int
44B5F0:  ADD             R0, PC; g_furnitureMan_ptr
44B5F2:  LDR             R0, [R0]; g_furnitureMan ; this
44B5F4:  LDRB            R1, [R1,#0x1F]
44B5F6:  STR             R1, [SP,#0x98+var_98]; float
44B5F8:  MOVS            R1, #2; int
44B5FA:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B5FE:  VMOV.F32        S0, #0.5
44B602:  VLDR            S4, =90.0
44B606:  MOV             R2, R0; int
44B608:  MOV.W           R0, #0x3F000000
44B60C:  MOVS            R1, #1; int
44B60E:  VADD.F32        S2, S18, S0
44B612:  VADD.F32        S0, S16, S0
44B616:  VMOV            R3, S2; int
44B61A:  VMOV            S2, R4
44B61E:  VCVT.F32.S32    S2, S2
44B622:  STR             R0, [SP,#0x98+var_94]; int
44B624:  MOV             R0, R8; int
44B626:  VSTR            S0, [SP,#0x98+var_98]
44B62A:  VMUL.F32        S2, S2, S4
44B62E:  VSTR            S2, [SP,#0x98+var_90]
44B632:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B636:  MOV             R0, R8; this
44B638:  MOVS            R1, #2; int
44B63A:  MOVS            R2, #5; int
44B63C:  MOV.W           R3, #0xFFFFFFFF; int
44B640:  STRD.W          R5, R5, [SP,#0x98+var_78]; int *
44B644:  STR             R5, [SP,#0x98+var_70]; int *
44B646:  STRD.W          R5, R10, [SP,#0x98+var_98]; float
44B64A:  STRD.W          R6, R6, [SP,#0x98+var_90]; int
44B64E:  STRD.W          R5, R5, [SP,#0x98+var_88]; int
44B652:  STRD.W          R5, R5, [SP,#0x98+var_80]; int *
44B656:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B65A:  MOV             R0, R8; this
44B65C:  MOVS            R1, #8; int
44B65E:  MOVS            R2, #0; int
44B660:  MOV.W           R3, #0xFFFFFFFF; int
44B664:  STRD.W          R5, R5, [SP,#0x98+var_78]; int *
44B668:  STR             R5, [SP,#0x98+var_70]; int *
44B66A:  STRD.W          R5, R10, [SP,#0x98+var_98]; float
44B66E:  STRD.W          R6, R6, [SP,#0x98+var_90]; int
44B672:  STRD.W          R5, R5, [SP,#0x98+var_88]; int
44B676:  STRD.W          R5, R5, [SP,#0x98+var_80]; int *
44B67A:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B67E:  MOV             R0, R8; this
44B680:  MOVS            R1, #8; int
44B682:  MOVS            R2, #0; int
44B684:  MOV.W           R3, #0xFFFFFFFF; int
44B688:  STRD.W          R5, R5, [SP,#0x98+var_78]; int *
44B68C:  STR             R5, [SP,#0x98+var_70]; int *
44B68E:  STRD.W          R5, R10, [SP,#0x98+var_98]; float
44B692:  STRD.W          R6, R6, [SP,#0x98+var_90]; float
44B696:  STRD.W          R5, R5, [SP,#0x98+var_88]; int
44B69A:  STRD.W          R5, R5, [SP,#0x98+var_80]; int *
44B69E:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44B6A2:  LDR.W           R0, [R8,#0x14]
44B6A6:  LDRB            R4, [R0,#0x1F]
44B6A8:  CMP             R4, #0x4B ; 'K'
44B6AA:  BCC             loc_44B6D4
44B6AC:  BLX             rand
44B6B0:  UXTH            R0, R0
44B6B2:  VLDR            S2, =0.000015259
44B6B6:  VMOV            S0, R0
44B6BA:  VMOV.F32        S4, #20.0
44B6BE:  VCVT.F32.S32    S0, S0
44B6C2:  VMUL.F32        S0, S0, S2
44B6C6:  VMUL.F32        S0, S0, S4
44B6CA:  VCVT.S32.F32    S0, S0
44B6CE:  VMOV            R5, S0
44B6D2:  B               loc_44B720
44B6D4:  BLX             rand
44B6D8:  UXTH            R0, R0
44B6DA:  VLDR            S2, =0.000015259
44B6DE:  VMOV            S0, R0
44B6E2:  CMP             R4, #0x32 ; '2'
44B6E4:  VCVT.F32.S32    S0, S0
44B6E8:  VMUL.F32        S0, S0, S2
44B6EC:  BCC             loc_44B70C
44B6EE:  VMOV.F32        S2, #30.0
44B6F2:  VMUL.F32        S0, S0, S2
44B6F6:  VCVT.S32.F32    S0, S0
44B6FA:  VMOV            R0, S0
44B6FE:  ADD.W           R5, R0, #0x14
44B702:  B               loc_44B720
44B704:  DCFS 90.0
44B708:  DCFS 0.000015259
44B70C:  VLDR            S2, =50.0
44B710:  VMUL.F32        S0, S0, S2
44B714:  VCVT.S32.F32    S0, S0
44B718:  VMOV            R0, S0
44B71C:  ADD.W           R5, R0, #0x32 ; '2'
44B720:  ADD.W           R10, SP, #0x98+var_38
44B724:  BLX             rand
44B728:  UXTH            R0, R0
44B72A:  VLDR            S16, =0.000015259
44B72E:  VMOV            S0, R0
44B732:  VLDR            S2, =60.0
44B736:  VCVT.F32.S32    S0, S0
44B73A:  VMUL.F32        S0, S0, S16
44B73E:  VMUL.F32        S0, S0, S2
44B742:  VCVT.S32.F32    S0, S0
44B746:  VMOV            R0, S0
44B74A:  CMP             R5, R0
44B74C:  BLE             loc_44B7CA
44B74E:  ADD             R0, SP, #0x98+var_58
44B750:  ADD             R3, SP, #0x98+var_54; int *
44B752:  STR             R0, [SP,#0x98+var_98]; int *
44B754:  MOV             R0, R8; this
44B756:  MOVS            R1, #2; int
44B758:  MOVS            R2, #2; int
44B75A:  MOVS            R4, #2
44B75C:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
44B760:  CBZ             R0, loc_44B7CA
44B762:  LDR             R0, =(g_furnitureMan_ptr - 0x44B772)
44B764:  SXTH.W          R3, R9; __int16
44B768:  LDR.W           R1, [R8,#0x14]
44B76C:  MOVS            R2, #2; int
44B76E:  ADD             R0, PC; g_furnitureMan_ptr
44B770:  LDR             R0, [R0]; g_furnitureMan ; this
44B772:  LDRB            R1, [R1,#0x1F]
44B774:  STR             R1, [SP,#0x98+var_98]; float
44B776:  MOVS            R1, #8; int
44B778:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B77C:  VLDR            S0, [SP,#0x98+var_54]
44B780:  VMOV.F32        S2, #0.5
44B784:  MOV             R2, R0; int
44B786:  MOVW            R0, #0xCCCD
44B78A:  VCVT.F32.S32    S0, S0
44B78E:  MOVS            R6, #0
44B790:  MOVT            R0, #0x3D4C
44B794:  MOVS            R1, #0; int
44B796:  VADD.F32        S0, S0, S2
44B79A:  VMOV            R3, S0; int
44B79E:  VLDR            S0, [SP,#0x98+var_58]
44B7A2:  VCVT.F32.S32    S0, S0
44B7A6:  STRD.W          R0, R6, [SP,#0x98+var_94]; int
44B7AA:  MOV             R0, R8; int
44B7AC:  VADD.F32        S0, S0, S2
44B7B0:  VSTR            S0, [SP,#0x98+var_98]
44B7B4:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B7B8:  LDRD.W          R2, R1, [SP,#0x98+var_58]; int
44B7BC:  MOV             R0, R8; this
44B7BE:  MOVS            R3, #2; int
44B7C0:  STRD.W          R4, R4, [SP,#0x98+var_98]; int
44B7C4:  STR             R6, [SP,#0x98+var_90]; float
44B7C6:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B7CA:  BLX             rand
44B7CE:  UXTH            R0, R0
44B7D0:  VLDR            S18, =100.0
44B7D4:  VMOV            S0, R0
44B7D8:  VCVT.F32.S32    S0, S0
44B7DC:  VMUL.F32        S0, S0, S16
44B7E0:  VMUL.F32        S0, S0, S18
44B7E4:  VCVT.S32.F32    S0, S0
44B7E8:  VMOV            R0, S0
44B7EC:  CMP             R5, R0
44B7EE:  BLE             loc_44B86E
44B7F0:  ADD             R0, SP, #0x98+var_58
44B7F2:  ADD             R3, SP, #0x98+var_54; int *
44B7F4:  STR             R0, [SP,#0x98+var_98]; int *
44B7F6:  MOV             R0, R8; this
44B7F8:  MOVS            R1, #1; int
44B7FA:  MOVS            R2, #1; int
44B7FC:  MOVS            R4, #1
44B7FE:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
44B802:  CBZ             R0, loc_44B86E
44B804:  LDR             R0, =(g_furnitureMan_ptr - 0x44B814)
44B806:  SXTH.W          R3, R9; __int16
44B80A:  LDR.W           R1, [R8,#0x14]
44B80E:  MOVS            R2, #5; int
44B810:  ADD             R0, PC; g_furnitureMan_ptr
44B812:  LDR             R0, [R0]; g_furnitureMan ; this
44B814:  LDRB            R1, [R1,#0x1F]
44B816:  STR             R1, [SP,#0x98+var_98]; float
44B818:  MOVS            R1, #8; int
44B81A:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B81E:  VLDR            S0, [SP,#0x98+var_54]
44B822:  VMOV.F32        S2, #0.5
44B826:  MOV             R2, R0; int
44B828:  MOVW            R0, #0xCCCD
44B82C:  VCVT.F32.S32    S0, S0
44B830:  MOVS            R6, #0
44B832:  MOVT            R0, #0x3D4C
44B836:  MOVS            R1, #0; int
44B838:  VADD.F32        S0, S0, S2
44B83C:  VMOV            R3, S0; int
44B840:  VLDR            S0, [SP,#0x98+var_58]
44B844:  VCVT.F32.S32    S0, S0
44B848:  STRD.W          R0, R6, [SP,#0x98+var_94]; int
44B84C:  MOV             R0, R8; int
44B84E:  VADD.F32        S0, S0, S2
44B852:  VSTR            S0, [SP,#0x98+var_98]
44B856:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B85A:  LDRD.W          R2, R1, [SP,#0x98+var_58]; int
44B85E:  MOVS            R0, #2
44B860:  STRD.W          R4, R0, [SP,#0x98+var_98]; int
44B864:  MOV             R0, R8; this
44B866:  MOVS            R3, #1; int
44B868:  STR             R6, [SP,#0x98+var_90]; float
44B86A:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B86E:  BLX             rand
44B872:  UXTH            R0, R0
44B874:  VMOV            S0, R0
44B878:  VCVT.F32.S32    S0, S0
44B87C:  VMUL.F32        S0, S0, S16
44B880:  VMUL.F32        S0, S0, S18
44B884:  VCVT.S32.F32    S0, S0
44B888:  VMOV            R0, S0
44B88C:  CMP             R5, R0
44B88E:  BLE             loc_44B90E
44B890:  ADD             R0, SP, #0x98+var_58
44B892:  ADD             R3, SP, #0x98+var_54; int *
44B894:  STR             R0, [SP,#0x98+var_98]; int *
44B896:  MOV             R0, R8; this
44B898:  MOVS            R1, #1; int
44B89A:  MOVS            R2, #1; int
44B89C:  MOVS            R4, #1
44B89E:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
44B8A2:  CBZ             R0, loc_44B90E
44B8A4:  LDR             R0, =(g_furnitureMan_ptr - 0x44B8B4)
44B8A6:  SXTH.W          R3, R9; __int16
44B8AA:  LDR.W           R1, [R8,#0x14]
44B8AE:  MOVS            R2, #4; int
44B8B0:  ADD             R0, PC; g_furnitureMan_ptr
44B8B2:  LDR             R0, [R0]; g_furnitureMan ; this
44B8B4:  LDRB            R1, [R1,#0x1F]
44B8B6:  STR             R1, [SP,#0x98+var_98]; float
44B8B8:  MOVS            R1, #8; int
44B8BA:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B8BE:  VLDR            S0, [SP,#0x98+var_54]
44B8C2:  VMOV.F32        S2, #0.5
44B8C6:  MOV             R2, R0; int
44B8C8:  MOVW            R0, #0xCCCD
44B8CC:  VCVT.F32.S32    S0, S0
44B8D0:  MOVS            R5, #0
44B8D2:  MOVT            R0, #0x3D4C
44B8D6:  MOVS            R1, #0; int
44B8D8:  VADD.F32        S0, S0, S2
44B8DC:  VMOV            R3, S0; int
44B8E0:  VLDR            S0, [SP,#0x98+var_58]
44B8E4:  VCVT.F32.S32    S0, S0
44B8E8:  STRD.W          R0, R5, [SP,#0x98+var_94]; int
44B8EC:  MOV             R0, R8; int
44B8EE:  VADD.F32        S0, S0, S2
44B8F2:  VSTR            S0, [SP,#0x98+var_98]
44B8F6:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B8FA:  LDRD.W          R2, R1, [SP,#0x98+var_58]; int
44B8FE:  MOVS            R0, #2
44B900:  STRD.W          R4, R0, [SP,#0x98+var_98]; int
44B904:  MOV             R0, R8; this
44B906:  MOVS            R3, #1; int
44B908:  STR             R5, [SP,#0x98+var_90]; int
44B90A:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44B90E:  LDR             R0, =(g_furnitureMan_ptr - 0x44B91E)
44B910:  SXTH.W          R3, R9; __int16
44B914:  LDR.W           R1, [R8,#0x14]
44B918:  MOVS            R2, #1; int
44B91A:  ADD             R0, PC; g_furnitureMan_ptr
44B91C:  LDR             R0, [R0]; g_furnitureMan ; this
44B91E:  LDRB            R1, [R1,#0x1F]
44B920:  STR             R1, [SP,#0x98+var_98]; unsigned __int8
44B922:  MOVS            R1, #8; int
44B924:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B928:  MOV             R1, R0; int
44B92A:  LDR.W           R0, [R8,#0x14]
44B92E:  LDRB            R2, [R1,#0xC]
44B930:  VMOV.F32        S0, #0.5
44B934:  LDRB            R3, [R1,#0xD]
44B936:  MOV.W           R9, #0
44B93A:  LDRB            R6, [R0,#2]
44B93C:  LDRB            R0, [R0,#3]
44B93E:  VMOV            S2, R2
44B942:  VMOV            S6, R3
44B946:  VMOV            S4, R6
44B94A:  VMOV            S8, R0
44B94E:  ADD             R0, SP, #0x98+var_34
44B950:  VCVT.F32.U32    S2, S2
44B954:  VCVT.F32.U32    S4, S4
44B958:  VCVT.F32.U32    S6, S6
44B95C:  VCVT.F32.U32    S8, S8
44B960:  STRD.W          R10, R9, [SP,#0x98+var_88]; int
44B964:  STR             R0, [SP,#0x98+var_8C]; int
44B966:  MOV             R0, R8; int
44B968:  STRD.W          R9, R9, [SP,#0x98+var_94]; CEntity *
44B96C:  VMUL.F32        S2, S2, S0
44B970:  VMUL.F32        S4, S4, S0
44B974:  VMUL.F32        S6, S6, S0
44B978:  VMUL.F32        S0, S8, S0
44B97C:  VSUB.F32        S2, S4, S2
44B980:  VSUB.F32        S0, S0, S6
44B984:  VCVT.S32.F32    S2, S2
44B988:  VCVT.S32.F32    S0, S0
44B98C:  STR.W           R9, [SP,#0x98+var_98]; float
44B990:  VMOV            R2, S2; int
44B994:  VMOV            R3, S0; int
44B998:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44B99C:  LDR.W           R0, [R8,#0x14]
44B9A0:  LDRB            R1, [R0,#2]
44B9A2:  CMP             R1, #2
44B9A4:  BCC             loc_44BA2E
44B9A6:  MOV.W           R10, #2
44B9AA:  MOVS            R5, #0
44B9AC:  MOV             R0, R8; this
44B9AE:  MOV             R1, R5; int
44B9B0:  MOVS            R2, #0; int
44B9B2:  BLX             j__ZN10Interior_c13GetTileStatusEii; Interior_c::GetTileStatus(int,int)
44B9B6:  MOV             R6, R0
44B9B8:  LDR.W           R0, [R8,#0x14]
44B9BC:  MOV             R1, R5; int
44B9BE:  LDRB            R0, [R0,#3]
44B9C0:  SUBS            R2, R0, #1; int
44B9C2:  MOV             R0, R8; this
44B9C4:  BLX             j__ZN10Interior_c13GetTileStatusEii; Interior_c::GetTileStatus(int,int)
44B9C8:  MOV             R4, R0
44B9CA:  ORR.W           R0, R6, #2
44B9CE:  CMP             R0, #2
44B9D0:  BNE             loc_44B9EC
44B9D2:  VMOV            S0, R5
44B9D6:  MOV             R0, R8; this
44B9D8:  MOVS            R1, #2; int
44B9DA:  MOVS            R3, #0; float
44B9DC:  VCVT.F32.S32    S0, S0
44B9E0:  STRD.W          R10, R9, [SP,#0x98+var_98]; int
44B9E4:  VMOV            R2, S0; float
44B9E8:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44B9EC:  ORR.W           R0, R4, #2
44B9F0:  CMP             R0, #2
44B9F2:  BNE             loc_44BA20
44B9F4:  LDR.W           R0, [R8,#0x14]
44B9F8:  VMOV            S0, R5
44B9FC:  MOVS            R1, #2; int
44B9FE:  LDRB            R0, [R0,#3]
44BA00:  VCVT.F32.S32    S0, S0
44BA04:  SUBS            R0, #1
44BA06:  VMOV            S2, R0
44BA0A:  MOV             R0, R8; this
44BA0C:  VCVT.F32.S32    S2, S2
44BA10:  STRD.W          R9, R9, [SP,#0x98+var_98]; int
44BA14:  VMOV            R2, S0; float
44BA18:  VMOV            R3, S2; float
44BA1C:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BA20:  LDR.W           R0, [R8,#0x14]
44BA24:  ADDS            R5, #1
44BA26:  LDRB            R1, [R0,#2]
44BA28:  SUBS            R1, #1
44BA2A:  CMP             R5, R1
44BA2C:  BLT             loc_44B9AC
44BA2E:  LDRB            R0, [R0,#3]
44BA30:  CMP             R0, #4
44BA32:  BCC             loc_44BAC4
44BA34:  MOV.W           R9, #1
44BA38:  MOV.W           R10, #0
44BA3C:  MOV.W           R11, #3
44BA40:  MOVS            R5, #1
44BA42:  MOV             R0, R8; this
44BA44:  MOVS            R1, #0; int
44BA46:  MOV             R2, R5; int
44BA48:  BLX             j__ZN10Interior_c13GetTileStatusEii; Interior_c::GetTileStatus(int,int)
44BA4C:  MOV             R6, R0
44BA4E:  LDR.W           R0, [R8,#0x14]
44BA52:  MOV             R2, R5; int
44BA54:  LDRB            R0, [R0,#2]
44BA56:  SUBS            R1, R0, #1; int
44BA58:  MOV             R0, R8; this
44BA5A:  BLX             j__ZN10Interior_c13GetTileStatusEii; Interior_c::GetTileStatus(int,int)
44BA5E:  MOV             R4, R0
44BA60:  ORR.W           R0, R6, #2
44BA64:  CMP             R0, #2
44BA66:  BNE             loc_44BA82
44BA68:  VMOV            S0, R5
44BA6C:  MOV             R0, R8; this
44BA6E:  MOVS            R1, #2; int
44BA70:  MOVS            R2, #0; float
44BA72:  VCVT.F32.S32    S0, S0
44BA76:  STRD.W          R9, R10, [SP,#0x98+var_98]; int
44BA7A:  VMOV            R3, S0; float
44BA7E:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BA82:  ORR.W           R0, R4, #2
44BA86:  CMP             R0, #2
44BA88:  BNE             loc_44BAB6
44BA8A:  LDR.W           R0, [R8,#0x14]
44BA8E:  VMOV            S0, R5
44BA92:  MOVS            R1, #2; int
44BA94:  LDRB            R0, [R0,#2]
44BA96:  VCVT.F32.S32    S0, S0
44BA9A:  SUBS            R0, #1
44BA9C:  VMOV            S2, R0
44BAA0:  MOV             R0, R8; this
44BAA2:  VCVT.F32.S32    S2, S2
44BAA6:  STRD.W          R11, R10, [SP,#0x98+var_98]; int
44BAAA:  VMOV            R3, S0; float
44BAAE:  VMOV            R2, S2; float
44BAB2:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BAB6:  LDR.W           R0, [R8,#0x14]
44BABA:  ADDS            R5, #1
44BABC:  LDRB            R0, [R0,#3]
44BABE:  SUBS            R0, #2
44BAC0:  CMP             R5, R0
44BAC2:  BLT             loc_44BA42
44BAC4:  ADD             SP, SP, #0x68 ; 'h'
44BAC6:  VPOP            {D8-D9}
44BACA:  ADD             SP, SP, #4
44BACC:  POP.W           {R8-R11}
44BAD0:  POP             {R4-R7,PC}
