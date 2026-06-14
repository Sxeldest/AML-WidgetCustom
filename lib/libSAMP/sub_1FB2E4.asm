; =========================================================
; Game Engine Function: sub_1FB2E4
; Address            : 0x1FB2E4 - 0x1FB2EE
; =========================================================

1FB2E4:  LDR             R1, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0x1FB2EA)
1FB2E6:  ADD             R1, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
1FB2E8:  LDR             R1, [R1]; std::numpunct<char>::id ...
1FB2EA:  B.W             loc_22467C
