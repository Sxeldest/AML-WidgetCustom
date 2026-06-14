; =========================================================
; Game Engine Function: sub_11A9B8
; Address            : 0x11A9B8 - 0x11A9D2
; =========================================================

11A9B8:  PUSH            {R4,R6,R7,LR}
11A9BA:  ADD             R7, SP, #8
11A9BC:  MOV             R4, R0
11A9BE:  MOVS            R0, #8; unsigned int
11A9C0:  BLX             j__Znwj; operator new(uint)
11A9C4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_0NS_9allocatorIS4_EEFvPKciEEE - 0x11A9CC); `vtable for'std::__function::__func<modloader::models::models(void)::$_0,std::allocator<modloader::models::models(void)::$_0>,void ()(char const*,int)> ...
11A9C6:  LDR             R2, [R4,#4]
11A9C8:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_0,std::allocator<modloader::models::models(void)::$_0>,void ()(char const*,int)>
11A9CA:  ADDS            R1, #8
11A9CC:  STRD.W          R1, R2, [R0]
11A9D0:  POP             {R4,R6,R7,PC}
