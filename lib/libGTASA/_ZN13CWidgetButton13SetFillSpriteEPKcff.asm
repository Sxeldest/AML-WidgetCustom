; =========================================================
; Game Engine Function: _ZN13CWidgetButton13SetFillSpriteEPKcff
; Address            : 0x2B4444 - 0x2B4456
; =========================================================

2B4444:  MOV             R12, R1
2B4446:  ADD.W           R1, R0, #0x98; int
2B444A:  STRD.W          R2, R3, [R0,#0xA0]
2B444E:  MOV             R2, R12; char *
2B4450:  MOVS            R3, #1
2B4452:  B.W             j_j__ZN7CWidget10SetTextureER9CSprite2dPcb; j_CWidget::SetTexture(CSprite2d &,char *,bool)
