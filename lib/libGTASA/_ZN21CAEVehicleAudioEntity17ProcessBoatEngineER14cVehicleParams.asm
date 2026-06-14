; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17ProcessBoatEngineER14cVehicleParams
; Address            : 0x3AEB7C - 0x3AEE30
; =========================================================

3AEB7C:  PUSH            {R4-R7,LR}
3AEB7E:  ADD             R7, SP, #0xC
3AEB80:  PUSH.W          {R8}
3AEB84:  VPUSH           {D8-D9}
3AEB88:  SUB             SP, SP, #8; float
3AEB8A:  MOV             R4, R0
3AEB8C:  MOV             R5, R1
3AEB8E:  LDRH.W          R0, [R4,#0xE0]
3AEB92:  MOVW            R6, #0xFFFF
3AEB96:  CMP             R0, R6
3AEB98:  BNE             loc_3AEBAE
3AEB9A:  LDRSH.W         R0, [R4,#0xDC]; this
3AEB9E:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AEBA2:  UXTH            R1, R0
3AEBA4:  CMP             R1, R6
3AEBA6:  STRH.W          R0, [R4,#0xE0]
3AEBAA:  BEQ.W           loc_3AEE24
3AEBAE:  LDR             R2, =(AEAudioHardware_ptr - 0x3AEBB8)
3AEBB0:  LDRH.W          R1, [R4,#0xDC]; unsigned __int16
3AEBB4:  ADD             R2, PC; AEAudioHardware_ptr
3AEBB6:  LDR             R3, [R2]; AEAudioHardware
3AEBB8:  SXTH            R2, R0; __int16
3AEBBA:  MOV             R0, R3; this
3AEBBC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AEBC0:  CBZ             R0, loc_3AEC10
3AEBC2:  LDR             R6, [R5,#0x10]
3AEBC4:  LDRB.W          R0, [R6,#0x42C]
3AEBC8:  LSLS            R0, R0, #0x1B
3AEBCA:  BPL             loc_3AEBD2
3AEBCC:  LDRB.W          R0, [R4,#0xA8]
3AEBD0:  CBZ             R0, loc_3AEC44
3AEBD2:  LDR.W           R0, [R4,#0xF8]; this
3AEBD6:  CBZ             R0, loc_3AEBEE
3AEBD8:  MOVS            R1, #4; unsigned __int16
3AEBDA:  MOVS            R2, #0; unsigned __int16
3AEBDC:  MOVS            R5, #0
3AEBDE:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AEBE2:  LDR.W           R0, [R4,#0xF8]; this
3AEBE6:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AEBEA:  STR.W           R5, [R4,#0xF8]
3AEBEE:  LDR.W           R0, [R4,#0x100]; this
3AEBF2:  CMP             R0, #0
3AEBF4:  BEQ.W           loc_3AEE24
3AEBF8:  MOVS            R1, #4; unsigned __int16
3AEBFA:  MOVS            R2, #0; unsigned __int16
3AEBFC:  MOVS            R5, #0
3AEBFE:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AEC02:  LDR.W           R0, [R4,#0x100]; this
3AEC06:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AEC0A:  STR.W           R5, [R4,#0x100]
3AEC0E:  B               loc_3AEE24
3AEC10:  LDRH.W          R1, [R4,#0xE0]
3AEC14:  MOVS            R2, #0
3AEC16:  LDRH.W          R0, [R4,#0xDC]
3AEC1A:  MOVT            R2, #0xFFF9
3AEC1E:  ADD.W           R1, R2, R1,LSL#16
3AEC22:  CMP.W           R1, #0x90000
3AEC26:  BHI             loc_3AEC38
3AEC28:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AEC30)
3AEC2A:  LSRS            R1, R1, #0xE
3AEC2C:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AEC2E:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AEC30:  LDRH            R1, [R2,R1]; __int16
3AEC32:  CMP             R1, R0
3AEC34:  BEQ.W           loc_3AEE24
3AEC38:  SXTH            R0, R0; this
3AEC3A:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AEC3E:  STRH.W          R0, [R4,#0xE0]
3AEC42:  B               loc_3AEE24
3AEC44:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3AEC4A)
3AEC46:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3AEC48:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3AEC4A:  LDR             R0, [R0]; this
3AEC4C:  CBZ             R0, loc_3AEC84
3AEC4E:  LDRB.W          R1, [R4,#0xA5]
3AEC52:  CBZ             R1, loc_3AEC84
3AEC54:  LDRB.W          R1, [R4,#0xA7]
3AEC58:  CBNZ            R1, loc_3AEC88
3AEC5A:  LDR.W           R1, [R0,#0x44C]
3AEC5E:  CMP             R1, #0x3F ; '?'
3AEC60:  BEQ             loc_3AEC88
3AEC62:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3AEC66:  CBZ             R0, loc_3AEC88
3AEC68:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3AEC6E)
3AEC6A:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3AEC6C:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3AEC6E:  LDR             R0, [R0]; this
3AEC70:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
3AEC74:  MOV             R8, R0
3AEC76:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3AEC7A:  STRH            R0, [R5,#0x20]
3AEC7C:  MOV             R0, R8; this
3AEC7E:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3AEC82:  B               loc_3AEC8C
3AEC84:  MOV             R1, R6
3AEC86:  B               loc_3AEC90
3AEC88:  MOVS            R0, #0
3AEC8A:  STRH            R0, [R5,#0x20]
3AEC8C:  LDR             R1, [R5,#0x10]
3AEC8E:  STRH            R0, [R5,#0x22]
3AEC90:  VMOV.F32        S0, #3.0
3AEC94:  ADD.W           R0, R6, #0x5B8
3AEC98:  VMOV.F32        S4, #1.0
3AEC9C:  VLDR            S8, =0.0
3AECA0:  VLDR            S2, [R0]
3AECA4:  LDR             R0, [R1,#0x14]
3AECA6:  ADR             R1, dword_3AEE40
3AECA8:  VMUL.F32        S6, S2, S0
3AECAC:  VCMPE.F32       S6, S4
3AECB0:  VMRS            APSR_nzcv, FPSCR
3AECB4:  VMOV.F32        S2, S6
3AECB8:  IT GT
3AECBA:  VMOVGT.F32      S2, S4
3AECBE:  VLDR            S10, [R0,#0x20]
3AECC2:  VCMPE.F32       S2, #0.0
3AECC6:  VLDR            S12, [R0,#0x24]
3AECCA:  VMRS            APSR_nzcv, FPSCR
3AECCE:  VMOV.F32        S2, S4
3AECD2:  VLDR            S14, [R0,#0x28]
3AECD6:  VMUL.F32        S12, S12, S8
3AECDA:  VMUL.F32        S10, S10, S8
3AECDE:  VCMPE.F32       S6, S4
3AECE2:  IT LT
3AECE4:  VMOVLT.F32      S2, S8
3AECE8:  LDRB.W          R0, [R6,#0x5C0]
3AECEC:  IT LT
3AECEE:  VMOVLT.F32      S6, S2
3AECF2:  VMRS            APSR_nzcv, FPSCR
3AECF6:  VADD.F32        S8, S10, S12
3AECFA:  VLDR            S12, =0.1
3AECFE:  VADD.F32        S8, S14, S8
3AED02:  VLDR            S14, =0.6
3AED06:  VSUB.F32        S8, S4, S8
3AED0A:  IT GT
3AED0C:  VMOVGT.F32      S6, S2
3AED10:  LSLS            R0, R0, #0x1E
3AED12:  IT PL
3AED14:  ADDPL           R1, #4
3AED16:  VMIN.F32        D4, D4, D2
3AED1A:  VLDR            S2, [R1]
3AED1E:  VMUL.F32        S4, S6, S0
3AED22:  VMUL.F32        S10, S2, S6
3AED26:  VMOV.F32        S2, #-3.0
3AED2A:  VMUL.F32        S6, S8, S12
3AED2E:  VADD.F32        S8, S10, S14
3AED32:  VLDR            S10, [R4,#0x234]
3AED36:  VADD.F32        S4, S4, S2
3AED3A:  VCMPE.F32       S10, #0.0
3AED3E:  VMRS            APSR_nzcv, FPSCR
3AED42:  VADD.F32        S8, S6, S8
3AED46:  ITT LT
3AED48:  VSTRLT          S8, [R4,#0x234]
3AED4C:  VMOVLT.F32      S10, S8
3AED50:  VLDR            S6, [R4,#0x230]
3AED54:  VCMPE.F32       S6, #0.0
3AED58:  VMRS            APSR_nzcv, FPSCR
3AED5C:  VCMPE.F32       S8, S10
3AED60:  ITT LT
3AED62:  VSTRLT          S4, [R4,#0x230]
3AED66:  VMOVLT.F32      S6, S4
3AED6A:  VMRS            APSR_nzcv, FPSCR
3AED6E:  BLE             loc_3AED7E
3AED70:  VLDR            S12, =0.02
3AED74:  VADD.F32        S10, S10, S12
3AED78:  VMIN.F32        D8, D4, D5
3AED7C:  B               loc_3AED8A
3AED7E:  VLDR            S12, =-0.02
3AED82:  VADD.F32        S10, S10, S12
3AED86:  VMAX.F32        D8, D4, D5
3AED8A:  VCMPE.F32       S4, S6
3AED8E:  VMRS            APSR_nzcv, FPSCR
3AED92:  BLE             loc_3AED9E
3AED94:  VADD.F32        S0, S6, S0
3AED98:  VMIN.F32        D9, D2, D0
3AED9C:  B               loc_3AEDA6
3AED9E:  VADD.F32        S0, S6, S2
3AEDA2:  VMAX.F32        D9, D2, D0
3AEDA6:  LDR             R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3AEDB0)
3AEDA8:  VMOV.F32        S0, #0.5
3AEDAC:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3AEDAE:  LDR             R1, [R0]; CWeather::UnderWaterness ...
3AEDB0:  LDRH.W          R0, [R4,#0xE0]
3AEDB4:  VLDR            S2, [R1]
3AEDB8:  VCMPE.F32       S2, S0
3AEDBC:  VMRS            APSR_nzcv, FPSCR
3AEDC0:  BGE             loc_3AEDE6
3AEDC2:  SXTH            R2, R0; __int16
3AEDC4:  MOV             R0, R4; this
3AEDC6:  MOVS            R1, #2; __int16
3AEDC8:  MOVS            R3, #0; __int16
3AEDCA:  VSTR            S16, [SP,#0x28+var_28]
3AEDCE:  VSTR            S18, [SP,#0x28+var_24]
3AEDD2:  BLX             j__ZN21CAEVehicleAudioEntity15UpdateBoatSoundEsssff; CAEVehicleAudioEntity::UpdateBoatSound(short,short,short,float,float)
3AEDD6:  MOVS            R0, #0
3AEDD8:  MOV.W           R1, #0x3F800000
3AEDDC:  MOVT            R0, #0xC2C8
3AEDE0:  STRD.W          R1, R0, [SP,#0x28+var_28]
3AEDE4:  B               loc_3AEE10
3AEDE6:  MOVS            R1, #0
3AEDE8:  MOV.W           R2, #0x3F800000
3AEDEC:  MOVT            R1, #0xC2C8
3AEDF0:  MOVS            R3, #0; __int16
3AEDF2:  STRD.W          R2, R1, [SP,#0x28+var_28]; float
3AEDF6:  SXTH            R2, R0; __int16
3AEDF8:  MOV             R0, R4; this
3AEDFA:  MOVS            R1, #2; __int16
3AEDFC:  BLX             j__ZN21CAEVehicleAudioEntity15UpdateBoatSoundEsssff; CAEVehicleAudioEntity::UpdateBoatSound(short,short,short,float,float)
3AEE00:  VMOV.F32        S0, #6.0
3AEE04:  VSTR            S16, [SP,#0x28+var_28]
3AEE08:  VADD.F32        S0, S18, S0
3AEE0C:  VSTR            S0, [SP,#0x28+var_24]
3AEE10:  MOV             R0, R4; this
3AEE12:  MOVS            R1, #3; __int16
3AEE14:  MOVS            R2, #0x13; __int16
3AEE16:  MOVS            R3, #0x1C; __int16
3AEE18:  BLX             j__ZN21CAEVehicleAudioEntity15UpdateBoatSoundEsssff; CAEVehicleAudioEntity::UpdateBoatSound(short,short,short,float,float)
3AEE1C:  VSTR            S18, [R4,#0x230]
3AEE20:  VSTR            S16, [R4,#0x234]
3AEE24:  ADD             SP, SP, #8
3AEE26:  VPOP            {D8-D9}
3AEE2A:  POP.W           {R8}
3AEE2E:  POP             {R4-R7,PC}
