; =========================================================
; Game Engine Function: _ZN15CTouchInterface15ClearTapHistoryENS_9WidgetIDsE
; Address            : 0x2B11A8 - 0x2B11BC
; =========================================================

2B11A8:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B11AE)
2B11AA:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B11AC:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B11AE:  LDR.W           R0, [R1,R0,LSL#2]; this
2B11B2:  CMP             R0, #0
2B11B4:  IT NE
2B11B6:  BNE.W           j_j__ZN7CWidget15ClearTapHistoryEv; j_CWidget::ClearTapHistory(void)
2B11BA:  BX              LR
