; =========================================================
; Game Engine Function: sub_1218E4
; Address            : 0x1218E4 - 0x1218FA
; =========================================================

1218E4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP9RwTexturePKcEEC1I21fix_crash_get_textureEEMT_FS4_S6_EPSB_EUlS6_E_NS_9allocatorISF_EES7_EE - 0x1218EA); `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1}>,RwTexture * ()(char const*)> ...
1218E6:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1}>,RwTexture * ()(char const*)>
1218E8:  ADDS            R2, #8
1218EA:  STR             R2, [R1]
1218EC:  VLDR            D16, [R0,#4]
1218F0:  LDR             R0, [R0,#0xC]
1218F2:  STR             R0, [R1,#0xC]
1218F4:  VSTR            D16, [R1,#4]
1218F8:  BX              LR
