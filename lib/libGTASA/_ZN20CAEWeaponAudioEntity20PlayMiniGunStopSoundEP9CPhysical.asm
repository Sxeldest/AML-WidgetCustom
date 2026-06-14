; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity20PlayMiniGunStopSoundEP9CPhysical
; Address            : 0x3B9C70 - 0x3B9D72
; =========================================================

3B9C70:  PUSH            {R4-R7,LR}
3B9C72:  ADD             R7, SP, #0xC
3B9C74:  PUSH.W          {R11}
3B9C78:  SUB             SP, SP, #0x30
3B9C7A:  MOV             R5, R1
3B9C7C:  MOV             R4, R0
3B9C7E:  CBZ             R5, loc_3B9CD6
3B9C80:  LDRB.W          R0, [R4,#0x7F]
3B9C84:  CMP             R0, #2
3B9C86:  BEQ             loc_3B9D64
3B9C88:  LDR             R0, =(AEAudioHardware_ptr - 0x3B9C92)
3B9C8A:  MOVS            R1, #0x8F; unsigned __int16
3B9C8C:  MOVS            R2, #5; __int16
3B9C8E:  ADD             R0, PC; AEAudioHardware_ptr
3B9C90:  LDR             R0, [R0]; AEAudioHardware ; this
3B9C92:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B9C96:  CBZ             R0, loc_3B9CDA
3B9C98:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3B9CA2)
3B9C9A:  VMOV.F32        S2, #1.0
3B9C9E:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3B9CA0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3B9CA2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3B9CA4:  LDRSB.W         R0, [R0,#0x9D]
3B9CA8:  VMOV            S0, R0
3B9CAC:  VCVT.F32.S32    S0, S0
3B9CB0:  LDRB.W          R0, [R5,#0x3A]
3B9CB4:  AND.W           R0, R0, #7
3B9CB8:  CMP             R0, #2
3B9CBA:  BNE             loc_3B9D00
3B9CBC:  LDR.W           R0, [R5,#0x5A4]
3B9CC0:  ADR             R1, dword_3B9D84
3B9CC2:  VLDR            S4, =0.7937
3B9CC6:  CMP             R0, #4
3B9CC8:  ITT EQ
3B9CCA:  VMOVEQ.F32      S2, S4
3B9CCE:  ADDEQ           R1, #4
3B9CD0:  VLDR            S4, [R1]
3B9CD4:  B               loc_3B9D04
3B9CD6:  MOVS            R0, #3
3B9CD8:  B               loc_3B9D66
3B9CDA:  LDR             R0, =(AudioEngine_ptr - 0x3B9CE0)
3B9CDC:  ADD             R0, PC; AudioEngine_ptr
3B9CDE:  LDR             R0, [R0]; AudioEngine ; this
3B9CE0:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3B9CE4:  CMP             R0, #0
3B9CE6:  BNE             loc_3B9D6A
3B9CE8:  LDR             R0, =(AEAudioHardware_ptr - 0x3B9CF2)
3B9CEA:  MOVS            R1, #0x8F; unsigned __int16
3B9CEC:  MOVS            R2, #5; __int16
3B9CEE:  ADD             R0, PC; AEAudioHardware_ptr
3B9CF0:  LDR             R0, [R0]; AEAudioHardware ; this
3B9CF2:  ADD             SP, SP, #0x30 ; '0'
3B9CF4:  POP.W           {R11}
3B9CF8:  POP.W           {R4-R7,LR}
3B9CFC:  B.W             sub_18B078
3B9D00:  VLDR            S4, =0.66
3B9D04:  LDR             R0, [R5,#0x14]
3B9D06:  MOVS            R3, #0
3B9D08:  MOV.W           R6, #0x3F800000
3B9D0C:  MOV.W           R12, #0x84
3B9D10:  ADD.W           R1, R0, #0x30 ; '0'
3B9D14:  CMP             R0, #0
3B9D16:  IT EQ
3B9D18:  ADDEQ           R1, R5, #4
3B9D1A:  LDRD.W          R0, R2, [R1]
3B9D1E:  LDR             R1, [R1,#8]
3B9D20:  STRD.W          R6, R3, [SP,#0x40+var_28]
3B9D24:  ADD.W           R6, R4, #8
3B9D28:  STRD.W          R12, R3, [SP,#0x40+var_20]
3B9D2C:  STR             R3, [SP,#0x40+var_18]
3B9D2E:  MOV             R3, R4
3B9D30:  VSTR            S0, [SP,#0x40+var_34]
3B9D34:  VSTR            S4, [SP,#0x40+var_30]
3B9D38:  VSTR            S2, [SP,#0x40+var_2C]
3B9D3C:  STRD.W          R0, R2, [SP,#0x40+var_40]
3B9D40:  MOV             R0, R6
3B9D42:  STR             R1, [SP,#0x40+var_38]
3B9D44:  MOVS            R1, #5
3B9D46:  MOVS            R2, #0x3F ; '?'
3B9D48:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B9D4C:  MOV             R0, R6; this
3B9D4E:  MOV             R1, R5; CEntity *
3B9D50:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3B9D54:  LDR             R0, =(AESoundManager_ptr - 0x3B9D60)
3B9D56:  MOVS            R1, #8
3B9D58:  STR             R1, [R4,#0x14]
3B9D5A:  MOV             R1, R6; CAESound *
3B9D5C:  ADD             R0, PC; AESoundManager_ptr
3B9D5E:  LDR             R0, [R0]; AESoundManager ; this
3B9D60:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B9D64:  MOVS            R0, #2
3B9D66:  STRB.W          R0, [R4,#0x7F]
3B9D6A:  ADD             SP, SP, #0x30 ; '0'
3B9D6C:  POP.W           {R11}
3B9D70:  POP             {R4-R7,PC}
