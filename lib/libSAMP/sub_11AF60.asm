; =========================================================
; Game Engine Function: sub_11AF60
; Address            : 0x11AF60 - 0x11AF7A
; =========================================================

11AF60:  PUSH            {R4,R6,R7,LR}
11AF62:  ADD             R7, SP, #8
11AF64:  MOV             R4, R0
11AF66:  MOVS            R0, #8; unsigned int
11AF68:  BLX             j__Znwj; operator new(uint)
11AF6C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_3NS_9allocatorIS4_EEFiPcEEE - 0x11AF74); `vtable for'std::__function::__func<modloader::models::models(void)::$_3,std::allocator<modloader::models::models(void)::$_3>,int ()(char *)> ...
11AF6E:  LDR             R2, [R4,#4]
11AF70:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_3,std::allocator<modloader::models::models(void)::$_3>,int ()(char *)>
11AF72:  ADDS            R1, #8
11AF74:  STRD.W          R1, R2, [R0]
11AF78:  POP             {R4,R6,R7,PC}
