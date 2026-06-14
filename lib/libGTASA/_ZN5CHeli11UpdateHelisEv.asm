; =========================================================
; Game Engine Function: _ZN5CHeli11UpdateHelisEv
; Address            : 0x572E4C - 0x5731DE
; =========================================================

572E4C:  PUSH            {R4-R7,LR}
572E4E:  ADD             R7, SP, #0xC
572E50:  PUSH.W          {R8-R11}
572E54:  SUB             SP, SP, #0x14
572E56:  LDR.W           R0, =(_ZN5CHeli20NumberOfSearchLightsE_ptr - 0x572E60)
572E5A:  MOVS            R4, #0
572E5C:  ADD             R0, PC; _ZN5CHeli20NumberOfSearchLightsE_ptr
572E5E:  LDR             R0, [R0]; CHeli::NumberOfSearchLights ...
572E60:  STR             R4, [R0]; CHeli::NumberOfSearchLights
572E62:  MOV.W           R0, #0xFFFFFFFF; int
572E66:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
572E6A:  BLX             j__ZN7CWanted18NumOfHelisRequiredEv; CWanted::NumOfHelisRequired(void)
572E6E:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x572E74)
572E70:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
572E72:  LDR             R1, [R1]; CHeli::pHelis ...
572E74:  LDR             R3, [R1]; CHeli::pHelis
572E76:  CBZ             R3, loc_572E9C
572E78:  LDRH            R1, [R3,#0x26]
572E7A:  MOVW            R2, #0x1F1
572E7E:  CMP             R1, R2
572E80:  BNE             loc_572EA2
572E82:  LDRB.W          R1, [R3,#0x47]
572E86:  MOV.W           R10, #0
572E8A:  LSLS            R1, R1, #0x1A
572E8C:  BMI             loc_572EA6
572E8E:  LDRB.W          R1, [R3,#0x42F]
572E92:  LSLS            R1, R1, #0x19
572E94:  IT PL
572E96:  MOVPL.W         R10, #1
572E9A:  B               loc_572EA6
572E9C:  MOV.W           R10, #0
572EA0:  B               loc_572EA8
572EA2:  MOV.W           R10, #0
572EA6:  MOVS            R4, #1
572EA8:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x572EAE)
572EAA:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
572EAC:  LDR             R1, [R1]; CHeli::pHelis ...
572EAE:  LDR             R3, [R1,#(dword_A12CE0 - 0xA12CDC)]
572EB0:  CBZ             R3, loc_572EDE
572EB2:  LDRH            R1, [R3,#0x26]
572EB4:  MOVW            R2, #0x1F1
572EB8:  MOV             R9, R0
572EBA:  ADDS            R4, #1
572EBC:  CMP             R1, R2
572EBE:  STR             R4, [SP,#0x30+var_2C]
572EC0:  BNE             loc_572EE2
572EC2:  LDRB.W          R1, [R3,#0x47]
572EC6:  LSLS            R1, R1, #0x1A
572EC8:  BMI             loc_572EE2
572ECA:  LDRB.W          R0, [R3,#0x42F]
572ECE:  LSLS            R0, R0, #0x19
572ED0:  MOV.W           R0, #0
572ED4:  IT PL
572ED6:  MOVPL           R0, #1
572ED8:  ORR.W           R10, R10, R0
572EDC:  B               loc_572EE2
572EDE:  STR             R4, [SP,#0x30+var_2C]
572EE0:  MOV             R9, R0
572EE2:  LDR             R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x572EEC)
572EE4:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x572EF0)
572EE6:  LDR             R2, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x572EF6)
572EE8:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr ; this
572EEA:  LDR             R3, =(_ZN5CHeli19bPoliceHelisAllowedE_ptr - 0x572EF8)
572EEC:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
572EEE:  LDR.W           R12, =(_ZN5CHeli6pHelisE_ptr - 0x572EFC)
572EF2:  ADD             R2, PC; _ZN8CWeather14NewWeatherTypeE_ptr
572EF4:  ADD             R3, PC; _ZN5CHeli19bPoliceHelisAllowedE_ptr
572EF6:  LDR             R6, [R0]; CWeather::OldWeatherType ...
572EF8:  ADD             R12, PC; _ZN5CHeli6pHelisE_ptr
572EFA:  LDR.W           R11, [R1]; CGame::currArea ...
572EFE:  LDR             R4, [R2]; CWeather::NewWeatherType ...
572F00:  LDR             R5, [R3]; CHeli::bPoliceHelisAllowed ...
572F02:  LDR.W           R8, [R12]; CHeli::pHelis ...
572F06:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
572F0A:  LDRH            R2, [R4]; CWeather::NewWeatherType
572F0C:  MOVS            R3, #0
572F0E:  LDRH            R6, [R6]; CWeather::OldWeatherType
572F10:  CMP             R2, #0x13
572F12:  MOV.W           R2, #0
572F16:  LDRB            R5, [R5]; CHeli::bPoliceHelisAllowed
572F18:  LDR.W           R1, [R8]; CHeli::pHelis
572F1C:  LDR.W           R4, [R11]; CGame::currArea
572F20:  IT EQ
572F22:  MOVEQ           R2, #1
572F24:  CMP             R6, #0x13
572F26:  MOV.W           R6, #0
572F2A:  IT EQ
572F2C:  MOVEQ           R6, #1
572F2E:  CMP             R5, #0
572F30:  ORR.W           R2, R2, R6
572F34:  MOV.W           R6, #0
572F38:  IT EQ
572F3A:  MOVEQ           R6, #1
572F3C:  CMP             R4, #0
572F3E:  IT NE
572F40:  MOVNE           R4, #1
572F42:  CMP             R1, #0
572F44:  ORR.W           R0, R0, R4
572F48:  ORR.W           R0, R0, R6
572F4C:  BEQ             loc_572F5C
572F4E:  LDRH            R4, [R1,#0x26]
572F50:  CMP.W           R4, #0x1E8
572F54:  IT NE
572F56:  MOVNE           R3, #1
572F58:  AND.W           R10, R10, R3
572F5C:  ORRS            R0, R2
572F5E:  LDR             R2, =(_ZN5CHeli6pHelisE_ptr - 0x572F64)
572F60:  ADD             R2, PC; _ZN5CHeli6pHelisE_ptr
572F62:  LDR             R2, [R2]; CHeli::pHelis ...
572F64:  LDR             R2, [R2,#(dword_A12CE0 - 0xA12CDC)]
572F66:  CBZ             R2, loc_572F78
572F68:  LDRH            R2, [R2,#0x26]
572F6A:  MOVS            R3, #0
572F6C:  CMP.W           R2, #0x1E8
572F70:  IT NE
572F72:  MOVNE           R3, #1
572F74:  AND.W           R10, R10, R3
572F78:  LDR             R2, =(_ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr - 0x572F80)
572F7A:  CMP             R0, #0
572F7C:  ADD             R2, PC; _ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr
572F7E:  LDR             R2, [R2]; CWanted::bUseNewsHeliInAdditionToPolice ...
572F80:  LDRB            R2, [R2]; CWanted::bUseNewsHeliInAdditionToPolice
572F82:  IT NE
572F84:  MOVNE.W         R9, #0
572F88:  CMP             R2, #0
572F8A:  IT NE
572F8C:  MOVNE           R2, #1
572F8E:  ANDS.W          R5, R10, R2
572F92:  BEQ             loc_572F9E
572F94:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x572F9E)
572F96:  MOVW            R2, #0x2630
572F9A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
572F9C:  B               loc_572FA6
572F9E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x572FA8)
572FA0:  MOVW            R2, #0x26E4
572FA4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
572FA6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
572FA8:  LDRB            R0, [R0,R2]
572FAA:  CMP             R0, #1
572FAC:  BNE             loc_573018
572FAE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x572FB6)
572FB0:  LDR             R2, =(_ZN5CHeli26TestForNewRandomHelisTimerE_ptr - 0x572FB8)
572FB2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
572FB4:  ADD             R2, PC; _ZN5CHeli26TestForNewRandomHelisTimerE_ptr
572FB6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
572FB8:  LDR             R2, [R2]; CHeli::TestForNewRandomHelisTimer ...
572FBA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
572FBC:  LDR             R2, [R2]; CHeli::TestForNewRandomHelisTimer
572FBE:  CMP             R0, R2
572FC0:  BLS             loc_573018
572FC2:  LDR             R2, =(_ZN5CHeli26TestForNewRandomHelisTimerE_ptr - 0x572FCE)
572FC4:  MOVW            R3, #0x3A98
572FC8:  ADD             R0, R3
572FCA:  ADD             R2, PC; _ZN5CHeli26TestForNewRandomHelisTimerE_ptr
572FCC:  LDR             R2, [R2]; CHeli::TestForNewRandomHelisTimer ...
572FCE:  STR             R0, [R2]; CHeli::TestForNewRandomHelisTimer
572FD0:  LDR             R0, [SP,#0x30+var_2C]
572FD2:  CMP             R0, R9
572FD4:  BGE             loc_573018
572FD6:  MOV.W           R0, #0xFFFFFFFF; int
572FDA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
572FDE:  MOV             R1, R5; CPed *
572FE0:  BLX             j__ZN5CHeli12GenerateHeliEP4CPedb; CHeli::GenerateHeli(CPed *,bool)
572FE4:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x572FEA)
572FE6:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
572FE8:  LDR             R1, [R1]; CHeli::pHelis ...
572FEA:  LDR             R1, [R1]; CHeli::pHelis
572FEC:  CBZ             R1, loc_573004
572FEE:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x572FF4)
572FF0:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
572FF2:  LDR             R1, [R1]; CHeli::pHelis ...
572FF4:  LDR             R1, [R1,#(dword_A12CE0 - 0xA12CDC)]
572FF6:  CBNZ            R1, loc_573010
572FF8:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x572FFE)
572FFA:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
572FFC:  LDR             R1, [R1]; CHeli::pHelis ...
572FFE:  STR.W           R0, [R1,#(dword_A12CE0 - 0xA12CDC)]!
573002:  B               loc_57300C
573004:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x57300A)
573006:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
573008:  LDR             R1, [R1]; CEntity **
57300A:  STR             R0, [R1]; CHeli::pHelis
57300C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
573010:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x573016)
573012:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573014:  LDR             R0, [R0]; CHeli::pHelis ...
573016:  LDR             R1, [R0]; CHeli::pHelis
573018:  ADD             R0, SP, #0x30+var_28
57301A:  CMP             R1, #0
57301C:  ADD.W           R5, R0, #4
573020:  BEQ             loc_573044
573022:  LDRB.W          R0, [R1,#0x47]
573026:  LSLS            R0, R0, #0x1A
573028:  ITT PL
57302A:  LDRBPL.W        R0, [R1,#0x42F]
57302E:  MOVSPL.W        R0, R0,LSL#25
573032:  BPL             loc_5730D8
573034:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x573040)
573036:  MOVS            R2, #0x2A ; '*'
573038:  STRB.W          R2, [R1,#0x3BE]
57303C:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
57303E:  LDR             R0, [R0]; CHeli::pHelis ...
573040:  MOVS            R1, #0
573042:  STR             R1, [R0]; CHeli::pHelis
573044:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x57304A)
573046:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573048:  LDR             R0, [R0]; CHeli::pHelis ...
57304A:  LDR             R0, [R0,#(dword_A12CE0 - 0xA12CDC)]
57304C:  CBZ             R0, loc_573072
57304E:  LDRB.W          R1, [R0,#0x47]
573052:  LSLS            R1, R1, #0x1A
573054:  ITT PL
573056:  LDRBPL.W        R1, [R0,#0x42F]
57305A:  MOVSPL.W        R1, R1,LSL#25
57305E:  BPL             loc_57315A
573060:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x57306C)
573062:  MOVS            R2, #0x2A ; '*'
573064:  STRB.W          R2, [R0,#0x3BE]
573068:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
57306A:  LDR             R1, [R1]; CHeli::pHelis ...
57306C:  MOVS            R0, #0
57306E:  STR             R0, [R1,#(dword_A12CE0 - 0xA12CDC)]
573070:  B               loc_573074
573072:  MOVS            R0, #0
573074:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x57307A)
573076:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
573078:  LDR             R1, [R1]; CHeli::pHelis ...
57307A:  LDR             R1, [R1]; CHeli::pHelis
57307C:  CMP             R1, #0
57307E:  ITT NE
573080:  LDRBNE.W        R2, [R1,#0x3BE]
573084:  CMPNE           R2, #0x2A ; '*'
573086:  BEQ             loc_5730A8
573088:  CMP.W           R9, #1
57308C:  BLT             loc_573094
57308E:  SUB.W           R9, R9, #1
573092:  B               loc_5730A8
573094:  MOVS            R2, #0
573096:  MOVS            R3, #0x2A ; '*'
573098:  MOVT            R2, #0x42C8
57309C:  STR.W           R2, [R1,#0x9C4]
5730A0:  STRB.W          R3, [R1,#0x3BE]
5730A4:  STR.W           R2, [R1,#0x9BC]
5730A8:  CMP             R0, #0
5730AA:  ITT NE
5730AC:  LDRBNE.W        R1, [R0,#0x3BE]
5730B0:  CMPNE           R1, #0x2A ; '*'
5730B2:  BEQ             loc_5730D0
5730B4:  CMP.W           R9, #0
5730B8:  ITTTT LE
5730BA:  MOVLE           R1, #0
5730BC:  MOVTLE          R1, #0x42C8
5730C0:  STRLE.W         R1, [R0,#0x9C4]
5730C4:  MOVLE           R2, #0x2A ; '*'
5730C6:  ITT LE
5730C8:  STRBLE.W        R2, [R0,#0x3BE]
5730CC:  STRLE.W         R1, [R0,#0x9BC]
5730D0:  ADD             SP, SP, #0x14
5730D2:  POP.W           {R8-R11}
5730D6:  POP             {R4-R7,PC}
5730D8:  LDRB.W          R0, [R1,#0x3BE]
5730DC:  CMP             R0, #0x2A ; '*'
5730DE:  BNE             loc_573044
5730E0:  ADD             R0, SP, #0x30+var_28; int
5730E2:  MOV.W           R1, #0xFFFFFFFF
5730E6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5730EA:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x5730F4)
5730EC:  VLDR            S0, [SP,#0x30+var_28]
5730F0:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
5730F2:  LDR             R0, [R0]; CHeli::pHelis ...
5730F4:  LDR             R0, [R0]; this
5730F6:  LDR             R1, [R0,#0x14]; CEntity *
5730F8:  ADD.W           R2, R1, #0x30 ; '0'
5730FC:  CMP             R1, #0
5730FE:  IT EQ
573100:  ADDEQ           R2, R0, #4
573102:  VLDR            D16, [R5]
573106:  VLDR            S2, [R2]
57310A:  VLDR            D17, [R2,#4]
57310E:  VSUB.F32        S0, S0, S2
573112:  VSUB.F32        D16, D16, D17
573116:  VMUL.F32        D1, D16, D16
57311A:  VMUL.F32        S0, S0, S0
57311E:  VADD.F32        S0, S0, S2
573122:  VADD.F32        S0, S0, S3
573126:  VLDR            S2, =170.0
57312A:  VSQRT.F32       S0, S0
57312E:  VABS.F32        S0, S0
573132:  VCMPE.F32       S0, S2
573136:  VMRS            APSR_nzcv, FPSCR
57313A:  BLE.W           loc_573044
57313E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
573142:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x573148)
573144:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573146:  LDR             R0, [R0]; CHeli::pHelis ...
573148:  LDR             R0, [R0]; CHeli::pHelis
57314A:  CMP             R0, #0
57314C:  ITTT NE
57314E:  LDRNE           R1, [R0]
573150:  LDRNE           R1, [R1,#4]
573152:  BLXNE           R1
573154:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x57315A)
573156:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573158:  B               loc_57303E
57315A:  LDRB.W          R1, [R0,#0x3BE]
57315E:  CMP             R1, #0x2A ; '*'
573160:  BNE             loc_573074
573162:  ADD             R0, SP, #0x30+var_28; int
573164:  MOV.W           R1, #0xFFFFFFFF
573168:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
57316C:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x573176)
57316E:  VLDR            S0, [SP,#0x30+var_28]
573172:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573174:  LDR             R0, [R0]; CHeli::pHelis ...
573176:  LDR             R0, [R0,#(dword_A12CE0 - 0xA12CDC)]; this
573178:  LDR             R1, [R0,#0x14]; CEntity *
57317A:  ADD.W           R2, R1, #0x30 ; '0'
57317E:  CMP             R1, #0
573180:  IT EQ
573182:  ADDEQ           R2, R0, #4
573184:  VLDR            D16, [R5]
573188:  VLDR            S2, [R2]
57318C:  VLDR            D17, [R2,#4]
573190:  VSUB.F32        S0, S0, S2
573194:  VSUB.F32        D16, D16, D17
573198:  VMUL.F32        D1, D16, D16
57319C:  VMUL.F32        S0, S0, S0
5731A0:  VADD.F32        S0, S0, S2
5731A4:  VADD.F32        S0, S0, S3
5731A8:  VLDR            S2, =170.0
5731AC:  VSQRT.F32       S0, S0
5731B0:  VABS.F32        S0, S0
5731B4:  VCMPE.F32       S0, S2
5731B8:  VMRS            APSR_nzcv, FPSCR
5731BC:  BLE.W           loc_573074
5731C0:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5731C4:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x5731CA)
5731C6:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
5731C8:  LDR             R0, [R0]; CHeli::pHelis ...
5731CA:  LDR             R0, [R0,#(dword_A12CE0 - 0xA12CDC)]
5731CC:  CMP             R0, #0
5731CE:  ITTT NE
5731D0:  LDRNE           R1, [R0]
5731D2:  LDRNE           R1, [R1,#4]
5731D4:  BLXNE           R1
5731D6:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x5731DC)
5731D8:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
5731DA:  LDR             R1, [R0]; CHeli::pHelis ...
5731DC:  B               loc_57306C
