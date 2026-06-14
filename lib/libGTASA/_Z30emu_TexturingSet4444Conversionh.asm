; =========================================================
; Game Engine Function: _Z30emu_TexturingSet4444Conversionh
; Address            : 0x1BCC34 - 0x1BCC44
; =========================================================

1BCC34:  LDR             R1, =(emu_4444Conversion_ptr - 0x1BCC40)
1BCC36:  CMP             R0, #1
1BCC38:  IT NE
1BCC3A:  MOVNE           R0, #0
1BCC3C:  ADD             R1, PC; emu_4444Conversion_ptr
1BCC3E:  LDR             R1, [R1]; emu_4444Conversion
1BCC40:  STRB            R0, [R1]
1BCC42:  BX              LR
