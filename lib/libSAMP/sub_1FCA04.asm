; =========================================================
; Game Engine Function: sub_1FCA04
; Address            : 0x1FCA04 - 0x1FCA0E
; =========================================================

1FCA04:  LDR             R1, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0x1FCA0A)
1FCA06:  ADD             R1, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
1FCA08:  LDR             R1, [R1]; std::numpunct<wchar_t>::id ...
1FCA0A:  B.W             loc_22467C
