; =========================================================
; Game Engine Function: _ZN6CRadar17RequestMapSectionEii
; Address            : 0x443004 - 0x443078
; =========================================================

443004:  PUSH            {R4,R5,R7,LR}
443006:  ADD             R7, SP, #8
443008:  SUB             SP, SP, #0x28
44300A:  LDR             R2, =(__stack_chk_guard_ptr - 0x443012)
44300C:  CMP             R0, #0xB
44300E:  ADD             R2, PC; __stack_chk_guard_ptr
443010:  LDR             R2, [R2]; __stack_chk_guard
443012:  LDR             R2, [R2]
443014:  STR             R2, [SP,#0x30+var_C]
443016:  IT LS
443018:  CMPLS           R1, #0xB
44301A:  BHI             loc_443062
44301C:  LDR             R2, =(gRadarTextures_ptr - 0x443026)
44301E:  ADD.W           R1, R1, R1,LSL#1; char *
443022:  ADD             R2, PC; gRadarTextures_ptr
443024:  ADD.W           R4, R0, R1,LSL#2
443028:  LDR             R2, [R2]; gRadarTextures
44302A:  LDR.W           R0, [R2,R4,LSL#2]
44302E:  CBNZ            R0, loc_443062
443030:  LDR             R0, =(aGta3_6 - 0x443036); "gta3"
443032:  ADD             R0, PC; "gta3"
443034:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
443038:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
44303C:  LDR             R2, =(aRadar02d - 0x443048); "radar%02d"
44303E:  ADD             R5, SP, #0x30+var_2C
443040:  MOVS            R1, #0x20 ; ' '
443042:  MOV             R3, R4
443044:  ADD             R2, PC; "radar%02d"
443046:  MOV             R0, R5
443048:  BL              sub_5E6B74
44304C:  MOV             R0, R5; this
44304E:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
443052:  LDR             R1, =(gRadarTextures_ptr - 0x443058)
443054:  ADD             R1, PC; gRadarTextures_ptr
443056:  LDR             R1, [R1]; gRadarTextures
443058:  STR.W           R0, [R1,R4,LSL#2]
44305C:  LDR             R1, [R0,#0x54]
44305E:  ADDS            R1, #1
443060:  STR             R1, [R0,#0x54]
443062:  LDR             R0, =(__stack_chk_guard_ptr - 0x44306A)
443064:  LDR             R1, [SP,#0x30+var_C]
443066:  ADD             R0, PC; __stack_chk_guard_ptr
443068:  LDR             R0, [R0]; __stack_chk_guard
44306A:  LDR             R0, [R0]
44306C:  SUBS            R0, R0, R1
44306E:  ITT EQ
443070:  ADDEQ           SP, SP, #0x28 ; '('
443072:  POPEQ           {R4,R5,R7,PC}
443074:  BLX             __stack_chk_fail
