; =========================================================
; Game Engine Function: _Z14RwImageGetPathv
; Address            : 0x1D97D8 - 0x1D97EC
; =========================================================

1D97D8:  LDR             R0, =(RwEngineInstance_ptr - 0x1D97E0)
1D97DA:  LDR             R1, =(dword_6BCF04 - 0x1D97E2)
1D97DC:  ADD             R0, PC; RwEngineInstance_ptr
1D97DE:  ADD             R1, PC; dword_6BCF04
1D97E0:  LDR             R0, [R0]; RwEngineInstance
1D97E2:  LDR             R1, [R1]
1D97E4:  LDR             R0, [R0]
1D97E6:  ADD             R0, R1
1D97E8:  LDR             R0, [R0,#4]
1D97EA:  BX              LR
