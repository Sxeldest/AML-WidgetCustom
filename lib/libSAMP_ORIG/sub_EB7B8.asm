; =========================================================
; Game Engine Function: sub_EB7B8
; Address            : 0xEB7B8 - 0xEB7C2
; =========================================================

EB7B8:  LDR             R1, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0xEB7BE)
EB7BA:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
EB7BC:  LDR             R1, [R1]; std::moneypunct<char,true>::id ...
EB7BE:  B.W             loc_10C248
