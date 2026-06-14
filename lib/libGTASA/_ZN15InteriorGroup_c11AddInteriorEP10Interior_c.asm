; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c11AddInteriorEP10Interior_c
; Address            : 0x449AB8 - 0x449B16
; =========================================================

449AB8:  MOV             R2, R0
449ABA:  LDR.W           R3, [R2,#0x10]!
449ABE:  CMP             R3, #0
449AC0:  ITTTT NE
449AC2:  MOVNE           R2, R0
449AC4:  LDRNE.W         R3, [R2,#0x14]!
449AC8:  CMPNE           R3, #0
449ACA:  MOVNE           R2, R0
449ACC:  ITT NE
449ACE:  LDRNE.W         R3, [R2,#0x18]!
449AD2:  CMPNE           R3, #0
449AD4:  BNE             loc_449AE0
449AD6:  STR             R1, [R2]
449AD8:  LDRB            R1, [R0,#0xF]
449ADA:  ADDS            R1, #1
449ADC:  STRB            R1, [R0,#0xF]
449ADE:  BX              LR
449AE0:  MOV             R2, R0
449AE2:  LDR.W           R3, [R2,#0x1C]!
449AE6:  CMP             R3, #0
449AE8:  ITTT NE
449AEA:  MOVNE           R2, R0
449AEC:  LDRNE.W         R3, [R2,#0x20]!
449AF0:  CMPNE           R3, #0
449AF2:  BEQ             loc_449AD6
449AF4:  MOV             R2, R0
449AF6:  LDR.W           R3, [R2,#0x24]!
449AFA:  CMP             R3, #0
449AFC:  ITTT NE
449AFE:  MOVNE           R2, R0
449B00:  LDRNE.W         R3, [R2,#0x28]!
449B04:  CMPNE           R3, #0
449B06:  BEQ             loc_449AD6
449B08:  MOV             R2, R0
449B0A:  LDR.W           R3, [R2,#0x2C]!
449B0E:  CMP             R3, #0
449B10:  IT NE
449B12:  BXNE            LR
449B14:  B               loc_449AD6
