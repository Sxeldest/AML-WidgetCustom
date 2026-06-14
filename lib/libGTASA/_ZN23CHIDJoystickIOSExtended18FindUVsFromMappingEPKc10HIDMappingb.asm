; =========================================================
; Game Engine Function: _ZN23CHIDJoystickIOSExtended18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28E4C8 - 0x28E5DC
; =========================================================

28E4C8:  PUSH            {R4-R7,LR}
28E4CA:  ADD             R7, SP, #0xC
28E4CC:  PUSH.W          {R11}
28E4D0:  LDR.W           R12, [R1,#8]
28E4D4:  CMP.W           R12, #0
28E4D8:  BEQ.W           loc_28E5AA
28E4DC:  LDR             R1, [R1,#0xC]
28E4DE:  MOVS            R2, #0
28E4E0:  MOV.W           LR, #0
28E4E4:  MOVS            R4, #0
28E4E6:  ADDS            R1, #4
28E4E8:  LDR             R5, [R1]
28E4EA:  CMP             R5, R3
28E4EC:  BNE.W           def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E4F0:  LDR.W           R5, [R1,#-4]
28E4F4:  CMP             R5, #0x45 ; 'E'; switch 70 cases
28E4F6:  BHI.W           def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E4FA:  TBB.W           [PC,R5]; switch jump
28E4FE:  DCB 0x23; jump table for switch statement
28E4FF:  DCB 0x23
28E500:  DCB 0x23
28E501:  DCB 0x23
28E502:  DCB 0x2F
28E503:  DCB 0x50
28E504:  DCB 0x32
28E505:  DCB 0x36
28E506:  DCB 0x3A
28E507:  DCB 0x3E
28E508:  DCB 0x42
28E509:  DCB 0x45
28E50A:  DCB 0x50
28E50B:  DCB 0x50
28E50C:  DCB 0x50
28E50D:  DCB 0x50
28E50E:  DCB 0x50
28E50F:  DCB 0x50
28E510:  DCB 0x50
28E511:  DCB 0x50
28E512:  DCB 0x50
28E513:  DCB 0x50
28E514:  DCB 0x50
28E515:  DCB 0x50
28E516:  DCB 0x50
28E517:  DCB 0x50
28E518:  DCB 0x50
28E519:  DCB 0x50
28E51A:  DCB 0x50
28E51B:  DCB 0x50
28E51C:  DCB 0x50
28E51D:  DCB 0x50
28E51E:  DCB 0x50
28E51F:  DCB 0x50
28E520:  DCB 0x50
28E521:  DCB 0x50
28E522:  DCB 0x50
28E523:  DCB 0x50
28E524:  DCB 0x50
28E525:  DCB 0x50
28E526:  DCB 0x50
28E527:  DCB 0x50
28E528:  DCB 0x50
28E529:  DCB 0x50
28E52A:  DCB 0x50
28E52B:  DCB 0x50
28E52C:  DCB 0x50
28E52D:  DCB 0x50
28E52E:  DCB 0x50
28E52F:  DCB 0x50
28E530:  DCB 0x50
28E531:  DCB 0x50
28E532:  DCB 0x50
28E533:  DCB 0x50
28E534:  DCB 0x50
28E535:  DCB 0x50
28E536:  DCB 0x50
28E537:  DCB 0x50
28E538:  DCB 0x50
28E539:  DCB 0x50
28E53A:  DCB 0x50
28E53B:  DCB 0x50
28E53C:  DCB 0x50
28E53D:  DCB 0x50
28E53E:  DCB 0x27
28E53F:  DCB 0x27
28E540:  DCB 0x2B
28E541:  DCB 0x2B
28E542:  DCB 0x49
28E543:  DCB 0x4D
28E544:  MOV.W           LR, #1; jumptable 0028E4FA cases 0-3
28E548:  MOV             R4, R5
28E54A:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E54C:  MOV.W           LR, #0; jumptable 0028E4FA cases 64,65
28E550:  MOVS            R4, #2
28E552:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E554:  MOV.W           LR, #0; jumptable 0028E4FA cases 66,67
28E558:  MOVS            R4, #3
28E55A:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E55C:  MOV.W           LR, #0; jumptable 0028E4FA case 4
28E560:  B               loc_28E59C
28E562:  MOVS            R4, #2; jumptable 0028E4FA case 6
28E564:  MOV.W           LR, #2
28E568:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E56A:  MOV.W           LR, #2; jumptable 0028E4FA case 7
28E56E:  MOVS            R4, #3
28E570:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E572:  MOVS            R4, #3; jumptable 0028E4FA case 8
28E574:  MOV.W           LR, #3
28E578:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E57A:  MOV.W           LR, #3; jumptable 0028E4FA case 9
28E57E:  MOVS            R4, #0
28E580:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E582:  MOV.W           LR, #3; jumptable 0028E4FA case 10
28E586:  B               loc_28E59C
28E588:  MOV.W           LR, #3; jumptable 0028E4FA case 11
28E58C:  MOVS            R4, #2
28E58E:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E590:  MOV.W           LR, #2; jumptable 0028E4FA case 68
28E594:  MOVS            R4, #0
28E596:  B               def_28E4FA; jumptable 0028E4FA default case, cases 5,12-63
28E598:  MOV.W           LR, #2; jumptable 0028E4FA case 69
28E59C:  MOVS            R4, #1
28E59E:  ADDS            R2, #1; jumptable 0028E4FA default case, cases 5,12-63
28E5A0:  ADDS            R1, #0x14
28E5A2:  CMP             R2, R12
28E5A4:  BCC.W           loc_28E4E8
28E5A8:  B               loc_28E5B0
28E5AA:  MOVS            R4, #0
28E5AC:  MOV.W           LR, #0
28E5B0:  VMOV.32         D16[0], R4
28E5B4:  ADDS            R1, R4, #1
28E5B6:  VMOV.F32        Q9, #0.25
28E5BA:  VMOV.32         D17[0], R1
28E5BE:  ADD.W           R1, LR, #1
28E5C2:  VMOV.32         D16[1], R1
28E5C6:  VMOV.32         D17[1], LR
28E5CA:  VCVT.F32.S32    Q8, Q8
28E5CE:  VMUL.F32        Q8, Q8, Q9
28E5D2:  VST1.32         {D16-D17}, [R0]
28E5D6:  POP.W           {R11}
28E5DA:  POP             {R4-R7,PC}
