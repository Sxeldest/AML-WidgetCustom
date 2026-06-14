; =========================================================
; Game Engine Function: sub_1155C8
; Address            : 0x1155C8 - 0x1155E2
; =========================================================

1155C8:  PUSH            {R4,R6,R7,LR}
1155CA:  ADD             R7, SP, #8
1155CC:  MOV             R4, R0
1155CE:  MOVS            R0, #8; unsigned int
1155D0:  BLX             j__Znwj; operator new(uint)
1155D4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x1155DC); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_1,std::allocator<radar_rect::radar_rect(void)::$_1>,void ()(void)> ...
1155D6:  LDR             R2, [R4,#4]
1155D8:  ADD             R1, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_1,std::allocator<radar_rect::radar_rect(void)::$_1>,void ()(void)>
1155DA:  ADDS            R1, #8
1155DC:  STRD.W          R1, R2, [R0]
1155E0:  POP             {R4,R6,R7,PC}
