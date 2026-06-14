; =========================================================
; Game Engine Function: sub_203670
; Address            : 0x203670 - 0x20367A
; =========================================================

203670:  LDR             R1, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0x203676)
203672:  ADD             R1, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
203674:  LDR             R1, [R1]; std::moneypunct<char,true>::id ...
203676:  B.W             loc_22467C
