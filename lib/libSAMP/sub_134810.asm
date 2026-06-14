; =========================================================
; Game Engine Function: sub_134810
; Address            : 0x134810 - 0x13482A
; =========================================================

134810:  PUSH            {R4,R6,R7,LR}
134812:  ADD             R7, SP, #8
134814:  MOV             R4, R0
134816:  MOVS            R0, #8; unsigned int
134818:  BLX             j__Znwj; operator new(uint)
13481C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_6NS_9allocatorIS4_EEFvvEEE - 0x134824); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_6,std::allocator<menu::content::init_callbacks(void)::$_6>,void ()(void)> ...
13481E:  LDR             R2, [R4,#4]
134820:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_6,std::allocator<menu::content::init_callbacks(void)::$_6>,void ()(void)>
134822:  ADDS            R1, #8
134824:  STRD.W          R1, R2, [R0]
134828:  POP             {R4,R6,R7,PC}
