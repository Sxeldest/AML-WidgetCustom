; =========================================================
; Game Engine Function: sub_E3318
; Address            : 0xE3318 - 0xE3322
; =========================================================

E3318:  LDR             R1, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0xE331E)
E331A:  ADD             R1, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
E331C:  LDR             R1, [R1]; std::numpunct<char>::id ...
E331E:  B.W             loc_10C248
