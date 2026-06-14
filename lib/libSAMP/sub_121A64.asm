; =========================================================
; Game Engine Function: sub_121A64
; Address            : 0x121A64 - 0x121AA8
; =========================================================

121A64:  PUSH            {R4,R5,R7,LR}
121A66:  ADD             R7, SP, #8
121A68:  SUB             SP, SP, #0x18
121A6A:  MOV             R4, R0
121A6C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFjP22TextureDatabaseRuntimejEEC1I21fix_crash_get_textureEEMT_FjS4_jEPS9_EUlS4_jE_NS_9allocatorISD_EES5_EE - 0x121A78); `vtable for'std::__function::__func<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1},std::allocator<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1}>,uint ()(TextureDatabaseRuntime *,uint)> ...
121A6E:  LDRD.W          R2, R3, [R1]
121A72:  MOV             R5, SP
121A74:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1},std::allocator<function_helper<uint ()(TextureDatabaseRuntime *,uint)>::function_helper<fix_crash_get_texture>(uint (fix_crash_get_texture::*)(TextureDatabaseRuntime *,uint),fix_crash_get_texture*)::{lambda(TextureDatabaseRuntime *,uint)#1}>,uint ()(TextureDatabaseRuntime *,uint)>
121A76:  LDR             R1, [R1,#8]
121A78:  ADDS            R0, #8
121A7A:  STRD.W          R1, R5, [SP,#0x20+var_14]
121A7E:  STR             R0, [SP,#0x20+var_20]
121A80:  MOV             R0, R5
121A82:  MOV             R1, R4
121A84:  STRD.W          R2, R3, [SP,#0x20+var_1C]
121A88:  BL              sub_11C184
121A8C:  LDR             R0, [SP,#0x20+var_10]
121A8E:  CMP             R5, R0
121A90:  BEQ             loc_121A98
121A92:  CBZ             R0, loc_121AA2
121A94:  MOVS            R1, #5
121A96:  B               loc_121A9A
121A98:  MOVS            R1, #4
121A9A:  LDR             R2, [R0]
121A9C:  LDR.W           R1, [R2,R1,LSL#2]
121AA0:  BLX             R1
121AA2:  MOV             R0, R4
121AA4:  ADD             SP, SP, #0x18
121AA6:  POP             {R4,R5,R7,PC}
