; =========================================================
; Game Engine Function: sub_11C338
; Address            : 0x11C338 - 0x11C37C
; =========================================================

11C338:  PUSH            {R4,R5,R7,LR}
11C33A:  ADD             R7, SP, #8
11C33C:  SUB             SP, SP, #0x18
11C33E:  MOV             R4, R0
11C340:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP9RwTexturePKcS6_EEC1IN9modloader8texturesEEEMT_FS4_S6_S6_EPSC_EUlS6_S6_E_NS_9allocatorISG_EES7_EE - 0x11C34C); `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1}>,RwTexture * ()(char const*,char const*)> ...
11C342:  LDRD.W          R2, R3, [R1]
11C346:  MOV             R5, SP
11C348:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*,char const*)>::function_helper<modloader::textures>(RwTexture * (modloader::textures::*)(char const*,char const*),modloader::textures*)::{lambda(char const*,char const*)#1}>,RwTexture * ()(char const*,char const*)>
11C34A:  LDR             R1, [R1,#8]
11C34C:  ADDS            R0, #8
11C34E:  STRD.W          R1, R5, [SP,#0x20+var_14]
11C352:  STR             R0, [SP,#0x20+var_20]
11C354:  MOV             R0, R5
11C356:  MOV             R1, R4
11C358:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11C35C:  BL              sub_11C418
11C360:  LDR             R0, [SP,#0x20+var_10]
11C362:  CMP             R5, R0
11C364:  BEQ             loc_11C36C
11C366:  CBZ             R0, loc_11C376
11C368:  MOVS            R1, #5
11C36A:  B               loc_11C36E
11C36C:  MOVS            R1, #4
11C36E:  LDR             R2, [R0]
11C370:  LDR.W           R1, [R2,R1,LSL#2]
11C374:  BLX             R1
11C376:  MOV             R0, R4
11C378:  ADD             SP, SP, #0x18
11C37A:  POP             {R4,R5,R7,PC}
