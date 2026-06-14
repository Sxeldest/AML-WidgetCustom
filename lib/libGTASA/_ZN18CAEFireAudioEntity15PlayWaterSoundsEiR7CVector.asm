; =========================================================
; Game Engine Function: _ZN18CAEFireAudioEntity15PlayWaterSoundsEiR7CVector
; Address            : 0x395BDC - 0x395CD2
; =========================================================

395BDC:  PUSH            {R4-R7,LR}
395BDE:  ADD             R7, SP, #0xC
395BE0:  PUSH.W          {R8-R11}
395BE4:  SUB             SP, SP, #4
395BE6:  VPUSH           {D8}
395BEA:  SUB             SP, SP, #0xA0
395BEC:  MOV             R4, R0
395BEE:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x395BFA)
395BF0:  MOV.W           R9, #0
395BF4:  MOV             R6, R2
395BF6:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
395BF8:  STR.W           R9, [SP,#0xC8+var_94]
395BFC:  MOVW            R10, #0x999A
395C00:  ADD.W           R8, SP, #0xC8+var_9C
395C04:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
395C06:  MOVT            R10, #0x3F19
395C0A:  MOV.W           R11, #0x40000000
395C0E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
395C10:  LDM.W           R6, {R2,R3,R5}
395C14:  LDRSB           R0, [R0,R1]
395C16:  MOVS            R1, #2
395C18:  VMOV            S0, R0
395C1C:  MOVS            R0, #4
395C1E:  VCVT.F32.S32    S16, S0
395C22:  STRD.W          R9, R9, [SP,#0xC8+var_A4]
395C26:  STRD.W          R9, R0, [SP,#0xC8+var_AC]
395C2A:  MOV.W           R0, #0x3F400000
395C2E:  STR             R0, [SP,#0xC8+var_B4]
395C30:  MOV             R0, R8
395C32:  STR.W           R10, [SP,#0xC8+var_B0]
395C36:  STR             R5, [SP,#0xC8+var_C0]
395C38:  MOVS            R5, #3
395C3A:  STR.W           R11, [SP,#0xC8+var_B8]
395C3E:  STRD.W          R2, R3, [SP,#0xC8+var_C8]
395C42:  MOVS            R2, #3
395C44:  MOV             R3, R4
395C46:  VSTR            S16, [SP,#0xC8+var_BC]
395C4A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395C4E:  LDR             R0, =(AESoundManager_ptr - 0x395C58)
395C50:  MOV             R1, R8; CAESound *
395C52:  STR             R5, [SP,#0xC8+var_90]
395C54:  ADD             R0, PC; AESoundManager_ptr
395C56:  LDR             R5, [R0]; AESoundManager
395C58:  MOV             R0, #0x3D75C290
395C60:  STR             R0, [SP,#0xC8+var_7C]
395C62:  MOV             R0, R5; this
395C64:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395C68:  VMOV.F32        S0, #20.0
395C6C:  STR             R0, [R4,#0x7C]
395C6E:  LDM.W           R6, {R0-R2}
395C72:  MOV             R3, #0x3FE3D70A
395C7A:  MOVS            R6, #4
395C7C:  STR.W           R10, [SP,#0xC8+var_B0]
395C80:  STRD.W          R11, R3, [SP,#0xC8+var_B8]
395C84:  MOV             R3, R4
395C86:  STRD.W          R1, R2, [SP,#0xC8+var_C4]
395C8A:  MOVS            R1, #0
395C8C:  STRD.W          R9, R9, [SP,#0xC8+var_A4]
395C90:  MOVS            R2, #0
395C92:  VADD.F32        S0, S16, S0
395C96:  STRD.W          R9, R6, [SP,#0xC8+var_AC]
395C9A:  VSTR            S0, [SP,#0xC8+var_BC]
395C9E:  STR             R0, [SP,#0xC8+var_C8]
395CA0:  MOV             R0, R8
395CA2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395CA6:  MOVW            R0, #0xC290
395CAA:  STR             R6, [SP,#0xC8+var_90]
395CAC:  MOVT            R0, #0x3D75
395CB0:  MOV             R1, R8; CAESound *
395CB2:  STR             R0, [SP,#0xC8+var_7C]
395CB4:  MOV             R0, R5; this
395CB6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395CBA:  STR.W           R0, [R4,#0x80]
395CBE:  MOV             R0, R8; this
395CC0:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
395CC4:  ADD             SP, SP, #0xA0
395CC6:  VPOP            {D8}
395CCA:  ADD             SP, SP, #4
395CCC:  POP.W           {R8-R11}
395CD0:  POP             {R4-R7,PC}
