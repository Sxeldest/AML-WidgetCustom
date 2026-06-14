; =========================================================
; Game Engine Function: _ZN7CWeapon6UpdateEP4CPed
; Address            : 0x5E1EC8 - 0x5E227C
; =========================================================

5E1EC8:  PUSH            {R4-R7,LR}
5E1ECA:  ADD             R7, SP, #0xC
5E1ECC:  PUSH.W          {R8,R9,R11}
5E1ED0:  VPUSH           {D8}
5E1ED4:  MOV             R4, R0
5E1ED6:  MOV             R5, R1
5E1ED8:  LDR             R6, [R4]
5E1EDA:  CBZ             R5, loc_5E1EE8
5E1EDC:  MOV             R0, R5
5E1EDE:  MOV             R1, R6
5E1EE0:  BLX.W           j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
5E1EE4:  MOV             R1, R0
5E1EE6:  B               loc_5E1EEA
5E1EE8:  MOVS            R1, #1
5E1EEA:  MOV             R0, R6
5E1EEC:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E1EF0:  MOV             R6, R0
5E1EF2:  LDR             R0, [R4,#4]
5E1EF4:  SUBS            R0, #1; switch 4 cases
5E1EF6:  CMP             R0, #3
5E1EF8:  BHI.W           def_5E1EFC; jumptable 005E1EFC default case, case 3
5E1EFC:  TBH.W           [PC,R0,LSL#1]; switch jump
5E1F00:  DCW 4; jump table for switch statement
5E1F02:  DCW 0x70
5E1F04:  DCW 0x1AF
5E1F06:  DCW 0xA3
5E1F08:  CMP             R5, #0; jumptable 005E1EFC case 1
5E1F0A:  BEQ             loc_5E1FBE
5E1F0C:  LDR             R0, [R4]
5E1F0E:  ORR.W           R0, R0, #2
5E1F12:  CMP             R0, #0x1B
5E1F14:  BNE             loc_5E1FBE
5E1F16:  LDR.W           R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E1F22)
5E1F1A:  LDRSH.W         R1, [R6,#0x6C]
5E1F1E:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E1F20:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E1F22:  ADD.W           R2, R1, R1,LSL#1
5E1F26:  UXTH.W          R12, R1
5E1F2A:  ADD.W           R2, R0, R2,LSL#3
5E1F2E:  LDR.W           R0, [R5,#0x484]
5E1F32:  ADD.W           R3, R2, #0x10
5E1F36:  TST.W           R0, #0x4000000
5E1F3A:  IT NE
5E1F3C:  ADDNE.W         R3, R2, #0x14
5E1F40:  LDRH            R2, [R3]
5E1F42:  CBZ             R2, loc_5E1F76
5E1F44:  LDR             R3, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x5E1F4C)
5E1F46:  LDR             R1, [R4,#0x10]
5E1F48:  ADD             R3, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
5E1F4A:  ADD             R2, R1
5E1F4C:  LDR             R3, [R3]; CTimer::m_snPreviousTimeInMilliseconds ...
5E1F4E:  LDR             R3, [R3]; CTimer::m_snPreviousTimeInMilliseconds
5E1F50:  CMP             R3, R2
5E1F52:  BCS             loc_5E1F76
5E1F54:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E1F5A)
5E1F56:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E1F58:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5E1F5A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5E1F5C:  CMP             R1, R2
5E1F5E:  BCC             loc_5E1F76
5E1F60:  ADD.W           R0, R5, #0x398; this
5E1F64:  MOVS            R1, #0x92; int
5E1F66:  ADDW            R8, R5, #0x484
5E1F6A:  BLX.W           j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5E1F6E:  LDR.W           R0, [R8]
5E1F72:  LDRH.W          R12, [R6,#0x6C]
5E1F76:  LDR             R1, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E1F86)
5E1F78:  SXTH.W          R2, R12
5E1F7C:  ADD.W           R2, R2, R2,LSL#1
5E1F80:  LSLS            R0, R0, #5
5E1F82:  ADD             R1, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E1F84:  LDR             R1, [R1]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E1F86:  ADD.W           R1, R1, R2,LSL#3
5E1F8A:  ADD.W           R2, R1, #0x12
5E1F8E:  IT MI
5E1F90:  ADDMI.W         R2, R1, #0x16
5E1F94:  LDRH            R0, [R2]
5E1F96:  CBZ             R0, loc_5E1FBE
5E1F98:  LDR             R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x5E1FA0)
5E1F9A:  LDR             R2, [R4,#0x10]
5E1F9C:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
5E1F9E:  ADD             R0, R2
5E1FA0:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
5E1FA2:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
5E1FA4:  CMP             R1, R0
5E1FA6:  BCS             loc_5E1FBE
5E1FA8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E1FAE)
5E1FAA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E1FAC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5E1FAE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5E1FB0:  CMP             R1, R0
5E1FB2:  ITTT CS
5E1FB4:  ADDCS.W         R0, R5, #0x398; this
5E1FB8:  MOVCS           R1, #0x93; int
5E1FBA:  BLXCS.W         j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5E1FBE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E1FC6)
5E1FC0:  LDR             R1, [R4,#0x10]
5E1FC2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E1FC4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E1FC6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5E1FC8:  CMP             R0, R1
5E1FCA:  BLS.W           loc_5E2272
5E1FCE:  LDR             R1, [R6]
5E1FD0:  MOVS            R0, #0
5E1FD2:  CBZ             R1, loc_5E1FDC
5E1FD4:  LDR             R1, [R4,#0xC]
5E1FD6:  CMP             R1, #0
5E1FD8:  IT EQ
5E1FDA:  MOVEQ           R0, #3
5E1FDC:  STR             R0, [R4,#4]
5E1FDE:  B               loc_5E2272
5E1FE0:  CMP             R5, #0; jumptable 005E1EFC case 2
5E1FE2:  BEQ.W           loc_5E2222
5E1FE6:  LDR             R0, [R4]
5E1FE8:  CMP             R0, #0x2E ; '.'
5E1FEA:  BGT.W           loc_5E2222
5E1FEE:  LDR             R1, [R6,#0x18]
5E1FF0:  TST.W           R1, #0x1000
5E1FF4:  BEQ.W           loc_5E2170
5E1FF8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5E2004)
5E1FFA:  MOV.W           R3, #0x194
5E1FFE:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x5E2006)
5E2000:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5E2002:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
5E2004:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5E2006:  LDR             R2, [R2]; CWorld::Players ...
5E2008:  LDR             R0, [R0]; CWorld::PlayerInFocus
5E200A:  SMLABB.W        R0, R0, R3, R2
5E200E:  LDRB.W          R0, [R0,#0x14D]
5E2012:  CBZ             R0, loc_5E2022
5E2014:  MOV             R0, R5; this
5E2016:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5E201A:  CMP             R0, #0
5E201C:  BNE.W           loc_5E2170
5E2020:  LDR             R1, [R6,#0x18]
5E2022:  LDR             R0, [R5,#0x18]
5E2024:  ANDS.W          R1, R1, #0x1000
5E2028:  IT NE
5E202A:  MOVNE           R1, #0xE2
5E202C:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E2030:  MOV             R8, R0
5E2032:  CMP.W           R8, #0
5E2036:  BNE             loc_5E205C
5E2038:  LDR             R1, [R6,#0x18]
5E203A:  LDR             R0, [R5,#0x18]
5E203C:  TST.W           R1, #0x2000
5E2040:  BNE             loc_5E204E
5E2042:  MOVS            R1, #0
5E2044:  B               loc_5E2056
5E2046:  MOVS            R1, #0; jumptable 005E1EFC case 4
5E2048:  LDR             R0, [R4,#0x18]
5E204A:  STR             R1, [R4,#4]
5E204C:  B               loc_5E2260
5E204E:  ANDS.W          R1, R1, #0x1000
5E2052:  IT NE
5E2054:  MOVNE           R1, #0xE3
5E2056:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E205A:  MOV             R8, R0
5E205C:  LDR.W           R0, [R5,#0x440]; this
5E2060:  BLX.W           j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
5E2064:  CMP.W           R8, #0
5E2068:  BEQ             loc_5E215C
5E206A:  LDR             R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E2074)
5E206C:  LDRSH.W         R1, [R6,#0x6C]
5E2070:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E2072:  VLDR            S16, =0.001
5E2076:  ADD.W           R2, R1, R1,LSL#1
5E207A:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E207C:  UXTH            R1, R1
5E207E:  ADD.W           R2, R0, R2,LSL#3
5E2082:  LDR.W           R0, [R5,#0x484]
5E2086:  ADD.W           R3, R2, #0x10
5E208A:  TST.W           R0, #0x4000000
5E208E:  IT NE
5E2090:  ADDNE.W         R3, R2, #0x14
5E2094:  LDRH            R2, [R3]
5E2096:  VMOV            S0, R2
5E209A:  VCVT.F32.U32    S0, S0
5E209E:  VMUL.F32        S2, S0, S16
5E20A2:  VLDR            S0, [R8,#0x20]
5E20A6:  VCMPE.F32       S0, S2
5E20AA:  VMRS            APSR_nzcv, FPSCR
5E20AE:  BLT             loc_5E20DC
5E20B0:  VLDR            S4, [R8,#0x28]
5E20B4:  VSUB.F32        S4, S0, S4
5E20B8:  VCMPE.F32       S4, S2
5E20BC:  VMRS            APSR_nzcv, FPSCR
5E20C0:  BGE             loc_5E20DC
5E20C2:  ADD.W           R0, R5, #0x398; this
5E20C6:  MOVS            R1, #0x92; int
5E20C8:  ADDW            R9, R5, #0x484
5E20CC:  BLX.W           j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5E20D0:  LDR.W           R0, [R9]
5E20D4:  LDRH.W          R1, [R6,#0x6C]
5E20D8:  VLDR            S0, [R8,#0x20]
5E20DC:  LDR             R2, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E20EA)
5E20DE:  SXTH            R1, R1
5E20E0:  ADD.W           R1, R1, R1,LSL#1
5E20E4:  LSLS            R0, R0, #5
5E20E6:  ADD             R2, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E20E8:  LDR             R2, [R2]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E20EA:  ADD.W           R1, R2, R1,LSL#3
5E20EE:  ADD.W           R2, R1, #0x12
5E20F2:  IT MI
5E20F4:  ADDMI.W         R2, R1, #0x16
5E20F8:  LDRH            R0, [R2]
5E20FA:  VMOV            S2, R0
5E20FE:  VCVT.F32.U32    S2, S2
5E2102:  VMUL.F32        S2, S2, S16
5E2106:  VCMPE.F32       S0, S2
5E210A:  VMRS            APSR_nzcv, FPSCR
5E210E:  BLT             loc_5E212C
5E2110:  VLDR            S4, [R8,#0x28]
5E2114:  VSUB.F32        S0, S0, S4
5E2118:  VCMPE.F32       S0, S2
5E211C:  VMRS            APSR_nzcv, FPSCR
5E2120:  BGE             loc_5E212C
5E2122:  ADD.W           R0, R5, #0x398; this
5E2126:  MOVS            R1, #0x93; int
5E2128:  BLX.W           j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5E212C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E2134)
5E212E:  LDR             R1, [R4,#0x10]
5E2130:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E2132:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E2134:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5E2136:  CMP             R0, R1
5E2138:  BLS             loc_5E2222
5E213A:  LDR.W           R1, [R8,#0x14]
5E213E:  VLDR            S0, [R8,#0x20]
5E2142:  VLDR            S2, [R1,#0x10]
5E2146:  VDIV.F32        S0, S0, S2
5E214A:  VLDR            S2, =0.9
5E214E:  VCMPE.F32       S0, S2
5E2152:  VMRS            APSR_nzcv, FPSCR
5E2156:  IT LT
5E2158:  STRLT           R0, [R4,#0x10]
5E215A:  B               loc_5E2222
5E215C:  CBZ             R0, loc_5E2170
5E215E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E2166)
5E2160:  LDR             R1, [R4,#0x10]
5E2162:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E2164:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E2166:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5E2168:  CMP             R0, R1
5E216A:  IT HI
5E216C:  STRHI           R0, [R4,#0x10]
5E216E:  B               loc_5E2222
5E2170:  MOV             R0, R6; this
5E2172:  LDR.W           R8, [R4,#0x10]
5E2176:  BLX.W           j__ZN11CWeaponInfo19GetWeaponReloadTimeEv; CWeaponInfo::GetWeaponReloadTime(void)
5E217A:  LDR             R2, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E2188)
5E217C:  SUB.W           R8, R8, R0
5E2180:  LDRH.W          R12, [R6,#0x6C]
5E2184:  ADD             R2, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E2186:  SXTH.W          R3, R12
5E218A:  LDR             R2, [R2]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E218C:  ADD.W           R3, R3, R3,LSL#1
5E2190:  ADD.W           R3, R2, R3,LSL#3
5E2194:  LDR.W           R2, [R5,#0x484]
5E2198:  ADD.W           R1, R3, #0x10
5E219C:  TST.W           R2, #0x4000000
5E21A0:  IT NE
5E21A2:  ADDNE.W         R1, R3, #0x14
5E21A6:  LDRH            R3, [R1]
5E21A8:  CBZ             R3, loc_5E21DC
5E21AA:  LDR             R0, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x5E21B0)
5E21AC:  ADD             R0, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
5E21AE:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds ...
5E21B0:  LDR             R1, [R0]; CTimer::m_snPreviousTimeInMilliseconds
5E21B2:  ADD.W           R0, R8, R3
5E21B6:  CMP             R1, R0
5E21B8:  BCS             loc_5E21DC
5E21BA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E21C0)
5E21BC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E21BE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5E21C0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5E21C2:  CMP             R1, R0
5E21C4:  BCC             loc_5E21DC
5E21C6:  ADD.W           R0, R5, #0x398; this
5E21CA:  MOVS            R1, #0x92; int
5E21CC:  ADDW            R9, R5, #0x484
5E21D0:  BLX.W           j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5E21D4:  LDR.W           R2, [R9]
5E21D8:  LDRH.W          R12, [R6,#0x6C]
5E21DC:  LDR             R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E21EC)
5E21DE:  SXTH.W          R1, R12
5E21E2:  ADD.W           R1, R1, R1,LSL#1
5E21E6:  LSLS            R2, R2, #5
5E21E8:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E21EA:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E21EC:  ADD.W           R0, R0, R1,LSL#3
5E21F0:  ADD.W           R1, R0, #0x12
5E21F4:  IT MI
5E21F6:  ADDMI.W         R1, R0, #0x16
5E21FA:  LDRH            R0, [R1]
5E21FC:  CBZ             R0, loc_5E2222
5E21FE:  LDR             R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x5E2206)
5E2200:  ADD             R0, R8
5E2202:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
5E2204:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
5E2206:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
5E2208:  CMP             R1, R0
5E220A:  BCS             loc_5E2222
5E220C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E2212)
5E220E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E2210:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5E2212:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5E2214:  CMP             R1, R0
5E2216:  ITTT CS
5E2218:  ADDCS.W         R0, R5, #0x398; this
5E221C:  MOVCS           R1, #0x93; int
5E221E:  BLXCS.W         j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5E2222:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E222A)
5E2224:  LDR             R1, [R4,#0x10]
5E2226:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E2228:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E222A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5E222C:  CMP             R0, R1
5E222E:  BLS             def_5E1EFC; jumptable 005E1EFC default case, case 3
5E2230:  LDR             R0, [R4,#0xC]
5E2232:  CBZ             R0, loc_5E225A
5E2234:  LDR             R6, [R4]
5E2236:  CBZ             R5, loc_5E2244
5E2238:  MOV             R0, R5
5E223A:  MOV             R1, R6
5E223C:  BLX.W           j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
5E2240:  MOV             R1, R0
5E2242:  B               loc_5E2246
5E2244:  MOVS            R1, #1
5E2246:  MOV             R0, R6
5E2248:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E224C:  LDRSH.W         R0, [R0,#0x20]
5E2250:  LDR             R1, [R4,#0xC]
5E2252:  CMP             R1, R0
5E2254:  IT CC
5E2256:  MOVCC           R0, R1
5E2258:  STR             R0, [R4,#8]
5E225A:  MOVS            R0, #0
5E225C:  STR             R0, [R4,#4]
5E225E:  LDR             R0, [R4,#0x18]; jumptable 005E1EFC default case, case 3
5E2260:  CMP             R0, #0
5E2262:  ITT NE
5E2264:  LDRNE           R1, [R4]
5E2266:  CMPNE           R1, #0x12
5E2268:  BEQ             loc_5E2272
5E226A:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5E226E:  MOVS            R0, #0
5E2270:  STR             R0, [R4,#0x18]
5E2272:  VPOP            {D8}
5E2276:  POP.W           {R8,R9,R11}
5E227A:  POP             {R4-R7,PC}
