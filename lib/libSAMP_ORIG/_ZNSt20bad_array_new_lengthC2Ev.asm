; =========================================================
; Game Engine Function: _ZNSt20bad_array_new_lengthC2Ev
; Address            : 0x1086A8 - 0x1086B4
; =========================================================

1086A8:  LDR             R1, =(_ZTVSt20bad_array_new_length_ptr - 0x1086AE); Alternative name is 'std::bad_array_new_length::bad_array_new_length(void)'
1086AA:  ADD             R1, PC; _ZTVSt20bad_array_new_length_ptr
1086AC:  LDR             R1, [R1]; `vtable for'std::bad_array_new_length ...
1086AE:  ADDS            R1, #8
1086B0:  STR             R1, [R0]
1086B2:  BX              LR
