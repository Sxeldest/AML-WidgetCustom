; =========================================================
; Game Engine Function: _ZN6CRadar19GetRadarTraceColourEjhh
; Address            : 0x44132C - 0x441392
; =========================================================

44132C:  CMP             R0, #8; switch 9 cases
44132E:  MOV             R12, R1
441330:  IT HI
441332:  BXHI            LR
441334:  MOVS            R1, #0xC
441336:  TBB.W           [PC,R0]; switch jump
44133A:  DCB 5; jump table for switch statement
44133B:  DCB 0x11
44133C:  DCB 0xB
44133D:  DCB 0x17
44133E:  DCB 0x1D
44133F:  DCB 5
441340:  DCB 0xB
441341:  DCB 0x23
441342:  DCB 0x27
441343:  ALIGN 2
441344:  MOVS            R1, #0; jumptable 00441336 cases 0,5
441346:  CMP.W           R12, #0
44134A:  IT EQ
44134C:  MOVEQ           R1, #0xA
44134E:  B               loc_441388; jumptable 00441336 case 8
441350:  MOVS            R1, #3; jumptable 00441336 cases 2,6
441352:  CMP.W           R12, #0
441356:  IT EQ
441358:  MOVEQ           R1, #0xE
44135A:  B               loc_441388; jumptable 00441336 case 8
44135C:  MOVS            R1, #1; jumptable 00441336 case 1
44135E:  CMP.W           R12, #0
441362:  IT EQ
441364:  MOVEQ           R1, #0xB
441366:  B               loc_441388; jumptable 00441336 case 8
441368:  MOVS            R1, #5; jumptable 00441336 case 3
44136A:  CMP.W           R12, #0
44136E:  IT EQ
441370:  MOVEQ           R1, #9
441372:  B               loc_441388; jumptable 00441336 case 8
441374:  MOVS            R1, #0xC; jumptable 00441336 case 4
441376:  CMP.W           R12, #0
44137A:  IT EQ
44137C:  MOVEQ           R1, #7
44137E:  B               loc_441388; jumptable 00441336 case 8
441380:  CMP             R2, #0; jumptable 00441336 case 7
441382:  IT NE
441384:  MOVNE           R2, #0xE
441386:  MOV             R1, R2; unsigned __int8
441388:  LDR             R0, =(HudColour_ptr - 0x44138E); jumptable 00441336 case 8
44138A:  ADD             R0, PC; HudColour_ptr
44138C:  LDR             R0, [R0]; HudColour ; this
44138E:  B.W             sub_19A38C
