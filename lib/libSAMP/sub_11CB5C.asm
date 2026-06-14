; =========================================================
; Game Engine Function: sub_11CB5C
; Address            : 0x11CB5C - 0x11CB70
; =========================================================

11CB5C:  PUSH            {R7,LR}
11CB5E:  MOV             R7, SP
11CB60:  MOVS            R0, #8; unsigned int
11CB62:  BLX             j__Znwj; operator new(uint)
11CB66:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9BinCachesC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x11CB6C); `vtable for'std::__function::__func<BinCaches::BinCaches(void)::$_0,std::allocator<BinCaches::BinCaches(void)::$_0>,void ()(void)> ...
11CB68:  ADD             R1, PC; `vtable for'std::__function::__func<BinCaches::BinCaches(void)::$_0,std::allocator<BinCaches::BinCaches(void)::$_0>,void ()(void)>
11CB6A:  ADDS            R1, #8
11CB6C:  STR             R1, [R0]
11CB6E:  POP             {R7,PC}
