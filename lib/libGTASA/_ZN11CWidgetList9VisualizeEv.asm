; =========================================================
; Game Engine Function: _ZN11CWidgetList9VisualizeEv
; Address            : 0x2BAAC2 - 0x2BAAF2
; =========================================================

2BAAC2:  PUSH            {R4,R5,R7,LR}
2BAAC4:  ADD             R7, SP, #8
2BAAC6:  SUB             SP, SP, #8
2BAAC8:  MOV             R4, R0
2BAACA:  BLX             j__ZN7CWidget9VisualizeEv; CWidget::Visualize(void)
2BAACE:  ADD             R5, SP, #0x10+var_C
2BAAD0:  MOVS            R0, #0x80
2BAAD2:  STR             R0, [SP,#0x10+var_10]; unsigned __int8
2BAAD4:  MOVS            R1, #0; unsigned __int8
2BAAD6:  MOV             R0, R5; this
2BAAD8:  MOVS            R2, #0; unsigned __int8
2BAADA:  MOVS            R3, #0xFF; unsigned __int8
2BAADC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAAE0:  ADD.W           R0, R4, #0x11000
2BAAE4:  MOV             R1, R5
2BAAE6:  ADD.W           R0, R0, #0xC90
2BAAEA:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2BAAEE:  ADD             SP, SP, #8
2BAAF0:  POP             {R4,R5,R7,PC}
