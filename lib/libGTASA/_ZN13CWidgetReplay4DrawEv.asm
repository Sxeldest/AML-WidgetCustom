; =========================================================
; Game Engine Function: _ZN13CWidgetReplay4DrawEv
; Address            : 0x2C65A4 - 0x2C65D6
; =========================================================

2C65A4:  LDRB.W          R1, [R0,#0x94]
2C65A8:  CMP             R1, #0
2C65AA:  ITT EQ
2C65AC:  LDRBEQ.W        R1, [R0,#0x95]
2C65B0:  CMPEQ           R1, #0
2C65B2:  BEQ             loc_2C65B6
2C65B4:  BX              LR
2C65B6:  LDRB.W          R1, [R0,#0x4C]
2C65BA:  CMP             R1, #0
2C65BC:  ITTT NE
2C65BE:  MOVNE           R3, R0
2C65C0:  LDRNE.W         R1, [R3,#8]!
2C65C4:  CMPNE           R1, #0
2C65C6:  BEQ             locret_2C65B4
2C65C8:  ADD.W           R2, R0, #0x49 ; 'I'
2C65CC:  ADD.W           R1, R0, #0x20 ; ' '
2C65D0:  MOV             R0, R3
2C65D2:  B.W             j_j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; j_CSprite2d::Draw(CRect const&,CRGBA const&)
