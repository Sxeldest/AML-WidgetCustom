; =========================================================
; Game Engine Function: _ZN19CAEAudioEnvironment28GetReverbEnvironmentAndDepthEPaPi
; Address            : 0x3920DC - 0x392184
; =========================================================

3920DC:  LDR             R2, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3920E6)
3920DE:  VMOV.F32        S0, #0.5
3920E2:  ADD             R2, PC; _ZN8CWeather14UnderWaternessE_ptr
3920E4:  LDR             R2, [R2]; CWeather::UnderWaterness ...
3920E6:  VLDR            S2, [R2]
3920EA:  VCMPE.F32       S2, S0
3920EE:  VMRS            APSR_nzcv, FPSCR
3920F2:  BGE             loc_392118
3920F4:  LDR             R2, =(_ZN11CAudioZones18m_NumActiveSpheresE_ptr - 0x3920FA)
3920F6:  ADD             R2, PC; _ZN11CAudioZones18m_NumActiveSpheresE_ptr
3920F8:  LDR             R2, [R2]; CAudioZones::m_NumActiveSpheres ...
3920FA:  LDR             R2, [R2]; CAudioZones::m_NumActiveSpheres
3920FC:  CMP             R2, #1
3920FE:  BLT             loc_392124
392100:  LDR             R2, =(_ZN11CAudioZones16m_aActiveSpheresE_ptr - 0x392108)
392102:  LDR             R3, =(_ZN11CAudioZones10m_aSpheresE_ptr - 0x39210A)
392104:  ADD             R2, PC; _ZN11CAudioZones16m_aActiveSpheresE_ptr
392106:  ADD             R3, PC; _ZN11CAudioZones10m_aSpheresE_ptr
392108:  LDR             R2, [R2]; CAudioZones::m_aActiveSpheres ...
39210A:  LDR             R3, [R3]; CAudioZones::m_aSpheres ...
39210C:  LDR             R2, [R2]; CAudioZones::m_aActiveSpheres
39210E:  RSB.W           R2, R2, R2,LSL#3
392112:  ADD.W           R2, R3, R2,LSL#2
392116:  B               loc_392146
392118:  MOVS            R2, #0x16
39211A:  STRB            R2, [R0]
39211C:  MOV             R0, #0xFFFFFFF4
392120:  STR             R0, [R1]
392122:  BX              LR
392124:  LDR             R2, =(_ZN11CAudioZones16m_NumActiveBoxesE_ptr - 0x39212A)
392126:  ADD             R2, PC; _ZN11CAudioZones16m_NumActiveBoxesE_ptr
392128:  LDR             R2, [R2]; CAudioZones::m_NumActiveBoxes ...
39212A:  LDR             R2, [R2]; CAudioZones::m_NumActiveBoxes
39212C:  CMP             R2, #1
39212E:  BLT             loc_392152
392130:  LDR             R2, =(_ZN11CAudioZones14m_aActiveBoxesE_ptr - 0x392138)
392132:  LDR             R3, =(_ZN11CAudioZones8m_aBoxesE_ptr - 0x39213A)
392134:  ADD             R2, PC; _ZN11CAudioZones14m_aActiveBoxesE_ptr
392136:  ADD             R3, PC; _ZN11CAudioZones8m_aBoxesE_ptr
392138:  LDR             R2, [R2]; CAudioZones::m_aActiveBoxes ...
39213A:  LDR             R3, [R3]; CAudioZones::m_aBoxes ...
39213C:  LDR             R2, [R2]; CAudioZones::m_aActiveBoxes
39213E:  ADD.W           R2, R2, R2,LSL#1
392142:  ADD.W           R2, R3, R2,LSL#3
392146:  ADDS            R2, #8
392148:  MOVW            R3, #0xFFFF
39214C:  LDRH            R2, [R2]
39214E:  CMP             R2, R3
392150:  BNE             loc_39215E
392152:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x392158)
392154:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
392156:  LDR             R2, [R2]; CGame::currArea ...
392158:  LDR             R2, [R2]; CGame::currArea
39215A:  CBZ             R2, loc_392178
39215C:  MOVS            R2, #0xE
39215E:  LDR             R3, =(gAudioZoneToReverbEnvironmentMap_ptr - 0x392166)
392160:  SXTH            R2, R2
392162:  ADD             R3, PC; gAudioZoneToReverbEnvironmentMap_ptr
392164:  LDR.W           R12, [R3]; gAudioZoneToReverbEnvironmentMap
392168:  LDRB.W          R3, [R12,R2,LSL#3]
39216C:  STRB            R3, [R0]
39216E:  ADD.W           R0, R12, R2,LSL#3
392172:  LDR             R0, [R0,#4]
392174:  STR             R0, [R1]
392176:  BX              LR
392178:  MOVS            R2, #0x17
39217A:  STRB            R2, [R0]
39217C:  MOV             R0, #0xFFFFFF9C
392180:  STR             R0, [R1]
392182:  BX              LR
