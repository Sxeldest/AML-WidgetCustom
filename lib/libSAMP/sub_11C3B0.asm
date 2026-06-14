; =========================================================
; Game Engine Function: sub_11C3B0
; Address            : 0x11C3B0 - 0x11C3C6
; =========================================================

11C3B0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP9RwTexturePKcS6_EEC1IN9modloader8texturesEEEMT_FS4_S6_S6_EPSC_EUlS6_S6_E_NS_9allocatorISG_EES7_EE - 0x11C3B6); `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1}>,RwTexture * ()(char const*,char const*)> ...
11C3B2:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1}>,RwTexture * ()(char const*,char const*)>
11C3B4:  ADDS            R2, #8
11C3B6:  STR             R2, [R1]
11C3B8:  VLDR            D16, [R0,#4]
11C3BC:  LDR             R0, [R0,#0xC]
11C3BE:  STR             R0, [R1,#0xC]
11C3C0:  VSTR            D16, [R1,#4]
11C3C4:  BX              LR
