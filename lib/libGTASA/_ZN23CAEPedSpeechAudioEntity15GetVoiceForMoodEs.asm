; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity15GetVoiceForMoodEs
; Address            : 0x39D41C - 0x39D47C
; =========================================================

39D41C:  PUSH            {R4,R6,R7,LR}
39D41E:  ADD             R7, SP, #8
39D420:  MOV             R4, R1
39D422:  MOVS            R0, #0; this
39D424:  MOVS            R1, #1; int
39D426:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39D42A:  CMP             R4, #9; switch 10 cases
39D42C:  BHI             def_39D42E; jumptable 0039D42E default case
39D42E:  TBB.W           [PC,R4]; switch jump
39D432:  DCB 0xB; jump table for switch statement
39D433:  DCB 5
39D434:  DCB 0xD
39D435:  DCB 0x10
39D436:  DCB 0x13
39D437:  DCB 0x16
39D438:  DCB 0x19
39D439:  DCB 0x1C
39D43A:  DCB 0x22
39D43B:  DCB 0x1F
39D43C:  ADDS            R0, #2; jumptable 0039D42E case 1
39D43E:  SXTH            R0, R0
39D440:  POP             {R4,R6,R7,PC}
39D442:  MOVS            R1, #0xA; jumptable 0039D42E default case
39D444:  UXTAH.W         R0, R1, R0
39D448:  SXTH            R0, R0; jumptable 0039D42E case 0
39D44A:  POP             {R4,R6,R7,PC}
39D44C:  ADDS            R0, #4; jumptable 0039D42E case 2
39D44E:  SXTH            R0, R0
39D450:  POP             {R4,R6,R7,PC}
39D452:  ADDS            R0, #6; jumptable 0039D42E case 3
39D454:  SXTH            R0, R0
39D456:  POP             {R4,R6,R7,PC}
39D458:  ADDS            R0, #8; jumptable 0039D42E case 4
39D45A:  SXTH            R0, R0
39D45C:  POP             {R4,R6,R7,PC}
39D45E:  ADDS            R0, #0xA; jumptable 0039D42E case 5
39D460:  SXTH            R0, R0
39D462:  POP             {R4,R6,R7,PC}
39D464:  ADDS            R0, #0xC; jumptable 0039D42E case 6
39D466:  SXTH            R0, R0
39D468:  POP             {R4,R6,R7,PC}
39D46A:  ADDS            R0, #0xE; jumptable 0039D42E case 7
39D46C:  SXTH            R0, R0
39D46E:  POP             {R4,R6,R7,PC}
39D470:  ADDS            R0, #0x12; jumptable 0039D42E case 9
39D472:  SXTH            R0, R0
39D474:  POP             {R4,R6,R7,PC}
39D476:  ADDS            R0, #0x10; jumptable 0039D42E case 8
39D478:  SXTH            R0, R0
39D47A:  POP             {R4,R6,R7,PC}
