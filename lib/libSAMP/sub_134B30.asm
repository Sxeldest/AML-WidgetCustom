; =========================================================
; Game Engine Function: sub_134B30
; Address            : 0x134B30 - 0x134B4A
; =========================================================

134B30:  PUSH            {R4,R6,R7,LR}
134B32:  ADD             R7, SP, #8
134B34:  MOV             R4, R0
134B36:  MOVS            R0, #8; unsigned int
134B38:  BLX             j__Znwj; operator new(uint)
134B3C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE4$_11NS_9allocatorIS4_EEFvvEEE - 0x134B44); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_11,std::allocator<menu::content::init_callbacks(void)::$_11>,void ()(void)> ...
134B3E:  LDR             R2, [R4,#4]
134B40:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_11,std::allocator<menu::content::init_callbacks(void)::$_11>,void ()(void)>
134B42:  ADDS            R1, #8
134B44:  STRD.W          R1, R2, [R0]
134B48:  POP             {R4,R6,R7,PC}
