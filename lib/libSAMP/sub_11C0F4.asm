; =========================================================
; Game Engine Function: sub_11C0F4
; Address            : 0x11C0F4 - 0x11C116
; =========================================================

11C0F4:  PUSH            {R4,R6,R7,LR}
11C0F6:  ADD             R7, SP, #8
11C0F8:  MOV             R4, R0
11C0FA:  MOVS            R0, #0x10; unsigned int
11C0FC:  BLX             j__Znwj; operator new(uint)
11C100:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFjP22TextureDatabaseRuntimejEEC1IN9modloader8texturesEEEMT_FjS4_jEPSA_EUlS4_jE_NS_9allocatorISE_EES5_EE - 0x11C10A); `vtable for'std::__function::__func<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<modloader::textures>(uint (modloader::textures::*)(TextureDatabaseRuntime *,uint),modloader::textures*)::{lambda(TextureDatabaseRuntime *,uint)#1},std::allocator<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<modloader::textures>(uint (modloader::textures::*)(TextureDatabaseRuntime *,uint),modloader::textures*)::{lambda(TextureDatabaseRuntime *,uint)#1}>,uint ()(TextureDatabaseRuntime *,uint)> ...
11C102:  VLDR            D16, [R4,#4]
11C106:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<modloader::textures>(uint (modloader::textures::*)(TextureDatabaseRuntime *,uint),modloader::textures*)::{lambda(TextureDatabaseRuntime *,uint)#1},std::allocator<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<modloader::textures>(uint (modloader::textures::*)(TextureDatabaseRuntime *,uint),modloader::textures*)::{lambda(TextureDatabaseRuntime *,uint)#1}>,uint ()(TextureDatabaseRuntime *,uint)>
11C108:  LDR             R2, [R4,#0xC]
11C10A:  ADDS            R1, #8
11C10C:  STR             R1, [R0]
11C10E:  STR             R2, [R0,#0xC]
11C110:  VSTR            D16, [R0,#4]
11C114:  POP             {R4,R6,R7,PC}
