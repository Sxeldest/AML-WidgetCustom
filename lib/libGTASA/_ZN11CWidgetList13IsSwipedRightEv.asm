; =========================================================
; Game Engine Function: _ZN11CWidgetList13IsSwipedRightEv
; Address            : 0x2BA82A - 0x2BA864
; =========================================================

2BA82A:  PUSH            {R4-R7,LR}
2BA82C:  ADD             R7, SP, #0xC
2BA82E:  PUSH.W          {R11}
2BA832:  SUB             SP, SP, #8
2BA834:  MOV             R4, R0
2BA836:  BLX             j__ZN7CWidget13IsSwipedRightEv; CWidget::IsSwipedRight(void)
2BA83A:  CMP             R0, #1
2BA83C:  BNE             loc_2BA85A
2BA83E:  LDR             R0, [R4]
2BA840:  MOV             R5, SP
2BA842:  LDR             R1, [R4,#0x78]; int
2BA844:  LDR             R6, [R0,#0xC]
2BA846:  MOV             R0, R5; this
2BA848:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BA84C:  MOV             R0, R4
2BA84E:  MOV             R1, R5
2BA850:  MOVS            R2, #0
2BA852:  BLX             R6
2BA854:  EOR.W           R0, R0, #1
2BA858:  B               loc_2BA85C
2BA85A:  MOVS            R0, #0
2BA85C:  ADD             SP, SP, #8
2BA85E:  POP.W           {R11}
2BA862:  POP             {R4-R7,PC}
