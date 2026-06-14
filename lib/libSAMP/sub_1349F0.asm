; =========================================================
; Game Engine Function: sub_1349F0
; Address            : 0x1349F0 - 0x134A0A
; =========================================================

1349F0:  PUSH            {R4,R6,R7,LR}
1349F2:  ADD             R7, SP, #8
1349F4:  MOV             R4, R0
1349F6:  MOVS            R0, #8; unsigned int
1349F8:  BLX             j__Znwj; operator new(uint)
1349FC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_9NS_9allocatorIS4_EEFvvEEE - 0x134A04); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_9,std::allocator<menu::content::init_callbacks(void)::$_9>,void ()(void)> ...
1349FE:  LDR             R2, [R4,#4]
134A00:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_9,std::allocator<menu::content::init_callbacks(void)::$_9>,void ()(void)>
134A02:  ADDS            R1, #8
134A04:  STRD.W          R1, R2, [R0]
134A08:  POP             {R4,R6,R7,PC}
