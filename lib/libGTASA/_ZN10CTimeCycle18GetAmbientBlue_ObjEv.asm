; =========================================================
; Game Engine Function: _ZN10CTimeCycle18GetAmbientBlue_ObjEv
; Address            : 0x4209B4 - 0x4209BE
; =========================================================

4209B4:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x4209BA)
4209B6:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
4209B8:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
4209BA:  LDR             R0, [R0,#(dword_966560 - 0x96654C)]
4209BC:  BX              LR
