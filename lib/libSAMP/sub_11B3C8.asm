; =========================================================
; Game Engine Function: sub_11B3C8
; Address            : 0x11B3C8 - 0x11B3E2
; =========================================================

11B3C8:  PUSH            {R4,R6,R7,LR}
11B3CA:  ADD             R7, SP, #8
11B3CC:  MOV             R4, R0
11B3CE:  MOVS            R0, #8; unsigned int
11B3D0:  BLX             j__Znwj; operator new(uint)
11B3D4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_7NS_9allocatorIS4_EEFiiiEEE - 0x11B3DC); `vtable for'std::__function::__func<modloader::models::models(void)::$_7,std::allocator<modloader::models::models(void)::$_7>,int ()(int,int)> ...
11B3D6:  LDR             R2, [R4,#4]
11B3D8:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_7,std::allocator<modloader::models::models(void)::$_7>,int ()(int,int)>
11B3DA:  ADDS            R1, #8
11B3DC:  STRD.W          R1, R2, [R0]
11B3E0:  POP             {R4,R6,R7,PC}
