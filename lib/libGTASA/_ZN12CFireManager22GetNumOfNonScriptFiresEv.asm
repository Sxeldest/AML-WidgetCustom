; =========================================================
; Game Engine Function: _ZN12CFireManager22GetNumOfNonScriptFiresEv
; Address            : 0x3F132E - 0x3F15D6
; =========================================================

3F132E:  ADD.W           R1, R0, #0x140
3F1332:  VLD1.8          {D17[0]}, [R0]
3F1336:  VMOV.I8         D23, #3
3F133A:  VMOV.I8         D26, #1
3F133E:  VLD1.8          {D16[0]}, [R1]
3F1342:  ADD.W           R1, R0, #0x500
3F1346:  VMOV.I16        Q12, #1
3F134A:  VLD1.8          {D18[0]}, [R1]
3F134E:  ADD.W           R1, R0, #0x640
3F1352:  VLD1.8          {D21[0]}, [R1]
3F1356:  ADD.W           R1, R0, #0x3C0
3F135A:  VLD1.8          {D20[0]}, [R1]
3F135E:  ADD.W           R1, R0, #0x28 ; '('
3F1362:  VLD1.8          {D17[1]}, [R1]
3F1366:  ADD.W           R1, R0, #0x280
3F136A:  VLD1.8          {D19[0]}, [R1]
3F136E:  ADD.W           R1, R0, #0x168
3F1372:  VLD1.8          {D16[1]}, [R1]
3F1376:  ADD.W           R1, R0, #0x528
3F137A:  VLD1.8          {D18[1]}, [R1]
3F137E:  ADD.W           R1, R0, #0x668
3F1382:  VLD1.8          {D21[1]}, [R1]
3F1386:  ADD.W           R1, R0, #0x3E8
3F138A:  VLD1.8          {D20[1]}, [R1]
3F138E:  ADD.W           R1, R0, #0x50 ; 'P'
3F1392:  VLD1.8          {D17[2]}, [R1]
3F1396:  ADD.W           R1, R0, #0x2A8
3F139A:  VLD1.8          {D19[1]}, [R1]
3F139E:  ADD.W           R1, R0, #0x780
3F13A2:  VLD1.8          {D22[0]}, [R1]
3F13A6:  ADD.W           R1, R0, #0x190
3F13AA:  VLD1.8          {D16[2]}, [R1]
3F13AE:  ADD.W           R1, R0, #0x550
3F13B2:  VLD1.8          {D18[2]}, [R1]
3F13B6:  ADD.W           R1, R0, #0x690
3F13BA:  VLD1.8          {D21[2]}, [R1]
3F13BE:  ADD.W           R1, R0, #0x410
3F13C2:  VLD1.8          {D20[2]}, [R1]
3F13C6:  ADD.W           R1, R0, #0x78 ; 'x'
3F13CA:  VLD1.8          {D17[3]}, [R1]
3F13CE:  ADD.W           R1, R0, #0x2D0
3F13D2:  VLD1.8          {D19[2]}, [R1]
3F13D6:  ADD.W           R1, R0, #0x7A8
3F13DA:  VLD1.8          {D22[1]}, [R1]
3F13DE:  ADD.W           R1, R0, #0x1B8
3F13E2:  VLD1.8          {D16[3]}, [R1]
3F13E6:  ADD.W           R1, R0, #0x578
3F13EA:  VLD1.8          {D18[3]}, [R1]
3F13EE:  ADD.W           R1, R0, #0x6B8
3F13F2:  VLD1.8          {D21[3]}, [R1]
3F13F6:  ADD.W           R1, R0, #0x438
3F13FA:  VLD1.8          {D20[3]}, [R1]
3F13FE:  ADD.W           R1, R0, #0xA0
3F1402:  VLD1.8          {D17[4]}, [R1]
3F1406:  ADD.W           R1, R0, #0x2F8
3F140A:  VLD1.8          {D19[3]}, [R1]
3F140E:  ADD.W           R1, R0, #0x7D0
3F1412:  VLD1.8          {D22[2]}, [R1]
3F1416:  ADD.W           R1, R0, #0x1E0
3F141A:  VLD1.8          {D16[4]}, [R1]
3F141E:  ADD.W           R1, R0, #0x5A0
3F1422:  VLD1.8          {D18[4]}, [R1]
3F1426:  ADD.W           R1, R0, #0x6E0
3F142A:  VLD1.8          {D21[4]}, [R1]
3F142E:  ADD.W           R1, R0, #0x460
3F1432:  VLD1.8          {D20[4]}, [R1]
3F1436:  ADD.W           R1, R0, #0xC8
3F143A:  VLD1.8          {D17[5]}, [R1]
3F143E:  ADD.W           R1, R0, #0x320
3F1442:  VLD1.8          {D19[4]}, [R1]
3F1446:  ADD.W           R1, R0, #0x7F8
3F144A:  VLD1.8          {D22[3]}, [R1]
3F144E:  ADD.W           R1, R0, #0x208
3F1452:  VLD1.8          {D16[5]}, [R1]
3F1456:  ADD.W           R1, R0, #0x5C8
3F145A:  VLD1.8          {D18[5]}, [R1]
3F145E:  ADD.W           R1, R0, #0x708
3F1462:  VLD1.8          {D21[5]}, [R1]
3F1466:  ADD.W           R1, R0, #0x488
3F146A:  VLD1.8          {D20[5]}, [R1]
3F146E:  ADD.W           R1, R0, #0xF0
3F1472:  VLD1.8          {D17[6]}, [R1]
3F1476:  ADD.W           R1, R0, #0x348
3F147A:  VLD1.8          {D19[5]}, [R1]
3F147E:  ADD.W           R1, R0, #0x820
3F1482:  VLD1.8          {D22[4]}, [R1]
3F1486:  ADD.W           R1, R0, #0x230
3F148A:  VLD1.8          {D16[6]}, [R1]
3F148E:  ADD.W           R1, R0, #0x5F0
3F1492:  VLD1.8          {D18[6]}, [R1]
3F1496:  ADD.W           R1, R0, #0x730
3F149A:  VLD1.8          {D21[6]}, [R1]
3F149E:  ADD.W           R1, R0, #0x4B0
3F14A2:  VLD1.8          {D20[6]}, [R1]
3F14A6:  ADD.W           R1, R0, #0x118
3F14AA:  VLD1.8          {D17[7]}, [R1]
3F14AE:  ADD.W           R1, R0, #0x370
3F14B2:  VAND            D17, D17, D23
3F14B6:  VLD1.8          {D19[6]}, [R1]
3F14BA:  ADDW            R1, R0, #0x848
3F14BE:  VCEQ.I8         D17, D17, D26
3F14C2:  VLD1.8          {D22[5]}, [R1]
3F14C6:  ADD.W           R1, R0, #0x258
3F14CA:  VMOVL.U8        Q14, D17
3F14CE:  VLD1.8          {D16[7]}, [R1]
3F14D2:  ADD.W           R1, R0, #0x618
3F14D6:  VAND            D16, D16, D23
3F14DA:  VLD1.8          {D18[7]}, [R1]
3F14DE:  ADD.W           R1, R0, #0x758
3F14E2:  VCEQ.I8         D16, D16, D26
3F14E6:  VAND            D18, D18, D23
3F14EA:  VLD1.8          {D21[7]}, [R1]
3F14EE:  ADD.W           R1, R0, #0x4D8
3F14F2:  VCEQ.I8         D18, D18, D26
3F14F6:  VMOVL.U8        Q15, D16
3F14FA:  VLD1.8          {D20[7]}, [R1]
3F14FE:  ADD.W           R1, R0, #0x398
3F1502:  VAND            D21, D21, D23
3F1506:  VAND            D20, D20, D23
3F150A:  VLD1.8          {D19[7]}, [R1]
3F150E:  ADD.W           R1, R0, #0x870
3F1512:  VCEQ.I8         D17, D20, D26
3F1516:  VAND            D19, D19, D23
3F151A:  VLD1.8          {D22[6]}, [R1]
3F151E:  ADDW            R1, R0, #0x898
3F1522:  VCEQ.I8         D19, D19, D26
3F1526:  VLD1.8          {D22[7]}, [R1]
3F152A:  VAND            D16, D22, D23
3F152E:  VMOVL.U8        Q11, D19
3F1532:  VCEQ.I8         D19, D21, D26
3F1536:  LDRB.W          R2, [R0,#0x8C0]
3F153A:  VAND            Q10, Q14, Q12
3F153E:  LDRB.W          R3, [R0,#0x8E8]
3F1542:  VAND            Q14, Q15, Q12
3F1546:  LDRB.W          R12, [R0,#0x910]
3F154A:  VMOVL.U8        Q15, D17
3F154E:  AND.W           R2, R2, #3
3F1552:  VADD.I16        Q10, Q10, Q14
3F1556:  LDRB.W          R0, [R0,#0x938]
3F155A:  VAND            Q11, Q11, Q12
3F155E:  CMP             R2, #1
3F1560:  VCEQ.I8         D16, D16, D26
3F1564:  AND.W           R2, R3, #3
3F1568:  VMOVL.U8        Q13, D18
3F156C:  AND.W           R0, R0, #3
3F1570:  VADD.I16        Q10, Q10, Q11
3F1574:  VAND            Q14, Q15, Q12
3F1578:  VMOVL.U8        Q9, D19
3F157C:  VAND            Q11, Q13, Q12
3F1580:  VADD.I16        Q10, Q10, Q14
3F1584:  VMOVL.U8        Q8, D16
3F1588:  VAND            Q9, Q9, Q12
3F158C:  VADD.I16        Q10, Q10, Q11
3F1590:  VAND            Q8, Q8, Q12
3F1594:  VADD.I16        Q9, Q10, Q9
3F1598:  VADD.I16        Q8, Q9, Q8
3F159C:  VEXT.8          Q9, Q8, Q8, #8
3F15A0:  VADD.I16        Q8, Q8, Q9
3F15A4:  VEXT.8          Q9, Q8, Q8, #4
3F15A8:  VADD.I16        Q8, Q8, Q9
3F15AC:  VDUP.16         Q9, D16[1]
3F15B0:  VADD.I16        Q8, Q8, Q9
3F15B4:  VMOV.U16        R1, D16[0]
3F15B8:  IT EQ
3F15BA:  ADDEQ           R1, #1
3F15BC:  CMP             R2, #1
3F15BE:  AND.W           R2, R12, #3
3F15C2:  IT EQ
3F15C4:  ADDEQ           R1, #1
3F15C6:  CMP             R2, #1
3F15C8:  IT EQ
3F15CA:  ADDEQ           R1, #1
3F15CC:  CMP             R0, #1
3F15CE:  IT EQ
3F15D0:  ADDEQ           R1, #1
3F15D2:  UXTH            R0, R1
3F15D4:  BX              LR
