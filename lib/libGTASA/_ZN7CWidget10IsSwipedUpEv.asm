; =========================================================
; Game Engine Function: _ZN7CWidget10IsSwipedUpEv
; Address            : 0x2B3620 - 0x2B3674
; =========================================================

2B3620:  PUSH            {R4,R5,R7,LR}
2B3622:  ADD             R7, SP, #8
2B3624:  SUB             SP, SP, #8
2B3626:  MOV             R5, R0
2B3628:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B3632)
2B362A:  LDR             R1, [R5,#0x78]; int
2B362C:  MOVS            R4, #0
2B362E:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B3630:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B3632:  LDR.W           R0, [R0,R1,LSL#2]
2B3636:  CMP             R0, R5
2B3638:  BNE             loc_2B366E
2B363A:  MOV             R0, SP; this
2B363C:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B3640:  LDR             R0, =(_ZN7CWidget14SWIPE_DISTANCEE_ptr - 0x2B3648)
2B3642:  LDR             R1, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2B364C)
2B3644:  ADD             R0, PC; _ZN7CWidget14SWIPE_DISTANCEE_ptr
2B3646:  LDR             R2, [R5,#0x78]
2B3648:  ADD             R1, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2B364A:  LDR             R0, [R0]; CWidget::SWIPE_DISTANCE ...
2B364C:  LDR             R1, [R1]; CWidget::m_vecTouchAnchor ...
2B364E:  VLDR            S0, [R0]
2B3652:  ADD.W           R0, R1, R2,LSL#3
2B3656:  VLDR            S2, [R0,#4]
2B365A:  VSUB.F32        S0, S2, S0
2B365E:  VLDR            S2, [SP,#0x10+var_C]
2B3662:  VCMPE.F32       S2, S0
2B3666:  VMRS            APSR_nzcv, FPSCR
2B366A:  IT LT
2B366C:  MOVLT           R4, #1
2B366E:  MOV             R0, R4
2B3670:  ADD             SP, SP, #8
2B3672:  POP             {R4,R5,R7,PC}
