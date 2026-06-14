; =========================================================
; Game Engine Function: _Z17Menu_LoadFailedOKPv
; Address            : 0x29B3FC - 0x29B404
; =========================================================

29B3FC:  LDR             R0, =(gMobileMenu_ptr - 0x29B402)
29B3FE:  ADD             R0, PC; gMobileMenu_ptr
29B400:  LDR             R0, [R0]; gMobileMenu ; this
29B402:  B               _ZN10MobileMenu16InitForSignedOutEv; MobileMenu::InitForSignedOut(void)
