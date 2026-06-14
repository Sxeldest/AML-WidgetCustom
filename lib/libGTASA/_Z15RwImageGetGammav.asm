; =========================================================
; Game Engine Function: _Z15RwImageGetGammav
; Address            : 0x1DA4B4 - 0x1DA4CA
; =========================================================

1DA4B4:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA4BC)
1DA4B6:  LDR             R1, =(dword_6BCF04 - 0x1DA4BE)
1DA4B8:  ADD             R0, PC; RwEngineInstance_ptr
1DA4BA:  ADD             R1, PC; dword_6BCF04
1DA4BC:  LDR             R0, [R0]; RwEngineInstance
1DA4BE:  LDR             R1, [R1]
1DA4C0:  LDR             R0, [R0]
1DA4C2:  ADD             R0, R1
1DA4C4:  LDR.W           R0, [R0,#0x20C]
1DA4C8:  BX              LR
