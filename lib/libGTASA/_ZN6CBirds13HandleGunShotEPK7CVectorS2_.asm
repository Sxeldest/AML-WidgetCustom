; =========================================================
; Game Engine Function: _ZN6CBirds13HandleGunShotEPK7CVectorS2_
; Address            : 0x59E314 - 0x59E5C2
; =========================================================

59E314:  PUSH            {R4-R7,LR}
59E316:  ADD             R7, SP, #0xC
59E318:  PUSH.W          {R8}
59E31C:  SUB             SP, SP, #0x38
59E31E:  MOV             R5, R0
59E320:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E328)
59E322:  MOV             R8, R1
59E324:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E326:  LDR             R0, [R0]; CBirds::aBirds ...
59E328:  LDRB.W          R0, [R0,#(byte_A23C6B - 0xA23C2C)]
59E32C:  CBZ             R0, loc_59E38E
59E32E:  ADD             R0, SP, #0x48+var_30; this
59E330:  MOV             R1, R5; CVector *
59E332:  MOV             R2, R8; CVector *
59E334:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
59E338:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59E342)
59E33A:  MOV.W           R2, #0x3F000000
59E33E:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59E340:  LDR             R1, [R1]; CBirds::aBirds ...
59E342:  VLDR            D16, [R1]
59E346:  LDR             R1, [R1,#(dword_A23C34 - 0xA23C2C)]
59E348:  STRD.W          R1, R2, [SP,#0x48+var_40]
59E34C:  MOV             R1, SP
59E34E:  VSTR            D16, [SP,#0x48+var_48]
59E352:  BLX.W           j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
59E356:  CMP             R0, #1
59E358:  BNE             loc_59E38E
59E35A:  LDR             R0, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E366)
59E35C:  MOVS            R6, #1
59E35E:  LDR             R3, =(_ZN6CBirds6aBirdsE_ptr - 0x59E36A)
59E360:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59E36C)
59E362:  ADD             R0, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E364:  LDR             R2, =(_ZN6CBirds10BirdShotAtE_ptr - 0x59E370)
59E366:  ADD             R3, PC; _ZN6CBirds6aBirdsE_ptr
59E368:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59E36A:  LDR             R0, [R0]; CBirds::NumberOfBirds ...
59E36C:  ADD             R2, PC; _ZN6CBirds10BirdShotAtE_ptr
59E36E:  LDR             R3, [R3]; CBirds::aBirds ...
59E370:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59E372:  LDR             R2, [R2]; CBirds::BirdShotAt ...
59E374:  LDR             R4, [R0]; CBirds::NumberOfBirds
59E376:  VLDR            D16, [R3]
59E37A:  STRB            R6, [R1]; CBirds::bHasBirdBeenShot
59E37C:  MOVS            R6, #0
59E37E:  LDR             R1, [R3,#(dword_A23C34 - 0xA23C2C)]
59E380:  STR             R1, [R2,#(dword_A23DD4 - 0xA23DCC)]
59E382:  SUBS            R1, R4, #1
59E384:  STRB.W          R6, [R3,#(byte_A23C6B - 0xA23C2C)]
59E388:  VSTR            D16, [R2]
59E38C:  STR             R1, [R0]; CBirds::NumberOfBirds
59E38E:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E394)
59E390:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E392:  LDR             R0, [R0]; CBirds::aBirds ...
59E394:  LDRB.W          R0, [R0,#(byte_A23CAF - 0xA23C2C)]
59E398:  CBZ             R0, loc_59E3FA
59E39A:  ADD             R0, SP, #0x48+var_30; this
59E39C:  MOV             R1, R5; CVector *
59E39E:  MOV             R2, R8; CVector *
59E3A0:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
59E3A4:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59E3AE)
59E3A6:  MOV.W           R2, #0x3F000000
59E3AA:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59E3AC:  LDR             R1, [R1]; CBirds::aBirds ...
59E3AE:  VLDR            D16, [R1,#0x44]
59E3B2:  LDR             R1, [R1,#(dword_A23C78 - 0xA23C2C)]
59E3B4:  STRD.W          R1, R2, [SP,#0x48+var_40]
59E3B8:  MOV             R1, SP
59E3BA:  VSTR            D16, [SP,#0x48+var_48]
59E3BE:  BLX.W           j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
59E3C2:  CMP             R0, #1
59E3C4:  BNE             loc_59E3FA
59E3C6:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E3D4)
59E3C8:  MOVS            R6, #1
59E3CA:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59E3D6)
59E3CC:  MOVS            R4, #0
59E3CE:  LDR             R3, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E3DA)
59E3D0:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E3D2:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59E3D4:  LDR             R2, =(_ZN6CBirds10BirdShotAtE_ptr - 0x59E3DE)
59E3D6:  ADD             R3, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E3D8:  LDR             R0, [R0]; CBirds::aBirds ...
59E3DA:  ADD             R2, PC; _ZN6CBirds10BirdShotAtE_ptr
59E3DC:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59E3DE:  LDR             R3, [R3]; CBirds::NumberOfBirds ...
59E3E0:  LDR             R2, [R2]; CBirds::BirdShotAt ...
59E3E2:  STRB            R6, [R1]; CBirds::bHasBirdBeenShot
59E3E4:  VLDR            D16, [R0,#0x44]
59E3E8:  LDR             R1, [R3]; CBirds::NumberOfBirds
59E3EA:  LDR             R6, [R0,#(dword_A23C78 - 0xA23C2C)]
59E3EC:  STRB.W          R4, [R0,#(byte_A23CAF - 0xA23C2C)]
59E3F0:  SUBS            R0, R1, #1
59E3F2:  STR             R6, [R2,#(dword_A23DD4 - 0xA23DCC)]
59E3F4:  STR             R0, [R3]; CBirds::NumberOfBirds
59E3F6:  VSTR            D16, [R2]
59E3FA:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E400)
59E3FC:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E3FE:  LDR             R0, [R0]; CBirds::aBirds ...
59E400:  LDRB.W          R0, [R0,#(byte_A23CF3 - 0xA23C2C)]
59E404:  CBZ             R0, loc_59E46A
59E406:  ADD             R0, SP, #0x48+var_30; this
59E408:  MOV             R1, R5; CVector *
59E40A:  MOV             R2, R8; CVector *
59E40C:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
59E410:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59E41A)
59E412:  MOV.W           R2, #0x3F000000
59E416:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59E418:  LDR             R1, [R1]; CBirds::aBirds ...
59E41A:  VLDR            D16, [R1,#0x88]
59E41E:  LDR.W           R1, [R1,#(dword_A23CBC - 0xA23C2C)]
59E422:  STRD.W          R1, R2, [SP,#0x48+var_40]
59E426:  MOV             R1, SP
59E428:  VSTR            D16, [SP,#0x48+var_48]
59E42C:  BLX.W           j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
59E430:  CMP             R0, #1
59E432:  BNE             loc_59E46A
59E434:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E442)
59E436:  MOVS            R6, #1
59E438:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59E444)
59E43A:  MOVS            R4, #0
59E43C:  LDR             R3, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E448)
59E43E:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E440:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59E442:  LDR             R2, =(_ZN6CBirds10BirdShotAtE_ptr - 0x59E44C)
59E444:  ADD             R3, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E446:  LDR             R0, [R0]; CBirds::aBirds ...
59E448:  ADD             R2, PC; _ZN6CBirds10BirdShotAtE_ptr
59E44A:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59E44C:  LDR             R3, [R3]; CBirds::NumberOfBirds ...
59E44E:  LDR             R2, [R2]; CBirds::BirdShotAt ...
59E450:  STRB            R6, [R1]; CBirds::bHasBirdBeenShot
59E452:  VLDR            D16, [R0,#0x88]
59E456:  LDR             R1, [R3]; CBirds::NumberOfBirds
59E458:  LDR.W           R6, [R0,#(dword_A23CBC - 0xA23C2C)]
59E45C:  STRB.W          R4, [R0,#(byte_A23CF3 - 0xA23C2C)]
59E460:  SUBS            R0, R1, #1
59E462:  STR             R6, [R2,#(dword_A23DD4 - 0xA23DCC)]
59E464:  STR             R0, [R3]; CBirds::NumberOfBirds
59E466:  VSTR            D16, [R2]
59E46A:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E470)
59E46C:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E46E:  LDR             R0, [R0]; CBirds::aBirds ...
59E470:  LDRB.W          R0, [R0,#(byte_A23D37 - 0xA23C2C)]
59E474:  CBZ             R0, loc_59E4DA
59E476:  ADD             R0, SP, #0x48+var_30; this
59E478:  MOV             R1, R5; CVector *
59E47A:  MOV             R2, R8; CVector *
59E47C:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
59E480:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59E48A)
59E482:  MOV.W           R2, #0x3F000000
59E486:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59E488:  LDR             R1, [R1]; CBirds::aBirds ...
59E48A:  VLDR            D16, [R1,#0xCC]
59E48E:  LDR.W           R1, [R1,#(dword_A23D00 - 0xA23C2C)]
59E492:  STRD.W          R1, R2, [SP,#0x48+var_40]
59E496:  MOV             R1, SP
59E498:  VSTR            D16, [SP,#0x48+var_48]
59E49C:  BLX.W           j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
59E4A0:  CMP             R0, #1
59E4A2:  BNE             loc_59E4DA
59E4A4:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E4B2)
59E4A6:  MOVS            R6, #1
59E4A8:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59E4B4)
59E4AA:  MOVS            R4, #0
59E4AC:  LDR             R3, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E4B8)
59E4AE:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E4B0:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59E4B2:  LDR             R2, =(_ZN6CBirds10BirdShotAtE_ptr - 0x59E4BC)
59E4B4:  ADD             R3, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E4B6:  LDR             R0, [R0]; CBirds::aBirds ...
59E4B8:  ADD             R2, PC; _ZN6CBirds10BirdShotAtE_ptr
59E4BA:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59E4BC:  LDR             R3, [R3]; CBirds::NumberOfBirds ...
59E4BE:  LDR             R2, [R2]; CBirds::BirdShotAt ...
59E4C0:  STRB            R6, [R1]; CBirds::bHasBirdBeenShot
59E4C2:  VLDR            D16, [R0,#0xCC]
59E4C6:  LDR             R1, [R3]; CBirds::NumberOfBirds
59E4C8:  LDR.W           R6, [R0,#(dword_A23D00 - 0xA23C2C)]
59E4CC:  STRB.W          R4, [R0,#(byte_A23D37 - 0xA23C2C)]
59E4D0:  SUBS            R0, R1, #1
59E4D2:  STR             R6, [R2,#(dword_A23DD4 - 0xA23DCC)]
59E4D4:  STR             R0, [R3]; CBirds::NumberOfBirds
59E4D6:  VSTR            D16, [R2]
59E4DA:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E4E0)
59E4DC:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E4DE:  LDR             R0, [R0]; CBirds::aBirds ...
59E4E0:  LDRB.W          R0, [R0,#(byte_A23D7B - 0xA23C2C)]
59E4E4:  CBZ             R0, loc_59E54A
59E4E6:  ADD             R0, SP, #0x48+var_30; this
59E4E8:  MOV             R1, R5; CVector *
59E4EA:  MOV             R2, R8; CVector *
59E4EC:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
59E4F0:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59E4FA)
59E4F2:  MOV.W           R2, #0x3F000000
59E4F6:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59E4F8:  LDR             R1, [R1]; CBirds::aBirds ...
59E4FA:  VLDR            D16, [R1,#0x110]
59E4FE:  LDR.W           R1, [R1,#(dword_A23D44 - 0xA23C2C)]
59E502:  STRD.W          R1, R2, [SP,#0x48+var_40]
59E506:  MOV             R1, SP
59E508:  VSTR            D16, [SP,#0x48+var_48]
59E50C:  BLX.W           j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
59E510:  CMP             R0, #1
59E512:  BNE             loc_59E54A
59E514:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E522)
59E516:  MOVS            R6, #1
59E518:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59E524)
59E51A:  MOVS            R4, #0
59E51C:  LDR             R3, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E528)
59E51E:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E520:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59E522:  LDR             R2, =(_ZN6CBirds10BirdShotAtE_ptr - 0x59E52C)
59E524:  ADD             R3, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E526:  LDR             R0, [R0]; CBirds::aBirds ...
59E528:  ADD             R2, PC; _ZN6CBirds10BirdShotAtE_ptr
59E52A:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59E52C:  LDR             R3, [R3]; CBirds::NumberOfBirds ...
59E52E:  LDR             R2, [R2]; CBirds::BirdShotAt ...
59E530:  STRB            R6, [R1]; CBirds::bHasBirdBeenShot
59E532:  VLDR            D16, [R0,#0x110]
59E536:  LDR             R1, [R3]; CBirds::NumberOfBirds
59E538:  LDR.W           R6, [R0,#(dword_A23D44 - 0xA23C2C)]
59E53C:  STRB.W          R4, [R0,#(byte_A23D7B - 0xA23C2C)]
59E540:  SUBS            R0, R1, #1
59E542:  STR             R6, [R2,#(dword_A23DD4 - 0xA23DCC)]
59E544:  STR             R0, [R3]; CBirds::NumberOfBirds
59E546:  VSTR            D16, [R2]
59E54A:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E550)
59E54C:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E54E:  LDR             R0, [R0]; CBirds::aBirds ...
59E550:  LDRB.W          R0, [R0,#(byte_A23DBF - 0xA23C2C)]
59E554:  CBZ             R0, loc_59E5BA
59E556:  ADD             R0, SP, #0x48+var_30; this
59E558:  MOV             R1, R5; CVector *
59E55A:  MOV             R2, R8; CVector *
59E55C:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
59E560:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59E56A)
59E562:  MOV.W           R2, #0x3F000000
59E566:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59E568:  LDR             R1, [R1]; CBirds::aBirds ...
59E56A:  VLDR            D16, [R1,#0x154]
59E56E:  LDR.W           R1, [R1,#(dword_A23D88 - 0xA23C2C)]
59E572:  STRD.W          R1, R2, [SP,#0x48+var_40]
59E576:  MOV             R1, SP
59E578:  VSTR            D16, [SP,#0x48+var_48]
59E57C:  BLX.W           j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
59E580:  CMP             R0, #1
59E582:  BNE             loc_59E5BA
59E584:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E592)
59E586:  MOVS            R6, #1
59E588:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59E594)
59E58A:  MOVS            R5, #0
59E58C:  LDR             R3, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E598)
59E58E:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E590:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59E592:  LDR             R2, =(_ZN6CBirds10BirdShotAtE_ptr - 0x59E59C)
59E594:  ADD             R3, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E596:  LDR             R0, [R0]; CBirds::aBirds ...
59E598:  ADD             R2, PC; _ZN6CBirds10BirdShotAtE_ptr
59E59A:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59E59C:  LDR             R3, [R3]; CBirds::NumberOfBirds ...
59E59E:  LDR             R2, [R2]; CBirds::BirdShotAt ...
59E5A0:  STRB            R6, [R1]; CBirds::bHasBirdBeenShot
59E5A2:  VLDR            D16, [R0,#0x154]
59E5A6:  LDR             R1, [R3]; CBirds::NumberOfBirds
59E5A8:  LDR.W           R6, [R0,#(dword_A23D88 - 0xA23C2C)]
59E5AC:  STRB.W          R5, [R0,#(byte_A23DBF - 0xA23C2C)]
59E5B0:  SUBS            R0, R1, #1
59E5B2:  STR             R6, [R2,#(dword_A23DD4 - 0xA23DCC)]
59E5B4:  STR             R0, [R3]; CBirds::NumberOfBirds
59E5B6:  VSTR            D16, [R2]
59E5BA:  ADD             SP, SP, #0x38 ; '8'
59E5BC:  POP.W           {R8}
59E5C0:  POP             {R4-R7,PC}
