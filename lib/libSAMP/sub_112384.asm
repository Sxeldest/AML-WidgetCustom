; =========================================================
; Game Engine Function: sub_112384
; Address            : 0x112384 - 0x112398
; =========================================================

112384:  PUSH            {R7,LR}
112386:  MOV             R7, SP
112388:  MOVS            R0, #8; unsigned int
11238A:  BLX             j__Znwj; operator new(uint)
11238E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12custom_radarD1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x112394); `vtable for'std::__function::__func<custom_radar::~custom_radar()::$_1,std::allocator<custom_radar::~custom_radar()::$_1>,void ()(void)> ...
112390:  ADD             R1, PC; `vtable for'std::__function::__func<custom_radar::~custom_radar()::$_1,std::allocator<custom_radar::~custom_radar()::$_1>,void ()(void)>
112392:  ADDS            R1, #8
112394:  STR             R1, [R0]
112396:  POP             {R7,PC}
