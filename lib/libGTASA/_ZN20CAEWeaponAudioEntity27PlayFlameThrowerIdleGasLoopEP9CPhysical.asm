; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity27PlayFlameThrowerIdleGasLoopEP9CPhysical
; Address            : 0x3BAFFC - 0x3BB094
; =========================================================

3BAFFC:  PUSH            {R4-R7,LR}
3BAFFE:  ADD             R7, SP, #0xC
3BB000:  PUSH.W          {R11}
3BB004:  SUB             SP, SP, #0x30
3BB006:  MOV             R4, R0
3BB008:  MOV             R5, R1
3BB00A:  LDR.W           R0, [R4,#0x9C]
3BB00E:  CBNZ            R0, loc_3BB08C
3BB010:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BB020)
3BB012:  MOV.W           LR, #0
3BB016:  LDR             R1, [R5,#0x14]
3BB018:  MOV.W           R12, #0x84
3BB01C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BB01E:  ADD.W           R2, R1, #0x30 ; '0'
3BB022:  CMP             R1, #0
3BB024:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3BB026:  MOV             R1, #0x3F28F5C3
3BB02E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3BB030:  IT EQ
3BB032:  ADDEQ           R2, R5, #4
3BB034:  LDRSB.W         R0, [R0,#0x9E]
3BB038:  LDRD.W          R3, R6, [R2]
3BB03C:  LDR             R2, [R2,#8]
3BB03E:  VMOV            S0, R0
3BB042:  MOV.W           R0, #0x3F800000
3BB046:  VCVT.F32.S32    S0, S0
3BB04A:  STRD.W          R1, R0, [SP,#0x40+var_30]
3BB04E:  STRD.W          R0, LR, [SP,#0x40+var_28]
3BB052:  MOVS            R1, #5
3BB054:  STRD.W          R12, LR, [SP,#0x40+var_20]
3BB058:  STR.W           LR, [SP,#0x40+var_18]
3BB05C:  STRD.W          R3, R6, [SP,#0x40+var_40]
3BB060:  ADD.W           R6, R4, #8
3BB064:  STR             R2, [SP,#0x40+var_38]
3BB066:  MOVS            R2, #0xA
3BB068:  MOV             R0, R6
3BB06A:  MOV             R3, R4
3BB06C:  VSTR            S0, [SP,#0x40+var_34]
3BB070:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB074:  MOV             R0, R6; this
3BB076:  MOV             R1, R5; CEntity *
3BB078:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BB07C:  LDR             R0, =(AESoundManager_ptr - 0x3BB084)
3BB07E:  MOV             R1, R6; CAESound *
3BB080:  ADD             R0, PC; AESoundManager_ptr
3BB082:  LDR             R0, [R0]; AESoundManager ; this
3BB084:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB088:  STR.W           R0, [R4,#0x9C]
3BB08C:  ADD             SP, SP, #0x30 ; '0'
3BB08E:  POP.W           {R11}
3BB092:  POP             {R4-R7,PC}
