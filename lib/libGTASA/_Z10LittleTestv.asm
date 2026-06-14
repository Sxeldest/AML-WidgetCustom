; =========================================================
; Game Engine Function: _Z10LittleTestv
; Address            : 0x3FCAA0 - 0x3FCAAC
; =========================================================

3FCAA0:  LDR             R0, =(dword_959E34 - 0x3FCAA6)
3FCAA2:  ADD             R0, PC; dword_959E34
3FCAA4:  LDR             R1, [R0]
3FCAA6:  ADDS            R1, #1
3FCAA8:  STR             R1, [R0]
3FCAAA:  BX              LR
