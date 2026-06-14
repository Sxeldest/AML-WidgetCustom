; =========================================================
; Game Engine Function: _Z24LIB_KeyboardDoubleTapped13OSKeyboardKey
; Address            : 0x2702C8 - 0x2702D6
; =========================================================

2702C8:  LDR             R1, =(keys_ptr - 0x2702CE)
2702CA:  ADD             R1, PC; keys_ptr
2702CC:  LDR             R1, [R1]; keys
2702CE:  ADD             R0, R1
2702D0:  LDRB.W          R0, [R0,#0x1B8]
2702D4:  BX              LR
