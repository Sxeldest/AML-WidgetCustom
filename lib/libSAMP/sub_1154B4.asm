; =========================================================
; Game Engine Function: sub_1154B4
; Address            : 0x1154B4 - 0x1154CE
; =========================================================

1154B4:  PUSH            {R4,R6,R7,LR}
1154B6:  ADD             R7, SP, #8
1154B8:  MOV             R4, R0
1154BA:  MOVS            R0, #8; unsigned int
1154BC:  BLX             j__Znwj; operator new(uint)
1154C0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x1154C8); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_0,std::allocator<radar_rect::radar_rect(void)::$_0>,void ()(void)> ...
1154C2:  LDR             R2, [R4,#4]
1154C4:  ADD             R1, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_0,std::allocator<radar_rect::radar_rect(void)::$_0>,void ()(void)>
1154C6:  ADDS            R1, #8
1154C8:  STRD.W          R1, R2, [R0]
1154CC:  POP             {R4,R6,R7,PC}
