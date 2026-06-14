; =========================================================
; Game Engine Function: sub_1F6E88
; Address            : 0x1F6E88 - 0x1F6E92
; =========================================================

1F6E88:  LDR             R1, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0x1F6E8E)
1F6E8A:  ADD             R1, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
1F6E8C:  LDR             R1, [R1]; std::ctype<wchar_t>::id ...
1F6E8E:  B.W             loc_22467C
