; =========================================================
; Game Engine Function: sub_1F5300
; Address            : 0x1F5300 - 0x1F530A
; =========================================================

1F5300:  LDR             R1, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x1F5306)
1F5302:  ADD             R1, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
1F5304:  LDR             R1, [R1]; std::locale::id *
1F5306:  B.W             loc_22467C
