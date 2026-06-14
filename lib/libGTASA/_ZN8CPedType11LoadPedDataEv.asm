; =========================================================
; Game Engine Function: _ZN8CPedType11LoadPedDataEv
; Address            : 0x4C2F38 - 0x4C328E
; =========================================================

4C2F38:  PUSH            {R4-R7,LR}
4C2F3A:  ADD             R7, SP, #0xC
4C2F3C:  PUSH.W          {R8-R11}
4C2F40:  SUB             SP, SP, #0x44
4C2F42:  LDR             R0, =(__stack_chk_guard_ptr - 0x4C2F4A)
4C2F44:  ADR             R1, aR_20; "r"
4C2F46:  ADD             R0, PC; __stack_chk_guard_ptr
4C2F48:  LDR             R0, [R0]; __stack_chk_guard
4C2F4A:  LDR             R0, [R0]
4C2F4C:  STR             R0, [SP,#0x60+var_20]
4C2F4E:  ADR             R0, aDataPedDat; "DATA\\PED.DAT"
4C2F50:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4C2F54:  MOV             R4, R0
4C2F56:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4C2F5A:  MOV             R9, R0
4C2F5C:  CMP.W           R9, #0
4C2F60:  BEQ.W           loc_4C326E
4C2F64:  LDR.W           R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x4C2F72)
4C2F68:  ADD             R5, SP, #0x60+var_40
4C2F6A:  MOVS            R6, #0x20 ; ' '
4C2F6C:  STR             R4, [SP,#0x60+var_4C]
4C2F6E:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
4C2F70:  LDR             R0, [R0]; CPedType::ms_apPedTypes ...
4C2F72:  STR             R0, [SP,#0x60+var_50]
4C2F74:  LDR.W           R0, =(aPedTypeNames_ptr - 0x4C2F7C)
4C2F78:  ADD             R0, PC; aPedTypeNames_ptr
4C2F7A:  LDR.W           R8, [R0]; aPedTypeNames
4C2F7E:  LDR             R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x4C2F84)
4C2F80:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
4C2F82:  LDR             R0, [R0]; CPedType::ms_apPedTypes ...
4C2F84:  STR             R0, [SP,#0x60+var_54]
4C2F86:  LDR             R0, =(aPedTypeNames_ptr - 0x4C2F8C)
4C2F88:  ADD             R0, PC; aPedTypeNames_ptr
4C2F8A:  LDR.W           R11, [R0]; aPedTypeNames
4C2F8E:  LDR             R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x4C2F94)
4C2F90:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
4C2F92:  LDR             R0, [R0]; CPedType::ms_apPedTypes ...
4C2F94:  STR             R0, [SP,#0x60+var_5C]
4C2F96:  LDR             R0, =(aPedTypeNames_ptr - 0x4C2F9C)
4C2F98:  ADD             R0, PC; aPedTypeNames_ptr
4C2F9A:  LDR.W           R10, [R0]; aPedTypeNames
4C2F9E:  LDR             R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x4C2FA4)
4C2FA0:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
4C2FA2:  LDR             R0, [R0]; CPedType::ms_apPedTypes ...
4C2FA4:  STR             R0, [SP,#0x60+var_60]
4C2FA6:  LDR             R0, =(aPedTypeNames_ptr - 0x4C2FAC)
4C2FA8:  ADD             R0, PC; aPedTypeNames_ptr
4C2FAA:  LDR             R0, [R0]; aPedTypeNames
4C2FAC:  STR             R0, [SP,#0x60+var_44]
4C2FAE:  LDR             R0, =(aPedTypeNames_ptr - 0x4C2FB4)
4C2FB0:  ADD             R0, PC; aPedTypeNames_ptr
4C2FB2:  LDR             R0, [R0]; aPedTypeNames
4C2FB4:  STR             R0, [SP,#0x60+var_58]
4C2FB6:  B               loc_4C2FC0
4C2FB8:  MOV             R4, R9
4C2FBA:  B               loc_4C325E
4C2FBC:  MOVS            R6, #2
4C2FBE:  B               loc_4C325E
4C2FC0:  LDRB.W          R0, [R9]
4C2FC4:  CMP             R0, #0
4C2FC6:  IT NE
4C2FC8:  CMPNE           R0, #0x23 ; '#'
4C2FCA:  BEQ.W           loc_4C325E
4C2FCE:  ADR             R1, aS_4; "%s"
4C2FD0:  MOV             R0, R9; s
4C2FD2:  MOV             R2, R5
4C2FD4:  BLX             sscanf
4C2FD8:  ADR             R1, aHate; "Hate"
4C2FDA:  MOV             R0, R5; char *
4C2FDC:  BLX             strcmp
4C2FE0:  CBZ             R0, loc_4C304C
4C2FE2:  ADR             R1, aDislike; "Dislike"
4C2FE4:  MOV             R0, R5; char *
4C2FE6:  BLX             strcmp
4C2FEA:  CMP             R0, #0
4C2FEC:  BEQ             loc_4C30D0
4C2FEE:  ADR             R1, aLike; "Like"
4C2FF0:  MOV             R0, R5; char *
4C2FF2:  BLX             strcmp
4C2FF6:  CMP             R0, #0
4C2FF8:  BEQ.W           loc_4C3154
4C2FFC:  ADR             R1, aRespect_0; "Respect"
4C2FFE:  MOV             R0, R5; char *
4C3000:  BLX             strcmp
4C3004:  CMP             R0, #0
4C3006:  BEQ.W           loc_4C31D8
4C300A:  MOV             R9, R4
4C300C:  LDR             R4, [SP,#0x60+var_58]
4C300E:  MOVS            R6, #0
4C3010:  LDR.W           R1, [R4,R6,LSL#2]; char *
4C3014:  MOV             R0, R5; char *
4C3016:  BLX             strcmp
4C301A:  CMP             R0, #0
4C301C:  BEQ             loc_4C2FB8
4C301E:  ADDS            R0, R6, #1
4C3020:  CMP             R6, #0x1F
4C3022:  MOV             R6, R0
4C3024:  BLT             loc_4C3010
4C3026:  LDR             R1, =(aPlayerNetwork - 0x4C302E); "PLAYER_NETWORK"
4C3028:  MOV             R0, R5; char *
4C302A:  ADD             R1, PC; "PLAYER_NETWORK"
4C302C:  BLX             strcmp
4C3030:  CMP             R0, #0
4C3032:  MOV             R4, R9
4C3034:  BEQ             loc_4C2FBC
4C3036:  LDR             R1, =(aPlayerUnused - 0x4C303E); "PLAYER_UNUSED"
4C3038:  MOV             R0, R5; char *
4C303A:  ADD             R1, PC; "PLAYER_UNUSED"
4C303C:  BLX             strcmp
4C3040:  CMP             R0, #0
4C3042:  MOV.W           R6, #0x20 ; ' '
4C3046:  IT EQ
4C3048:  MOVEQ           R6, #3
4C304A:  B               loc_4C325E
4C304C:  MOV             R0, R9; char *
4C304E:  ADR.W           R9, dword_4C32D0
4C3052:  STR             R6, [SP,#0x60+var_48]
4C3054:  MOV             R1, R9; char *
4C3056:  BLX             strtok
4C305A:  MOVS            R0, #0; char *
4C305C:  MOV             R1, R9; char *
4C305E:  MOVS            R4, #0
4C3060:  BLX             strtok
4C3064:  MOV             R6, R0
4C3066:  CBZ             R6, loc_4C30BE
4C3068:  MOVS            R4, #0
4C306A:  MOVS            R5, #0
4C306C:  LDR.W           R1, [R8,R5,LSL#2]; char *
4C3070:  MOV             R0, R6; char *
4C3072:  BLX             strcmp
4C3076:  CBZ             R0, loc_4C30A4
4C3078:  ADDS            R0, R5, #1
4C307A:  CMP             R5, #0x1F
4C307C:  MOV             R5, R0
4C307E:  BLT             loc_4C306C
4C3080:  LDR             R1, =(aPlayerNetwork - 0x4C3088); "PLAYER_NETWORK"
4C3082:  MOV             R0, R6; char *
4C3084:  ADD             R1, PC; "PLAYER_NETWORK"
4C3086:  BLX             strcmp
4C308A:  CBZ             R0, loc_4C30A2
4C308C:  LDR             R1, =(aPlayerUnused - 0x4C3094); "PLAYER_UNUSED"
4C308E:  MOV             R0, R6; char *
4C3090:  ADD             R1, PC; "PLAYER_UNUSED"
4C3092:  BLX             strcmp
4C3096:  CMP             R0, #0
4C3098:  MOV.W           R5, #0x20 ; ' '
4C309C:  IT EQ
4C309E:  MOVEQ           R5, #3
4C30A0:  B               loc_4C30A4
4C30A2:  MOVS            R5, #2
4C30A4:  MOVS            R0, #1
4C30A6:  CMP             R5, #0x20 ; ' '
4C30A8:  LSL.W           R0, R0, R5
4C30AC:  IT LT
4C30AE:  ORRLT           R4, R0
4C30B0:  MOVS            R0, #0; char *
4C30B2:  MOV             R1, R9; char *
4C30B4:  BLX             strtok
4C30B8:  MOV             R6, R0
4C30BA:  CMP             R6, #0
4C30BC:  BNE             loc_4C306A
4C30BE:  LDR             R0, [SP,#0x60+var_50]
4C30C0:  LDR             R6, [SP,#0x60+var_48]
4C30C2:  LDR             R0, [R0]
4C30C4:  ADD.W           R1, R6, R6,LSL#2
4C30C8:  ADD.W           R0, R0, R1,LSL#2
4C30CC:  STR             R4, [R0,#0x10]
4C30CE:  B               loc_4C325A
4C30D0:  MOV             R0, R9; char *
4C30D2:  ADR.W           R9, dword_4C32D0
4C30D6:  STR             R6, [SP,#0x60+var_48]
4C30D8:  MOV             R1, R9; char *
4C30DA:  BLX             strtok
4C30DE:  MOVS            R0, #0; char *
4C30E0:  MOV             R1, R9; char *
4C30E2:  MOVS            R4, #0
4C30E4:  BLX             strtok
4C30E8:  MOV             R6, R0
4C30EA:  CBZ             R6, loc_4C3142
4C30EC:  MOVS            R4, #0
4C30EE:  MOVS            R5, #0
4C30F0:  LDR.W           R1, [R11,R5,LSL#2]; char *
4C30F4:  MOV             R0, R6; char *
4C30F6:  BLX             strcmp
4C30FA:  CBZ             R0, loc_4C3128
4C30FC:  ADDS            R0, R5, #1
4C30FE:  CMP             R5, #0x1F
4C3100:  MOV             R5, R0
4C3102:  BLT             loc_4C30F0
4C3104:  LDR             R1, =(aPlayerNetwork - 0x4C310C); "PLAYER_NETWORK"
4C3106:  MOV             R0, R6; char *
4C3108:  ADD             R1, PC; "PLAYER_NETWORK"
4C310A:  BLX             strcmp
4C310E:  CBZ             R0, loc_4C3126
4C3110:  LDR             R1, =(aPlayerUnused - 0x4C3118); "PLAYER_UNUSED"
4C3112:  MOV             R0, R6; char *
4C3114:  ADD             R1, PC; "PLAYER_UNUSED"
4C3116:  BLX             strcmp
4C311A:  CMP             R0, #0
4C311C:  MOV.W           R5, #0x20 ; ' '
4C3120:  IT EQ
4C3122:  MOVEQ           R5, #3
4C3124:  B               loc_4C3128
4C3126:  MOVS            R5, #2
4C3128:  MOVS            R0, #1
4C312A:  CMP             R5, #0x20 ; ' '
4C312C:  LSL.W           R0, R0, R5
4C3130:  IT LT
4C3132:  ORRLT           R4, R0
4C3134:  MOVS            R0, #0; char *
4C3136:  MOV             R1, R9; char *
4C3138:  BLX             strtok
4C313C:  MOV             R6, R0
4C313E:  CMP             R6, #0
4C3140:  BNE             loc_4C30EE
4C3142:  LDR             R0, [SP,#0x60+var_54]
4C3144:  LDR             R6, [SP,#0x60+var_48]
4C3146:  LDR             R0, [R0]
4C3148:  ADD.W           R1, R6, R6,LSL#2
4C314C:  ADD.W           R0, R0, R1,LSL#2
4C3150:  STR             R4, [R0,#0xC]
4C3152:  B               loc_4C325A
4C3154:  MOV             R0, R9; char *
4C3156:  ADR.W           R9, dword_4C32D0
4C315A:  STR             R6, [SP,#0x60+var_48]
4C315C:  MOV             R1, R9; char *
4C315E:  BLX             strtok
4C3162:  MOVS            R0, #0; char *
4C3164:  MOV             R1, R9; char *
4C3166:  MOVS            R4, #0
4C3168:  BLX             strtok
4C316C:  MOV             R6, R0
4C316E:  CBZ             R6, loc_4C31C6
4C3170:  MOVS            R4, #0
4C3172:  MOVS            R5, #0
4C3174:  LDR.W           R1, [R10,R5,LSL#2]; char *
4C3178:  MOV             R0, R6; char *
4C317A:  BLX             strcmp
4C317E:  CBZ             R0, loc_4C31AC
4C3180:  ADDS            R0, R5, #1
4C3182:  CMP             R5, #0x1F
4C3184:  MOV             R5, R0
4C3186:  BLT             loc_4C3174
4C3188:  LDR             R1, =(aPlayerNetwork - 0x4C3190); "PLAYER_NETWORK"
4C318A:  MOV             R0, R6; char *
4C318C:  ADD             R1, PC; "PLAYER_NETWORK"
4C318E:  BLX             strcmp
4C3192:  CBZ             R0, loc_4C31AA
4C3194:  LDR             R1, =(aPlayerUnused - 0x4C319C); "PLAYER_UNUSED"
4C3196:  MOV             R0, R6; char *
4C3198:  ADD             R1, PC; "PLAYER_UNUSED"
4C319A:  BLX             strcmp
4C319E:  CMP             R0, #0
4C31A0:  MOV.W           R5, #0x20 ; ' '
4C31A4:  IT EQ
4C31A6:  MOVEQ           R5, #3
4C31A8:  B               loc_4C31AC
4C31AA:  MOVS            R5, #2
4C31AC:  MOVS            R0, #1
4C31AE:  CMP             R5, #0x20 ; ' '
4C31B0:  LSL.W           R0, R0, R5
4C31B4:  IT LT
4C31B6:  ORRLT           R4, R0
4C31B8:  MOVS            R0, #0; char *
4C31BA:  MOV             R1, R9; char *
4C31BC:  BLX             strtok
4C31C0:  MOV             R6, R0
4C31C2:  CMP             R6, #0
4C31C4:  BNE             loc_4C3172
4C31C6:  LDR             R0, [SP,#0x60+var_5C]
4C31C8:  LDR             R6, [SP,#0x60+var_48]
4C31CA:  LDR             R0, [R0]
4C31CC:  ADD.W           R1, R6, R6,LSL#2
4C31D0:  ADD.W           R0, R0, R1,LSL#2
4C31D4:  STR             R4, [R0,#4]
4C31D6:  B               loc_4C325A
4C31D8:  MOV             R0, R9; char *
4C31DA:  ADR.W           R9, dword_4C32D0
4C31DE:  STR             R6, [SP,#0x60+var_48]
4C31E0:  MOV             R1, R9; char *
4C31E2:  BLX             strtok
4C31E6:  MOVS            R0, #0; char *
4C31E8:  MOV             R1, R9; char *
4C31EA:  MOVS            R4, #0
4C31EC:  BLX             strtok
4C31F0:  MOV             R6, R0
4C31F2:  CBZ             R6, loc_4C324C
4C31F4:  MOVS            R4, #0
4C31F6:  MOVS            R5, #0
4C31F8:  LDR             R0, [SP,#0x60+var_44]
4C31FA:  LDR.W           R1, [R0,R5,LSL#2]; char *
4C31FE:  MOV             R0, R6; char *
4C3200:  BLX             strcmp
4C3204:  CBZ             R0, loc_4C3232
4C3206:  ADDS            R0, R5, #1
4C3208:  CMP             R5, #0x1F
4C320A:  MOV             R5, R0
4C320C:  BLT             loc_4C31F8
4C320E:  LDR             R1, =(aPlayerNetwork - 0x4C3216); "PLAYER_NETWORK"
4C3210:  MOV             R0, R6; char *
4C3212:  ADD             R1, PC; "PLAYER_NETWORK"
4C3214:  BLX             strcmp
4C3218:  CBZ             R0, loc_4C3230
4C321A:  LDR             R1, =(aPlayerUnused - 0x4C3222); "PLAYER_UNUSED"
4C321C:  MOV             R0, R6; char *
4C321E:  ADD             R1, PC; "PLAYER_UNUSED"
4C3220:  BLX             strcmp
4C3224:  CMP             R0, #0
4C3226:  MOV.W           R5, #0x20 ; ' '
4C322A:  IT EQ
4C322C:  MOVEQ           R5, #3
4C322E:  B               loc_4C3232
4C3230:  MOVS            R5, #2
4C3232:  MOVS            R0, #1
4C3234:  CMP             R5, #0x20 ; ' '
4C3236:  LSL.W           R0, R0, R5
4C323A:  IT LT
4C323C:  ORRLT           R4, R0
4C323E:  MOVS            R0, #0; char *
4C3240:  MOV             R1, R9; char *
4C3242:  BLX             strtok
4C3246:  MOV             R6, R0
4C3248:  CMP             R6, #0
4C324A:  BNE             loc_4C31F6
4C324C:  LDR             R0, [SP,#0x60+var_60]
4C324E:  LDR             R6, [SP,#0x60+var_48]
4C3250:  LDR             R0, [R0]
4C3252:  ADD.W           R1, R6, R6,LSL#2; unsigned int
4C3256:  STR.W           R4, [R0,R1,LSL#2]
4C325A:  LDR             R4, [SP,#0x60+var_4C]
4C325C:  ADD             R5, SP, #0x60+var_40
4C325E:  MOV             R0, R4; this
4C3260:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4C3264:  MOV             R9, R0
4C3266:  CMP.W           R9, #0
4C326A:  BNE.W           loc_4C2FC0
4C326E:  MOV             R0, R4; this
4C3270:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4C3274:  LDR             R0, =(__stack_chk_guard_ptr - 0x4C327C)
4C3276:  LDR             R1, [SP,#0x60+var_20]
4C3278:  ADD             R0, PC; __stack_chk_guard_ptr
4C327A:  LDR             R0, [R0]; __stack_chk_guard
4C327C:  LDR             R0, [R0]
4C327E:  SUBS            R0, R0, R1
4C3280:  ITTT EQ
4C3282:  ADDEQ           SP, SP, #0x44 ; 'D'
4C3284:  POPEQ.W         {R8-R11}
4C3288:  POPEQ           {R4-R7,PC}
4C328A:  BLX             __stack_chk_fail
