; =========================================================
; Game Engine Function: sub_61504
; Address            : 0x61504 - 0x61560
; =========================================================

61504:  PUSH            {R7,LR}
61506:  MOV             R7, SP
61508:  CBZ             R0, loc_61526
6150A:  LDR             R3, =(off_114AD8 - 0x61510)
6150C:  ADD             R3, PC; off_114AD8
6150E:  LDR             R3, [R3]; dword_1A4434
61510:  LDR             R3, [R3]
61512:  CMP             R3, #0
61514:  IT NE
61516:  CMPNE           R1, #0
61518:  BNE             loc_61538
6151A:  LDR             R3, =(off_117640 - 0x61520)
6151C:  ADD             R3, PC; off_117640
6151E:  LDR             R3, [R3]
61520:  POP.W           {R7,LR}
61524:  BX              R3
61526:  LDR             R1, =(aSampOrig - 0x61530); "SAMP_ORIG" ...
61528:  MOVS            R0, #6; prio
6152A:  LDR             R2, =(aInvalidThisPoi_1 - 0x61532); "Invalid _this pointer in CMonsterTruck_"... ...
6152C:  ADD             R1, PC; "SAMP_ORIG"
6152E:  ADD             R2, PC; "Invalid _this pointer in CMonsterTruck_"...
61530:  BLX             __android_log_print
61534:  MOVS            R0, #0
61536:  POP             {R7,PC}
61538:  LDR             R3, =(byte_117634 - 0x6153E)
6153A:  ADD             R3, PC; byte_117634
6153C:  LDRB            R3, [R3]
6153E:  CMP             R3, #0
61540:  BEQ             loc_6151A
61542:  LDRH            R3, [R1,#0x26]
61544:  SUB.W           R3, R3, #0x264
61548:  CMN.W           R3, #0xD4
6154C:  BCC             loc_6151A
6154E:  LDR.W           R3, [R0,#0x464]
61552:  CMP             R3, #0
61554:  ITT NE
61556:  LDRNE.W         R3, [R1,#0x464]
6155A:  CMPNE           R3, #0
6155C:  BEQ             loc_6151A
6155E:  B               loc_61534
