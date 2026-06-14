; =========================================================
; Game Engine Function: _Z30emu_TexturingGet4444Conversionv
; Address            : 0x1BCC48 - 0x1BCC52
; =========================================================

1BCC48:  LDR             R0, =(emu_4444Conversion_ptr - 0x1BCC4E)
1BCC4A:  ADD             R0, PC; emu_4444Conversion_ptr
1BCC4C:  LDR             R0, [R0]; emu_4444Conversion
1BCC4E:  LDRB            R0, [R0]
1BCC50:  BX              LR
