; =========================================================
; Game Engine Function: _Z24LIB_KeyboardComboPressed13OSKeyboardKeyS_
; Address            : 0x270284 - 0x2702BE
; =========================================================

270284:  LDR             R2, =(keys_ptr - 0x27028A)
270286:  ADD             R2, PC; keys_ptr
270288:  LDR             R2, [R2]; keys
27028A:  LDR.W           R0, [R2,R0,LSL#2]
27028E:  ORR.W           R2, R0, #1
270292:  CMP             R2, #3
270294:  BNE             loc_2702BA
270296:  LDR             R2, =(keys_ptr - 0x27029C)
270298:  ADD             R2, PC; keys_ptr
27029A:  LDR             R2, [R2]; keys
27029C:  LDR.W           R1, [R2,R1,LSL#2]
2702A0:  ORR.W           R2, R1, #1
2702A4:  CMP             R2, #3
2702A6:  BNE             loc_2702BA
2702A8:  CMP             R0, #2
2702AA:  ITT EQ
2702AC:  MOVEQ           R0, #1
2702AE:  BXEQ            LR
2702B0:  MOVS            R0, #0
2702B2:  CMP             R1, #2
2702B4:  IT EQ
2702B6:  MOVEQ           R0, #1
2702B8:  BX              LR
2702BA:  MOVS            R0, #0
2702BC:  BX              LR
