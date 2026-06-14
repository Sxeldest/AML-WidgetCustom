; =========================================================
; Game Engine Function: sub_11B034
; Address            : 0x11B034 - 0x11B04E
; =========================================================

11B034:  PUSH            {R4,R6,R7,LR}
11B036:  ADD             R7, SP, #8
11B038:  MOV             R4, R0
11B03A:  MOVS            R0, #8; unsigned int
11B03C:  BLX             j__Znwj; operator new(uint)
11B040:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_4NS_9allocatorIS4_EEFiPcEEE - 0x11B048); `vtable for'std::__function::__func<modloader::models::models(void)::$_4,std::allocator<modloader::models::models(void)::$_4>,int ()(char *)> ...
11B042:  LDR             R2, [R4,#4]
11B044:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_4,std::allocator<modloader::models::models(void)::$_4>,int ()(char *)>
11B046:  ADDS            R1, #8
11B048:  STRD.W          R1, R2, [R0]
11B04C:  POP             {R4,R6,R7,PC}
