; =========================================================
; Game Engine Function: sub_1100E4
; Address            : 0x1100E4 - 0x1100F2
; =========================================================

1100E4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13StreamCleanerC1EvE3$_0NS_9allocatorIS3_EEFviEEE - 0x1100EC); `vtable for'std::__function::__func<StreamCleaner::StreamCleaner(void)::$_0,std::allocator<StreamCleaner::StreamCleaner(void)::$_0>,void ()(int)> ...
1100E6:  LDR             R0, [R0,#4]
1100E8:  ADD             R2, PC; `vtable for'std::__function::__func<StreamCleaner::StreamCleaner(void)::$_0,std::allocator<StreamCleaner::StreamCleaner(void)::$_0>,void ()(int)>
1100EA:  ADDS            R2, #8
1100EC:  STRD.W          R2, R0, [R1]
1100F0:  BX              LR
