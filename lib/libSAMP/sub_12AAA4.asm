; =========================================================
; Game Engine Function: sub_12AAA4
; Address            : 0x12AAA4 - 0x12AAB2
; =========================================================

12AAA4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN2UI6renderEvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12AAAC); `vtable for'std::__function::__func<UI::render(void)::$_0,std::allocator<UI::render(void)::$_0>,void ()(void)> ...
12AAA6:  LDR             R0, [R0,#4]
12AAA8:  ADD             R2, PC; `vtable for'std::__function::__func<UI::render(void)::$_0,std::allocator<UI::render(void)::$_0>,void ()(void)>
12AAAA:  ADDS            R2, #8
12AAAC:  STRD.W          R2, R0, [R1]
12AAB0:  BX              LR
