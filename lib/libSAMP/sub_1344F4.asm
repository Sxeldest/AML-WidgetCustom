; =========================================================
; Game Engine Function: sub_1344F4
; Address            : 0x1344F4 - 0x13450E
; =========================================================

1344F4:  PUSH            {R4,R6,R7,LR}
1344F6:  ADD             R7, SP, #8
1344F8:  MOV             R4, R0
1344FA:  MOVS            R0, #8; unsigned int
1344FC:  BLX             j__Znwj; operator new(uint)
134500:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menuC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x134508); `vtable for'std::__function::__func<menu::menu(void)::$_1,std::allocator<menu::menu(void)::$_1>,void ()(void)> ...
134502:  LDR             R2, [R4,#4]
134504:  ADD             R1, PC; `vtable for'std::__function::__func<menu::menu(void)::$_1,std::allocator<menu::menu(void)::$_1>,void ()(void)>
134506:  ADDS            R1, #8
134508:  STRD.W          R1, R2, [R0]
13450C:  POP             {R4,R6,R7,PC}
