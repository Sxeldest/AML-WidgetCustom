; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity23ProcessDummyTrainEngineER14cVehicleParams
; Address            : 0x3AF1C0 - 0x3AF41C
; =========================================================

3AF1C0:  PUSH            {R4-R7,LR}
3AF1C2:  ADD             R7, SP, #0xC
3AF1C4:  PUSH.W          {R8,R9,R11}
3AF1C8:  VPUSH           {D8-D13}
3AF1CC:  SUB             SP, SP, #8; float
3AF1CE:  MOV             R4, R0
3AF1D0:  MOVS            R0, #0; this
3AF1D2:  MOV             R6, R1
3AF1D4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3AF1D8:  MOV             R8, R0
3AF1DA:  LDRH.W          R0, [R4,#0xE0]
3AF1DE:  MOVW            R5, #0xFFFF
3AF1E2:  CMP             R0, R5
3AF1E4:  BNE             loc_3AF1FA
3AF1E6:  LDRSH.W         R0, [R4,#0xDC]; this
3AF1EA:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AF1EE:  UXTH            R1, R0
3AF1F0:  CMP             R1, R5
3AF1F2:  STRH.W          R0, [R4,#0xE0]
3AF1F6:  BEQ.W           loc_3AF410
3AF1FA:  LDR             R2, =(AEAudioHardware_ptr - 0x3AF204)
3AF1FC:  LDRH.W          R1, [R4,#0xDC]; unsigned __int16
3AF200:  ADD             R2, PC; AEAudioHardware_ptr
3AF202:  LDR             R3, [R2]; AEAudioHardware
3AF204:  SXTH            R2, R0; __int16
3AF206:  MOV             R0, R3; this
3AF208:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AF20C:  CBZ             R0, loc_3AF264
3AF20E:  VMOV.F32        S0, #11.0
3AF212:  VLDR            S16, =0.0
3AF216:  LDRH.W          R0, [R4,#0xDC]
3AF21A:  ADR             R5, dword_3AF448
3AF21C:  LDR.W           R9, [R6,#0x10]
3AF220:  VMOV.F32        S20, S16
3AF224:  CMP             R0, #0x85
3AF226:  ADR             R6, dword_3AF450
3AF228:  IT EQ
3AF22A:  ADDEQ           R5, #4
3AF22C:  IT EQ
3AF22E:  VMOVEQ.F32      S20, S0
3AF232:  LDRH.W          R1, [R9,#0x5CC]
3AF236:  CMP             R0, #0x85
3AF238:  IT EQ
3AF23A:  ADDEQ           R6, #4
3AF23C:  TST.W           R1, #8
3AF240:  BNE             loc_3AF298
3AF242:  LDR.W           R0, [R4,#0xF0]; this
3AF246:  CMP             R0, #0
3AF248:  BEQ.W           loc_3AF410
3AF24C:  MOVS            R1, #4; unsigned __int16
3AF24E:  MOVS            R2, #0; unsigned __int16
3AF250:  MOVS            R5, #0
3AF252:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AF256:  LDR.W           R0, [R4,#0xF0]; this
3AF25A:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AF25E:  STR.W           R5, [R4,#0xF0]
3AF262:  B               loc_3AF410
3AF264:  LDRH.W          R1, [R4,#0xE0]
3AF268:  MOVS            R2, #0
3AF26A:  LDRH.W          R0, [R4,#0xDC]
3AF26E:  MOVT            R2, #0xFFF9
3AF272:  ADD.W           R1, R2, R1,LSL#16
3AF276:  CMP.W           R1, #0x90000
3AF27A:  BHI             loc_3AF28C
3AF27C:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AF284)
3AF27E:  LSRS            R1, R1, #0xE
3AF280:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AF282:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AF284:  LDRH            R1, [R2,R1]; __int16
3AF286:  CMP             R1, R0
3AF288:  BEQ.W           loc_3AF410
3AF28C:  SXTH            R0, R0; this
3AF28E:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AF292:  STRH.W          R0, [R4,#0xE0]
3AF296:  B               loc_3AF410
3AF298:  LDR.W           R2, [R9,#0x14]
3AF29C:  VLDR            D17, =-0.3
3AF2A0:  VLDR            S0, [R2,#0x10]
3AF2A4:  VLDR            S2, [R2,#0x14]
3AF2A8:  VMUL.F32        S0, S0, S16
3AF2AC:  VLDR            S4, [R2,#0x18]
3AF2B0:  VMUL.F32        S2, S2, S16
3AF2B4:  ADR             R2, dword_3AF430
3AF2B6:  VADD.F32        S0, S0, S2
3AF2BA:  VADD.F32        S0, S4, S0
3AF2BE:  VCVT.F64.F32    D16, S0
3AF2C2:  VCMPE.F64       D16, D17
3AF2C6:  VMRS            APSR_nzcv, FPSCR
3AF2CA:  IT GT
3AF2CC:  VMOVGT.F64      D17, D16
3AF2D0:  VLDR            D16, =0.3
3AF2D4:  VCMPE.F64       D17, D16
3AF2D8:  VMRS            APSR_nzcv, FPSCR
3AF2DC:  IT LT
3AF2DE:  VMOVLT.F64      D16, D17
3AF2E2:  CMP             R0, #0x85
3AF2E4:  IT EQ
3AF2E6:  ADDEQ           R2, #8
3AF2E8:  VLDR            D17, [R2]
3AF2EC:  LSLS            R2, R1, #0x17
3AF2EE:  BMI             loc_3AF34A
3AF2F0:  ADD.W           R2, R9, #0x5B8
3AF2F4:  LSLS            R1, R1, #0x19
3AF2F6:  VLDR            S2, =0.0
3AF2FA:  VLDR            S26, [R2]
3AF2FE:  VNEG.F32        S0, S26
3AF302:  IT PL
3AF304:  VMOVPL.F32      S26, S0
3AF308:  VMOV.F32        S0, #1.0
3AF30C:  VABS.F32        S18, S26
3AF310:  VCMPE.F32       S18, S0
3AF314:  VMRS            APSR_nzcv, FPSCR
3AF318:  VCMPE.F32       S18, #0.0
3AF31C:  IT GT
3AF31E:  VMOVGT.F32      S2, S0
3AF322:  VMRS            APSR_nzcv, FPSCR
3AF326:  VCMPE.F32       S18, S0
3AF32A:  IT LT
3AF32C:  VMOVLT.F32      S0, S2
3AF330:  VMRS            APSR_nzcv, FPSCR
3AF334:  VCMPE.F32       S18, #0.0
3AF338:  IT GT
3AF33A:  VMOVGT.F32      S18, S0
3AF33E:  VMRS            APSR_nzcv, FPSCR
3AF342:  IT LT
3AF344:  VMOVLT.F32      S18, S0
3AF348:  B               loc_3AF35A
3AF34A:  ADR             R2, dword_3AF458
3AF34C:  LSLS            R1, R1, #0x19; float
3AF34E:  IT PL
3AF350:  ADDPL           R2, #4
3AF352:  VMOV.F32        S18, S16
3AF356:  VLDR            S26, [R2]
3AF35A:  VMUL.F64        D12, D17, D16
3AF35E:  CMP             R0, #0x85
3AF360:  BNE             loc_3AF37A
3AF362:  VMOV            R0, S18; this
3AF366:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AF36A:  VMOV.F32        S0, #20.0
3AF36E:  VMOV            S2, R0
3AF372:  VMUL.F32        S0, S2, S0
3AF376:  VADD.F32        S16, S20, S0
3AF37A:  VCVT.F32.F64    S24, D12
3AF37E:  LDRB.W          R0, [R9,#0x3A]
3AF382:  CMP             R0, #7
3AF384:  VLDR            S22, [R5]
3AF388:  VLDR            S20, [R6]
3AF38C:  BHI             loc_3AF3E6
3AF38E:  VABS.F32        S0, S26
3AF392:  VLDR            S2, =0.001
3AF396:  VCMPE.F32       S0, S2
3AF39A:  VMRS            APSR_nzcv, FPSCR
3AF39E:  BGE             loc_3AF3B2
3AF3A0:  MOV             R0, R8; this
3AF3A2:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3AF3A6:  MOV             R6, R0
3AF3A8:  MOV             R0, R8; this
3AF3AA:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3AF3AE:  SUBS            R0, R6, R0
3AF3B0:  B               loc_3AF3CA
3AF3B2:  VCMPE.F32       S26, #0.0
3AF3B6:  MOV             R0, R8; this
3AF3B8:  VMRS            APSR_nzcv, FPSCR
3AF3BC:  BLE             loc_3AF3C4
3AF3BE:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3AF3C2:  B               loc_3AF3CA
3AF3C4:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3AF3C8:  NEGS            R0, R0
3AF3CA:  VMOV            S0, R0
3AF3CE:  VLDR            S2, =255.0
3AF3D2:  VCVT.F32.S32    S0, S0
3AF3D6:  VDIV.F32        S0, S0, S2
3AF3DA:  VMOV.F32        S2, #3.0
3AF3DE:  VMUL.F32        S0, S0, S2
3AF3E2:  VADD.F32        S16, S16, S0
3AF3E6:  VMOV.F32        S0, #1.0
3AF3EA:  LDRSH.W         R2, [R4,#0xE0]; __int16
3AF3EE:  VMUL.F32        S2, S22, S18
3AF3F2:  MOV             R0, R4; this
3AF3F4:  MOVS            R1, #1; __int16
3AF3F6:  MOVS            R3, #0; __int16
3AF3F8:  VADD.F32        S0, S24, S0
3AF3FC:  VADD.F32        S2, S20, S2
3AF400:  VMUL.F32        S0, S0, S2
3AF404:  VSTR            S0, [SP,#0x50+var_50]
3AF408:  VSTR            S16, [SP,#0x50+var_4C]
3AF40C:  BLX             j__ZN21CAEVehicleAudioEntity16UpdateTrainSoundEsssff; CAEVehicleAudioEntity::UpdateTrainSound(short,short,short,float,float)
3AF410:  ADD             SP, SP, #8
3AF412:  VPOP            {D8-D13}
3AF416:  POP.W           {R8,R9,R11}
3AF41A:  POP             {R4-R7,PC}
