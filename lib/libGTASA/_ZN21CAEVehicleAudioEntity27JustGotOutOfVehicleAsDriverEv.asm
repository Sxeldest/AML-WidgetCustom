; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity27JustGotOutOfVehicleAsDriverEv
; Address            : 0x3ADFCC - 0x3AE310
; =========================================================

3ADFCC:  PUSH            {R4-R7,LR}
3ADFCE:  ADD             R7, SP, #0xC
3ADFD0:  PUSH.W          {R8-R11}
3ADFD4:  SUB             SP, SP, #4
3ADFD6:  VPUSH           {D8-D9}
3ADFDA:  SUB             SP, SP, #0x78
3ADFDC:  MOV             R10, R0
3ADFDE:  MOVS            R4, #0
3ADFE0:  STRB.W          R4, [R10,#0xA7]
3ADFE4:  LDRB.W          R0, [R10,#0x80]
3ADFE8:  CMP             R0, #9; switch 10 cases
3ADFEA:  BHI.W           def_3ADFF2; jumptable 003ADFF2 default case, cases 2,3,7
3ADFEE:  MOVW            R8, #0xFFFF
3ADFF2:  TBH.W           [PC,R0,LSL#1]; switch jump
3ADFF6:  DCW 0x66; jump table for switch statement
3ADFF8:  DCW 0x66
3ADFFA:  DCW 0x182
3ADFFC:  DCW 0x182
3ADFFE:  DCW 0xA
3AE000:  DCW 0xA
3AE002:  DCW 0xA
3AE004:  DCW 0x182
3AE006:  DCW 0xD8
3AE008:  DCW 0xF8
3AE00A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AE01C); jumptable 003ADFF2 cases 4-6
3AE00C:  VMOV.F32        S18, #1.0
3AE010:  VLDR            S16, =100.0
3AE014:  MOV.W           R9, #0
3AE018:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AE01A:  MOVS            R5, #0
3AE01C:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds ...
3AE020:  B               loc_3AE028
3AE022:  STRH.W          R0, [R10,#0x14E]
3AE026:  MOVS            R5, #5
3AE028:  ADD.W           R4, R10, R5,LSL#3
3AE02C:  MOVW            R6, #0xFFFF
3AE030:  LDR.W           R0, [R4,#0xE8]!; this
3AE034:  CBZ             R0, loc_3AE04C
3AE036:  MOVS            R1, #4; unsigned __int16
3AE038:  MOVS            R2, #0; unsigned __int16
3AE03A:  LDRH.W          R6, [R0,#0x70]
3AE03E:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AE042:  LDR             R0, [R4]; this
3AE044:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AE048:  STR.W           R9, [R4]
3AE04C:  CMP             R5, #4
3AE04E:  BNE             loc_3AE0A2
3AE050:  LDRH.W          R0, [R10,#0x148]
3AE054:  STRH.W          R0, [R10,#0x154]
3AE058:  LDR.W           R1, [R11]; CTimer::m_snTimeInMilliseconds
3AE05C:  STR.W           R1, [R10,#0x150]
3AE060:  SXTH            R1, R6
3AE062:  CMP             R1, #1
3AE064:  STRH.W          R8, [R10,#0x14A]
3AE068:  STRH.W          R8, [R10,#0x148]
3AE06C:  BLT             loc_3AE0AA
3AE06E:  SXTH            R0, R0
3AE070:  VMOV            S0, R1
3AE074:  VMOV            S2, R0
3AE078:  VCVT.F32.S32    S0, S0
3AE07C:  VCVT.F32.S32    S2, S2
3AE080:  VDIV.F32        S0, S2, S0
3AE084:  VMIN.F32        D0, D0, D9
3AE088:  VCMPE.F32       S0, #0.0
3AE08C:  VMRS            APSR_nzcv, FPSCR
3AE090:  VMUL.F32        S2, S0, S16
3AE094:  VCVT.S32.F32    S2, S2
3AE098:  VMOV            R0, S2
3AE09C:  IT LT
3AE09E:  MOVLT           R0, #0
3AE0A0:  B               loc_3AE022
3AE0A2:  ADDS            R5, #1
3AE0A4:  CMP             R5, #0xC
3AE0A6:  BNE             loc_3AE028
3AE0A8:  B               loc_3AE0AE
3AE0AA:  MOVS            R0, #0
3AE0AC:  B               loc_3AE022
3AE0AE:  MOVS            R0, #0
3AE0B0:  MOVS            R1, #0
3AE0B2:  MOVT            R0, #0xC2C8
3AE0B6:  MOVT            R1, #0xBF80
3AE0BA:  STRD.W          R1, R0, [R10,#0x22C]
3AE0BE:  MOVS            R4, #0
3AE0C0:  B               def_3ADFF2; jumptable 003ADFF2 default case, cases 2,3,7
3AE0C2:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AE0D4); jumptable 003ADFF2 cases 0,1
3AE0C4:  VMOV.F32        S0, #-1.5
3AE0C8:  MOV.W           R1, #0x3F800000
3AE0CC:  MOV.W           R9, #0
3AE0D0:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AE0D2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AE0D4:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AE0D6:  LDRSB.W         R0, [R0,#0x4D]
3AE0DA:  VMOV            S2, R0
3AE0DE:  VCVT.F32.S32    S2, S2
3AE0E2:  LDRB.W          R0, [R10,#0xA9]
3AE0E6:  STRD.W          R1, R1, [R10,#0x23C]
3AE0EA:  CMP             R0, #6
3AE0EC:  VADD.F32        S0, S2, S0
3AE0F0:  VSTR            S0, [R10,#0xD8]
3AE0F4:  BNE.W           loc_3AE208
3AE0F8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AE108)
3AE0FA:  VMOV.F32        S18, #1.0
3AE0FE:  VLDR            S16, =100.0
3AE102:  MOVS            R6, #0
3AE104:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AE106:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds ...
3AE10A:  B               loc_3AE10E
3AE10C:  ADDS            R6, #1
3AE10E:  CMP             R6, #2
3AE110:  BEQ             loc_3AE10C
3AE112:  ADD.W           R8, R10, R6,LSL#3
3AE116:  MOVW            R5, #0xFFFF
3AE11A:  LDR.W           R0, [R8,#0xE8]!; this
3AE11E:  CBZ             R0, loc_3AE138
3AE120:  MOVS            R1, #4; unsigned __int16
3AE122:  MOVS            R2, #0; unsigned __int16
3AE124:  LDRH.W          R5, [R0,#0x70]
3AE128:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AE12C:  LDR.W           R0, [R8]; this
3AE130:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AE134:  STR.W           R9, [R8]
3AE138:  CMP             R6, #4
3AE13A:  BNE             loc_3AE192
3AE13C:  LDRH.W          R0, [R10,#0x148]
3AE140:  STRH.W          R0, [R10,#0x154]
3AE144:  LDR.W           R1, [R11]; CTimer::m_snTimeInMilliseconds
3AE148:  STR.W           R1, [R10,#0x150]
3AE14C:  MOVW            R1, #0xFFFF
3AE150:  STRH.W          R1, [R10,#0x14A]
3AE154:  STRH.W          R1, [R10,#0x148]
3AE158:  SXTH            R1, R5
3AE15A:  CMP             R1, #1
3AE15C:  BLT             loc_3AE19E
3AE15E:  SXTH            R0, R0
3AE160:  VMOV            S0, R1
3AE164:  VMOV            S2, R0
3AE168:  VCVT.F32.S32    S0, S0
3AE16C:  VCVT.F32.S32    S2, S2
3AE170:  VDIV.F32        S0, S2, S0
3AE174:  VMIN.F32        D0, D0, D9
3AE178:  VCMPE.F32       S0, #0.0
3AE17C:  VMRS            APSR_nzcv, FPSCR
3AE180:  VMUL.F32        S2, S0, S16
3AE184:  VCVT.S32.F32    S2, S2
3AE188:  VMOV            R0, S2
3AE18C:  IT LT
3AE18E:  MOVLT           R0, #0
3AE190:  B               loc_3AE1A0
3AE192:  ADDS            R6, #1
3AE194:  MOVW            R5, #0xFFFF
3AE198:  CMP             R6, #0xC
3AE19A:  BNE             loc_3AE10E
3AE19C:  B               loc_3AE2AE
3AE19E:  MOVS            R0, #0
3AE1A0:  STRH.W          R0, [R10,#0x14E]
3AE1A4:  B               loc_3AE10C
3AE1A6:  MOVS            R0, #0; jumptable 003ADFF2 case 8
3AE1A8:  STR             R0, [SP,#0xA8+var_9C]
3AE1AA:  LDRH.W          R1, [R10,#0xDE]; unsigned __int16
3AE1AE:  CMP             R1, R8
3AE1B0:  BEQ             loc_3AE1DE
3AE1B2:  LDR             R0, =(AEAudioHardware_ptr - 0x3AE1BA)
3AE1B4:  MOVS            R2, #0x28 ; '('; __int16
3AE1B6:  ADD             R0, PC; AEAudioHardware_ptr
3AE1B8:  LDR             R0, [R0]; AEAudioHardware ; this
3AE1BA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AE1BE:  CMP             R0, #0
3AE1C0:  ITT NE
3AE1C2:  LDRHNE.W        R0, [R10,#0x156]
3AE1C6:  CMPNE           R0, R8
3AE1C8:  BEQ             loc_3AE1DE
3AE1CA:  LDRH.W          R0, [R10,#0x20C]
3AE1CE:  CMP             R0, #0
3AE1D0:  ITT NE
3AE1D2:  ADDNE.W         R0, R10, #0x184; this
3AE1D6:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3AE1DA:  STRH.W          R8, [R10,#0x156]
3AE1DE:  ADD             R0, SP, #0xA8+var_A4; this
3AE1E0:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AE1E4:  B               def_3ADFF2; jumptable 003ADFF2 default case, cases 2,3,7
3AE1E6:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AE1F0); jumptable 003ADFF2 case 9
3AE1E8:  VMOV.F32        S0, #-1.5
3AE1EC:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AE1EE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AE1F0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AE1F2:  LDRSB.W         R0, [R0,#0x4D]
3AE1F6:  VMOV            S2, R0
3AE1FA:  VCVT.F32.S32    S2, S2
3AE1FE:  VADD.F32        S0, S2, S0
3AE202:  VSTR            S0, [R10,#0xD8]
3AE206:  B               def_3ADFF2; jumptable 003ADFF2 default case, cases 2,3,7
3AE208:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AE218)
3AE20A:  VMOV.F32        S18, #1.0
3AE20E:  VLDR            S16, =100.0
3AE212:  MOVS            R5, #0
3AE214:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AE216:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds ...
3AE21A:  B               loc_3AE222
3AE21C:  STRH.W          R0, [R10,#0x14E]
3AE220:  MOVS            R5, #5
3AE222:  ADD.W           R6, R10, R5,LSL#3
3AE226:  MOVW            R8, #0xFFFF
3AE22A:  LDR.W           R0, [R6,#0xE8]!; this
3AE22E:  CBZ             R0, loc_3AE246
3AE230:  MOVS            R1, #4; unsigned __int16
3AE232:  MOVS            R2, #0; unsigned __int16
3AE234:  LDRH.W          R8, [R0,#0x70]
3AE238:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AE23C:  LDR             R0, [R6]; this
3AE23E:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AE242:  STR.W           R9, [R6]
3AE246:  CMP             R5, #4
3AE248:  BNE             loc_3AE2A2
3AE24A:  LDRH.W          R0, [R10,#0x148]
3AE24E:  STRH.W          R0, [R10,#0x154]
3AE252:  LDR.W           R1, [R11]; CTimer::m_snTimeInMilliseconds
3AE256:  STR.W           R1, [R10,#0x150]
3AE25A:  MOVW            R1, #0xFFFF
3AE25E:  STRH.W          R1, [R10,#0x14A]
3AE262:  STRH.W          R1, [R10,#0x148]
3AE266:  SXTH.W          R1, R8
3AE26A:  CMP             R1, #1
3AE26C:  BLT             loc_3AE2AA
3AE26E:  SXTH            R0, R0
3AE270:  VMOV            S0, R1
3AE274:  VMOV            S2, R0
3AE278:  VCVT.F32.S32    S0, S0
3AE27C:  VCVT.F32.S32    S2, S2
3AE280:  VDIV.F32        S0, S2, S0
3AE284:  VMIN.F32        D0, D0, D9
3AE288:  VCMPE.F32       S0, #0.0
3AE28C:  VMRS            APSR_nzcv, FPSCR
3AE290:  VMUL.F32        S2, S0, S16
3AE294:  VCVT.S32.F32    S2, S2
3AE298:  VMOV            R0, S2
3AE29C:  IT LT
3AE29E:  MOVLT           R0, #0
3AE2A0:  B               loc_3AE21C
3AE2A2:  ADDS            R5, #1
3AE2A4:  CMP             R5, #0xC
3AE2A6:  BNE             loc_3AE222
3AE2A8:  B               loc_3AE2B2
3AE2AA:  MOVS            R0, #0
3AE2AC:  B               loc_3AE21C
3AE2AE:  MOVS            R0, #1
3AE2B0:  B               loc_3AE2BE
3AE2B2:  LDRB.W          R0, [R10,#0xA9]
3AE2B6:  MOVW            R5, #0xFFFF
3AE2BA:  CBZ             R0, loc_3AE2C2
3AE2BC:  MOVS            R0, #0xA
3AE2BE:  STRB.W          R0, [R10,#0xA9]
3AE2C2:  MOVS            R6, #0
3AE2C4:  STR             R6, [SP,#0xA8+var_9C]
3AE2C6:  LDRH.W          R0, [R10,#0x16C]
3AE2CA:  CMP             R0, R5
3AE2CC:  BEQ             loc_3AE2F0
3AE2CE:  LDR.W           R0, [R10,#0x170]; this
3AE2D2:  CBZ             R0, loc_3AE2EC
3AE2D4:  MOVS            R1, #4; unsigned __int16
3AE2D6:  MOVS            R2, #0; unsigned __int16
3AE2D8:  MOVS            R4, #0
3AE2DA:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AE2DE:  LDR.W           R0, [R10,#0x170]; this
3AE2E2:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AE2E6:  STR.W           R4, [R10,#0x170]
3AE2EA:  MOVS            R4, #0
3AE2EC:  STRH.W          R5, [R10,#0x16C]
3AE2F0:  ADD             R0, SP, #0xA8+var_A4; this
3AE2F2:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AE2F6:  STRB.W          R6, [R10,#0xAA]
3AE2FA:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3AE300); jumptable 003ADFF2 default case, cases 2,3,7
3AE2FC:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3AE2FE:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3AE300:  STR             R4, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver
3AE302:  ADD             SP, SP, #0x78 ; 'x'
3AE304:  VPOP            {D8-D9}
3AE308:  ADD             SP, SP, #4
3AE30A:  POP.W           {R8-R11}
3AE30E:  POP             {R4-R7,PC}
