; =========================================================
; Game Engine Function: _ZN7CWidget13IsSwipedRightEv
; Address            : 0x2B3560 - 0x2B35B4
; =========================================================

2B3560:  PUSH            {R4,R5,R7,LR}
2B3562:  ADD             R7, SP, #8
2B3564:  SUB             SP, SP, #8
2B3566:  MOV             R5, R0
2B3568:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B3572)
2B356A:  LDR             R1, [R5,#0x78]; int
2B356C:  MOVS            R4, #0
2B356E:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B3570:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B3572:  LDR.W           R0, [R0,R1,LSL#2]
2B3576:  CMP             R0, R5
2B3578:  BNE             loc_2B35AE
2B357A:  MOV             R0, SP; this
2B357C:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B3580:  LDR             R0, =(_ZN7CWidget14SWIPE_DISTANCEE_ptr - 0x2B3588)
2B3582:  LDR             R1, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2B358C)
2B3584:  ADD             R0, PC; _ZN7CWidget14SWIPE_DISTANCEE_ptr
2B3586:  LDR             R2, [R5,#0x78]
2B3588:  ADD             R1, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2B358A:  LDR             R0, [R0]; CWidget::SWIPE_DISTANCE ...
2B358C:  LDR             R1, [R1]; CWidget::m_vecTouchAnchor ...
2B358E:  VLDR            S0, [R0]
2B3592:  ADD.W           R0, R1, R2,LSL#3
2B3596:  VLDR            S2, [R0]
2B359A:  VADD.F32        S0, S2, S0
2B359E:  VLDR            S2, [SP,#0x10+var_10]
2B35A2:  VCMPE.F32       S2, S0
2B35A6:  VMRS            APSR_nzcv, FPSCR
2B35AA:  IT GT
2B35AC:  MOVGT           R4, #1
2B35AE:  MOV             R0, R4
2B35B0:  ADD             SP, SP, #8
2B35B2:  POP             {R4,R5,R7,PC}
