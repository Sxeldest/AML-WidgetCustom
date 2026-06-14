; =========================================================
; Game Engine Function: sub_1F9B10
; Address            : 0x1F9B10 - 0x1F9B1A
; =========================================================

1F9B10:  LDR             R1, =(_ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x1F9B16)
1F9B12:  ADD             R1, PC; _ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
1F9B14:  LDR             R1, [R1]; std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id ...
1F9B16:  B.W             loc_22467C
