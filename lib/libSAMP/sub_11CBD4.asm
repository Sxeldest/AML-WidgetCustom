; =========================================================
; Game Engine Function: sub_11CBD4
; Address            : 0x11CBD4 - 0x11CBE8
; =========================================================

11CBD4:  PUSH            {R7,LR}
11CBD6:  MOV             R7, SP
11CBD8:  MOVS            R0, #8; unsigned int
11CBDA:  BLX             j__Znwj; operator new(uint)
11CBDE:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9BinCachesC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x11CBE4); `vtable for'std::__function::__func<BinCaches::BinCaches(void)::$_1,std::allocator<BinCaches::BinCaches(void)::$_1>,void ()(void)> ...
11CBE0:  ADD             R1, PC; `vtable for'std::__function::__func<BinCaches::BinCaches(void)::$_1,std::allocator<BinCaches::BinCaches(void)::$_1>,void ()(void)>
11CBE2:  ADDS            R1, #8
11CBE4:  STR             R1, [R0]
11CBE6:  POP             {R7,PC}
