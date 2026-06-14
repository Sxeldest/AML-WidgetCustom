; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity22ProcessTrainTrackSoundER14cVehicleParams
; Address            : 0x3AF024 - 0x3AF19E
; =========================================================

3AF024:  PUSH            {R4-R7,LR}
3AF026:  ADD             R7, SP, #0xC
3AF028:  PUSH.W          {R11}
3AF02C:  VPUSH           {D8-D9}
3AF030:  SUB             SP, SP, #8; float
3AF032:  MOV             R4, R0
3AF034:  MOV             R5, R1
3AF036:  LDRH.W          R0, [R4,#0xE0]
3AF03A:  MOVW            R6, #0xFFFF
3AF03E:  CMP             R0, R6
3AF040:  BNE             loc_3AF056
3AF042:  LDRSH.W         R0, [R4,#0xDC]; this
3AF046:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AF04A:  UXTH            R1, R0
3AF04C:  CMP             R1, R6
3AF04E:  STRH.W          R0, [R4,#0xE0]
3AF052:  BEQ.W           loc_3AF192
3AF056:  LDR             R2, =(AEAudioHardware_ptr - 0x3AF060)
3AF058:  LDRH.W          R1, [R4,#0xDC]; unsigned __int16
3AF05C:  ADD             R2, PC; AEAudioHardware_ptr
3AF05E:  LDR             R3, [R2]; AEAudioHardware
3AF060:  SXTH            R2, R0; __int16
3AF062:  MOV             R0, R3; this
3AF064:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AF068:  CBZ             R0, loc_3AF0B6
3AF06A:  VMOV.F32        S0, #10.0
3AF06E:  LDRH.W          R0, [R4,#0xDC]
3AF072:  LDR             R5, [R5,#0x10]
3AF074:  VMOV.F32        S16, #6.0
3AF078:  CMP             R0, #0x85
3AF07A:  IT EQ
3AF07C:  VMOVEQ.F32      S16, S0
3AF080:  LDRB.W          R0, [R5,#0x5CD]
3AF084:  LSLS            R0, R0, #0x1F
3AF086:  BNE             loc_3AF0E8
3AF088:  ADD.W           R0, R5, #0x5B8
3AF08C:  VLDR            S0, [R0]
3AF090:  VABS.F32        S2, S0
3AF094:  VLDR            S0, =-100.0
3AF098:  VCMPE.F32       S2, #0.0
3AF09C:  VMRS            APSR_nzcv, FPSCR
3AF0A0:  BGE             loc_3AF0F8
3AF0A2:  VMOV.F32        S4, #1.0
3AF0A6:  VCMPE.F32       S2, S4
3AF0AA:  VMRS            APSR_nzcv, FPSCR
3AF0AE:  BGT             loc_3AF0F8
3AF0B0:  VLDR            S2, =0.0
3AF0B4:  B               loc_3AF134
3AF0B6:  LDRH.W          R1, [R4,#0xE0]
3AF0BA:  MOVS            R2, #0
3AF0BC:  LDRH.W          R0, [R4,#0xDC]
3AF0C0:  MOVT            R2, #0xFFF9
3AF0C4:  ADD.W           R1, R2, R1,LSL#16
3AF0C8:  CMP.W           R1, #0x90000
3AF0CC:  BHI             loc_3AF0DC
3AF0CE:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AF0D6)
3AF0D0:  LSRS            R1, R1, #0xE
3AF0D2:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AF0D4:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AF0D6:  LDRH            R1, [R2,R1]; __int16
3AF0D8:  CMP             R1, R0
3AF0DA:  BEQ             loc_3AF192
3AF0DC:  SXTH            R0, R0; this
3AF0DE:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AF0E2:  STRH.W          R0, [R4,#0xE0]
3AF0E6:  B               loc_3AF192
3AF0E8:  VLDR            S2, =0.0
3AF0EC:  CMP             R5, #0
3AF0EE:  VLDR            S0, =-100.0
3AF0F2:  BNE             loc_3AF134
3AF0F4:  MOVS            R0, #0
3AF0F6:  B               loc_3AF140
3AF0F8:  VMOV.F32        S18, #1.0
3AF0FC:  VCMPE.F32       S2, S18
3AF100:  VMRS            APSR_nzcv, FPSCR
3AF104:  BGT             loc_3AF118
3AF106:  VMOV.F32        S18, S2
3AF10A:  VLDR            S4, =0.00001
3AF10E:  VCMPE.F32       S2, S4
3AF112:  VMRS            APSR_nzcv, FPSCR
3AF116:  BLT             loc_3AF134
3AF118:  VMOV            R0, S18; this
3AF11C:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AF120:  VMOV.F32        S0, #20.0
3AF124:  VMOV            S2, R0
3AF128:  VMUL.F32        S0, S2, S0
3AF12C:  VMOV.F32        S2, S18
3AF130:  VADD.F32        S0, S16, S0
3AF134:  MOVS            R0, #0
3AF136:  LDR.W           R5, [R5,#0x5E4]
3AF13A:  ADDS            R0, #1
3AF13C:  CMP             R5, #0
3AF13E:  BNE             loc_3AF136
3AF140:  MOVW            R1, #0x6667
3AF144:  VLDR            S4, =0.4
3AF148:  SXTH            R0, R0
3AF14A:  MOVT            R1, #0x6666
3AF14E:  SMMUL.W         R1, R0, R1
3AF152:  VMUL.F32        S2, S2, S4
3AF156:  LDR             R2, =(gfCarriageFrequencyVariations_ptr - 0x3AF160)
3AF158:  VLDR            S4, =0.8
3AF15C:  ADD             R2, PC; gfCarriageFrequencyVariations_ptr
3AF15E:  LDR             R2, [R2]; gfCarriageFrequencyVariations
3AF160:  LSRS            R3, R1, #1
3AF162:  ADD.W           R1, R3, R1,LSR#31
3AF166:  VADD.F32        S2, S2, S4
3AF16A:  MOVS            R3, #2; __int16
3AF16C:  ADD.W           R1, R1, R1,LSL#2
3AF170:  SUBS            R0, R0, R1
3AF172:  MOVS            R1, #2; __int16
3AF174:  ADD.W           R0, R2, R0,LSL#2
3AF178:  LDRSH.W         R2, [R4,#0xE0]; __int16
3AF17C:  VLDR            S4, [R0]
3AF180:  MOV             R0, R4; this
3AF182:  VMUL.F32        S2, S2, S4
3AF186:  VSTR            S2, [SP,#0x28+var_28]
3AF18A:  VSTR            S0, [SP,#0x28+var_24]
3AF18E:  BLX             j__ZN21CAEVehicleAudioEntity16UpdateTrainSoundEsssff; CAEVehicleAudioEntity::UpdateTrainSound(short,short,short,float,float)
3AF192:  ADD             SP, SP, #8
3AF194:  VPOP            {D8-D9}
3AF198:  POP.W           {R11}
3AF19C:  POP             {R4-R7,PC}
