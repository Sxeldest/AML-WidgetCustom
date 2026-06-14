; =========================================================
; Game Engine Function: _ZN10CGameLogic43SetPlayerWantedLevelForForbiddenTerritoriesEb
; Address            : 0x308FEC - 0x3091D4
; =========================================================

308FEC:  PUSH            {R4-R7,LR}
308FEE:  ADD             R7, SP, #0xC
308FF0:  PUSH.W          {R8-R11}
308FF4:  SUB             SP, SP, #0x3C; float
308FF6:  MOV             R4, R0
308FF8:  CBNZ            R4, loc_30900C
308FFA:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x309000)
308FFC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
308FFE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
309000:  LDR             R0, [R0]; CTimer::m_FrameCounter
309002:  AND.W           R0, R0, #0x1F
309006:  CMP             R0, #0x12
309008:  BNE.W           loc_3091CC
30900C:  ADD             R0, SP, #0x58+var_28; int
30900E:  MOV.W           R1, #0xFFFFFFFF
309012:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
309016:  VLDR            S0, =950.0
30901A:  VLDR            S2, [SP,#0x58+var_20]
30901E:  VCMPE.F32       S2, S0
309022:  VMRS            APSR_nzcv, FPSCR
309026:  BGT.W           loc_3091CC
30902A:  MOV.W           R0, #0xFFFFFFFF; int
30902E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
309032:  LDR.W           R0, [R0,#0x440]; this
309036:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
30903A:  CMP             R0, #0
30903C:  BNE.W           loc_3091CC
309040:  MOV.W           R0, #0xFFFFFFFF; int
309044:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
309048:  LDR.W           R0, [R0,#0x444]
30904C:  LDR             R0, [R0]
30904E:  LDR             R0, [R0,#0x2C]
309050:  CMP             R0, #3
309052:  BGT.W           loc_3091CC
309056:  MOVS            R0, #(dword_B4+1); this
309058:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30905C:  VMOV.F32        S0, #1.0
309060:  STR             R4, [SP,#0x58+var_44]
309062:  VMOV            S2, R0
309066:  VCMPE.F32       S2, S0
30906A:  VMRS            APSR_nzcv, FPSCR
30906E:  BGT             loc_309114
309070:  ADD             R0, SP, #0x58+var_34; int
309072:  MOV.W           R1, #0xFFFFFFFF
309076:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30907A:  VLDR            S0, [SP,#0x58+var_34]
30907E:  MOVW            R9, #0x2400
309082:  VLDR            S2, [SP,#0x58+var_30]
309086:  MOVS            R4, #0
309088:  VMOV            R10, S0
30908C:  LDR             R0, =(unk_7A2250 - 0x30909A)
30908E:  VMOV            R11, S2
309092:  LDR.W           R8, =(unk_7A2250 - 0x3090A0)
309096:  ADD             R0, PC; unk_7A2250
309098:  MOVS            R6, #1
30909A:  ADDS            R5, R0, #4
30909C:  ADD             R8, PC; unk_7A2250
30909E:  MOVT            R9, #0x4974
3090A2:  CMP             R6, #0xA
3090A4:  MOV             R0, R6
3090A6:  VLDR            S0, [R5,#-4]
3090AA:  MOV             R1, R11; float
3090AC:  VLDR            S2, [R5]
3090B0:  IT EQ
3090B2:  MOVEQ           R0, #0
3090B4:  ADD.W           R0, R0, R0,LSL#1
3090B8:  MOV             R2, R9; float
3090BA:  MOVS            R3, #0; float
3090BC:  VSTR            S0, [SP,#0x58+var_58]
3090C0:  ADD.W           R0, R8, R0,LSL#2
3090C4:  VSTR            S2, [SP,#0x58+var_54]
3090C8:  VLDR            S4, [R0]
3090CC:  VLDR            S6, [R0,#4]
3090D0:  MOV             R0, R10; this
3090D2:  VSUB.F32        S4, S4, S0
3090D6:  VSUB.F32        S6, S6, S2
3090DA:  VSTR            S4, [SP,#0x58+var_50]
3090DE:  VSTR            S6, [SP,#0x58+var_4C]
3090E2:  BLX             j__ZN10CCollision23Test2DLineAgainst2DLineEffffffff; CCollision::Test2DLineAgainst2DLine(float,float,float,float,float,float,float,float)
3090E6:  ADDS            R6, #1
3090E8:  ADD             R4, R0
3090EA:  ADDS            R5, #0xC
3090EC:  CMP             R6, #0xB
3090EE:  BNE             loc_3090A2
3090F0:  LSLS            R0, R4, #0x1F
3090F2:  LDR             R4, [SP,#0x58+var_44]
3090F4:  BEQ             loc_309114
3090F6:  MOV.W           R0, #0xFFFFFFFF; int
3090FA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3090FE:  MOVS            R1, #4; int
309100:  BLX             j__ZN10CPlayerPed14SetWantedLevelEi; CPlayerPed::SetWantedLevel(int)
309104:  CMP             R4, #1
309106:  BNE             loc_309114
309108:  MOV.W           R0, #0xFFFFFFFF; int
30910C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
309110:  MOVS            R1, #0; unsigned __int16
309112:  STR             R1, [R0,#0xC]
309114:  MOVS            R0, #(dword_B4+1); this
309116:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30911A:  VMOV            S0, R0
30911E:  VCMPE.F32       S0, #0.0
309122:  VMRS            APSR_nzcv, FPSCR
309126:  BGT             loc_3091CC
309128:  ADD             R0, SP, #0x58+var_40; int
30912A:  MOV.W           R1, #0xFFFFFFFF
30912E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
309132:  VLDR            S0, [SP,#0x58+var_40]
309136:  MOVW            R9, #0x2400
30913A:  VLDR            S2, [SP,#0x58+var_3C]
30913E:  MOVS            R4, #0
309140:  VMOV            R10, S0
309144:  LDR             R0, =(unk_7A21E0 - 0x309152)
309146:  VMOV            R11, S2
30914A:  LDR.W           R8, =(unk_7A21E0 - 0x309158)
30914E:  ADD             R0, PC; unk_7A21E0
309150:  MOVS            R6, #1
309152:  ADDS            R5, R0, #4
309154:  ADD             R8, PC; unk_7A21E0
309156:  MOVT            R9, #0x4974
30915A:  CMP             R6, #9
30915C:  MOV             R0, R6
30915E:  VLDR            S0, [R5,#-4]
309162:  MOV             R1, R11; float
309164:  VLDR            S2, [R5]
309168:  IT EQ
30916A:  MOVEQ           R0, #0
30916C:  ADD.W           R0, R0, R0,LSL#1
309170:  MOV             R2, R9; float
309172:  MOVS            R3, #0; float
309174:  VSTR            S0, [SP,#0x58+var_58]
309178:  ADD.W           R0, R8, R0,LSL#2
30917C:  VSTR            S2, [SP,#0x58+var_54]
309180:  VLDR            S4, [R0]
309184:  VLDR            S6, [R0,#4]
309188:  MOV             R0, R10; this
30918A:  VSUB.F32        S4, S4, S0
30918E:  VSUB.F32        S6, S6, S2
309192:  VSTR            S4, [SP,#0x58+var_50]
309196:  VSTR            S6, [SP,#0x58+var_4C]
30919A:  BLX             j__ZN10CCollision23Test2DLineAgainst2DLineEffffffff; CCollision::Test2DLineAgainst2DLine(float,float,float,float,float,float,float,float)
30919E:  ADDS            R6, #1
3091A0:  ADD             R4, R0
3091A2:  ADDS            R5, #0xC
3091A4:  CMP             R6, #0xA
3091A6:  BNE             loc_30915A
3091A8:  LSLS            R0, R4, #0x1F
3091AA:  LDR             R4, [SP,#0x58+var_44]
3091AC:  BEQ             loc_3091CC
3091AE:  MOV.W           R0, #0xFFFFFFFF; int
3091B2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3091B6:  MOVS            R1, #4; int
3091B8:  BLX             j__ZN10CPlayerPed14SetWantedLevelEi; CPlayerPed::SetWantedLevel(int)
3091BC:  CMP             R4, #1
3091BE:  BNE             loc_3091CC
3091C0:  MOV.W           R0, #0xFFFFFFFF; int
3091C4:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
3091C8:  MOVS            R1, #0
3091CA:  STR             R1, [R0,#0xC]
3091CC:  ADD             SP, SP, #0x3C ; '<'
3091CE:  POP.W           {R8-R11}
3091D2:  POP             {R4-R7,PC}
