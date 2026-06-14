; =========================================================
; Game Engine Function: sub_134A90
; Address            : 0x134A90 - 0x134AAA
; =========================================================

134A90:  PUSH            {R4,R6,R7,LR}
134A92:  ADD             R7, SP, #8
134A94:  MOV             R4, R0
134A96:  MOVS            R0, #8; unsigned int
134A98:  BLX             j__Znwj; operator new(uint)
134A9C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE4$_10NS_9allocatorIS4_EEFvvEEE - 0x134AA4); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_10,std::allocator<menu::content::init_callbacks(void)::$_10>,void ()(void)> ...
134A9E:  LDR             R2, [R4,#4]
134AA0:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_10,std::allocator<menu::content::init_callbacks(void)::$_10>,void ()(void)>
134AA2:  ADDS            R1, #8
134AA4:  STRD.W          R1, R2, [R0]
134AA8:  POP             {R4,R6,R7,PC}
