; =========================================================
; Game Engine Function: sub_129D5C
; Address            : 0x129D5C - 0x129D70
; =========================================================

129D5C:  PUSH            {R7,LR}
129D5E:  MOV             R7, SP
129D60:  MOVS            R0, #8; unsigned int
129D62:  BLX             j__Znwj; operator new(uint)
129D66:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN19extend_render_poolsD1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x129D6C); `vtable for'std::__function::__func<extend_render_pools::~extend_render_pools()::$_1,std::allocator<extend_render_pools::~extend_render_pools()::$_1>,void ()(void)> ...
129D68:  ADD             R1, PC; `vtable for'std::__function::__func<extend_render_pools::~extend_render_pools()::$_1,std::allocator<extend_render_pools::~extend_render_pools()::$_1>,void ()(void)>
129D6A:  ADDS            R1, #8
129D6C:  STR             R1, [R0]
129D6E:  POP             {R7,PC}
