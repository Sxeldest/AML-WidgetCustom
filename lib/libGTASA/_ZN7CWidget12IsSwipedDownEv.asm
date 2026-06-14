; =========================================================
; Game Engine Function: _ZN7CWidget12IsSwipedDownEv
; Address            : 0x2B35C0 - 0x2B3614
; =========================================================

2B35C0:  PUSH            {R4,R5,R7,LR}
2B35C2:  ADD             R7, SP, #8
2B35C4:  SUB             SP, SP, #8
2B35C6:  MOV             R5, R0
2B35C8:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B35D2)
2B35CA:  LDR             R1, [R5,#0x78]; int
2B35CC:  MOVS            R4, #0
2B35CE:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B35D0:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B35D2:  LDR.W           R0, [R0,R1,LSL#2]
2B35D6:  CMP             R0, R5
2B35D8:  BNE             loc_2B360E
2B35DA:  MOV             R0, SP; this
2B35DC:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B35E0:  LDR             R0, =(_ZN7CWidget14SWIPE_DISTANCEE_ptr - 0x2B35E8)
2B35E2:  LDR             R1, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2B35EC)
2B35E4:  ADD             R0, PC; _ZN7CWidget14SWIPE_DISTANCEE_ptr
2B35E6:  LDR             R2, [R5,#0x78]
2B35E8:  ADD             R1, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2B35EA:  LDR             R0, [R0]; CWidget::SWIPE_DISTANCE ...
2B35EC:  LDR             R1, [R1]; CWidget::m_vecTouchAnchor ...
2B35EE:  VLDR            S0, [R0]
2B35F2:  ADD.W           R0, R1, R2,LSL#3
2B35F6:  VLDR            S2, [R0,#4]
2B35FA:  VADD.F32        S0, S2, S0
2B35FE:  VLDR            S2, [SP,#0x10+var_C]
2B3602:  VCMPE.F32       S2, S0
2B3606:  VMRS            APSR_nzcv, FPSCR
2B360A:  IT GT
2B360C:  MOVGT           R4, #1
2B360E:  MOV             R0, R4
2B3610:  ADD             SP, SP, #8
2B3612:  POP             {R4,R5,R7,PC}
