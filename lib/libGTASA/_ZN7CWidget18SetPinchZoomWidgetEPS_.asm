; =========================================================
; Game Engine Function: _ZN7CWidget18SetPinchZoomWidgetEPS_
; Address            : 0x2B37E0 - 0x2B3836
; =========================================================

2B37E0:  PUSH            {R4,R6,R7,LR}
2B37E2:  ADD             R7, SP, #8
2B37E4:  MOV             R1, R0
2B37E6:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B37F0)
2B37E8:  LDR.W           R12, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2B37F2)
2B37EC:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B37EE:  ADD             R12, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2B37F0:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B37F2:  LDR.W           R12, [R12]; CWidget::m_pPinchZoomWidget ...
2B37F6:  LDRD.W          R3, R2, [R0]; CWidget::m_pInitialTouchWidget
2B37FA:  CMP             R2, R1
2B37FC:  LDRD.W          LR, R4, [R0,#(dword_6FA294 - 0x6FA28C)]
2B3800:  MOV.W           R2, #0
2B3804:  IT EQ
2B3806:  MOVEQ           R2, #1
2B3808:  CMP             R3, R1
2B380A:  IT EQ
2B380C:  ADDEQ           R2, #1
2B380E:  CMP             LR, R1
2B3810:  IT EQ
2B3812:  ADDEQ           R2, #1
2B3814:  CMP             R4, R1
2B3816:  IT EQ
2B3818:  ADDEQ           R2, #1
2B381A:  MOVS            R0, #0
2B381C:  CMP             R2, #2
2B381E:  IT EQ
2B3820:  MOVEQ           R0, R1
2B3822:  CMP             R0, #0
2B3824:  STR.W           R0, [R12]; CWidget::m_pPinchZoomWidget
2B3828:  IT EQ
2B382A:  POPEQ           {R4,R6,R7,PC}
2B382C:  LDR             R1, [R0]
2B382E:  LDR             R1, [R1,#0x58]
2B3830:  POP.W           {R4,R6,R7,LR}
2B3834:  BX              R1
