; =========================================================
; Game Engine Function: _ZN10CTimeCycle17GetAmbientRed_ObjEv
; Address            : 0x420994 - 0x42099E
; =========================================================

420994:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x42099A)
420996:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
420998:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
42099A:  LDR             R0, [R0,#(dword_966558 - 0x96654C)]
42099C:  BX              LR
