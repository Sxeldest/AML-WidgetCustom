; =========================================================
; Game Engine Function: sub_11ADC8
; Address            : 0x11ADC8 - 0x11ADE2
; =========================================================

11ADC8:  PUSH            {R4,R6,R7,LR}
11ADCA:  ADD             R7, SP, #8
11ADCC:  MOV             R4, R0
11ADCE:  MOVS            R0, #8; unsigned int
11ADD0:  BLX             j__Znwj; operator new(uint)
11ADD4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_2NS_9allocatorIS4_EEFvP21CModelInfoAcceleratorPP14CBaseModelInfoPiPcEEE - 0x11ADDC); `vtable for'std::__function::__func<modloader::models::models(void)::$_2,std::allocator<modloader::models::models(void)::$_2>,void ()(CModelInfoAccelerator *,CBaseModelInfo **,int *,char *)> ...
11ADD6:  LDR             R2, [R4,#4]
11ADD8:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_2,std::allocator<modloader::models::models(void)::$_2>,void ()(CModelInfoAccelerator *,CBaseModelInfo **,int *,char *)>
11ADDA:  ADDS            R1, #8
11ADDC:  STRD.W          R1, R2, [R0]
11ADE0:  POP             {R4,R6,R7,PC}
