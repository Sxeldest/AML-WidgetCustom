; =========================================================
; Game Engine Function: _ZN6CRadar19StreamRadarSectionsEii
; Address            : 0x4430D0 - 0x4431B6
; =========================================================

4430D0:  PUSH            {R4-R7,LR}
4430D2:  ADD             R7, SP, #0xC
4430D4:  PUSH.W          {R8-R11}
4430D8:  SUB             SP, SP, #0x3C
4430DA:  LDR             R2, =(__stack_chk_guard_ptr - 0x4430E6)
4430DC:  ADDS            R5, R1, #1
4430DE:  SUBS            R6, R1, #1
4430E0:  ADDS            R1, R0, #1
4430E2:  ADD             R2, PC; __stack_chk_guard_ptr
4430E4:  SUBS            R0, #1
4430E6:  MOVS            R4, #0
4430E8:  LDR             R2, [R2]; __stack_chk_guard
4430EA:  LDR             R2, [R2]
4430EC:  STR             R2, [SP,#0x58+var_20]
4430EE:  STR             R0, [SP,#0x58+var_54]
4430F0:  LDR             R0, =(gRadarTextures_ptr - 0x4430F8)
4430F2:  STR             R1, [SP,#0x58+var_50]
4430F4:  ADD             R0, PC; gRadarTextures_ptr
4430F6:  LDR.W           R8, [R0]; gRadarTextures
4430FA:  LDR             R0, =(gRadarTextures_ptr - 0x443100)
4430FC:  ADD             R0, PC; gRadarTextures_ptr
4430FE:  LDR             R0, [R0]; gRadarTextures
443100:  STR             R0, [SP,#0x58+var_44]
443102:  LDR             R0, =(gRadarTextures_ptr - 0x443108)
443104:  ADD             R0, PC; gRadarTextures_ptr
443106:  LDR             R0, [R0]; gRadarTextures
443108:  STR             R0, [SP,#0x58+var_48]
44310A:  LDR             R0, [SP,#0x58+var_50]
44310C:  MOV.W           R9, #0
443110:  CMP             R4, R0
443112:  MOV.W           R0, #0
443116:  IT GT
443118:  MOVGT           R0, #1
44311A:  LDR             R1, [SP,#0x58+var_54]
44311C:  CMP             R4, R1
44311E:  MOV.W           R1, #0
443122:  IT LT
443124:  MOVLT           R1, #1
443126:  STR             R4, [SP,#0x58+var_4C]
443128:  ORR.W           R11, R1, R0
44312C:  CMP             R9, R6
44312E:  MOV.W           R1, #0
443132:  IT LT
443134:  MOVLT           R1, #1
443136:  LDR.W           R0, [R8,R4,LSL#2]
44313A:  CMP             R9, R5
44313C:  BGT             loc_44317A
44313E:  ORR.W           R1, R1, R11; char *
443142:  CMP             R1, #1
443144:  BEQ             loc_44317A
443146:  CBNZ            R0, loc_443188
443148:  LDR             R0, =(aGta3_6 - 0x44314E); "gta3"
44314A:  ADD             R0, PC; "gta3"
44314C:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
443150:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
443154:  LDR             R2, =(aRadar02d - 0x443162); "radar%02d"
443156:  ADD.W           R10, SP, #0x58+var_40
44315A:  MOVS            R1, #0x20 ; ' '
44315C:  MOV             R3, R4
44315E:  ADD             R2, PC; "radar%02d"
443160:  MOV             R0, R10
443162:  BL              sub_5E6B74
443166:  MOV             R0, R10; this
443168:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
44316C:  LDR             R1, [SP,#0x58+var_48]
44316E:  STR.W           R0, [R1,R4,LSL#2]
443172:  LDR             R1, [R0,#0x54]
443174:  ADDS            R1, #1
443176:  STR             R1, [R0,#0x54]
443178:  B               loc_443188
44317A:  CBZ             R0, loc_443188
44317C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
443180:  LDR             R1, [SP,#0x58+var_44]
443182:  MOVS            R0, #0
443184:  STR.W           R0, [R1,R4,LSL#2]
443188:  ADD.W           R9, R9, #1
44318C:  ADDS            R4, #0xC
44318E:  CMP.W           R9, #0xC
443192:  BNE             loc_44312C
443194:  LDR             R4, [SP,#0x58+var_4C]
443196:  ADDS            R4, #1
443198:  CMP             R4, #0xC
44319A:  BNE             loc_44310A
44319C:  LDR             R0, =(__stack_chk_guard_ptr - 0x4431A4)
44319E:  LDR             R1, [SP,#0x58+var_20]
4431A0:  ADD             R0, PC; __stack_chk_guard_ptr
4431A2:  LDR             R0, [R0]; __stack_chk_guard
4431A4:  LDR             R0, [R0]
4431A6:  SUBS            R0, R0, R1
4431A8:  ITTT EQ
4431AA:  ADDEQ           SP, SP, #0x3C ; '<'
4431AC:  POPEQ.W         {R8-R11}
4431B0:  POPEQ           {R4-R7,PC}
4431B2:  BLX             __stack_chk_fail
