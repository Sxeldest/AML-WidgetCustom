; =========================================================
; Game Engine Function: _ZN7CWidgetD2Ev
; Address            : 0x2B2A98 - 0x2B2BE6
; =========================================================

2B2A98:  PUSH            {R4,R6,R7,LR}
2B2A9A:  ADD             R7, SP, #8
2B2A9C:  LDR             R1, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2AA6)
2B2A9E:  MOV             R4, R0
2B2AA0:  LDR             R0, =(_ZTV7CWidget_ptr - 0x2B2AA8)
2B2AA2:  ADD             R1, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2AA4:  ADD             R0, PC; _ZTV7CWidget_ptr
2B2AA6:  LDR             R1, [R1]; CWidget::m_pInitialTouchWidget ...
2B2AA8:  LDR             R0, [R0]; `vtable for'CWidget ...
2B2AAA:  ADDS            R0, #8
2B2AAC:  STR             R0, [R4]
2B2AAE:  LDR             R0, [R1]; CWidget::m_pInitialTouchWidget
2B2AB0:  CMP             R0, R4
2B2AB2:  BNE             loc_2B2ABE
2B2AB4:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2ABC)
2B2AB6:  MOVS            R1, #0
2B2AB8:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2ABA:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2ABC:  STR             R1, [R0]; CWidget::m_pInitialTouchWidget
2B2ABE:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2AC4)
2B2AC0:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2AC2:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2AC4:  LDR             R0, [R0]; CWidget::m_pReleasedWidget
2B2AC6:  CMP             R0, R4
2B2AC8:  BNE             loc_2B2AD4
2B2ACA:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2AD2)
2B2ACC:  MOVS            R1, #0
2B2ACE:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2AD0:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2AD2:  STR             R1, [R0]; CWidget::m_pReleasedWidget
2B2AD4:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2ADA)
2B2AD6:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2AD8:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2ADA:  LDR             R0, [R0]; CWidget::m_pSwipedWidget
2B2ADC:  CMP             R0, R4
2B2ADE:  BNE             loc_2B2AEA
2B2AE0:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2AE8)
2B2AE2:  MOVS            R1, #0
2B2AE4:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2AE6:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2AE8:  STR             R1, [R0]; CWidget::m_pSwipedWidget
2B2AEA:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2AF0)
2B2AEC:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2AEE:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2AF0:  LDR             R0, [R0,#(dword_6FA290 - 0x6FA28C)]
2B2AF2:  CMP             R0, R4
2B2AF4:  BNE             loc_2B2B00
2B2AF6:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2AFE)
2B2AF8:  MOVS            R1, #0
2B2AFA:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2AFC:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2AFE:  STR             R1, [R0,#(dword_6FA290 - 0x6FA28C)]
2B2B00:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2B06)
2B2B02:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2B04:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2B06:  LDR             R0, [R0,#(dword_6FA2A0 - 0x6FA29C)]
2B2B08:  CMP             R0, R4
2B2B0A:  BNE             loc_2B2B16
2B2B0C:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2B14)
2B2B0E:  MOVS            R1, #0
2B2B10:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2B12:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2B14:  STR             R1, [R0,#(dword_6FA2A0 - 0x6FA29C)]
2B2B16:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2B1C)
2B2B18:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2B1A:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2B1C:  LDR             R0, [R0,#(dword_6FA2B0 - 0x6FA2AC)]
2B2B1E:  CMP             R0, R4
2B2B20:  BNE             loc_2B2B2C
2B2B22:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2B2A)
2B2B24:  MOVS            R1, #0
2B2B26:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2B28:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2B2A:  STR             R1, [R0,#(dword_6FA2B0 - 0x6FA2AC)]
2B2B2C:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2B32)
2B2B2E:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2B30:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2B32:  LDR             R0, [R0,#(dword_6FA294 - 0x6FA28C)]
2B2B34:  CMP             R0, R4
2B2B36:  BNE             loc_2B2B42
2B2B38:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2B40)
2B2B3A:  MOVS            R1, #0
2B2B3C:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2B3E:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2B40:  STR             R1, [R0,#(dword_6FA294 - 0x6FA28C)]
2B2B42:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2B48)
2B2B44:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2B46:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2B48:  LDR             R0, [R0,#(dword_6FA2A4 - 0x6FA29C)]
2B2B4A:  CMP             R0, R4
2B2B4C:  BNE             loc_2B2B58
2B2B4E:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2B56)
2B2B50:  MOVS            R1, #0
2B2B52:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2B54:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2B56:  STR             R1, [R0,#(dword_6FA2A4 - 0x6FA29C)]
2B2B58:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2B5E)
2B2B5A:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2B5C:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2B5E:  LDR             R0, [R0,#(dword_6FA2B4 - 0x6FA2AC)]
2B2B60:  CMP             R0, R4
2B2B62:  BNE             loc_2B2B6E
2B2B64:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2B6C)
2B2B66:  MOVS            R1, #0
2B2B68:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2B6A:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2B6C:  STR             R1, [R0,#(dword_6FA2B4 - 0x6FA2AC)]
2B2B6E:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2B74)
2B2B70:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2B72:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2B74:  LDR             R0, [R0,#(dword_6FA298 - 0x6FA28C)]
2B2B76:  CMP             R0, R4
2B2B78:  BNE             loc_2B2B84
2B2B7A:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B2B82)
2B2B7C:  MOVS            R1, #0
2B2B7E:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B2B80:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B2B82:  STR             R1, [R0,#(dword_6FA298 - 0x6FA28C)]
2B2B84:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2B8A)
2B2B86:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2B88:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2B8A:  LDR             R0, [R0,#(dword_6FA2A8 - 0x6FA29C)]
2B2B8C:  CMP             R0, R4
2B2B8E:  BNE             loc_2B2B9A
2B2B90:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B2B98)
2B2B92:  MOVS            R1, #0
2B2B94:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B2B96:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2B2B98:  STR             R1, [R0,#(dword_6FA2A8 - 0x6FA29C)]
2B2B9A:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2BA0)
2B2B9C:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2B9E:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2BA0:  LDR             R0, [R0,#(dword_6FA2B8 - 0x6FA2AC)]
2B2BA2:  CMP             R0, R4
2B2BA4:  BNE             loc_2B2BB0
2B2BA6:  LDR             R0, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B2BAE)
2B2BA8:  MOVS            R1, #0
2B2BAA:  ADD             R0, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B2BAC:  LDR             R0, [R0]; CWidget::m_pSwipedWidget ...
2B2BAE:  STR             R1, [R0,#(dword_6FA2B8 - 0x6FA2AC)]
2B2BB0:  LDR             R0, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2B2BB6)
2B2BB2:  ADD             R0, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2B2BB4:  LDR             R0, [R0]; CWidget::m_pPinchZoomWidget ...
2B2BB6:  LDR             R0, [R0]; CWidget::m_pPinchZoomWidget
2B2BB8:  CMP             R0, R4
2B2BBA:  BNE             loc_2B2BC6
2B2BBC:  LDR             R0, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2B2BC4)
2B2BBE:  MOVS            R1, #0
2B2BC0:  ADD             R0, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2B2BC2:  LDR             R0, [R0]; CWidget::m_pPinchZoomWidget ...
2B2BC4:  STR             R1, [R0]; CWidget::m_pPinchZoomWidget
2B2BC6:  LDR.W           R0, [R4,#0x88]; this
2B2BCA:  CBZ             R0, loc_2B2BDA
2B2BCC:  BLX             j__ZN11CHoldEffectD2Ev; CHoldEffect::~CHoldEffect()
2B2BD0:  BLX             _ZdlPv; operator delete(void *)
2B2BD4:  MOVS            R0, #0
2B2BD6:  STR.W           R0, [R4,#0x88]
2B2BDA:  ADD.W           R0, R4, #8; this
2B2BDE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B2BE2:  MOV             R0, R4
2B2BE4:  POP             {R4,R6,R7,PC}
