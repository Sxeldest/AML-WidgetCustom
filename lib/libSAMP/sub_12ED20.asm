; =========================================================
; Game Engine Function: sub_12ED20
; Address            : 0x12ED20 - 0x12ED34
; =========================================================

12ED20:  PUSH            {R7,LR}
12ED22:  MOV             R7, SP
12ED24:  MOVS            R0, #8; unsigned int
12ED26:  BLX             j__Znwj; operator new(uint)
12ED2A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12express_menuC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12ED30); `vtable for'std::__function::__func<express_menu::express_menu(void)::$_1,std::allocator<express_menu::express_menu(void)::$_1>,void ()(void)> ...
12ED2C:  ADD             R1, PC; `vtable for'std::__function::__func<express_menu::express_menu(void)::$_1,std::allocator<express_menu::express_menu(void)::$_1>,void ()(void)>
12ED2E:  ADDS            R1, #8
12ED30:  STR             R1, [R0]
12ED32:  POP             {R7,PC}
