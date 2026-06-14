; =========================================================
; Game Engine Function: sub_E4A38
; Address            : 0xE4A38 - 0xE4A42
; =========================================================

E4A38:  LDR             R1, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0xE4A3E)
E4A3A:  ADD             R1, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
E4A3C:  LDR             R1, [R1]; std::numpunct<wchar_t>::id ...
E4A3E:  B.W             loc_10C248
