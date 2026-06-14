; =========================================================
; Game Engine Function: _Z19LIB_KeyboardPressed13OSKeyboardKey
; Address            : 0x27023C - 0x270250
; =========================================================

27023C:  LDR             R1, =(keys_ptr - 0x270242)
27023E:  ADD             R1, PC; keys_ptr
270240:  LDR             R1, [R1]; keys
270242:  LDR.W           R1, [R1,R0,LSL#2]
270246:  MOVS            R0, #0
270248:  CMP             R1, #2
27024A:  IT EQ
27024C:  MOVEQ           R0, #1
27024E:  BX              LR
