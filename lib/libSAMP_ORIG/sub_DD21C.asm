; =========================================================
; Game Engine Function: sub_DD21C
; Address            : 0xDD21C - 0xDD226
; =========================================================

DD21C:  LDR             R1, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xDD222)
DD21E:  ADD             R1, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
DD220:  LDR             R1, [R1]; std::locale::id *
DD222:  B.W             loc_10C248
