; =========================================================
; Game Engine Function: sub_12EC84
; Address            : 0x12EC84 - 0x12EC98
; =========================================================

12EC84:  PUSH            {R7,LR}
12EC86:  MOV             R7, SP
12EC88:  MOVS            R0, #8; unsigned int
12EC8A:  BLX             j__Znwj; operator new(uint)
12EC8E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12express_menuC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12EC94); `vtable for'std::__function::__func<express_menu::express_menu(void)::$_0,std::allocator<express_menu::express_menu(void)::$_0>,void ()(void)> ...
12EC90:  ADD             R1, PC; `vtable for'std::__function::__func<express_menu::express_menu(void)::$_0,std::allocator<express_menu::express_menu(void)::$_0>,void ()(void)>
12EC92:  ADDS            R1, #8
12EC94:  STR             R1, [R0]
12EC96:  POP             {R7,PC}
