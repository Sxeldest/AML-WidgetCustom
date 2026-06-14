; =========================================================
; Game Engine Function: sub_11B254
; Address            : 0x11B254 - 0x11B26E
; =========================================================

11B254:  PUSH            {R4,R6,R7,LR}
11B256:  ADD             R7, SP, #8
11B258:  MOV             R4, R0
11B25A:  MOVS            R0, #8; unsigned int
11B25C:  BLX             j__Znwj; operator new(uint)
11B260:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_6NS_9allocatorIS4_EEFiP16CStreamedScriptsPcEEE - 0x11B268); `vtable for'std::__function::__func<modloader::models::models(void)::$_6,std::allocator<modloader::models::models(void)::$_6>,int ()(CStreamedScripts *,char *)> ...
11B262:  LDR             R2, [R4,#4]
11B264:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_6,std::allocator<modloader::models::models(void)::$_6>,int ()(CStreamedScripts *,char *)>
11B266:  ADDS            R1, #8
11B268:  STRD.W          R1, R2, [R0]
11B26C:  POP             {R4,R6,R7,PC}
