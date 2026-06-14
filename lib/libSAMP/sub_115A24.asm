; =========================================================
; Game Engine Function: sub_115A24
; Address            : 0x115A24 - 0x115A32
; =========================================================

115A24:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_4NS_9allocatorIS3_EEFP7CWidgetS7_PcP14WidgetPositionEEE - 0x115A2C); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_4,std::allocator<radar_rect::radar_rect(void)::$_4>,CWidget * ()(CWidget *,char *,WidgetPosition *)> ...
115A26:  LDR             R0, [R0,#4]
115A28:  ADD             R2, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_4,std::allocator<radar_rect::radar_rect(void)::$_4>,CWidget * ()(CWidget *,char *,WidgetPosition *)>
115A2A:  ADDS            R2, #8
115A2C:  STRD.W          R2, R0, [R1]
115A30:  BX              LR
