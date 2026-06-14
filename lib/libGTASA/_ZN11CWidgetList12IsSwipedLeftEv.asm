; =========================================================
; Game Engine Function: _ZN11CWidgetList12IsSwipedLeftEv
; Address            : 0x2BA7F0 - 0x2BA82A
; =========================================================

2BA7F0:  PUSH            {R4-R7,LR}
2BA7F2:  ADD             R7, SP, #0xC
2BA7F4:  PUSH.W          {R11}
2BA7F8:  SUB             SP, SP, #8
2BA7FA:  MOV             R4, R0
2BA7FC:  BLX             j__ZN7CWidget12IsSwipedLeftEv; CWidget::IsSwipedLeft(void)
2BA800:  CMP             R0, #1
2BA802:  BNE             loc_2BA820
2BA804:  LDR             R0, [R4]
2BA806:  MOV             R5, SP
2BA808:  LDR             R1, [R4,#0x78]; int
2BA80A:  LDR             R6, [R0,#0xC]
2BA80C:  MOV             R0, R5; this
2BA80E:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BA812:  MOV             R0, R4
2BA814:  MOV             R1, R5
2BA816:  MOVS            R2, #0
2BA818:  BLX             R6
2BA81A:  EOR.W           R0, R0, #1
2BA81E:  B               loc_2BA822
2BA820:  MOVS            R0, #0
2BA822:  ADD             SP, SP, #8
2BA824:  POP.W           {R11}
2BA828:  POP             {R4-R7,PC}
