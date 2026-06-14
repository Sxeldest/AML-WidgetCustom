; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity21PlayMiniGunFireSoundsEP9CPhysicali
; Address            : 0x3BABD8 - 0x3BAD2C
; =========================================================

3BABD8:  PUSH            {R4-R7,LR}
3BABDA:  ADD             R7, SP, #0xC
3BABDC:  PUSH.W          {R8,R9,R11}
3BABE0:  SUB             SP, SP, #0x30
3BABE2:  MOV             R4, R0
3BABE4:  SUB.W           R0, R2, #0x91; switch 7 cases
3BABE8:  MOV             R5, R1
3BABEA:  CMP             R0, #6
3BABEC:  BHI.W           def_3BABF0; jumptable 003BABF0 default case, cases 146-148
3BABF0:  TBB.W           [PC,R0]; switch jump
3BABF4:  DCB 4; jump table for switch statement
3BABF5:  DCB 0x7F
3BABF6:  DCB 0x7F
3BABF7:  DCB 0x7F
3BABF8:  DCB 0x10
3BABF9:  DCB 4
3BABFA:  DCB 0x2E
3BABFB:  ALIGN 2
3BABFC:  LDRB.W          R0, [R4,#0x7D]; jumptable 003BABF0 cases 145,150
3BAC00:  MOVS            R6, #1
3BAC02:  CMP             R0, #0
3BAC04:  BNE             loc_3BACEE
3BAC06:  MOV.W           R0, #0x3F800000
3BAC0A:  MOV.W           R12, #0
3BAC0E:  MOV.W           LR, #0x96
3BAC12:  B               loc_3BAC2A
3BAC14:  LDRB.W          R0, [R4,#0x7D]; jumptable 003BABF0 case 149
3BAC18:  MOVS            R6, #1
3BAC1A:  CMP             R0, #0
3BAC1C:  BNE             loc_3BACEE
3BAC1E:  MOV.W           R0, #0x3F800000
3BAC22:  MOV.W           R12, #0
3BAC26:  MOV.W           LR, #0x98
3BAC2A:  MOVS            R3, #0xD
3BAC2C:  MOVS            R1, #0xC
3BAC2E:  MOVS            R2, #0xB
3BAC30:  STRD.W          R2, R1, [SP,#0x48+var_48]; __int16
3BAC34:  MOV             R1, R5; CPhysical *
3BAC36:  STRD.W          R3, LR, [SP,#0x48+var_40]; __int16
3BAC3A:  MOVS            R2, #0xF; __int16
3BAC3C:  STRD.W          R12, R0, [SP,#0x48+var_38]; float
3BAC40:  MOVS            R3, #0x10; __int16
3BAC42:  STR             R0, [SP,#0x48+var_30]; float
3BAC44:  MOV             R0, R4; this
3BAC46:  BLX             j__ZN20CAEWeaponAudioEntity13PlayGunSoundsEP9CPhysicalsssssifff; CAEWeaponAudioEntity::PlayGunSounds(CPhysical *,short,short,short,short,short,int,float,float,float)
3BAC4A:  STRB.W          R6, [R4,#0x7D]
3BAC4E:  B               loc_3BACEE
3BAC50:  LDRB.W          R0, [R4,#0x7C]; jumptable 003BABF0 case 151
3BAC54:  CBZ             R0, loc_3BAC5A
3BAC56:  MOVS            R6, #0
3BAC58:  B               loc_3BACEE
3BAC5A:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAC68)
3BAC5C:  MOVS            R1, #0x8F; unsigned __int16
3BAC5E:  MOVS            R2, #5; __int16
3BAC60:  MOV.W           R9, #5
3BAC64:  ADD             R0, PC; AEAudioHardware_ptr
3BAC66:  LDR             R0, [R0]; AEAudioHardware ; this
3BAC68:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BAC6C:  CMP             R0, #0
3BAC6E:  BEQ             loc_3BAD06
3BAC70:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BAC7E)
3BAC72:  ADD.W           R8, R4, #8
3BAC76:  LDR             R1, [R5,#0x14]
3BAC78:  MOVS            R6, #0
3BAC7A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BAC7C:  MOV.W           R12, #0x84
3BAC80:  ADD.W           R2, R1, #0x30 ; '0'
3BAC84:  CMP             R1, #0
3BAC86:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3BAC88:  MOV.W           LR, #0x3F800000
3BAC8C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3BAC8E:  IT EQ
3BAC90:  ADDEQ           R2, R5, #4
3BAC92:  LDRSB.W         R0, [R0,#0x97]
3BAC96:  LDRD.W          R1, R3, [R2]
3BAC9A:  LDR             R2, [R2,#8]
3BAC9C:  VMOV            S0, R0
3BACA0:  MOV             R0, #0x3F28F5C3
3BACA8:  VCVT.F32.S32    S0, S0
3BACAC:  STRD.W          R0, LR, [SP,#0x48+var_38]
3BACB0:  STRD.W          R6, R6, [SP,#0x48+var_30]
3BACB4:  MOV             R0, R8
3BACB6:  STRD.W          R12, R6, [SP,#0x48+var_28]
3BACBA:  STR             R6, [SP,#0x48+var_20]
3BACBC:  STRD.W          R1, R3, [SP,#0x48+var_48]
3BACC0:  MOVS            R1, #5
3BACC2:  STR             R2, [SP,#0x48+var_40]
3BACC4:  MOVS            R2, #0xE
3BACC6:  MOV             R3, R4
3BACC8:  VSTR            S0, [SP,#0x48+var_3C]
3BACCC:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BACD0:  MOV             R0, R8; this
3BACD2:  MOV             R1, R5; CEntity *
3BACD4:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BACD8:  LDR             R0, =(AESoundManager_ptr - 0x3BACE4)
3BACDA:  MOV             R1, R8; CAESound *
3BACDC:  STR.W           R9, [R4,#0x14]
3BACE0:  ADD             R0, PC; AESoundManager_ptr
3BACE2:  LDR             R0, [R0]; AESoundManager ; this
3BACE4:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BACE8:  MOVS            R0, #1
3BACEA:  STRB.W          R0, [R4,#0x7C]
3BACEE:  STRB.W          R6, [R4,#0x7F]
3BACF2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BACF8); jumptable 003BABF0 default case, cases 146-148
3BACF4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BACF6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BACF8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3BACFA:  STR.W           R0, [R4,#0x90]
3BACFE:  ADD             SP, SP, #0x30 ; '0'
3BAD00:  POP.W           {R8,R9,R11}
3BAD04:  POP             {R4-R7,PC}
3BAD06:  LDR             R0, =(AudioEngine_ptr - 0x3BAD0C)
3BAD08:  ADD             R0, PC; AudioEngine_ptr
3BAD0A:  LDR             R0, [R0]; AudioEngine ; this
3BAD0C:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BAD10:  CMP             R0, #0
3BAD12:  BNE             loc_3BACFE
3BAD14:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAD1E)
3BAD16:  MOVS            R1, #0x8F; unsigned __int16
3BAD18:  MOVS            R2, #5; __int16
3BAD1A:  ADD             R0, PC; AEAudioHardware_ptr
3BAD1C:  LDR             R0, [R0]; AEAudioHardware ; this
3BAD1E:  ADD             SP, SP, #0x30 ; '0'
3BAD20:  POP.W           {R8,R9,R11}
3BAD24:  POP.W           {R4-R7,LR}
3BAD28:  B.W             sub_18B078
