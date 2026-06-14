; =========================================================
; Game Engine Function: sub_11ADE8
; Address            : 0x11ADE8 - 0x11ADF6
; =========================================================

11ADE8:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_2NS_9allocatorIS4_EEFvP21CModelInfoAcceleratorPP14CBaseModelInfoPiPcEEE - 0x11ADF0); `vtable for'std::__function::__func<modloader::models::models(void)::$_2,std::allocator<modloader::models::models(void)::$_2>,void ()(CModelInfoAccelerator *,CBaseModelInfo **,int *,char *)> ...
11ADEA:  LDR             R0, [R0,#4]
11ADEC:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_2,std::allocator<modloader::models::models(void)::$_2>,void ()(CModelInfoAccelerator *,CBaseModelInfo **,int *,char *)>
11ADEE:  ADDS            R2, #8
11ADF0:  STRD.W          R2, R0, [R1]
11ADF4:  BX              LR
