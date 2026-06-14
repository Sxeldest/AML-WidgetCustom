; =========================================================
; Game Engine Function: _Z19AND_KeyboardGetChar13OSKeyboardKeyi
; Address            : 0x2689B4 - 0x2689D2
; =========================================================

2689B4:  ADDS            R1, #1
2689B6:  CMP             R1, #1
2689B8:  BLS             loc_2689C0
2689BA:  LDR             R1, =(KKtoShiftedChar_ptr - 0x2689C0)
2689BC:  ADD             R1, PC; KKtoShiftedChar_ptr
2689BE:  B               loc_2689CC
2689C0:  CMP             R0, #0x1A
2689C2:  ITT EQ
2689C4:  MOVEQ           R0, #0x1A
2689C6:  BXEQ            LR
2689C8:  LDR             R1, =(KKtoChar_ptr - 0x2689CE)
2689CA:  ADD             R1, PC; KKtoChar_ptr
2689CC:  LDR             R1, [R1]
2689CE:  LDRB            R0, [R1,R0]
2689D0:  BX              LR
