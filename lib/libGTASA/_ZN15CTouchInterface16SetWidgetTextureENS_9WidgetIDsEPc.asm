; =========================================================
; Game Engine Function: _ZN15CTouchInterface16SetWidgetTextureENS_9WidgetIDsEPc
; Address            : 0x2B2434 - 0x2B2450
; =========================================================

2B2434:  MOV             R2, R1; char *
2B2436:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B243C)
2B2438:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B243A:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B243C:  LDR.W           R0, [R1,R0,LSL#2]; int
2B2440:  CMP             R0, #0
2B2442:  ITTT NE
2B2444:  ADDNE.W         R1, R0, #8; int
2B2448:  MOVNE           R3, #1
2B244A:  BNE.W           j_j__ZN7CWidget10SetTextureER9CSprite2dPcb; j_CWidget::SetTexture(CSprite2d &,char *,bool)
2B244E:  BX              LR
