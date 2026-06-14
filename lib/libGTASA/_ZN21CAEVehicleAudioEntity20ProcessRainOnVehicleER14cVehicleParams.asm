; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams
; Address            : 0x3AEE60 - 0x3AEF28
; =========================================================

3AEE60:  PUSH            {R4-R7,LR}
3AEE62:  ADD             R7, SP, #0xC
3AEE64:  PUSH.W          {R11}
3AEE68:  VPUSH           {D8}
3AEE6C:  SUB             SP, SP, #0x30
3AEE6E:  MOV             R4, R0
3AEE70:  LDR             R0, =(AEAudioHardware_ptr - 0x3AEE7A)
3AEE72:  MOVS            R1, #0x69 ; 'i'; unsigned __int16
3AEE74:  MOVS            R2, #6; __int16
3AEE76:  ADD             R0, PC; AEAudioHardware_ptr
3AEE78:  LDR             R0, [R0]; AEAudioHardware ; this
3AEE7A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AEE7E:  CMP             R0, #0
3AEE80:  BEQ             loc_3AEF1C
3AEE82:  LDR             R0, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3AEE8C)
3AEE84:  VLDR            S0, =-100.0
3AEE88:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3AEE8A:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sfRainVolume ...
3AEE8C:  VLDR            S16, [R0]
3AEE90:  VCMPE.F32       S16, S0
3AEE94:  VMRS            APSR_nzcv, FPSCR
3AEE98:  BLE             loc_3AEF1C
3AEE9A:  LDRH.W          R0, [R4,#0xB2]
3AEE9E:  ADDS            R0, #1
3AEEA0:  STRH.W          R0, [R4,#0xB2]
3AEEA4:  SXTH            R0, R0
3AEEA6:  CMP             R0, #3
3AEEA8:  BLT             loc_3AEF1C
3AEEAA:  MOVS            R5, #0
3AEEAC:  MOVS            R0, #(byte_9+3); this
3AEEAE:  MOVS            R1, #0xF; int
3AEEB0:  STRH.W          R5, [R4,#0xB2]
3AEEB4:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AEEB8:  LDR             R1, [R4,#4]
3AEEBA:  MOV.W           R6, #0x3F800000
3AEEBE:  LDR             R2, [R1,#0x14]
3AEEC0:  ADD.W           R3, R2, #0x30 ; '0'
3AEEC4:  CMP             R2, #0
3AEEC6:  IT EQ
3AEEC8:  ADDEQ           R3, R1, #4
3AEECA:  LDM             R3, {R1-R3}
3AEECC:  STRD.W          R6, R6, [SP,#0x48+var_38]
3AEED0:  STRD.W          R6, R5, [SP,#0x48+var_30]
3AEED4:  STRD.W          R5, R5, [SP,#0x48+var_28]
3AEED8:  STR             R5, [SP,#0x48+var_20]
3AEEDA:  ADD.W           R5, R4, #8
3AEEDE:  VSTR            S16, [SP,#0x48+var_3C]
3AEEE2:  STMEA.W         SP, {R1-R3}
3AEEE6:  SXTH            R2, R0
3AEEE8:  MOV             R0, R5
3AEEEA:  MOVS            R1, #6
3AEEEC:  MOV             R3, R4
3AEEEE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AEEF2:  LDR             R0, =(AESoundManager_ptr - 0x3AEF02)
3AEEF4:  MOV             R1, #0x3DCCCCCD
3AEEFC:  STR             R6, [R4,#0x20]
3AEEFE:  ADD             R0, PC; AESoundManager_ptr
3AEF00:  STR             R1, [R4,#0x28]
3AEF02:  MOVS            R1, #0x8E
3AEF04:  STR             R1, [R4,#0x14]
3AEF06:  MOV             R1, R5; CAESound *
3AEF08:  LDR             R0, [R0]; AESoundManager ; this
3AEF0A:  ADD             SP, SP, #0x30 ; '0'
3AEF0C:  VPOP            {D8}
3AEF10:  POP.W           {R11}
3AEF14:  POP.W           {R4-R7,LR}
3AEF18:  B.W             sub_19F824
3AEF1C:  ADD             SP, SP, #0x30 ; '0'
3AEF1E:  VPOP            {D8}
3AEF22:  POP.W           {R11}
3AEF26:  POP             {R4-R7,PC}
