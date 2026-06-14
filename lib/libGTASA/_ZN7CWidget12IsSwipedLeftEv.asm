; =========================================================
; Game Engine Function: _ZN7CWidget12IsSwipedLeftEv
; Address            : 0x2B3500 - 0x2B3554
; =========================================================

2B3500:  PUSH            {R4,R5,R7,LR}
2B3502:  ADD             R7, SP, #8
2B3504:  SUB             SP, SP, #8
2B3506:  MOV             R5, R0
2B3508:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B3512)
2B350A:  LDR             R1, [R5,#0x78]; int
2B350C:  MOVS            R4, #0
2B350E:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B3510:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B3512:  LDR.W           R0, [R0,R1,LSL#2]
2B3516:  CMP             R0, R5
2B3518:  BNE             loc_2B354E
2B351A:  MOV             R0, SP; this
2B351C:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B3520:  LDR             R0, =(_ZN7CWidget14SWIPE_DISTANCEE_ptr - 0x2B3528)
2B3522:  LDR             R1, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2B352C)
2B3524:  ADD             R0, PC; _ZN7CWidget14SWIPE_DISTANCEE_ptr
2B3526:  LDR             R2, [R5,#0x78]
2B3528:  ADD             R1, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2B352A:  LDR             R0, [R0]; CWidget::SWIPE_DISTANCE ...
2B352C:  LDR             R1, [R1]; CWidget::m_vecTouchAnchor ...
2B352E:  VLDR            S0, [R0]
2B3532:  ADD.W           R0, R1, R2,LSL#3
2B3536:  VLDR            S2, [R0]
2B353A:  VSUB.F32        S0, S2, S0
2B353E:  VLDR            S2, [SP,#0x10+var_10]
2B3542:  VCMPE.F32       S2, S0
2B3546:  VMRS            APSR_nzcv, FPSCR
2B354A:  IT LT
2B354C:  MOVLT           R4, #1
2B354E:  MOV             R0, R4
2B3550:  ADD             SP, SP, #8
2B3552:  POP             {R4,R5,R7,PC}
