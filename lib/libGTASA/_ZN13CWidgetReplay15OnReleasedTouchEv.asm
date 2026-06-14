; =========================================================
; Game Engine Function: _ZN13CWidgetReplay15OnReleasedTouchEv
; Address            : 0x2C64B0 - 0x2C6580
; =========================================================

2C64B0:  PUSH            {R4-R7,LR}
2C64B2:  ADD             R7, SP, #0xC
2C64B4:  PUSH.W          {R11}
2C64B8:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x2C64C2)
2C64BA:  MOV             R4, R0
2C64BC:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x2C64C4)
2C64BE:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
2C64C0:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
2C64C2:  LDR             R1, [R1]; CTimer::m_CodePause ...
2C64C4:  LDR             R0, [R0]; CTimer::m_UserPause ...
2C64C6:  LDRB            R1, [R1]; CTimer::m_CodePause
2C64C8:  LDRB            R0, [R0]; CTimer::m_UserPause
2C64CA:  ORRS            R0, R1
2C64CC:  LSLS            R0, R0, #0x18; this
2C64CE:  BEQ             loc_2C64E0
2C64D0:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2C64D4:  MOVS            R0, #0
2C64D6:  STRB.W          R0, [R4,#0x96]
2C64DA:  POP.W           {R11}
2C64DE:  POP             {R4-R7,PC}
2C64E0:  LDRB.W          R0, [R4,#0x94]
2C64E4:  CMP             R0, #0
2C64E6:  ITT EQ
2C64E8:  LDRBEQ.W        R0, [R4,#0x95]
2C64EC:  CMPEQ           R0, #0
2C64EE:  BEQ             loc_2C64F6
2C64F0:  POP.W           {R11}
2C64F4:  POP             {R4-R7,PC}
2C64F6:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2C64FC)
2C64F8:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2C64FA:  LDR             R0, [R0]; MobileSettings::settings ...
2C64FC:  LDR.W           R0, [R0,#(dword_6E087C - 0x6E03F4)]
2C6500:  CMP             R0, #0
2C6502:  BEQ             loc_2C64F0
2C6504:  LDR             R0, =(isRecording_ptr - 0x2C650A)
2C6506:  ADD             R0, PC; isRecording_ptr
2C6508:  LDR             R0, [R0]; isRecording
2C650A:  LDRB            R0, [R0]
2C650C:  CBZ             R0, loc_2C6540
2C650E:  LDR             R2, =(aWidgetThumbCir+0xD - 0x2C651C); "circle"
2C6510:  ADD.W           R1, R4, #8; CSprite2d *
2C6514:  MOV             R0, R4; this
2C6516:  MOVS            R3, #1; bool
2C6518:  ADD             R2, PC; "circle" ; char *
2C651A:  MOVS            R5, #1
2C651C:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6520:  MOVS            R6, #0
2C6522:  STRB.W          R6, [R4,#0x98]
2C6526:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
2C652A:  LDR             R0, =(isRecording_ptr - 0x2C6534)
2C652C:  STRB.W          R6, [R4,#0x97]
2C6530:  ADD             R0, PC; isRecording_ptr
2C6532:  LDR             R0, [R0]; isRecording
2C6534:  STRB            R6, [R0]
2C6536:  STRB.W          R5, [R4,#0x96]
2C653A:  POP.W           {R11}
2C653E:  POP             {R4-R7,PC}
2C6540:  LDRB.W          R0, [R4,#0x97]
2C6544:  CBZ             R0, loc_2C6552
2C6546:  POP.W           {R11}
2C654A:  POP.W           {R4-R7,LR}
2C654E:  B.W             j_j__Z9OS_TimeMSv; j_OS_TimeMS(void)
2C6552:  ADD.W           R1, R4, #8; CSprite2d *
2C6556:  ADR             R2, aWhite_2; "white"
2C6558:  MOV             R0, R4; this
2C655A:  MOVS            R3, #1; bool
2C655C:  MOVS            R5, #1
2C655E:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6562:  LDR             R0, =(isRecording_ptr - 0x2C6568)
2C6564:  ADD             R0, PC; isRecording_ptr
2C6566:  LDR             R0, [R0]; isRecording
2C6568:  STRB            R5, [R0]
2C656A:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
2C656E:  STR.W           R0, [R4,#0x9C]
2C6572:  MOVW            R0, #0x101
2C6576:  STRH.W          R0, [R4,#0x97]
2C657A:  POP.W           {R11}
2C657E:  POP             {R4-R7,PC}
