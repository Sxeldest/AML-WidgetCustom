; =========================================================
; Game Engine Function: sub_E2FA4
; Address            : 0xE2FA4 - 0xE2FAE
; =========================================================

E2FA4:  LDR             R1, =(_ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xE2FAA)
E2FA6:  ADD             R1, PC; _ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
E2FA8:  LDR             R1, [R1]; std::num_get<char,std::istreambuf_iterator<char>>::id ...
E2FAA:  B.W             loc_10C248
