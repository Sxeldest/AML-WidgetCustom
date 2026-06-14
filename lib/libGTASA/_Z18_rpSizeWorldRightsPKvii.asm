; =========================================================
; Game Engine Function: _Z18_rpSizeWorldRightsPKvii
; Address            : 0x212662 - 0x212676
; =========================================================

212662:  LDR             R0, [R0,#0x6C]
212664:  CMP             R0, #0
212666:  ITT NE
212668:  LDRNE           R0, [R0,#0x2C]
21266A:  CMPNE           R0, #0
21266C:  BEQ             loc_212672
21266E:  MOVS            R0, #8
212670:  BX              LR
212672:  MOVS            R0, #0
212674:  BX              LR
