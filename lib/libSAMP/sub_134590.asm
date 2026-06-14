; =========================================================
; Game Engine Function: sub_134590
; Address            : 0x134590 - 0x1345AA
; =========================================================

134590:  PUSH            {R4,R6,R7,LR}
134592:  ADD             R7, SP, #8
134594:  MOV             R4, R0
134596:  MOVS            R0, #8; unsigned int
134598:  BLX             j__Znwj; operator new(uint)
13459C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_2NS_9allocatorIS4_EEFvvEEE - 0x1345A4); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_2,std::allocator<menu::content::init_callbacks(void)::$_2>,void ()(void)> ...
13459E:  LDR             R2, [R4,#4]
1345A0:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_2,std::allocator<menu::content::init_callbacks(void)::$_2>,void ()(void)>
1345A2:  ADDS            R1, #8
1345A4:  STRD.W          R1, R2, [R0]
1345A8:  POP             {R4,R6,R7,PC}
