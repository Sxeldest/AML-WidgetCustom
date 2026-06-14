; =========================================================
; Game Engine Function: sub_E08C8
; Address            : 0xE08C8 - 0xE08D2
; =========================================================

E08C8:  LDR             R1, =(_ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xE08CE)
E08CA:  ADD             R1, PC; _ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
E08CC:  LDR             R1, [R1]; std::num_put<char,std::ostreambuf_iterator<char>>::id ...
E08CE:  B.W             loc_10C248
