; =========================================================
; Game Engine Function: sub_1F89AC
; Address            : 0x1F89AC - 0x1F89B6
; =========================================================

1F89AC:  LDR             R1, =(_ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x1F89B2)
1F89AE:  ADD             R1, PC; _ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
1F89B0:  LDR             R1, [R1]; std::num_put<char,std::ostreambuf_iterator<char>>::id ...
1F89B2:  B.W             loc_22467C
