; =========================================================
; Game Engine Function: sub_2036A0
; Address            : 0x2036A0 - 0x2036AA
; =========================================================

2036A0:  LDR             R1, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0x2036A6)
2036A2:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
2036A4:  LDR             R1, [R1]; std::moneypunct<wchar_t,false>::id ...
2036A6:  B.W             loc_22467C
