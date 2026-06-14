; =========================================================
; Game Engine Function: sub_F7FEC
; Address            : 0xF7FEC - 0xF7FF6
; =========================================================

F7FEC:  LDR             R0, =(dword_2402D0 - 0xF7FF2)
F7FEE:  ADD             R0, PC; dword_2402D0
F7FF0:  LDR             R0, [R0]
F7FF2:  LDRB            R0, [R0]
F7FF4:  BX              LR
