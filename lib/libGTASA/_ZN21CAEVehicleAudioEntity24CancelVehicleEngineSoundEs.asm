; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity24CancelVehicleEngineSoundEs
; Address            : 0x3B3A70 - 0x3B3B22
; =========================================================

3B3A70:  PUSH            {R4-R7,LR}
3B3A72:  ADD             R7, SP, #0xC
3B3A74:  PUSH.W          {R8-R10}
3B3A78:  MOV             R5, R1
3B3A7A:  MOV             R4, R0
3B3A7C:  ADD.W           R6, R4, R5,LSL#3
3B3A80:  MOVW            R9, #0xFFFF
3B3A84:  MOVW            R8, #0xFFFF
3B3A88:  UXTH            R1, R5
3B3A8A:  LDR.W           R0, [R6,#0xE8]!; this
3B3A8E:  CMP             R0, #0
3B3A90:  IT NE
3B3A92:  LDRHNE.W        R9, [R0,#0x70]
3B3A96:  CMP             R1, #0xB
3B3A98:  BHI             loc_3B3B1C
3B3A9A:  CBZ             R0, loc_3B3AB2
3B3A9C:  MOVS            R1, #4; unsigned __int16
3B3A9E:  MOVS            R2, #0; unsigned __int16
3B3AA0:  MOV.W           R10, #0
3B3AA4:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B3AA8:  LDR             R0, [R6]; this
3B3AAA:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B3AAE:  STR.W           R10, [R6]
3B3AB2:  CMP             R5, #4
3B3AB4:  BNE             loc_3B3B1C
3B3AB6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B3ABC)
3B3AB8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B3ABA:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
3B3ABC:  LDRH.W          R0, [R4,#0x148]
3B3AC0:  STRH.W          R0, [R4,#0x154]
3B3AC4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3B3AC6:  STR.W           R1, [R4,#0x150]
3B3ACA:  SXTH.W          R1, R9
3B3ACE:  CMP             R1, #1
3B3AD0:  STRH.W          R8, [R4,#0x14A]
3B3AD4:  STRH.W          R8, [R4,#0x148]
3B3AD8:  BLT             loc_3B3B16
3B3ADA:  SXTH            R0, R0
3B3ADC:  VMOV            S0, R1
3B3AE0:  VMOV            S2, R0
3B3AE4:  VCVT.F32.S32    S0, S0
3B3AE8:  VCVT.F32.S32    S2, S2
3B3AEC:  VMOV.F32        S4, #1.0
3B3AF0:  VDIV.F32        S0, S2, S0
3B3AF4:  VMIN.F32        D0, D0, D2
3B3AF8:  VLDR            S2, =100.0
3B3AFC:  VCMPE.F32       S0, #0.0
3B3B00:  VMRS            APSR_nzcv, FPSCR
3B3B04:  VMUL.F32        S2, S0, S2
3B3B08:  VCVT.S32.F32    S2, S2
3B3B0C:  VMOV            R0, S2
3B3B10:  IT LT
3B3B12:  MOVLT           R0, #0
3B3B14:  B               loc_3B3B18
3B3B16:  MOVS            R0, #0
3B3B18:  STRH.W          R0, [R4,#0x14E]
3B3B1C:  POP.W           {R8-R10}
3B3B20:  POP             {R4-R7,PC}
