; =========================================================
; Game Engine Function: sub_11B528
; Address            : 0x11B528 - 0x11B542
; =========================================================

11B528:  PUSH            {R4,R6,R7,LR}
11B52A:  ADD             R7, SP, #8
11B52C:  MOV             R4, R0
11B52E:  MOVS            R0, #8; unsigned int
11B530:  BLX             j__Znwj; operator new(uint)
11B534:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_8NS_9allocatorIS4_EEFPKciS8_EEE - 0x11B53C); `vtable for'std::__function::__func<modloader::models::models(void)::$_8,std::allocator<modloader::models::models(void)::$_8>,char const* ()(int,char const*)> ...
11B536:  LDR             R2, [R4,#4]
11B538:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_8,std::allocator<modloader::models::models(void)::$_8>,char const* ()(int,char const*)>
11B53A:  ADDS            R1, #8
11B53C:  STRD.W          R1, R2, [R0]
11B540:  POP             {R4,R6,R7,PC}
