; =========================================================
; Game Engine Function: sub_EB7C8
; Address            : 0xEB7C8 - 0xEB7D2
; =========================================================

EB7C8:  LDR             R1, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0xEB7CE)
EB7CA:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
EB7CC:  LDR             R1, [R1]; std::moneypunct<char,false>::id ...
EB7CE:  B.W             loc_10C248
