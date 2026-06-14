; =========================================================
; Game Engine Function: _Z17LIB_KeyboardState13OSKeyboardKey
; Address            : 0x27022C - 0x270238
; =========================================================

27022C:  LDR             R1, =(keys_ptr - 0x270232)
27022E:  ADD             R1, PC; keys_ptr
270230:  LDR             R1, [R1]; keys
270232:  LDR.W           R0, [R1,R0,LSL#2]
270236:  BX              LR
