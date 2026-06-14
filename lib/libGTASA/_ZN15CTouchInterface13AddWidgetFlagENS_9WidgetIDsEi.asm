; =========================================================
; Game Engine Function: _ZN15CTouchInterface13AddWidgetFlagENS_9WidgetIDsEi
; Address            : 0x2B24E0 - 0x2B24FA
; =========================================================

2B24E0:  LDR             R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B24E6)
2B24E2:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B24E4:  LDR             R2, [R2]; CTouchInterface::m_pWidgets ...
2B24E6:  LDR.W           R0, [R2,R0,LSL#2]
2B24EA:  CMP             R0, #0
2B24EC:  ITTT NE
2B24EE:  LDRNE.W         R2, [R0,#0x80]
2B24F2:  ORRNE           R1, R2
2B24F4:  STRNE.W         R1, [R0,#0x80]
2B24F8:  BX              LR
