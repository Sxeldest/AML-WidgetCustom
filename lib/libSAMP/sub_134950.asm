; =========================================================
; Game Engine Function: sub_134950
; Address            : 0x134950 - 0x13496A
; =========================================================

134950:  PUSH            {R4,R6,R7,LR}
134952:  ADD             R7, SP, #8
134954:  MOV             R4, R0
134956:  MOVS            R0, #8; unsigned int
134958:  BLX             j__Znwj; operator new(uint)
13495C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_8NS_9allocatorIS4_EEFvvEEE - 0x134964); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_8,std::allocator<menu::content::init_callbacks(void)::$_8>,void ()(void)> ...
13495E:  LDR             R2, [R4,#4]
134960:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_8,std::allocator<menu::content::init_callbacks(void)::$_8>,void ()(void)>
134962:  ADDS            R1, #8
134964:  STRD.W          R1, R2, [R0]
134968:  POP             {R4,R6,R7,PC}
