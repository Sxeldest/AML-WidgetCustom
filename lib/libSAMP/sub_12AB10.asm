; =========================================================
; Game Engine Function: sub_12AB10
; Address            : 0x12AB10 - 0x12AB1E
; =========================================================

12AB10:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN2UI12render3DTextEvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12AB18); `vtable for'std::__function::__func<UI::render3DText(void)::$_1,std::allocator<UI::render3DText(void)::$_1>,void ()(void)> ...
12AB12:  LDR             R0, [R0,#4]
12AB14:  ADD             R2, PC; `vtable for'std::__function::__func<UI::render3DText(void)::$_1,std::allocator<UI::render3DText(void)::$_1>,void ()(void)>
12AB16:  ADDS            R2, #8
12AB18:  STRD.W          R2, R0, [R1]
12AB1C:  BX              LR
