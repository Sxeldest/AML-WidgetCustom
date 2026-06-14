; =========================================================
; Game Engine Function: _ZN18CAEFireAudioEntity14PlayFireSoundsEiR7CVector
; Address            : 0x395CDC - 0x395E2E
; =========================================================

395CDC:  PUSH            {R4-R7,LR}
395CDE:  ADD             R7, SP, #0xC
395CE0:  PUSH.W          {R8-R11}
395CE4:  SUB             SP, SP, #4
395CE6:  VPUSH           {D8}
395CEA:  SUB             SP, SP, #0xA0
395CEC:  MOV             R8, R0
395CEE:  LDR             R0, =(_ZN18CAEFireAudioEntity26m_snLastFireFrequencyIndexE_ptr - 0x395CFA)
395CF0:  MOV             R5, R2
395CF2:  MOVW            R4, #0x6667
395CF6:  ADD             R0, PC; _ZN18CAEFireAudioEntity26m_snLastFireFrequencyIndexE_ptr
395CF8:  MOVT            R4, #0x6666
395CFC:  LDR             R3, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x395D0E)
395CFE:  MOV.W           R11, #0
395D02:  LDR             R0, [R0]; CAEFireAudioEntity::m_snLastFireFrequencyIndex ...
395D04:  MOV.W           R9, #0x40000000
395D08:  LDR             R6, =(gfFireFrequencyVariations_ptr - 0x395D18)
395D0A:  ADD             R3, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
395D0C:  STR.W           R11, [SP,#0xC8+var_94]
395D10:  LDRSB.W         R2, [R0]; CAEFireAudioEntity::m_snLastFireFrequencyIndex
395D14:  ADD             R6, PC; gfFireFrequencyVariations_ptr
395D16:  LDR             R3, [R3]; CAEAudioEntity::m_pAudioEventVolumes ...
395D18:  ADDS            R2, #1
395D1A:  LDR.W           R12, [R6]; gfFireFrequencyVariations
395D1E:  SMMUL.W         R4, R2, R4
395D22:  LDR             R3, [R3]; CAEAudioEntity::m_pAudioEventVolumes
395D24:  ASRS            R6, R4, #1
395D26:  ADD.W           R6, R6, R4,LSR#31
395D2A:  ADD.W           R6, R6, R6,LSL#2
395D2E:  SUBS            R2, R2, R6
395D30:  STRB            R2, [R0]; CAEFireAudioEntity::m_snLastFireFrequencyIndex
395D32:  LDRD.W          R0, R6, [R5]
395D36:  LDRSB           R1, [R3,R1]
395D38:  ADD.W           R10, R12, R2,LSL#2
395D3C:  LDR             R4, [R5,#8]
395D3E:  VLDR            S2, [R10]
395D42:  MOV.W           R2, #0x3F800000
395D46:  MOV             R3, R8
395D48:  VMOV            S0, R1
395D4C:  MOVS            R1, #4
395D4E:  VCVT.F32.S32    S16, S0
395D52:  STRD.W          R2, R11, [SP,#0xC8+var_B0]
395D56:  STRD.W          R1, R11, [SP,#0xC8+var_A8]
395D5A:  MOVS            R1, #4
395D5C:  STR.W           R11, [SP,#0xC8+var_A0]
395D60:  MOVS            R2, #0
395D62:  VSTR            S2, [SP,#0xC8+var_B4]
395D66:  STR.W           R9, [SP,#0xC8+var_B8]
395D6A:  STRD.W          R0, R6, [SP,#0xC8+var_C8]
395D6E:  ADD             R6, SP, #0xC8+var_9C
395D70:  STR             R4, [SP,#0xC8+var_C0]
395D72:  MOV             R0, R6
395D74:  VSTR            S16, [SP,#0xC8+var_BC]
395D78:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395D7C:  LDR             R0, =(AESoundManager_ptr - 0x395D84)
395D7E:  MOV             R1, R6; CAESound *
395D80:  ADD             R0, PC; AESoundManager_ptr
395D82:  LDR             R0, [R0]; AESoundManager ; this
395D84:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395D88:  LDR             R1, =(AEAudioHardware_ptr - 0x395D94)
395D8A:  MOVS            R2, #0x13; __int16
395D8C:  STR.W           R0, [R8,#0x7C]
395D90:  ADD             R1, PC; AEAudioHardware_ptr
395D92:  LDR             R1, [R1]; AEAudioHardware
395D94:  MOV             R0, R1; this
395D96:  MOVS            R1, #0x8A; unsigned __int16
395D98:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
395D9C:  CBZ             R0, loc_395E0C
395D9E:  VMOV.F32        S0, #3.0
395DA2:  LDM.W           R5, {R0-R2}
395DA6:  VMOV.F32        S2, #-20.0
395DAA:  VLDR            S4, =0.6
395DAE:  MOV.W           R3, #0x3F800000
395DB2:  VLDR            S6, [R10]
395DB6:  ADD             R5, SP, #0xC8+var_9C
395DB8:  STRD.W          R3, R11, [SP,#0xC8+var_B0]
395DBC:  MOVS            R3, #4
395DBE:  STRD.W          R3, R11, [SP,#0xC8+var_A8]
395DC2:  MOV             R3, R8
395DC4:  STR.W           R11, [SP,#0xC8+var_A0]
395DC8:  VADD.F32        S16, S16, S0
395DCC:  STR.W           R9, [SP,#0xC8+var_B8]
395DD0:  VMUL.F32        S0, S6, S4
395DD4:  STMEA.W         SP, {R0-R2}
395DD8:  MOV             R0, R5
395DDA:  MOVS            R1, #0x13
395DDC:  MOVS            R2, #0x1A
395DDE:  VADD.F32        S2, S16, S2
395DE2:  VSTR            S0, [SP,#0xC8+var_B4]
395DE6:  VSTR            S2, [SP,#0xC8+var_BC]
395DEA:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395DEE:  VLDR            S0, =0.0
395DF2:  MOVS            R1, #1
395DF4:  LDR             R0, =(AESoundManager_ptr - 0x395DFE)
395DF6:  VADD.F32        S0, S16, S0
395DFA:  ADD             R0, PC; AESoundManager_ptr
395DFC:  LDR             R0, [R0]; AESoundManager ; this
395DFE:  VSTR            S0, [SP,#0xC8+var_8C]
395E02:  STR             R1, [SP,#0xC8+var_90]
395E04:  MOV             R1, R5; CAESound *
395E06:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395E0A:  B               loc_395E1A
395E0C:  LDR             R0, =(AEAudioHardware_ptr - 0x395E16)
395E0E:  MOVS            R1, #0x8A; unsigned __int16
395E10:  MOVS            R2, #0x13; __int16
395E12:  ADD             R0, PC; AEAudioHardware_ptr
395E14:  LDR             R0, [R0]; AEAudioHardware ; this
395E16:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
395E1A:  ADD             R0, SP, #0xC8+var_9C; this
395E1C:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
395E20:  ADD             SP, SP, #0xA0
395E22:  VPOP            {D8}
395E26:  ADD             SP, SP, #4
395E28:  POP.W           {R8-R11}
395E2C:  POP             {R4-R7,PC}
