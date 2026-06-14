; =========================================================
; Game Engine Function: sub_1348B0
; Address            : 0x1348B0 - 0x1348CA
; =========================================================

1348B0:  PUSH            {R4,R6,R7,LR}
1348B2:  ADD             R7, SP, #8
1348B4:  MOV             R4, R0
1348B6:  MOVS            R0, #8; unsigned int
1348B8:  BLX             j__Znwj; operator new(uint)
1348BC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_7NS_9allocatorIS4_EEFvvEEE - 0x1348C4); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_7,std::allocator<menu::content::init_callbacks(void)::$_7>,void ()(void)> ...
1348BE:  LDR             R2, [R4,#4]
1348C0:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_7,std::allocator<menu::content::init_callbacks(void)::$_7>,void ()(void)>
1348C2:  ADDS            R1, #8
1348C4:  STRD.W          R1, R2, [R0]
1348C8:  POP             {R4,R6,R7,PC}
