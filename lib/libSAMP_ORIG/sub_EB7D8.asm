; =========================================================
; Game Engine Function: sub_EB7D8
; Address            : 0xEB7D8 - 0xEB7E2
; =========================================================

EB7D8:  LDR             R1, =(_ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr - 0xEB7DE)
EB7DA:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr
EB7DC:  LDR             R1, [R1]; std::moneypunct<wchar_t,true>::id ...
EB7DE:  B.W             loc_10C248
