; =========================================================
; Game Engine Function: _ZN11CWidgetList10IsReleasedEP9CVector2D
; Address            : 0x2BAAAC - 0x2BAAC2
; =========================================================

2BAAAC:  MOV             R2, #0x11CC0
2BAAB4:  LDR             R2, [R0,R2]
2BAAB6:  ADDS            R2, #1
2BAAB8:  IT NE
2BAABA:  BNE.W           j_j__ZN7CWidget10IsReleasedEP9CVector2D; j_CWidget::IsReleased(CVector2D *)
2BAABE:  MOVS            R0, #0
2BAAC0:  BX              LR
