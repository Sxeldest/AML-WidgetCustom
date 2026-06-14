; =========================================================
; Game Engine Function: sub_11B108
; Address            : 0x11B108 - 0x11B122
; =========================================================

11B108:  PUSH            {R4,R6,R7,LR}
11B10A:  ADD             R7, SP, #8
11B10C:  MOV             R4, R0
11B10E:  MOVS            R0, #8; unsigned int
11B110:  BLX             j__Znwj; operator new(uint)
11B114:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_5NS_9allocatorIS4_EEFiPcEEE - 0x11B11C); `vtable for'std::__function::__func<modloader::models::models(void)::$_5,std::allocator<modloader::models::models(void)::$_5>,int ()(char *)> ...
11B116:  LDR             R2, [R4,#4]
11B118:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_5,std::allocator<modloader::models::models(void)::$_5>,int ()(char *)>
11B11A:  ADDS            R1, #8
11B11C:  STRD.W          R1, R2, [R0]
11B120:  POP             {R4,R6,R7,PC}
