; =========================================================
; Game Engine Function: _ZN13CWidgetRegion4DrawEv
; Address            : 0x2BF8D8 - 0x2BF8F6
; =========================================================

2BF8D8:  MOV             R2, R0
2BF8DA:  LDR.W           R1, [R0,#8]!
2BF8DE:  CMP             R1, #0
2BF8E0:  ITT NE
2BF8E2:  LDRBNE.W        R1, [R2,#0x4C]
2BF8E6:  CMPNE           R1, #0
2BF8E8:  BNE             loc_2BF8EC
2BF8EA:  BX              LR
2BF8EC:  ADD.W           R1, R2, #0x20 ; ' '
2BF8F0:  ADDS            R2, #0x49 ; 'I'
2BF8F2:  B.W             j_j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; j_CSprite2d::Draw(CRect const&,CRGBA const&)
