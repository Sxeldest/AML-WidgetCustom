; =========================================================
; Game Engine Function: sub_115A04
; Address            : 0x115A04 - 0x115A1E
; =========================================================

115A04:  PUSH            {R4,R6,R7,LR}
115A06:  ADD             R7, SP, #8
115A08:  MOV             R4, R0
115A0A:  MOVS            R0, #8; unsigned int
115A0C:  BLX             j__Znwj; operator new(uint)
115A10:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_4NS_9allocatorIS3_EEFP7CWidgetS7_PcP14WidgetPositionEEE - 0x115A18); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_4,std::allocator<radar_rect::radar_rect(void)::$_4>,CWidget * ()(CWidget *,char *,WidgetPosition *)> ...
115A12:  LDR             R2, [R4,#4]
115A14:  ADD             R1, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_4,std::allocator<radar_rect::radar_rect(void)::$_4>,CWidget * ()(CWidget *,char *,WidgetPosition *)>
115A16:  ADDS            R1, #8
115A18:  STRD.W          R1, R2, [R0]
115A1C:  POP             {R4,R6,R7,PC}
