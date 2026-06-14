; =========================================================
; Game Engine Function: sub_EB7E8
; Address            : 0xEB7E8 - 0xEB7F2
; =========================================================

EB7E8:  LDR             R1, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0xEB7EE)
EB7EA:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
EB7EC:  LDR             R1, [R1]; std::moneypunct<wchar_t,false>::id ...
EB7EE:  B.W             loc_10C248
