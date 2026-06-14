; =========================================================
; Game Engine Function: sub_121AB0
; Address            : 0x121AB0 - 0x121AD2
; =========================================================

121AB0:  PUSH            {R4,R6,R7,LR}
121AB2:  ADD             R7, SP, #8
121AB4:  MOV             R4, R0
121AB6:  MOVS            R0, #0x10; unsigned int
121AB8:  BLX             j__Znwj; operator new(uint)
121ABC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFjP22TextureDatabaseRuntimejEEC1I21fix_crash_get_textureEEMT_FjS4_jEPS9_EUlS4_jE_NS_9allocatorISD_EES5_EE - 0x121AC6); `vtable for'std::__function::__func<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1},std::allocator<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1}>,uint ()(TextureDatabaseRuntime *,uint)> ...
121ABE:  VLDR            D16, [R4,#4]
121AC2:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1},std::allocator<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1}>,uint ()(TextureDatabaseRuntime *,uint)>
121AC4:  LDR             R2, [R4,#0xC]
121AC6:  ADDS            R1, #8
121AC8:  STR             R1, [R0]
121ACA:  STR             R2, [R0,#0xC]
121ACC:  VSTR            D16, [R0,#4]
121AD0:  POP             {R4,R6,R7,PC}
