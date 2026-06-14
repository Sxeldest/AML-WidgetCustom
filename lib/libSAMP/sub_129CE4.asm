; =========================================================
; Game Engine Function: sub_129CE4
; Address            : 0x129CE4 - 0x129CF8
; =========================================================

129CE4:  PUSH            {R7,LR}
129CE6:  MOV             R7, SP
129CE8:  MOVS            R0, #8; unsigned int
129CEA:  BLX             j__Znwj; operator new(uint)
129CEE:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN19extend_render_poolsC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x129CF4); `vtable for'std::__function::__func<extend_render_pools::extend_render_pools(void)::$_0,std::allocator<extend_render_pools::extend_render_pools(void)::$_0>,void ()(void)> ...
129CF0:  ADD             R1, PC; `vtable for'std::__function::__func<extend_render_pools::extend_render_pools(void)::$_0,std::allocator<extend_render_pools::extend_render_pools(void)::$_0>,void ()(void)>
129CF2:  ADDS            R1, #8
129CF4:  STR             R1, [R0]
129CF6:  POP             {R7,PC}
