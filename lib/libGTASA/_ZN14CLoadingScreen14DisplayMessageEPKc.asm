; =========================================================
; Game Engine Function: _ZN14CLoadingScreen14DisplayMessageEPKc
; Address            : 0x43B62C - 0x43B638
; =========================================================

43B62C:  MOV             R1, R0; char *
43B62E:  LDR             R0, =(_ZN14CLoadingScreen14m_PopUpMessageE_ptr - 0x43B634)
43B630:  ADD             R0, PC; _ZN14CLoadingScreen14m_PopUpMessageE_ptr
43B632:  LDR             R0, [R0]; char *
43B634:  B.W             j_strcpy
