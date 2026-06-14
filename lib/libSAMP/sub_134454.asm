; =========================================================
; Game Engine Function: sub_134454
; Address            : 0x134454 - 0x13446E
; =========================================================

134454:  PUSH            {R4,R6,R7,LR}
134456:  ADD             R7, SP, #8
134458:  MOV             R4, R0
13445A:  MOVS            R0, #8; unsigned int
13445C:  BLX             j__Znwj; operator new(uint)
134460:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menuC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x134468); `vtable for'std::__function::__func<menu::menu(void)::$_0,std::allocator<menu::menu(void)::$_0>,void ()(void)> ...
134462:  LDR             R2, [R4,#4]
134464:  ADD             R1, PC; `vtable for'std::__function::__func<menu::menu(void)::$_0,std::allocator<menu::menu(void)::$_0>,void ()(void)>
134466:  ADDS            R1, #8
134468:  STRD.W          R1, R2, [R0]
13446C:  POP             {R4,R6,R7,PC}
