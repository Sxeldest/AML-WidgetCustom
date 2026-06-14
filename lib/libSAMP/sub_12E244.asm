; =========================================================
; Game Engine Function: sub_12E244
; Address            : 0x12E244 - 0x12E252
; =========================================================

12E244:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIPFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEENS_9allocatorIS7_EES6_EE - 0x12E24C); `vtable for'std::__function::__func<void (*)(std::string_view),std::allocator<void (*)(std::string_view)>,void ()(std::string_view)> ...
12E246:  LDR             R0, [R0,#4]
12E248:  ADD             R2, PC; `vtable for'std::__function::__func<void (*)(std::string_view),std::allocator<void (*)(std::string_view)>,void ()(std::string_view)>
12E24A:  ADDS            R2, #8
12E24C:  STRD.W          R2, R0, [R1]
12E250:  BX              LR
