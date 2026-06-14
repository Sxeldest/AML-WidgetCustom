; =========================================================
; Game Engine Function: sub_12186C
; Address            : 0x12186C - 0x1218B0
; =========================================================

12186C:  PUSH            {R4,R5,R7,LR}
12186E:  ADD             R7, SP, #8
121870:  SUB             SP, SP, #0x18
121872:  MOV             R4, R0
121874:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP9RwTexturePKcEEC1I21fix_crash_get_textureEEMT_FS4_S6_EPSB_EUlS6_E_NS_9allocatorISF_EES7_EE - 0x121880); `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1}>,RwTexture * ()(char const*)> ...
121876:  LDRD.W          R2, R3, [R1]
12187A:  MOV             R5, SP
12187C:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1},std::allocator<function_helper<RwTexture * ()(char const*)>::function_helper<fix_crash_get_texture>(RwTexture * (fix_crash_get_texture::*)(char const*),fix_crash_get_texture*)::{lambda(char const*)#1}>,RwTexture * ()(char const*)>
12187E:  LDR             R1, [R1,#8]
121880:  ADDS            R0, #8
121882:  STRD.W          R1, R5, [SP,#0x20+var_14]
121886:  STR             R0, [SP,#0x20+var_20]
121888:  MOV             R0, R5
12188A:  MOV             R1, R4
12188C:  STRD.W          R2, R3, [SP,#0x20+var_1C]
121890:  BL              sub_121944
121894:  LDR             R0, [SP,#0x20+var_10]
121896:  CMP             R5, R0
121898:  BEQ             loc_1218A0
12189A:  CBZ             R0, loc_1218AA
12189C:  MOVS            R1, #5
12189E:  B               loc_1218A2
1218A0:  MOVS            R1, #4
1218A2:  LDR             R2, [R0]
1218A4:  LDR.W           R1, [R2,R1,LSL#2]
1218A8:  BLX             R1
1218AA:  MOV             R0, R4
1218AC:  ADD             SP, SP, #0x18
1218AE:  POP             {R4,R5,R7,PC}
