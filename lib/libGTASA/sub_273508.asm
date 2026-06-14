; =========================================================
; Game Engine Function: sub_273508
; Address            : 0x273508 - 0x27369A
; =========================================================

273508:  PUSH            {R4-R7,LR}
27350A:  ADD             R7, SP, #0xC
27350C:  PUSH.W          {R8}
273510:  SUB             SP, SP, #0x18
273512:  MOV             R6, R0
273514:  LDR             R0, =(byte_6DFC84 - 0x27351E)
273516:  MOV             R8, R3
273518:  MOV             R5, R2
27351A:  ADD             R0, PC; byte_6DFC84
27351C:  LDRB            R0, [R0]
27351E:  DMB.W           ISH
273522:  TST.W           R0, #1
273526:  BNE             loc_27354E
273528:  LDR             R0, =(byte_6DFC84 - 0x27352E)
27352A:  ADD             R0, PC; byte_6DFC84 ; __guard *
27352C:  BLX             j___cxa_guard_acquire
273530:  CBZ             R0, loc_27354E
273532:  LDR             R0, [R6]
273534:  LDR             R1, =(aAndroidViewMot - 0x27353C); "android/view/MotionEvent"
273536:  LDR             R2, [R0,#0x18]
273538:  ADD             R1, PC; "android/view/MotionEvent"
27353A:  MOV             R0, R6
27353C:  BLX             R2
27353E:  LDR             R2, =(dword_6DFC80 - 0x273546)
273540:  LDR             R1, =(byte_6DFC84 - 0x273548)
273542:  ADD             R2, PC; dword_6DFC80
273544:  ADD             R1, PC; byte_6DFC84
273546:  STR             R0, [R2]
273548:  MOV             R0, R1; __guard *
27354A:  BLX             j___cxa_guard_release
27354E:  LDR             R0, =(byte_6DFC8C - 0x273554)
273550:  ADD             R0, PC; byte_6DFC8C
273552:  LDRB            R0, [R0]
273554:  DMB.W           ISH
273558:  TST.W           R0, #1
27355C:  BNE             loc_27358E
27355E:  LDR             R0, =(byte_6DFC8C - 0x273564)
273560:  ADD             R0, PC; byte_6DFC8C ; __guard *
273562:  BLX             j___cxa_guard_acquire
273566:  CBZ             R0, loc_27358E
273568:  LDR             R0, =(dword_6DFC80 - 0x273572)
27356A:  ADR             R3, dword_2736C0
27356C:  LDR             R1, [R6]
27356E:  ADD             R0, PC; dword_6DFC80
273570:  LDR             R2, =(aActionDown - 0x27357A); "ACTION_DOWN"
273572:  LDR.W           R4, [R1,#0x240]
273576:  ADD             R2, PC; "ACTION_DOWN"
273578:  LDR             R1, [R0]
27357A:  MOV             R0, R6
27357C:  BLX             R4
27357E:  LDR             R2, =(dword_6DFC88 - 0x273586)
273580:  LDR             R1, =(byte_6DFC8C - 0x273588)
273582:  ADD             R2, PC; dword_6DFC88
273584:  ADD             R1, PC; byte_6DFC8C
273586:  STR             R0, [R2]
273588:  MOV             R0, R1; __guard *
27358A:  BLX             j___cxa_guard_release
27358E:  LDR             R0, =(byte_6DFC94 - 0x273594)
273590:  ADD             R0, PC; byte_6DFC94
273592:  LDRB            R0, [R0]
273594:  DMB.W           ISH
273598:  TST.W           R0, #1
27359C:  BNE             loc_2735CE
27359E:  LDR             R0, =(byte_6DFC94 - 0x2735A4)
2735A0:  ADD             R0, PC; byte_6DFC94 ; __guard *
2735A2:  BLX             j___cxa_guard_acquire
2735A6:  CBZ             R0, loc_2735CE
2735A8:  LDR             R0, =(dword_6DFC80 - 0x2735B2)
2735AA:  ADR             R3, dword_2736C0
2735AC:  LDR             R1, [R6]
2735AE:  ADD             R0, PC; dword_6DFC80
2735B0:  LDR             R2, =(aActionUp - 0x2735BA); "ACTION_UP"
2735B2:  LDR.W           R4, [R1,#0x240]
2735B6:  ADD             R2, PC; "ACTION_UP"
2735B8:  LDR             R1, [R0]
2735BA:  MOV             R0, R6
2735BC:  BLX             R4
2735BE:  LDR             R2, =(dword_6DFC90 - 0x2735C6)
2735C0:  LDR             R1, =(byte_6DFC94 - 0x2735C8)
2735C2:  ADD             R2, PC; dword_6DFC90
2735C4:  ADD             R1, PC; byte_6DFC94
2735C6:  STR             R0, [R2]
2735C8:  MOV             R0, R1; __guard *
2735CA:  BLX             j___cxa_guard_release
2735CE:  LDR             R0, =(byte_6DFC9C - 0x2735D4)
2735D0:  ADD             R0, PC; byte_6DFC9C
2735D2:  LDRB            R0, [R0]
2735D4:  DMB.W           ISH
2735D8:  TST.W           R0, #1
2735DC:  BNE             loc_27360E
2735DE:  LDR             R0, =(byte_6DFC9C - 0x2735E4)
2735E0:  ADD             R0, PC; byte_6DFC9C ; __guard *
2735E2:  BLX             j___cxa_guard_acquire
2735E6:  CBZ             R0, loc_27360E
2735E8:  LDR             R0, =(dword_6DFC88 - 0x2735F2)
2735EA:  LDR             R3, =(dword_6DFC80 - 0x2735F4)
2735EC:  LDR             R1, [R6]
2735EE:  ADD             R0, PC; dword_6DFC88
2735F0:  ADD             R3, PC; dword_6DFC80
2735F2:  LDR             R2, [R0]
2735F4:  MOV             R0, R6
2735F6:  LDR.W           R4, [R1,#0x258]
2735FA:  LDR             R1, [R3]
2735FC:  BLX             R4
2735FE:  LDR             R2, =(dword_6DFC98 - 0x273606)
273600:  LDR             R1, =(byte_6DFC9C - 0x273608)
273602:  ADD             R2, PC; dword_6DFC98
273604:  ADD             R1, PC; byte_6DFC9C
273606:  STR             R0, [R2]
273608:  MOV             R0, R1; __guard *
27360A:  BLX             j___cxa_guard_release
27360E:  LDR             R0, =(byte_6DFCA4 - 0x273614)
273610:  ADD             R0, PC; byte_6DFCA4
273612:  LDRB            R0, [R0]
273614:  DMB.W           ISH
273618:  TST.W           R0, #1
27361C:  BNE             loc_27364E
27361E:  LDR             R0, =(byte_6DFCA4 - 0x273624)
273620:  ADD             R0, PC; byte_6DFCA4 ; __guard *
273622:  BLX             j___cxa_guard_acquire
273626:  CBZ             R0, loc_27364E
273628:  LDR             R0, =(dword_6DFC90 - 0x273632)
27362A:  LDR             R3, =(dword_6DFC80 - 0x273634)
27362C:  LDR             R1, [R6]
27362E:  ADD             R0, PC; dword_6DFC90
273630:  ADD             R3, PC; dword_6DFC80
273632:  LDR             R2, [R0]
273634:  MOV             R0, R6
273636:  LDR.W           R4, [R1,#0x258]
27363A:  LDR             R1, [R3]
27363C:  BLX             R4
27363E:  LDR             R2, =(dword_6DFCA0 - 0x273646)
273640:  LDR             R1, =(byte_6DFCA4 - 0x273648)
273642:  ADD             R2, PC; dword_6DFCA0
273644:  ADD             R1, PC; byte_6DFCA4
273646:  STR             R0, [R2]
273648:  MOV             R0, R1; __guard *
27364A:  BLX             j___cxa_guard_release
27364E:  LDR             R1, =(dword_6DFCA0 - 0x273658)
273650:  MOVS            R2, #3
273652:  LDR             R0, [R7,#arg_0]
273654:  ADD             R1, PC; dword_6DFCA0
273656:  STR             R2, [SP,#0x28+var_28]
273658:  LDR             R1, [R1]
27365A:  CMP             R1, R5
27365C:  BNE             loc_273662
27365E:  MOVS            R1, #0
273660:  B               loc_273670
273662:  LDR             R1, =(dword_6DFC98 - 0x273668)
273664:  ADD             R1, PC; dword_6DFC98
273666:  LDR             R2, [R1]
273668:  MOVS            R1, #2
27366A:  CMP             R2, R5
27366C:  IT EQ
27366E:  MOVEQ           R1, #1
273670:  VMOV            S0, R0
273674:  MOV             R0, SP
273676:  VMOV            S2, R8
27367A:  VCVT.F32.S32    S0, S0
27367E:  VCVT.F32.S32    S2, S2
273682:  STR             R1, [SP,#0x28+var_24]
273684:  VSTR            S0, [SP,#0x28+var_1C]
273688:  VSTR            S2, [SP,#0x28+var_20]
27368C:  BL              sub_27C4F0
273690:  MOVS            R0, #1
273692:  ADD             SP, SP, #0x18
273694:  POP.W           {R8}
273698:  POP             {R4-R7,PC}
