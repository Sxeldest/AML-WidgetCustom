; =========================================================
; Game Engine Function: _ZN15CTouchInterface16RemoveWidgetFlagENS_9WidgetIDsEi
; Address            : 0x2B2500 - 0x2B251C
; =========================================================

2B2500:  LDR             R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2506)
2B2502:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2504:  LDR             R2, [R2]; CTouchInterface::m_pWidgets ...
2B2506:  LDR.W           R0, [R2,R0,LSL#2]
2B250A:  CMP             R0, #0
2B250C:  ITTT NE
2B250E:  LDRNE.W         R2, [R0,#0x80]
2B2512:  BICNE.W         R1, R2, R1
2B2516:  STRNE.W         R1, [R0,#0x80]
2B251A:  BX              LR
