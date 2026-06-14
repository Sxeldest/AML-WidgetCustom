; =========================================================
; Game Engine Function: sub_1218BC
; Address            : 0x1218BC - 0x1218DE
; =========================================================

1218BC:  PUSH            {R4,R6,R7,LR}
1218BE:  ADD             R7, SP, #8
1218C0:  MOV             R4, R0
1218C2:  MOVS            R0, #0x10; unsigned int
1218C4:  BLX             j__Znwj; operator new(uint)
1218C8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP9RwTexturePKcEEC1I21fix_crash_get_textureEEMT_FS4_S6_EPSB_EUlS6_E_NS_9allocatorISF_EES7_EE - 0x1218D2); `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1}>,RwTexture * ()(char const*)> ...
1218CA:  VLDR            D16, [R4,#4]
1218CE:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1}>,RwTexture * ()(char const*)>
1218D0:  LDR             R2, [R4,#0xC]
1218D2:  ADDS            R1, #8
1218D4:  STR             R1, [R0]
1218D6:  STR             R2, [R0,#0xC]
1218D8:  VSTR            D16, [R0,#4]
1218DC:  POP             {R4,R6,R7,PC}
