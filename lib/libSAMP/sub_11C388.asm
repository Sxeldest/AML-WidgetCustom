; =========================================================
; Game Engine Function: sub_11C388
; Address            : 0x11C388 - 0x11C3AA
; =========================================================

11C388:  PUSH            {R4,R6,R7,LR}
11C38A:  ADD             R7, SP, #8
11C38C:  MOV             R4, R0
11C38E:  MOVS            R0, #0x10; unsigned int
11C390:  BLX             j__Znwj; operator new(uint)
11C394:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP9RwTexturePKcS6_EEC1IN9modloader8texturesEEEMT_FS4_S6_S6_EPSC_EUlS6_S6_E_NS_9allocatorISG_EES7_EE - 0x11C39E); `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1}>,RwTexture * ()(char const*,char const*)> ...
11C396:  VLDR            D16, [R4,#4]
11C39A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1}>,RwTexture * ()(char const*,char const*)>
11C39C:  LDR             R2, [R4,#0xC]
11C39E:  ADDS            R1, #8
11C3A0:  STR             R1, [R0]
11C3A2:  STR             R2, [R0,#0xC]
11C3A4:  VSTR            D16, [R0,#4]
11C3A8:  POP             {R4,R6,R7,PC}
