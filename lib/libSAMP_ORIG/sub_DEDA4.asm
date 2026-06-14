; =========================================================
; Game Engine Function: sub_DEDA4
; Address            : 0xDEDA4 - 0xDEDAE
; =========================================================

DEDA4:  LDR             R1, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0xDEDAA)
DEDA6:  ADD             R1, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
DEDA8:  LDR             R1, [R1]; std::ctype<wchar_t>::id ...
DEDAA:  B.W             loc_10C248
