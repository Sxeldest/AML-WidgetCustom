; =========================================================
; Game Engine Function: sub_12E280
; Address            : 0x12E280 - 0x12E288
; =========================================================

12E280:  LDR             R0, =(_ZTIPFvNSt6__ndk117basic_string_viewIcNS_11char_traitsIcEEEEE_ptr - 0x12E286)
12E282:  ADD             R0, PC; _ZTIPFvNSt6__ndk117basic_string_viewIcNS_11char_traitsIcEEEEE_ptr
12E284:  LDR             R0, [R0]; `typeinfo for'void (*)(std::string_view) ...
12E286:  BX              LR
