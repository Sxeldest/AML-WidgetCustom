; =========================================================
; Game Engine Function: _Z10CheckAnisov
; Address            : 0x5E504C - 0x5E5058
; =========================================================

5E504C:  LDR             R0, =(AnisoAvailable_ptr - 0x5E5054)
5E504E:  MOVS            R1, #0
5E5050:  ADD             R0, PC; AnisoAvailable_ptr
5E5052:  LDR             R0, [R0]; AnisoAvailable
5E5054:  STRB            R1, [R0]
5E5056:  BX              LR
