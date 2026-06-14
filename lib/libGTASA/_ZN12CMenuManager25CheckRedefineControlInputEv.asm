; =========================================================
; Game Engine Function: _ZN12CMenuManager25CheckRedefineControlInputEv
; Address            : 0x436474 - 0x43664E
; =========================================================

436474:  PUSH            {R4-R7,LR}
436476:  ADD             R7, SP, #0xC
436478:  PUSH.W          {R8-R11}
43647C:  SUB             SP, SP, #4
43647E:  MOV             R4, R0
436480:  MOVW            R10, #0x1ACD
436484:  LDRB.W          R0, [R4,R10]
436488:  CBZ             R0, loc_43649C
43648A:  MOVW            R0, #0x1ACC
43648E:  ADD.W           R11, R4, R0
436492:  LDRB            R1, [R4,R0]
436494:  CBZ             R1, loc_4364AE
436496:  MOVS            R0, #0
436498:  STRB.W          R0, [R11]
43649C:  LDR.W           R0, [R4,#0xB8]
4364A0:  CMP             R0, #0
4364A2:  IT NE
4364A4:  MOVNE           R0, #1
4364A6:  ADD             SP, SP, #4
4364A8:  POP.W           {R8-R11}
4364AC:  POP             {R4-R7,PC}
4364AE:  LDR.W           R0, [R4,#0xB8]; this
4364B2:  MOVS            R1, #(stderr+1); int *
4364B4:  MOV.W           R9, #1
4364B8:  BLX             j__ZN4CPad20EditCodesForControlsEPii; CPad::EditCodesForControls(int *,int)
4364BC:  MOVW            R5, #0x1AA4
4364C0:  MOVS            R1, #0; int
4364C2:  MOVW            R6, #0x1AA8
4364C6:  STR             R1, [R4,R5]
4364C8:  STR             R1, [R4,R6]
4364CA:  STR.W           R0, [R4,#0xB8]
4364CE:  MOVS            R0, #0; this
4364D0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4364D4:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4364E0)
4364D6:  ADD             R6, R4
4364D8:  ADD.W           R8, R4, R5
4364DC:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4364DE:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4364E0:  LDRB            R0, [R0]; CPad::NewMouseControllerState
4364E2:  CBZ             R0, loc_4364F0
4364E4:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x4364EA)
4364E6:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
4364E8:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
4364EA:  LDRB            R0, [R0]; CPad::OldMouseControllerState
4364EC:  CMP             R0, #0
4364EE:  BEQ             loc_4365AE
4364F0:  MOVS            R0, #0; this
4364F2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4364F6:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4364FC)
4364F8:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4364FA:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4364FC:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+1 - 0x959AF4)]; CPad::NewMouseControllerState
4364FE:  CBZ             R0, loc_436510
436500:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x436506)
436502:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
436504:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
436506:  LDRB            R0, [R0,#(_ZN4CPad23OldMouseControllerStateE+1 - 0x959B08)]; CPad::OldMouseControllerState
436508:  CBNZ            R0, loc_436510
43650A:  MOV.W           R9, #3
43650E:  B               loc_4365AE
436510:  MOVS            R0, #0; this
436512:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436516:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43651C)
436518:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43651A:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43651C:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+2 - 0x959AF4)]; CPad::NewMouseControllerState
43651E:  CBZ             R0, loc_436530
436520:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x436526)
436522:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
436524:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
436526:  LDRB            R0, [R0,#(_ZN4CPad23OldMouseControllerStateE+2 - 0x959B08)]; CPad::OldMouseControllerState
436528:  CBNZ            R0, loc_436530
43652A:  MOV.W           R9, #2
43652E:  B               loc_4365AE
436530:  MOVS            R0, #0; this
436532:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436536:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43653C)
436538:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43653A:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43653C:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+3 - 0x959AF4)]; CPad::NewMouseControllerState
43653E:  CBZ             R0, loc_436550
436540:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x436546)
436542:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
436544:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
436546:  LDRB            R0, [R0,#(_ZN4CPad23OldMouseControllerStateE+3 - 0x959B08)]; CPad::OldMouseControllerState
436548:  CBNZ            R0, loc_436550
43654A:  MOV.W           R9, #4
43654E:  B               loc_4365AE
436550:  MOVS            R0, #0; this
436552:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436556:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43655C)
436558:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43655A:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43655C:  LDRB            R0, [R0,#(word_959AF8 - 0x959AF4)]
43655E:  CBZ             R0, loc_436570
436560:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x436566)
436562:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
436564:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
436566:  LDRB            R0, [R0,#(word_959B0C - 0x959B08)]
436568:  CBNZ            R0, loc_436570
43656A:  MOV.W           R9, #5
43656E:  B               loc_4365AE
436570:  MOVS            R0, #0; this
436572:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436576:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43657C)
436578:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43657A:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43657C:  LDRB            R0, [R0,#(word_959AF8+1 - 0x959AF4)]
43657E:  CBZ             R0, loc_436590
436580:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x436586)
436582:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
436584:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
436586:  LDRB            R0, [R0,#(word_959B0C+1 - 0x959B08)]
436588:  CBNZ            R0, loc_436590
43658A:  MOV.W           R9, #6
43658E:  B               loc_4365AE
436590:  MOVS            R0, #0; this
436592:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436596:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43659C)
436598:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43659A:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43659C:  LDRB            R0, [R0,#(byte_959AFA - 0x959AF4)]
43659E:  CBZ             R0, loc_4365B2
4365A0:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x4365A6)
4365A2:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
4365A4:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
4365A6:  LDRB            R0, [R0,#(byte_959B0E - 0x959B08)]
4365A8:  CBNZ            R0, loc_4365B2
4365AA:  MOV.W           R9, #7
4365AE:  STR.W           R9, [R8]
4365B2:  LDR             R0, =(ControlsManager_ptr - 0x4365B8)
4365B4:  ADD             R0, PC; ControlsManager_ptr
4365B6:  LDR             R0, [R0]; ControlsManager ; this
4365B8:  BLX             j__ZN24CControllerConfigManager20GetJoyButtonJustDownEv; CControllerConfigManager::GetJoyButtonJustDown(void)
4365BC:  STR             R0, [R6]
4365BE:  MOVW            R12, #0x1AD8
4365C2:  LDR.W           R3, [R4,#0xB8]
4365C6:  MOVS            R1, #2
4365C8:  LDR.W           R2, [R8]
4365CC:  MOVS            R5, #0
4365CE:  LDRB.W          R6, [R4,R12]
4365D2:  LDR             R3, [R3]
4365D4:  CMP             R2, #0
4365D6:  IT EQ
4365D8:  MOVEQ           R1, #3
4365DA:  CMP.W           R3, #0x420
4365DE:  IT NE
4365E0:  MOVNE           R1, R5; int
4365E2:  CBZ             R6, loc_43661E
4365E4:  MOVW            R5, #0x1ACE
4365E8:  LDRB            R6, [R4,R5]
4365EA:  CBZ             R6, loc_436634
4365EC:  LDR             R0, =(AudioEngine_ptr - 0x4365FA)
4365EE:  MOVS            R1, #1; int
4365F0:  MOVS            R2, #0; float
4365F2:  MOV.W           R3, #0x3F800000; float
4365F6:  ADD             R0, PC; AudioEngine_ptr
4365F8:  ADD.W           R6, R4, R12
4365FC:  ADD             R5, R4
4365FE:  MOV.W           R8, #1
436602:  LDR             R0, [R0]; AudioEngine ; this
436604:  MOV.W           R9, #0
436608:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43660C:  MOVW            R0, #0x1ACF
436610:  STRB.W          R9, [R6]
436614:  STRB.W          R8, [R4,R0]
436618:  STRB.W          R9, [R5]
43661C:  B               loc_43649C
43661E:  ADD.W           R0, R4, R10
436622:  STR.W           R5, [R4,#0xB8]
436626:  STRB            R5, [R0]
436628:  MOV.W           R0, #0xFFFFFFFF
43662C:  STR             R0, [R4,#0x24]
43662E:  STRB.W          R5, [R11]
436632:  B               loc_43649C
436634:  ORRS            R0, R2
436636:  IT EQ
436638:  CMPEQ.W         R3, #0x420
43663C:  BEQ             loc_436644
43663E:  MOV             R0, R4; this
436640:  BLX             j__ZN12CMenuManager21CheckCodesForControlsEi; CMenuManager::CheckCodesForControls(int)
436644:  MOVW            R0, #0x1AD9
436648:  MOVS            R1, #1
43664A:  STRB            R1, [R4,R0]
43664C:  B               loc_43649C
