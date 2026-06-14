; =========================================================
; Game Engine Function: _ZNSt20bad_array_new_lengthC2Ev
; Address            : 0x21FB00 - 0x21FB0C
; =========================================================

21FB00:  LDR             R1, =(_ZTVSt20bad_array_new_length_ptr - 0x21FB06); Alternative name is 'std::bad_array_new_length::bad_array_new_length(void)'
21FB02:  ADD             R1, PC; _ZTVSt20bad_array_new_length_ptr
21FB04:  LDR             R1, [R1]; `vtable for'std::bad_array_new_length ...
21FB06:  ADDS            R1, #8
21FB08:  STR             R1, [R0]
21FB0A:  BX              LR
