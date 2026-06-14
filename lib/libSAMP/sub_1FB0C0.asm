; =========================================================
; Game Engine Function: sub_1FB0C0
; Address            : 0x1FB0C0 - 0x1FB0CA
; =========================================================

1FB0C0:  LDR             R1, =(_ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x1FB0C6)
1FB0C2:  ADD             R1, PC; _ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
1FB0C4:  LDR             R1, [R1]; std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id ...
1FB0C6:  B.W             loc_22467C
