; =========================================================
; Game Engine Function: sub_FAED0
; Address            : 0xFAED0 - 0xFAEDE
; =========================================================

FAED0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN8HeadmoveC1EvE3$_0NS_9allocatorIS3_EEFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEE - 0xFAED8); `vtable for'std::__function::__func<Headmove::Headmove(void)::$_0,std::allocator<Headmove::Headmove(void)::$_0>,void ()(std::string_view)> ...
FAED2:  LDR             R0, [R0,#4]
FAED4:  ADD             R2, PC; `vtable for'std::__function::__func<Headmove::Headmove(void)::$_0,std::allocator<Headmove::Headmove(void)::$_0>,void ()(std::string_view)>
FAED6:  ADDS            R2, #8
FAED8:  STRD.W          R2, R0, [R1]
FAEDC:  BX              LR
