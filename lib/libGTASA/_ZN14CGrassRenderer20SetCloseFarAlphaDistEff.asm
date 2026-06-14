; =========================================================
; Game Engine Function: _ZN14CGrassRenderer20SetCloseFarAlphaDistEff
; Address            : 0x2CD274 - 0x2CD286
; =========================================================

2CD274:  LDR             R2, =(_ZN14CGrassRenderer9m_farDistE_ptr - 0x2CD27C)
2CD276:  LDR             R3, =(_ZN14CGrassRenderer11m_closeDistE_ptr - 0x2CD27E)
2CD278:  ADD             R2, PC; _ZN14CGrassRenderer9m_farDistE_ptr
2CD27A:  ADD             R3, PC; _ZN14CGrassRenderer11m_closeDistE_ptr
2CD27C:  LDR             R2, [R2]; CGrassRenderer::m_farDist ...
2CD27E:  LDR             R3, [R3]; CGrassRenderer::m_closeDist ...
2CD280:  STR             R1, [R2]; CGrassRenderer::m_farDist
2CD282:  STR             R0, [R3]; CGrassRenderer::m_closeDist
2CD284:  BX              LR
