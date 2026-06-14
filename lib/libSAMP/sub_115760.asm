; =========================================================
; Game Engine Function: sub_115760
; Address            : 0x115760 - 0x11577A
; =========================================================

115760:  PUSH            {R4,R6,R7,LR}
115762:  ADD             R7, SP, #8
115764:  MOV             R4, R0
115766:  MOVS            R0, #8; unsigned int
115768:  BLX             j__Znwj; operator new(uint)
11576C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_2NS_9allocatorIS3_EEFfPfEEE - 0x115774); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_2,std::allocator<radar_rect::radar_rect(void)::$_2>,float ()(float *)> ...
11576E:  LDR             R2, [R4,#4]
115770:  ADD             R1, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_2,std::allocator<radar_rect::radar_rect(void)::$_2>,float ()(float *)>
115772:  ADDS            R1, #8
115774:  STRD.W          R1, R2, [R0]
115778:  POP             {R4,R6,R7,PC}
