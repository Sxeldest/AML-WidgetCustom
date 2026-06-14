; =========================================================
; Game Engine Function: sub_203680
; Address            : 0x203680 - 0x20368A
; =========================================================

203680:  LDR             R1, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0x203686)
203682:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
203684:  LDR             R1, [R1]; std::moneypunct<char,false>::id ...
203686:  B.W             loc_22467C
