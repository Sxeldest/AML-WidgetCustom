; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17ProcessDummyRCCarER14cVehicleParams
; Address            : 0x3B88B8 - 0x3B8A4A
; =========================================================

3B88B8:  PUSH            {R4-R7,LR}
3B88BA:  ADD             R7, SP, #0xC
3B88BC:  PUSH.W          {R8-R11}
3B88C0:  SUB             SP, SP, #4
3B88C2:  VPUSH           {D8-D9}
3B88C6:  SUB             SP, SP, #0x10
3B88C8:  MOV             R11, R0
3B88CA:  MOV             R5, R1
3B88CC:  LDRH.W          R0, [R11,#0xE0]
3B88D0:  MOVW            R9, #0xFFFF
3B88D4:  CMP             R0, R9
3B88D6:  BNE             loc_3B88EC
3B88D8:  LDRSH.W         R0, [R11,#0xDC]; this
3B88DC:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3B88E0:  UXTH            R1, R0
3B88E2:  CMP             R1, R9
3B88E4:  STRH.W          R0, [R11,#0xE0]
3B88E8:  BEQ.W           loc_3B8A3C
3B88EC:  LDR             R2, =(AEAudioHardware_ptr - 0x3B88F6)
3B88EE:  LDRH.W          R1, [R11,#0xDC]; unsigned __int16
3B88F2:  ADD             R2, PC; AEAudioHardware_ptr
3B88F4:  LDR             R3, [R2]; AEAudioHardware
3B88F6:  SXTH            R2, R0; __int16
3B88F8:  MOV             R0, R3; this
3B88FA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B88FE:  CMP             R0, #0
3B8900:  BEQ             loc_3B89AE
3B8902:  LDRB.W          R0, [R11,#0xA8]
3B8906:  CMP             R0, #0
3B8908:  BEQ             loc_3B89E6
3B890A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B891C)
3B890C:  VMOV.F32        S18, #1.0
3B8910:  VLDR            S16, =100.0
3B8914:  MOV.W           R8, #0
3B8918:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B891A:  MOVS            R6, #0
3B891C:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3B8920:  B               loc_3B8928
3B8922:  STRH.W          R0, [R11,#0x14E]
3B8926:  MOVS            R6, #5
3B8928:  ADD.W           R4, R11, R6,LSL#3
3B892C:  MOVW            R5, #0xFFFF
3B8930:  LDR.W           R0, [R4,#0xE8]!; this
3B8934:  CBZ             R0, loc_3B894C
3B8936:  MOVS            R1, #4; unsigned __int16
3B8938:  MOVS            R2, #0; unsigned __int16
3B893A:  LDRH.W          R5, [R0,#0x70]
3B893E:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B8942:  LDR             R0, [R4]; this
3B8944:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B8948:  STR.W           R8, [R4]
3B894C:  CMP             R6, #4
3B894E:  BNE             loc_3B89A2
3B8950:  LDRH.W          R0, [R11,#0x148]
3B8954:  STRH.W          R0, [R11,#0x154]
3B8958:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3B895C:  STR.W           R1, [R11,#0x150]
3B8960:  SXTH            R1, R5
3B8962:  CMP             R1, #1
3B8964:  STRH.W          R9, [R11,#0x14A]
3B8968:  STRH.W          R9, [R11,#0x148]
3B896C:  BLT             loc_3B89AA
3B896E:  SXTH            R0, R0
3B8970:  VMOV            S0, R1
3B8974:  VMOV            S2, R0
3B8978:  VCVT.F32.S32    S0, S0
3B897C:  VCVT.F32.S32    S2, S2
3B8980:  VDIV.F32        S0, S2, S0
3B8984:  VMIN.F32        D0, D0, D9
3B8988:  VCMPE.F32       S0, #0.0
3B898C:  VMRS            APSR_nzcv, FPSCR
3B8990:  VMUL.F32        S2, S0, S16
3B8994:  VCVT.S32.F32    S2, S2
3B8998:  VMOV            R0, S2
3B899C:  IT LT
3B899E:  MOVLT           R0, #0
3B89A0:  B               loc_3B8922
3B89A2:  ADDS            R6, #1
3B89A4:  CMP             R6, #0xC
3B89A6:  BNE             loc_3B8928
3B89A8:  B               loc_3B8A3C
3B89AA:  MOVS            R0, #0
3B89AC:  B               loc_3B8922
3B89AE:  LDRH.W          R1, [R11,#0xE0]
3B89B2:  MOVS            R2, #0
3B89B4:  LDRH.W          R0, [R11,#0xDC]
3B89B8:  MOVT            R2, #0xFFF9
3B89BC:  ADD.W           R1, R2, R1,LSL#16
3B89C0:  CMP.W           R1, #0x90000
3B89C4:  BHI             loc_3B89D4
3B89C6:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3B89CE)
3B89C8:  LSRS            R1, R1, #0xE
3B89CA:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3B89CC:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3B89CE:  LDRH            R1, [R2,R1]; __int16
3B89D0:  CMP             R1, R0
3B89D2:  BEQ             loc_3B8A3C
3B89D4:  SXTH            R0, R0; this
3B89D6:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3B89DA:  STRH.W          R0, [R11,#0xE0]
3B89DE:  MOVS            R0, #0
3B89E0:  STRB.W          R0, [R11,#0xA9]
3B89E4:  B               loc_3B8A3C
3B89E6:  LDR             R0, [R5,#0x14]
3B89E8:  MOVS            R1, #4; float
3B89EA:  VLDR            S0, [R5,#0x1C]
3B89EE:  LDR             R2, =(unk_6A9D5C - 0x3B89F8)
3B89F0:  VLDR            S2, [R0,#0x58]
3B89F4:  ADD             R2, PC; unk_6A9D5C ; __int16
3B89F6:  VDIV.F32        S0, S0, S2
3B89FA:  VMOV.F32        S2, #1.0
3B89FE:  VABS.F32        S0, S0
3B8A02:  VMIN.F32        D0, D0, D1
3B8A06:  VMOV            R5, S0
3B8A0A:  MOV             R0, R5; this
3B8A0C:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B8A10:  LDR             R2, =(unk_6A9D7C - 0x3B8A1C)
3B8A12:  MOV             R6, R0
3B8A14:  MOV             R0, R5; this
3B8A16:  MOVS            R1, #4; float
3B8A18:  ADD             R2, PC; unk_6A9D7C ; __int16
3B8A1A:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B8A1E:  LDRSH.W         R3, [R11,#0xDC]; __int16
3B8A22:  MOV.W           R1, #0x3F800000
3B8A26:  LDRSH.W         R2, [R11,#0xE0]; __int16
3B8A2A:  MOVS            R5, #0
3B8A2C:  STRD.W          R5, R0, [SP,#0x40+var_40]; __int16
3B8A30:  MOV             R0, R11; this
3B8A32:  STRD.W          R6, R1, [SP,#0x40+var_38]; float
3B8A36:  MOVS            R1, #2; __int16
3B8A38:  BLX             j__ZN21CAEVehicleAudioEntity25UpdateGenericVehicleSoundEssssfff; CAEVehicleAudioEntity::UpdateGenericVehicleSound(short,short,short,short,float,float,float)
3B8A3C:  ADD             SP, SP, #0x10
3B8A3E:  VPOP            {D8-D9}
3B8A42:  ADD             SP, SP, #4
3B8A44:  POP.W           {R8-R11}
3B8A48:  POP             {R4-R7,PC}
