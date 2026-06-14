; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity15PlayCameraSoundEP9CPhysicalif
; Address            : 0x3BAAEC - 0x3BABC2
; =========================================================

3BAAEC:  PUSH            {R4-R7,LR}
3BAAEE:  ADD             R7, SP, #0xC
3BAAF0:  PUSH.W          {R8}
3BAAF4:  SUB             SP, SP, #0x30
3BAAF6:  MOV             R8, R0
3BAAF8:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAB02)
3BAAFA:  MOV             R6, R2
3BAAFC:  MOV             R4, R1
3BAAFE:  ADD             R0, PC; AEAudioHardware_ptr
3BAB00:  MOVS            R1, #0x8F; unsigned __int16
3BAB02:  MOVS            R2, #5; __int16
3BAB04:  MOV             R5, R3
3BAB06:  LDR             R0, [R0]; AEAudioHardware ; this
3BAB08:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BAB0C:  CMP             R0, #0
3BAB0E:  BEQ             loc_3BAB94
3BAB10:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BAB20)
3BAB12:  VMOV            S0, R5
3BAB16:  LDR             R1, [R4,#0x14]
3BAB18:  MOV.W           R5, #0x3F800000
3BAB1C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BAB1E:  MOV.W           R12, #0x90
3BAB22:  ADD.W           R2, R1, #0x30 ; '0'
3BAB26:  CMP             R1, #0
3BAB28:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3BAB2A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3BAB2C:  LDRSB           R0, [R0,R6]
3BAB2E:  IT EQ
3BAB30:  ADDEQ           R2, R4, #4
3BAB32:  LDRD.W          R1, R3, [R2]
3BAB36:  LDR             R2, [R2,#8]
3BAB38:  MOV             R6, #0x3F28F5C3
3BAB40:  VMOV            S2, R0
3BAB44:  MOVS            R0, #0
3BAB46:  VCVT.F32.S32    S2, S2
3BAB4A:  STRD.W          R6, R5, [SP,#0x40+var_30]
3BAB4E:  STRD.W          R5, R0, [SP,#0x40+var_28]
3BAB52:  ADD.W           R5, R8, #8
3BAB56:  STRD.W          R12, R0, [SP,#0x40+var_20]
3BAB5A:  STR             R0, [SP,#0x40+var_18]
3BAB5C:  MOV             R0, R5
3BAB5E:  STRD.W          R1, R3, [SP,#0x40+var_40]
3BAB62:  MOVS            R1, #5
3BAB64:  STR             R2, [SP,#0x40+var_38]
3BAB66:  MOVS            R2, #0x2D ; '-'
3BAB68:  MOV             R3, R8
3BAB6A:  VADD.F32        S0, S2, S0
3BAB6E:  VSTR            S0, [SP,#0x40+var_34]
3BAB72:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BAB76:  MOV             R0, R5; this
3BAB78:  MOV             R1, R4; CEntity *
3BAB7A:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BAB7E:  LDR             R0, =(AESoundManager_ptr - 0x3BAB86)
3BAB80:  MOV             R1, R5; CAESound *
3BAB82:  ADD             R0, PC; AESoundManager_ptr
3BAB84:  LDR             R0, [R0]; AESoundManager ; this
3BAB86:  ADD             SP, SP, #0x30 ; '0'
3BAB88:  POP.W           {R8}
3BAB8C:  POP.W           {R4-R7,LR}
3BAB90:  B.W             sub_19F824
3BAB94:  LDR             R0, =(AudioEngine_ptr - 0x3BAB9A)
3BAB96:  ADD             R0, PC; AudioEngine_ptr
3BAB98:  LDR             R0, [R0]; AudioEngine ; this
3BAB9A:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BAB9E:  CMP             R0, #0
3BABA0:  ITTT NE
3BABA2:  ADDNE           SP, SP, #0x30 ; '0'
3BABA4:  POPNE.W         {R8}
3BABA8:  POPNE           {R4-R7,PC}
3BABAA:  LDR             R0, =(AEAudioHardware_ptr - 0x3BABB4)
3BABAC:  MOVS            R1, #0x8F; unsigned __int16
3BABAE:  MOVS            R2, #5; __int16
3BABB0:  ADD             R0, PC; AEAudioHardware_ptr
3BABB2:  LDR             R0, [R0]; AEAudioHardware ; this
3BABB4:  ADD             SP, SP, #0x30 ; '0'
3BABB6:  POP.W           {R8}
3BABBA:  POP.W           {R4-R7,LR}
3BABBE:  B.W             sub_18B078
