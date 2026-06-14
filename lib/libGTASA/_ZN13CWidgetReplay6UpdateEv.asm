; =========================================================
; Game Engine Function: _ZN13CWidgetReplay6UpdateEv
; Address            : 0x2C640C - 0x2C6472
; =========================================================

2C640C:  PUSH            {R4,R6,R7,LR}
2C640E:  ADD             R7, SP, #8
2C6410:  MOV             R4, R0
2C6412:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2C6416:  MOV             R0, R4; this
2C6418:  BLX             j__ZN7CWidget11ManageAlphaEv; CWidget::ManageAlpha(void)
2C641C:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x2C6424)
2C641E:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x2C6426)
2C6420:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
2C6422:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
2C6424:  LDR             R0, [R0]; CTimer::m_UserPause ...
2C6426:  LDR             R1, [R1]; CTimer::m_CodePause ...
2C6428:  LDRB            R0, [R0]; CTimer::m_UserPause
2C642A:  LDRB            R1, [R1]; CTimer::m_CodePause
2C642C:  ORRS            R0, R1
2C642E:  LSLS            R0, R0, #0x18
2C6430:  ITT NE
2C6432:  LDRBNE.W        R0, [R4,#0x96]; this
2C6436:  CMPNE           R0, #0
2C6438:  BEQ             loc_2C6444
2C643A:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2C643E:  MOVS            R0, #0
2C6440:  STRB.W          R0, [R4,#0x96]
2C6444:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2C644A)
2C6446:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2C6448:  LDR             R0, [R0]; MobileSettings::settings ...
2C644A:  LDR.W           R0, [R0,#(dword_6E087C - 0x6E03F4)]
2C644E:  CMP             R0, #0
2C6450:  ITT NE
2C6452:  LDRBNE.W        R0, [R4,#0x98]
2C6456:  CMPNE           R0, #0
2C6458:  BEQ             locret_2C6470
2C645A:  LDR             R2, =(aWidgetThumbCir+0xD - 0x2C6468); "circle"
2C645C:  ADD.W           R1, R4, #8; CSprite2d *
2C6460:  MOV             R0, R4; this
2C6462:  MOVS            R3, #1; bool
2C6464:  ADD             R2, PC; "circle" ; char *
2C6466:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C646A:  MOVS            R0, #0
2C646C:  STRH.W          R0, [R4,#0x97]
2C6470:  POP             {R4,R6,R7,PC}
