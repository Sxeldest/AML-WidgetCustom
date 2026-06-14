; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity18JustWreckedVehicleEv
; Address            : 0x3AD010 - 0x3AD2CE
; =========================================================

3AD010:  PUSH            {R4-R7,LR}
3AD012:  ADD             R7, SP, #0xC
3AD014:  PUSH.W          {R8-R11}
3AD018:  SUB             SP, SP, #4
3AD01A:  VPUSH           {D8-D9}
3AD01E:  SUB             SP, SP, #0x78
3AD020:  MOV             R11, R0
3AD022:  LDRB.W          R0, [R11,#0xA5]
3AD026:  CBZ             R0, loc_3AD060
3AD028:  LDRSB.W         R0, [R11,#0x9B]
3AD02C:  ADD.W           R1, R11, #0x80
3AD030:  CMP             R0, #0
3AD032:  IT NE
3AD034:  CMPNE           R0, #2
3AD036:  BEQ             loc_3AD042
3AD038:  CMP             R0, #3
3AD03A:  BNE             loc_3AD04E
3AD03C:  LDR             R0, =(AudioEngine_ptr - 0x3AD042)
3AD03E:  ADD             R0, PC; AudioEngine_ptr
3AD040:  B               loc_3AD046
3AD042:  LDR             R0, =(AudioEngine_ptr - 0x3AD048)
3AD044:  ADD             R0, PC; AudioEngine_ptr
3AD046:  LDR             R0, [R0]; AudioEngine
3AD048:  MOVS            R2, #0
3AD04A:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
3AD04E:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3AD058)
3AD050:  MOVS            R2, #0
3AD052:  LDR             R1, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3AD05A)
3AD054:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3AD056:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3AD058:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3AD05A:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3AD05C:  STR             R2, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3AD05E:  STR             R2, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3AD060:  LDRSB.W         R0, [R11,#0x80]
3AD064:  MOVW            R8, #0xFFFF
3AD068:  CMP             R0, #9
3AD06A:  BHI.W           loc_3AD1C6
3AD06E:  MOVS            R1, #1
3AD070:  LSL.W           R0, R1, R0
3AD074:  TST.W           R0, #0x378
3AD078:  BEQ             loc_3AD11E
3AD07A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AD08C)
3AD07C:  VMOV.F32        S18, #1.0
3AD080:  VLDR            S16, =100.0
3AD084:  MOV.W           R9, #0
3AD088:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AD08A:  MOVS            R6, #0
3AD08C:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3AD090:  B               loc_3AD098
3AD092:  STRH.W          R0, [R11,#0x14E]
3AD096:  MOVS            R6, #5
3AD098:  ADD.W           R4, R11, R6,LSL#3
3AD09C:  MOVW            R5, #0xFFFF
3AD0A0:  LDR.W           R0, [R4,#0xE8]!; this
3AD0A4:  CBZ             R0, loc_3AD0BC
3AD0A6:  MOVS            R1, #4; unsigned __int16
3AD0A8:  MOVS            R2, #0; unsigned __int16
3AD0AA:  LDRH.W          R5, [R0,#0x70]
3AD0AE:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD0B2:  LDR             R0, [R4]; this
3AD0B4:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD0B8:  STR.W           R9, [R4]
3AD0BC:  CMP             R6, #4
3AD0BE:  BNE             loc_3AD112
3AD0C0:  LDRH.W          R0, [R11,#0x148]
3AD0C4:  STRH.W          R0, [R11,#0x154]
3AD0C8:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3AD0CC:  STR.W           R1, [R11,#0x150]
3AD0D0:  SXTH            R1, R5
3AD0D2:  CMP             R1, #1
3AD0D4:  STRH.W          R8, [R11,#0x14A]
3AD0D8:  STRH.W          R8, [R11,#0x148]
3AD0DC:  BLT             loc_3AD11A
3AD0DE:  SXTH            R0, R0
3AD0E0:  VMOV            S0, R1
3AD0E4:  VMOV            S2, R0
3AD0E8:  VCVT.F32.S32    S0, S0
3AD0EC:  VCVT.F32.S32    S2, S2
3AD0F0:  VDIV.F32        S0, S2, S0
3AD0F4:  VMIN.F32        D0, D0, D9
3AD0F8:  VCMPE.F32       S0, #0.0
3AD0FC:  VMRS            APSR_nzcv, FPSCR
3AD100:  VMUL.F32        S2, S0, S16
3AD104:  VCVT.S32.F32    S2, S2
3AD108:  VMOV            R0, S2
3AD10C:  IT LT
3AD10E:  MOVLT           R0, #0
3AD110:  B               loc_3AD092
3AD112:  ADDS            R6, #1
3AD114:  CMP             R6, #0xC
3AD116:  BNE             loc_3AD098
3AD118:  B               loc_3AD1C6
3AD11A:  MOVS            R0, #0
3AD11C:  B               loc_3AD092
3AD11E:  LSLS            R0, R0, #0x1D
3AD120:  BEQ             loc_3AD1C6
3AD122:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AD134)
3AD124:  VMOV.F32        S18, #1.0
3AD128:  VLDR            S16, =100.0
3AD12C:  MOV.W           R9, #0
3AD130:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AD132:  MOVS            R6, #0
3AD134:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3AD138:  B               loc_3AD140
3AD13A:  STRH.W          R0, [R11,#0x14E]
3AD13E:  MOVS            R6, #5
3AD140:  ADD.W           R4, R11, R6,LSL#3
3AD144:  MOVW            R5, #0xFFFF
3AD148:  LDR.W           R0, [R4,#0xE8]!; this
3AD14C:  CBZ             R0, loc_3AD164
3AD14E:  MOVS            R1, #4; unsigned __int16
3AD150:  MOVS            R2, #0; unsigned __int16
3AD152:  LDRH.W          R5, [R0,#0x70]
3AD156:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD15A:  LDR             R0, [R4]; this
3AD15C:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD160:  STR.W           R9, [R4]
3AD164:  CMP             R6, #4
3AD166:  BNE             loc_3AD1BA
3AD168:  LDRH.W          R0, [R11,#0x148]
3AD16C:  STRH.W          R0, [R11,#0x154]
3AD170:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3AD174:  STR.W           R1, [R11,#0x150]
3AD178:  SXTH            R1, R5
3AD17A:  CMP             R1, #1
3AD17C:  STRH.W          R8, [R11,#0x14A]
3AD180:  STRH.W          R8, [R11,#0x148]
3AD184:  BLT             loc_3AD1C2
3AD186:  SXTH            R0, R0
3AD188:  VMOV            S0, R1
3AD18C:  VMOV            S2, R0
3AD190:  VCVT.F32.S32    S0, S0
3AD194:  VCVT.F32.S32    S2, S2
3AD198:  VDIV.F32        S0, S2, S0
3AD19C:  VMIN.F32        D0, D0, D9
3AD1A0:  VCMPE.F32       S0, #0.0
3AD1A4:  VMRS            APSR_nzcv, FPSCR
3AD1A8:  VMUL.F32        S2, S0, S16
3AD1AC:  VCVT.S32.F32    S2, S2
3AD1B0:  VMOV            R0, S2
3AD1B4:  IT LT
3AD1B6:  MOVLT           R0, #0
3AD1B8:  B               loc_3AD13A
3AD1BA:  ADDS            R6, #1
3AD1BC:  CMP             R6, #0xC
3AD1BE:  BNE             loc_3AD140
3AD1C0:  B               loc_3AD1C6
3AD1C2:  MOVS            R0, #0
3AD1C4:  B               loc_3AD13A
3AD1C6:  MOVS            R0, #0
3AD1C8:  STR             R0, [SP,#0xA8+var_9C]
3AD1CA:  LDRH.W          R0, [R11,#0x156]
3AD1CE:  CMP             R0, R8
3AD1D0:  BEQ             loc_3AD1E6
3AD1D2:  LDRH.W          R0, [R11,#0x20C]
3AD1D6:  CMP             R0, #0
3AD1D8:  ITT NE
3AD1DA:  ADDNE.W         R0, R11, #0x184; this
3AD1DE:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3AD1E2:  STRH.W          R8, [R11,#0x156]
3AD1E6:  ADD             R0, SP, #0xA8+var_A4; this
3AD1E8:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AD1EC:  LDR.W           R0, [R11,#0x158]; this
3AD1F0:  CBZ             R0, loc_3AD20C
3AD1F2:  MOVS            R1, #4; unsigned __int16
3AD1F4:  MOVS            R2, #0; unsigned __int16
3AD1F6:  MOVS            R4, #0
3AD1F8:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD1FC:  LDR.W           R0, [R11,#0x158]; this
3AD200:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD204:  STRH.W          R8, [R11,#0x156]
3AD208:  STR.W           R4, [R11,#0x158]
3AD20C:  LDR.W           R0, [R11,#0x160]; this
3AD210:  CBZ             R0, loc_3AD22C
3AD212:  MOVS            R1, #4; unsigned __int16
3AD214:  MOVS            R2, #0; unsigned __int16
3AD216:  MOVS            R4, #0
3AD218:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD21C:  LDR.W           R0, [R11,#0x160]; this
3AD220:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD224:  STRH.W          R8, [R11,#0x15C]
3AD228:  STR.W           R4, [R11,#0x160]
3AD22C:  LDR.W           R0, [R11,#0x168]; this
3AD230:  CBZ             R0, loc_3AD24C
3AD232:  MOVS            R1, #4; unsigned __int16
3AD234:  MOVS            R2, #0; unsigned __int16
3AD236:  MOVS            R4, #0
3AD238:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD23C:  LDR.W           R0, [R11,#0x168]; this
3AD240:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD244:  STRH.W          R8, [R11,#0x164]
3AD248:  STR.W           R4, [R11,#0x168]
3AD24C:  LDR.W           R0, [R11,#0x170]; this
3AD250:  CBZ             R0, loc_3AD26C
3AD252:  MOVS            R1, #4; unsigned __int16
3AD254:  MOVS            R2, #0; unsigned __int16
3AD256:  MOVS            R4, #0
3AD258:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD25C:  LDR.W           R0, [R11,#0x170]; this
3AD260:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD264:  STRH.W          R8, [R11,#0x16C]
3AD268:  STR.W           R4, [R11,#0x170]
3AD26C:  LDR.W           R0, [R11,#0x178]; this
3AD270:  CBZ             R0, loc_3AD288
3AD272:  MOVS            R1, #4; unsigned __int16
3AD274:  MOVS            R2, #0; unsigned __int16
3AD276:  MOVS            R4, #0
3AD278:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD27C:  LDR.W           R0, [R11,#0x178]; this
3AD280:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD284:  STR.W           R4, [R11,#0x178]
3AD288:  LDR.W           R0, [R11,#0x17C]; this
3AD28C:  CBZ             R0, loc_3AD2A4
3AD28E:  MOVS            R1, #4; unsigned __int16
3AD290:  MOVS            R2, #0; unsigned __int16
3AD292:  MOVS            R4, #0
3AD294:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD298:  LDR.W           R0, [R11,#0x17C]; this
3AD29C:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD2A0:  STR.W           R4, [R11,#0x17C]
3AD2A4:  LDR.W           R0, [R11,#0x180]; this
3AD2A8:  CBZ             R0, loc_3AD2C0
3AD2AA:  MOVS            R1, #4; unsigned __int16
3AD2AC:  MOVS            R2, #0; unsigned __int16
3AD2AE:  MOVS            R4, #0
3AD2B0:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD2B4:  LDR.W           R0, [R11,#0x180]; this
3AD2B8:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD2BC:  STR.W           R4, [R11,#0x180]
3AD2C0:  ADD             SP, SP, #0x78 ; 'x'
3AD2C2:  VPOP            {D8-D9}
3AD2C6:  ADD             SP, SP, #4
3AD2C8:  POP.W           {R8-R11}
3AD2CC:  POP             {R4-R7,PC}
