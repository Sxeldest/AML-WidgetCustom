; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity19PlayWeaponLoopSoundEP9CPhysicalsiffi
; Address            : 0x3BA9FC - 0x3BAAD8
; =========================================================

3BA9FC:  PUSH            {R4-R7,LR}
3BA9FE:  ADD             R7, SP, #0xC
3BAA00:  PUSH.W          {R8,R9,R11}
3BAA04:  SUB             SP, SP, #0x30
3BAA06:  MOV             R4, R0
3BAA08:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAA12)
3BAA0A:  MOV             R8, R2
3BAA0C:  MOV             R5, R1
3BAA0E:  ADD             R0, PC; AEAudioHardware_ptr
3BAA10:  MOVS            R1, #0x8F; unsigned __int16
3BAA12:  MOVS            R2, #5; __int16
3BAA14:  MOV             R6, R3
3BAA16:  LDR             R0, [R0]; AEAudioHardware ; this
3BAA18:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BAA1C:  CMP             R0, #0
3BAA1E:  BEQ             loc_3BAAAA
3BAA20:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BAA2C)
3BAA22:  MOV.W           R12, #0xA4
3BAA26:  LDR             R1, [R5,#0x14]
3BAA28:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BAA2A:  LDR.W           R9, [R7,#arg_8]
3BAA2E:  ADD.W           R2, R1, #0x30 ; '0'
3BAA32:  CMP             R1, #0
3BAA34:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3BAA36:  VLDR            S0, [R7,#arg_4]
3BAA3A:  VLDR            S2, [R7,#arg_0]
3BAA3E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3BAA40:  LDRSB           R0, [R0,R6]
3BAA42:  IT EQ
3BAA44:  ADDEQ           R2, R5, #4
3BAA46:  LDRD.W          R1, R3, [R2]
3BAA4A:  LDR             R2, [R2,#8]
3BAA4C:  MOV.W           R6, #0x3F800000
3BAA50:  VMOV            S4, R0
3BAA54:  MOVS            R0, #0
3BAA56:  VCVT.F32.S32    S4, S4
3BAA5A:  STRD.W          R6, R0, [SP,#0x48+var_30]
3BAA5E:  STRD.W          R12, R0, [SP,#0x48+var_28]
3BAA62:  STR             R0, [SP,#0x48+var_20]
3BAA64:  VSTR            S0, [SP,#0x48+var_34]
3BAA68:  STR             R6, [SP,#0x48+var_38]
3BAA6A:  ADD.W           R6, R4, #8
3BAA6E:  STRD.W          R1, R3, [SP,#0x48+var_48]
3BAA72:  MOVS            R1, #5
3BAA74:  STR             R2, [SP,#0x48+var_40]
3BAA76:  MOV             R0, R6
3BAA78:  VADD.F32        S2, S4, S2
3BAA7C:  MOV             R2, R8
3BAA7E:  MOV             R3, R4
3BAA80:  VSTR            S2, [SP,#0x48+var_3C]
3BAA84:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BAA88:  MOV             R0, R6; this
3BAA8A:  MOV             R1, R5; CEntity *
3BAA8C:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BAA90:  LDR             R0, =(AESoundManager_ptr - 0x3BAA9C)
3BAA92:  MOV             R1, R6; CAESound *
3BAA94:  STR.W           R9, [R4,#0x14]
3BAA98:  ADD             R0, PC; AESoundManager_ptr
3BAA9A:  LDR             R0, [R0]; AESoundManager ; this
3BAA9C:  ADD             SP, SP, #0x30 ; '0'
3BAA9E:  POP.W           {R8,R9,R11}
3BAAA2:  POP.W           {R4-R7,LR}
3BAAA6:  B.W             sub_19F824
3BAAAA:  LDR             R0, =(AudioEngine_ptr - 0x3BAAB0)
3BAAAC:  ADD             R0, PC; AudioEngine_ptr
3BAAAE:  LDR             R0, [R0]; AudioEngine ; this
3BAAB0:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BAAB4:  CMP             R0, #0
3BAAB6:  ITTT NE
3BAAB8:  ADDNE           SP, SP, #0x30 ; '0'
3BAABA:  POPNE.W         {R8,R9,R11}
3BAABE:  POPNE           {R4-R7,PC}
3BAAC0:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAACA)
3BAAC2:  MOVS            R1, #0x8F; unsigned __int16
3BAAC4:  MOVS            R2, #5; __int16
3BAAC6:  ADD             R0, PC; AEAudioHardware_ptr
3BAAC8:  LDR             R0, [R0]; AEAudioHardware ; this
3BAACA:  ADD             SP, SP, #0x30 ; '0'
3BAACC:  POP.W           {R8,R9,R11}
3BAAD0:  POP.W           {R4-R7,LR}
3BAAD4:  B.W             sub_18B078
