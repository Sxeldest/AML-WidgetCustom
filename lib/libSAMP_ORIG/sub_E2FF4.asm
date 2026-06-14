; =========================================================
; Game Engine Function: sub_E2FF4
; Address            : 0xE2FF4 - 0xE2FFE
; =========================================================

E2FF4:  LDR             R1, =(_ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xE2FFA)
E2FF6:  ADD             R1, PC; _ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
E2FF8:  LDR             R1, [R1]; std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id ...
E2FFA:  B.W             loc_10C248
