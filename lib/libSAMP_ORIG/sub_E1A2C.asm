; =========================================================
; Game Engine Function: sub_E1A2C
; Address            : 0xE1A2C - 0xE1A36
; =========================================================

E1A2C:  LDR             R1, =(_ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xE1A32)
E1A2E:  ADD             R1, PC; _ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
E1A30:  LDR             R1, [R1]; std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id ...
E1A32:  B.W             loc_10C248
