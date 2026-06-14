; =========================================================
; Game Engine Function: sub_1FB070
; Address            : 0x1FB070 - 0x1FB07A
; =========================================================

1FB070:  LDR             R1, =(_ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x1FB076)
1FB072:  ADD             R1, PC; _ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
1FB074:  LDR             R1, [R1]; std::num_get<char,std::istreambuf_iterator<char>>::id ...
1FB076:  B.W             loc_22467C
