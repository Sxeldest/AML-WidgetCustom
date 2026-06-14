; =========================================================
; Game Engine Function: sub_127420
; Address            : 0x127420 - 0x127434
; =========================================================

127420:  PUSH            {R7,LR}
127422:  MOV             R7, SP
127424:  MOVS            R0, #8; unsigned int
127426:  BLX             j__Znwj; operator new(uint)
12742A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9ImgLimitsC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x127430); `vtable for'std::__function::__func<ImgLimits::ImgLimits(void)::$_0,std::allocator<ImgLimits::ImgLimits(void)::$_0>,void ()(void)> ...
12742C:  ADD             R1, PC; `vtable for'std::__function::__func<ImgLimits::ImgLimits(void)::$_0,std::allocator<ImgLimits::ImgLimits(void)::$_0>,void ()(void)>
12742E:  ADDS            R1, #8
127430:  STR             R1, [R0]
127432:  POP             {R7,PC}
