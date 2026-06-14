; =========================================================
; Game Engine Function: _ZN6CDebug19DebugInitTextBufferEv
; Address            : 0x3EAB08 - 0x3EAB14
; =========================================================

3EAB08:  LDR             R0, =(_ZN6CDebug19ms_nCurrentTextLineE_ptr - 0x3EAB10)
3EAB0A:  MOVS            R1, #0
3EAB0C:  ADD             R0, PC; _ZN6CDebug19ms_nCurrentTextLineE_ptr
3EAB0E:  LDR             R0, [R0]; CDebug::ms_nCurrentTextLine ...
3EAB10:  STRH            R1, [R0]; CDebug::ms_nCurrentTextLine
3EAB12:  BX              LR
