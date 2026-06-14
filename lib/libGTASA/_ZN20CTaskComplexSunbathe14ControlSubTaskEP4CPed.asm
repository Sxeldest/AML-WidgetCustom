; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe14ControlSubTaskEP4CPed
; Address            : 0x4EDACC - 0x4EDC04
; =========================================================

4EDACC:  PUSH            {R4,R5,R7,LR}
4EDACE:  ADD             R7, SP, #8
4EDAD0:  MOV             R4, R0
4EDAD2:  MOV             R5, R1
4EDAD4:  LDRB            R0, [R4,#0x10]
4EDAD6:  CMP             R0, #0
4EDAD8:  ITT NE
4EDADA:  MOVNE           R0, #0
4EDADC:  POPNE           {R4,R5,R7,PC}
4EDADE:  LDRB            R0, [R4,#0xE]
4EDAE0:  CBNZ            R0, loc_4EDB00
4EDAE2:  LDR             R1, [R4,#0x24]
4EDAE4:  LDR             R0, [R4,#0x2C]; this
4EDAE6:  LDRB            R1, [R1,#0x10]; int
4EDAE8:  CBZ             R1, loc_4EDAF4
4EDAEA:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
4EDAEE:  MOVS            R0, #1
4EDAF0:  STRB            R0, [R4,#0xE]
4EDAF2:  B               loc_4EDB00
4EDAF4:  MOVW            R1, #0x63E7
4EDAF8:  ADD             R0, R1; this
4EDAFA:  MOVS            R1, #8; int
4EDAFC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4EDB00:  LDRB            R0, [R4,#0xF]
4EDB02:  CBNZ            R0, loc_4EDB7A
4EDB04:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4EDB10)
4EDB06:  MOV.W           R2, #0x194; int
4EDB0A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4EDB12)
4EDB0C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4EDB0E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4EDB10:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4EDB12:  LDR             R1, [R1]; CWorld::Players ...
4EDB14:  LDR             R0, [R0]; CWorld::PlayerInFocus
4EDB16:  SMULBB.W        R0, R0, R2
4EDB1A:  LDR             R1, [R1,R0]
4EDB1C:  LDR.W           R0, [R1,#0x590]
4EDB20:  CMP             R0, #0
4EDB22:  ITT NE
4EDB24:  LDRNE.W         R1, [R1,#0x484]
4EDB28:  ANDSNE.W        R1, R1, #0x100
4EDB2C:  BEQ             loc_4EDB5C
4EDB2E:  VLDR            S0, [R0,#0x48]
4EDB32:  VLDR            S2, [R0,#0x4C]
4EDB36:  VMUL.F32        S0, S0, S0
4EDB3A:  VLDR            S4, [R0,#0x50]
4EDB3E:  VMUL.F32        S2, S2, S2
4EDB42:  VMUL.F32        S4, S4, S4
4EDB46:  VADD.F32        S0, S0, S2
4EDB4A:  VLDR            S2, =0.04
4EDB4E:  VADD.F32        S0, S0, S4
4EDB52:  VCMPE.F32       S0, S2
4EDB56:  VMRS            APSR_nzcv, FPSCR
4EDB5A:  BGT             loc_4EDB7A
4EDB5C:  LDR             R1, [R4,#0x28]
4EDB5E:  LDR             R0, [R4,#0x30]; this
4EDB60:  LDRB            R1, [R1,#0x10]; int
4EDB62:  CBZ             R1, loc_4EDB6E
4EDB64:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
4EDB68:  MOVS            R0, #1
4EDB6A:  STRB            R0, [R4,#0xF]
4EDB6C:  B               loc_4EDB7A
4EDB6E:  MOVW            R1, #0x63E7
4EDB72:  ADD             R0, R1; this
4EDB74:  MOVS            R1, #8; int
4EDB76:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4EDB7A:  LDRB            R0, [R4,#0xD]
4EDB7C:  CMP             R0, #0
4EDB7E:  ITTTT NE
4EDB80:  LDRNE.W         R0, [R5,#0x48C]
4EDB84:  LDRNE.W         R1, [R5,#0x534]
4EDB88:  ORRNE.W         R1, R1, #8
4EDB8C:  STRNE.W         R1, [R5,#0x534]
4EDB90:  ITT NE
4EDB92:  ORRNE.W         R0, R0, #0x100000
4EDB96:  STRNE.W         R0, [R5,#0x48C]
4EDB9A:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4EDBA0)
4EDB9C:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4EDB9E:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4EDBA0:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4EDBA2:  SUBS            R0, #0xA
4EDBA4:  UXTB            R0, R0
4EDBA6:  CMP             R0, #7
4EDBA8:  BHI             loc_4EDBC8
4EDBAA:  LDR             R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x4EDBB0)
4EDBAC:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
4EDBAE:  LDR             R0, [R0]; CWeather::NewWeatherType ...
4EDBB0:  LDRH            R0, [R0]; CWeather::NewWeatherType
4EDBB2:  CMP             R0, #0x12
4EDBB4:  BHI             loc_4EDBC8
4EDBB6:  MOVS            R1, #1
4EDBB8:  LSL.W           R0, R1, R0
4EDBBC:  MOV             R1, #0x66C6F
4EDBC4:  TST             R0, R1
4EDBC6:  BNE             loc_4EDC00
4EDBC8:  LDRB            R0, [R4,#0x1C]
4EDBCA:  CBZ             R0, loc_4EDBE2
4EDBCC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EDBD8)
4EDBCE:  MOVS            R3, #1
4EDBD0:  LDRD.W          R1, R2, [R4,#0x14]
4EDBD4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EDBD6:  STRB            R3, [R4,#0x1D]
4EDBD8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EDBDA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EDBDC:  SUBS            R0, R2, R0
4EDBDE:  ADD             R0, R1
4EDBE0:  STR             R0, [R4,#0x18]
4EDBE2:  LDR             R0, [R4,#8]
4EDBE4:  LDR             R1, [R0]
4EDBE6:  LDR             R1, [R1,#0x14]
4EDBE8:  BLX             R1
4EDBEA:  CMP.W           R0, #0x1A2
4EDBEE:  BNE             loc_4EDC00
4EDBF0:  LDR             R0, [R4,#8]
4EDBF2:  MOVS            R2, #0
4EDBF4:  MOVS            R3, #0
4EDBF6:  LDR             R1, [R0]
4EDBF8:  LDR.W           R12, [R1,#0x1C]
4EDBFC:  MOV             R1, R5
4EDBFE:  BLX             R12
4EDC00:  LDR             R0, [R4,#8]
4EDC02:  POP             {R4,R5,R7,PC}
