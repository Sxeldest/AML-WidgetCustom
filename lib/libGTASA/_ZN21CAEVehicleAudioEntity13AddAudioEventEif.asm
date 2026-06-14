; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity13AddAudioEventEif
; Address            : 0x3AACA8 - 0x3ABAFA
; =========================================================

3AACA8:  PUSH            {R4-R7,LR}
3AACAA:  ADD             R7, SP, #0xC
3AACAC:  PUSH.W          {R8-R11}
3AACB0:  SUB             SP, SP, #4
3AACB2:  VPUSH           {D8-D9}
3AACB6:  SUB             SP, SP, #0xA0
3AACB8:  MOV             R4, R0
3AACBA:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AACC6)
3AACBE:  MOV             R6, R1
3AACC0:  MOVS            R1, #0
3AACC2:  ADD             R0, PC; AEAudioHardware_ptr
3AACC4:  MOV             R5, R2
3AACC6:  STR             R1, [SP,#0xD0+var_9C]
3AACC8:  MOVS            R1, #0x8A; unsigned __int16
3AACCA:  LDR             R0, [R0]; AEAudioHardware ; this
3AACCC:  MOVS            R2, #0x13; __int16
3AACCE:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AACD2:  CMP             R0, #0
3AACD4:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AACD8:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AACE4)
3AACDC:  MOVS            R1, #0x27 ; '''; unsigned __int16
3AACDE:  MOVS            R2, #2; __int16
3AACE0:  ADD             R0, PC; AEAudioHardware_ptr
3AACE2:  LDR             R0, [R0]; AEAudioHardware ; this
3AACE4:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AACE8:  CMP             R0, #0
3AACEA:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AACEE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AACFA)
3AACF2:  MOVS            R1, #0x1B; unsigned __int16
3AACF4:  MOVS            R2, #3; __int16
3AACF6:  ADD             R0, PC; AEAudioHardware_ptr
3AACF8:  LDR             R0, [R0]; AEAudioHardware ; this
3AACFA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AACFE:  CMP             R0, #0
3AAD00:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AAD04:  SUB.W           R0, R6, #0x4E ; 'N'; switch 45 cases
3AAD08:  CMP             R0, #0x2C ; ','
3AAD0A:  BHI.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AAD0E:  TBH.W           [PC,R0,LSL#1]; switch jump
3AAD12:  DCW 0x2D; jump table for switch statement
3AAD14:  DCW 0x2D
3AAD16:  DCW 0x2D
3AAD18:  DCW 0x2D
3AAD1A:  DCW 0x2D
3AAD1C:  DCW 0x2D
3AAD1E:  DCW 0x39
3AAD20:  DCW 0x39
3AAD22:  DCW 0x39
3AAD24:  DCW 0x39
3AAD26:  DCW 0x39
3AAD28:  DCW 0x39
3AAD2A:  DCW 0xB7
3AAD2C:  DCW 0xE7
3AAD2E:  DCW 0x117
3AAD30:  DCW 0xAD
3AAD32:  DCW 0xAD
3AAD34:  DCW 0xAD
3AAD36:  DCW 0xAD
3AAD38:  DCW 0xAD
3AAD3A:  DCW 0xAD
3AAD3C:  DCW 0x147
3AAD3E:  DCW 0x1C4
3AAD40:  DCW 0xAD
3AAD42:  DCW 0x213
3AAD44:  DCW 0x26D
3AAD46:  DCW 0xAD
3AAD48:  DCW 0xAD
3AAD4A:  DCW 0xAD
3AAD4C:  DCW 0x2A7
3AAD4E:  DCW 0x2E7
3AAD50:  DCW 0x32F
3AAD52:  DCW 0x369
3AAD54:  DCW 0x3B3
3AAD56:  DCW 0xAD
3AAD58:  DCW 0x3FD
3AAD5A:  DCW 0x45F
3AAD5C:  DCW 0x4BF
3AAD5E:  DCW 0xAD
3AAD60:  DCW 0xAD
3AAD62:  DCW 0xAD
3AAD64:  DCW 0x511
3AAD66:  DCW 0x525
3AAD68:  DCW 0x53B
3AAD6A:  DCW 0x551
3AAD6C:  LDRSB.W         R0, [R4,#0x98]; jumptable 003AAD0E cases 78-83
3AAD70:  CMP             R0, #4; switch 5 cases
3AAD72:  BHI             def_3AAD76; jumptable 003AAD76 default case, case 2
3AAD74:  MOVS            R2, #0x2A ; '*'
3AAD76:  TBB.W           [PC,R0]; switch jump
3AAD7A:  DCB 3; jump table for switch statement
3AAD7B:  DCB 0x11
3AAD7C:  DCB 0x13
3AAD7D:  DCB 0x15
3AAD7E:  DCB 0x16
3AAD7F:  ALIGN 2
3AAD80:  MOVS            R2, #0x27 ; '''; jumptable 003AAD76 case 0
3AAD82:  B               loc_3AADA6; jumptable 003AAD76 case 4
3AAD84:  LDRSB.W         R0, [R4,#0x98]; jumptable 003AAD0E cases 84-89
3AAD88:  CMP             R0, #4; switch 5 cases
3AAD8A:  BHI             def_3AAD8E; jumptable 003AAD8E default case, case 2
3AAD8C:  MOVS            R2, #0x23 ; '#'
3AAD8E:  TBB.W           [PC,R0]; switch jump
3AAD92:  DCB 3; jump table for switch statement
3AAD93:  DCB 0x35
3AAD94:  DCB 0x37
3AAD95:  DCB 0x39
3AAD96:  DCB 0x3A
3AAD97:  ALIGN 2
3AAD98:  MOVS            R2, #0x20 ; ' '; jumptable 003AAD8E case 0
3AAD9A:  B               loc_3AAE06; jumptable 003AAD8E case 4
3AAD9C:  MOVS            R2, #0x29 ; ')'; jumptable 003AAD76 case 1
3AAD9E:  B               loc_3AADA6; jumptable 003AAD76 case 4
3AADA0:  MOVS            R2, #0x28 ; '('; jumptable 003AAD76 default case, case 2
3AADA2:  B               loc_3AADA6; jumptable 003AAD76 case 4
3AADA4:  MOVS            R2, #0x2B ; '+'; jumptable 003AAD76 case 3
3AADA6:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AADB0); jumptable 003AAD76 case 4
3AADAA:  LDR             R1, [R4,#4]
3AADAC:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AADAE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AADB0:  LDR             R3, [R1,#0x14]
3AADB2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AADB4:  ADD.W           R6, R3, #0x30 ; '0'
3AADB8:  CMP             R3, #0
3AADBA:  IT EQ
3AADBC:  ADDEQ           R6, R1, #4
3AADBE:  MOVS            R1, #0
3AADC0:  LDRSB.W         R0, [R0,#0x4E]
3AADC4:  LDM             R6, {R3,R5,R6}
3AADC6:  VMOV            S0, R0
3AADCA:  MOV.W           R0, #0x3F800000
3AADCE:  VCVT.F32.S32    S0, S0
3AADD2:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3AADD6:  STRD.W          R0, R1, [SP,#0xD0+var_B8]
3AADDA:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
3AADDE:  STR             R1, [SP,#0xD0+var_A8]
3AADE0:  MOVS            R1, #0x13
3AADE2:  STMEA.W         SP, {R3,R5,R6}
3AADE6:  ADD             R5, SP, #0xD0+var_A4
3AADE8:  MOV             R3, R4
3AADEA:  MOV             R0, R5
3AADEC:  VSTR            S0, [SP,#0xD0+var_C4]
3AADF0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AADF4:  LDR.W           R0, =(AESoundManager_ptr - 0x3AADFC)
3AADF8:  ADD             R0, PC; AESoundManager_ptr
3AADFA:  B               loc_3AAE5A
3AADFC:  MOVS            R2, #0x22 ; '"'; jumptable 003AAD8E case 1
3AADFE:  B               loc_3AAE06; jumptable 003AAD8E case 4
3AAE00:  MOVS            R2, #0x21 ; '!'; jumptable 003AAD8E default case, case 2
3AAE02:  B               loc_3AAE06; jumptable 003AAD8E case 4
3AAE04:  MOVS            R2, #0x24 ; '$'; jumptable 003AAD8E case 3
3AAE06:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AAE10); jumptable 003AAD8E case 4
3AAE0A:  LDR             R1, [R4,#4]
3AAE0C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AAE0E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AAE10:  LDR             R3, [R1,#0x14]
3AAE12:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AAE14:  ADD.W           R6, R3, #0x30 ; '0'
3AAE18:  CMP             R3, #0
3AAE1A:  IT EQ
3AAE1C:  ADDEQ           R6, R1, #4
3AAE1E:  MOVS            R1, #0
3AAE20:  LDRSB.W         R0, [R0,#0x54]
3AAE24:  LDM             R6, {R3,R5,R6}
3AAE26:  VMOV            S0, R0
3AAE2A:  MOV.W           R0, #0x3F800000
3AAE2E:  VCVT.F32.S32    S0, S0
3AAE32:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3AAE36:  STRD.W          R0, R1, [SP,#0xD0+var_B8]
3AAE3A:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
3AAE3E:  STR             R1, [SP,#0xD0+var_A8]
3AAE40:  MOVS            R1, #0x13
3AAE42:  STMEA.W         SP, {R3,R5,R6}
3AAE46:  ADD             R5, SP, #0xD0+var_A4
3AAE48:  MOV             R3, R4
3AAE4A:  MOV             R0, R5
3AAE4C:  VSTR            S0, [SP,#0xD0+var_C4]
3AAE50:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AAE54:  LDR.W           R0, =(AESoundManager_ptr - 0x3AAE5C)
3AAE58:  ADD             R0, PC; AESoundManager_ptr
3AAE5A:  MOVW            R1, #0xD70A
3AAE5E:  LDR             R0, [R0]; AESoundManager ; this
3AAE60:  MOVT            R1, #0x3CA3
3AAE64:  STR             R1, [SP,#0xD0+var_84]
3AAE66:  MOV             R1, R5; CAESound *
3AAE68:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3AAE6C:  ADD             R0, SP, #0xD0+var_A4; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AAE6E:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AAE72:  ADD             SP, SP, #0xA0
3AAE74:  VPOP            {D8-D9}
3AAE78:  ADD             SP, SP, #4
3AAE7A:  POP.W           {R8-R11}
3AAE7E:  POP             {R4-R7,PC}
3AAE80:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AAE8C); jumptable 003AAD0E case 90
3AAE84:  ADD             R5, SP, #0xD0+var_A4
3AAE86:  LDR             R1, [R4,#4]
3AAE88:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AAE8A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AAE8C:  LDR             R2, [R1,#0x14]
3AAE8E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AAE90:  ADD.W           R3, R2, #0x30 ; '0'
3AAE94:  CMP             R2, #0
3AAE96:  IT EQ
3AAE98:  ADDEQ           R3, R1, #4
3AAE9A:  MOVS            R1, #0
3AAE9C:  LDRSB.W         R0, [R0,#0x5A]
3AAEA0:  LDRD.W          R2, R6, [R3]
3AAEA4:  LDR             R3, [R3,#8]
3AAEA6:  VMOV            S0, R0
3AAEAA:  MOV.W           R0, #0x3F800000
3AAEAE:  VCVT.F32.S32    S0, S0
3AAEB2:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3AAEB6:  STRD.W          R0, R1, [SP,#0xD0+var_B8]
3AAEBA:  MOV             R0, R5
3AAEBC:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
3AAEC0:  STR             R1, [SP,#0xD0+var_A8]
3AAEC2:  MOVS            R1, #3
3AAEC4:  STRD.W          R2, R6, [SP,#0xD0+var_D0]
3AAEC8:  MOVS            R2, #0
3AAECA:  STR             R3, [SP,#0xD0+var_C8]
3AAECC:  MOV             R3, R4
3AAECE:  VSTR            S0, [SP,#0xD0+var_C4]
3AAED2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AAED6:  LDR.W           R0, =(AESoundManager_ptr - 0x3AAEDE)
3AAEDA:  ADD             R0, PC; AESoundManager_ptr
3AAEDC:  LDR             R0, [R0]; AESoundManager
3AAEDE:  B               loc_3AAE66
3AAEE0:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AAEEC); jumptable 003AAD0E case 91
3AAEE4:  ADD             R5, SP, #0xD0+var_A4
3AAEE6:  LDR             R1, [R4,#4]
3AAEE8:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AAEEA:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AAEEC:  LDR             R2, [R1,#0x14]
3AAEEE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AAEF0:  ADD.W           R3, R2, #0x30 ; '0'
3AAEF4:  CMP             R2, #0
3AAEF6:  IT EQ
3AAEF8:  ADDEQ           R3, R1, #4
3AAEFA:  MOVS            R1, #0
3AAEFC:  LDRSB.W         R0, [R0,#0x5B]
3AAF00:  LDRD.W          R2, R6, [R3]
3AAF04:  LDR             R3, [R3,#8]
3AAF06:  VMOV            S0, R0
3AAF0A:  MOV.W           R0, #0x3F800000
3AAF0E:  VCVT.F32.S32    S0, S0
3AAF12:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3AAF16:  STRD.W          R0, R1, [SP,#0xD0+var_B8]
3AAF1A:  MOV             R0, R5
3AAF1C:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
3AAF20:  STR             R1, [SP,#0xD0+var_A8]
3AAF22:  MOVS            R1, #2
3AAF24:  STRD.W          R2, R6, [SP,#0xD0+var_D0]
3AAF28:  MOVS            R2, #0x44 ; 'D'
3AAF2A:  STR             R3, [SP,#0xD0+var_C8]
3AAF2C:  MOV             R3, R4
3AAF2E:  VSTR            S0, [SP,#0xD0+var_C4]
3AAF32:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AAF36:  LDR.W           R0, =(AESoundManager_ptr - 0x3AAF3E)
3AAF3A:  ADD             R0, PC; AESoundManager_ptr
3AAF3C:  LDR             R0, [R0]; AESoundManager
3AAF3E:  B               loc_3AAE66
3AAF40:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AAF4C); jumptable 003AAD0E case 92
3AAF44:  ADD             R5, SP, #0xD0+var_A4
3AAF46:  LDR             R1, [R4,#4]
3AAF48:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AAF4A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AAF4C:  LDR             R2, [R1,#0x14]
3AAF4E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AAF50:  ADD.W           R3, R2, #0x30 ; '0'
3AAF54:  CMP             R2, #0
3AAF56:  IT EQ
3AAF58:  ADDEQ           R3, R1, #4
3AAF5A:  MOVS            R1, #0
3AAF5C:  LDRSB.W         R0, [R0,#0x5C]
3AAF60:  LDRD.W          R2, R6, [R3]
3AAF64:  LDR             R3, [R3,#8]
3AAF66:  VMOV            S0, R0
3AAF6A:  MOV.W           R0, #0x3F800000
3AAF6E:  VCVT.F32.S32    S0, S0
3AAF72:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3AAF76:  STRD.W          R0, R1, [SP,#0xD0+var_B8]
3AAF7A:  MOV             R0, R5
3AAF7C:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
3AAF80:  STR             R1, [SP,#0xD0+var_A8]
3AAF82:  MOVS            R1, #2
3AAF84:  STRD.W          R2, R6, [SP,#0xD0+var_D0]
3AAF88:  MOVS            R2, #0x35 ; '5'
3AAF8A:  STR             R3, [SP,#0xD0+var_C8]
3AAF8C:  MOV             R3, R4
3AAF8E:  VSTR            S0, [SP,#0xD0+var_C4]
3AAF92:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AAF96:  LDR.W           R0, =(AESoundManager_ptr - 0x3AAF9E)
3AAF9A:  ADD             R0, PC; AESoundManager_ptr
3AAF9C:  LDR             R0, [R0]; AESoundManager
3AAF9E:  B               loc_3AAE66
3AAFA0:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AAFAC); jumptable 003AAD0E case 99
3AAFA4:  VMOV            S0, R5
3AAFA8:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AAFAA:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AAFAC:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AAFAE:  LDRSB.W         R0, [R0,#0x63]
3AAFB2:  VMOV            S2, R0
3AAFB6:  VCVT.F32.S32    S16, S2
3AAFBA:  VLDR            S2, =450.0
3AAFBE:  VCMPE.F32       S0, S2
3AAFC2:  VMRS            APSR_nzcv, FPSCR
3AAFC6:  BLT.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AAFCA:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AAFD6)
3AAFCE:  LDR.W           R1, [R4,#0xCC]
3AAFD2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AAFD4:  ADDW            R1, R1, #0x5DC; float
3AAFD8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3AAFDA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3AAFDC:  CMP             R0, R1
3AAFDE:  BCC.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AAFE2:  VLDR            S2, =800.0
3AAFE6:  VLDR            S18, =0.0
3AAFEA:  VDIV.F32        S0, S0, S2
3AAFEE:  VMOV.F32        S2, #1.0
3AAFF2:  VLDR            S4, =0.00001
3AAFF6:  VMIN.F32        D16, D0, D1
3AAFFA:  VMAX.F32        D0, D16, D9
3AAFFE:  VCMPE.F32       S0, S4
3AB002:  VMRS            APSR_nzcv, FPSCR
3AB006:  BLE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB00A:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3AB016)
3AB00E:  VMOV.F32        S4, #0.5
3AB012:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3AB014:  LDR             R0, [R0]; CWeather::UnderWaterness ...
3AB016:  VLDR            S2, [R0]
3AB01A:  VCMPE.F32       S2, S4
3AB01E:  VMRS            APSR_nzcv, FPSCR
3AB022:  BGE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB026:  VMOV            R0, S0; this
3AB02A:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AB02E:  VMOV.F32        S0, #20.0
3AB032:  LDR             R1, [R4,#4]
3AB034:  VMOV            S2, R0
3AB038:  ADD             R5, SP, #0xD0+var_A4
3AB03A:  MOVS            R3, #0
3AB03C:  MOV.W           R6, #0x3F800000
3AB040:  LDR             R0, [R1,#0x14]
3AB042:  ADD.W           R2, R0, #0x30 ; '0'
3AB046:  CMP             R0, #0
3AB048:  IT EQ
3AB04A:  ADDEQ           R2, R1, #4
3AB04C:  VMUL.F32        S0, S2, S0
3AB050:  LDM             R2, {R0-R2}
3AB052:  STRD.W          R6, R6, [SP,#0xD0+var_C0]
3AB056:  STRD.W          R6, R3, [SP,#0xD0+var_B8]
3AB05A:  STRD.W          R3, R3, [SP,#0xD0+var_B0]
3AB05E:  STR             R3, [SP,#0xD0+var_A8]
3AB060:  MOV             R3, R4
3AB062:  STMEA.W         SP, {R0-R2}
3AB066:  MOV             R0, R5
3AB068:  VADD.F32        S0, S0, S16
3AB06C:  MOVS            R1, #2
3AB06E:  MOVS            R2, #0x42 ; 'B'
3AB070:  VADD.F32        S0, S0, S18
3AB074:  VSTR            S0, [SP,#0xD0+var_C4]
3AB078:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB07C:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB086)
3AB080:  MOV             R1, R5; CAESound *
3AB082:  ADD             R0, PC; AESoundManager_ptr
3AB084:  LDR             R0, [R0]; AESoundManager ; this
3AB086:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3AB08A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AB092)
3AB08E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AB090:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3AB092:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3AB094:  STR.W           R0, [R4,#0xCC]
3AB098:  B               def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB09A:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB0A2); jumptable 003AAD0E case 100
3AB09E:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB0A0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB0A2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB0A4:  LDRSB.W         R0, [R0,#0x64]
3AB0A8:  VMOV            S0, R0
3AB0AC:  MOVW            R0, #0xFFFF
3AB0B0:  VCVT.F32.S32    S16, S0
3AB0B4:  LDRH.W          R2, [R4,#0xE0]
3AB0B8:  CMP             R2, R0
3AB0BA:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB0BE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AB0CC)
3AB0C2:  SXTH            R2, R2; __int16
3AB0C4:  LDRH.W          R1, [R4,#0xDC]; unsigned __int16
3AB0C8:  ADD             R0, PC; AEAudioHardware_ptr
3AB0CA:  LDR             R0, [R0]; AEAudioHardware ; this
3AB0CC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB0D0:  CMP             R0, #0
3AB0D2:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB0D6:  MOVS            R0, #(stderr+3); this
3AB0D8:  MOVS            R1, #5; int
3AB0DA:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AB0DE:  LDR             R2, [R4,#4]
3AB0E0:  MOVS            R5, #0
3AB0E2:  LDRSH.W         R1, [R4,#0xE0]
3AB0E6:  LDR             R3, [R2,#0x14]
3AB0E8:  ADD.W           R6, R3, #0x30 ; '0'
3AB0EC:  CMP             R3, #0
3AB0EE:  IT EQ
3AB0F0:  ADDEQ           R6, R2, #4
3AB0F2:  LDM.W           R6, {R2,R3,R12}
3AB0F6:  MOV.W           R6, #0x3F800000
3AB0FA:  STRD.W          R6, R6, [SP,#0xD0+var_C0]
3AB0FE:  STRD.W          R6, R5, [SP,#0xD0+var_B8]
3AB102:  STRD.W          R5, R5, [SP,#0xD0+var_B0]
3AB106:  STR             R5, [SP,#0xD0+var_A8]
3AB108:  ADD             R5, SP, #0xD0+var_A4
3AB10A:  VSTR            S16, [SP,#0xD0+var_C4]
3AB10E:  STMEA.W         SP, {R2,R3,R12}
3AB112:  SXTH            R2, R0
3AB114:  MOV             R0, R5
3AB116:  MOV             R3, R4
3AB118:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB11C:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB12C)
3AB120:  MOV             R1, #0x3DCCCCCD
3AB128:  ADD             R0, PC; AESoundManager_ptr
3AB12A:  STRD.W          R6, R1, [SP,#0xD0+var_88]
3AB12E:  MOV.W           R1, #0x40000000
3AB132:  LDR             R0, [R0]; AESoundManager
3AB134:  STR             R1, [SP,#0xD0+var_8C]
3AB136:  B               loc_3AAE66
3AB138:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AB144); jumptable 003AAD0E case 102
3AB13C:  MOVS            R1, #0x8F; unsigned __int16
3AB13E:  MOVS            R2, #5; __int16
3AB140:  ADD             R0, PC; AEAudioHardware_ptr
3AB142:  LDR             R0, [R0]; AEAudioHardware ; this
3AB144:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB148:  CMP             R0, #0
3AB14A:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB14E:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB15E)
3AB152:  MOV             R2, R4; CAEAudioEntity *
3AB154:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB160)
3AB158:  MOVS            R6, #0x66 ; 'f'
3AB15A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB15C:  ADD             R1, PC; AESoundManager_ptr
3AB15E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB160:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB162:  LDRB.W          R5, [R0,#0x66]
3AB166:  LDR             R0, [R1]; AESoundManager ; this
3AB168:  MOVS            R1, #0x66 ; 'f'; __int16
3AB16A:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB16E:  CMP             R0, #0
3AB170:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB174:  LDR             R0, [R4,#4]
3AB176:  SXTB            R2, R5
3AB178:  VMOV            S0, R2
3AB17C:  MOVS            R3, #0
3AB17E:  MOV.W           R5, #0x3F800000
3AB182:  LDR             R1, [R0,#0x14]
3AB184:  ADD.W           R2, R1, #0x30 ; '0'
3AB188:  CMP             R1, #0
3AB18A:  IT EQ
3AB18C:  ADDEQ           R2, R0, #4
3AB18E:  LDM             R2, {R0-R2}
3AB190:  VCVT.F32.S32    S0, S0
3AB194:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB198:  STRD.W          R5, R3, [SP,#0xD0+var_B8]
3AB19C:  ADD             R5, SP, #0xD0+var_A4
3AB19E:  STRD.W          R3, R3, [SP,#0xD0+var_B0]
3AB1A2:  STR             R3, [SP,#0xD0+var_A8]
3AB1A4:  MOV             R3, R4
3AB1A6:  VSTR            S0, [SP,#0xD0+var_C4]
3AB1AA:  STMEA.W         SP, {R0-R2}
3AB1AE:  MOV             R0, R5
3AB1B0:  MOVS            R1, #5
3AB1B2:  MOVS            R2, #0x53 ; 'S'
3AB1B4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB1B8:  MOV             R0, #0x3CF5C28F
3AB1C0:  STR             R0, [SP,#0xD0+var_84]
3AB1C2:  MOV             R0, #0x3F63D70A
3AB1CA:  STR             R0, [SP,#0xD0+var_88]
3AB1CC:  MOV.W           R0, #0x40000000
3AB1D0:  STR             R0, [SP,#0xD0+var_8C]
3AB1D2:  MOVS            R0, #0x80
3AB1D4:  STRH.W          R0, [SP,#0xD0+var_4E]
3AB1D8:  MOV             R0, R5; this
3AB1DA:  LDR             R1, [R4,#4]; CEntity *
3AB1DC:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3AB1E0:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB1EA)
3AB1E4:  STR             R6, [SP,#0xD0+var_98]
3AB1E6:  ADD             R0, PC; AESoundManager_ptr
3AB1E8:  LDR             R0, [R0]; AESoundManager
3AB1EA:  B               loc_3AAE66
3AB1EC:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB1F8); jumptable 003AAD0E case 103
3AB1F0:  ADD             R5, SP, #0xD0+var_A4
3AB1F2:  LDR             R1, [R4,#4]
3AB1F4:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB1F6:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB1F8:  LDR             R2, [R1,#0x14]
3AB1FA:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB1FC:  ADD.W           R3, R2, #0x30 ; '0'
3AB200:  CMP             R2, #0
3AB202:  IT EQ
3AB204:  ADDEQ           R3, R1, #4
3AB206:  MOVS            R1, #0
3AB208:  LDRSB.W         R0, [R0,#0x67]
3AB20C:  LDRD.W          R2, R6, [R3]
3AB210:  LDR             R3, [R3,#8]
3AB212:  VMOV            S0, R0
3AB216:  MOV.W           R0, #0x3F800000
3AB21A:  VCVT.F32.S32    S0, S0
3AB21E:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3AB222:  STRD.W          R0, R1, [SP,#0xD0+var_B8]
3AB226:  MOV             R0, R5
3AB228:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
3AB22C:  STR             R1, [SP,#0xD0+var_A8]
3AB22E:  MOVS            R1, #0x13
3AB230:  STRD.W          R2, R6, [SP,#0xD0+var_D0]
3AB234:  MOVS            R2, #0x25 ; '%'
3AB236:  STR             R3, [SP,#0xD0+var_C8]
3AB238:  MOV             R3, R4
3AB23A:  VSTR            S0, [SP,#0xD0+var_C4]
3AB23E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB242:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB254)
3AB246:  MOV.W           R1, #0x40000000
3AB24A:  STR             R1, [SP,#0xD0+var_8C]
3AB24C:  MOVW            R1, #0xCCCD
3AB250:  ADD             R0, PC; AESoundManager_ptr
3AB252:  MOVT            R1, #0x3D4C
3AB256:  STR             R1, [SP,#0xD0+var_84]
3AB258:  MOVS            R1, #0x67 ; 'g'
3AB25A:  LDR             R0, [R0]; AESoundManager
3AB25C:  STR             R1, [SP,#0xD0+var_98]
3AB25E:  B               loc_3AAE66
3AB260:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB270); jumptable 003AAD0E case 107
3AB264:  MOV             R2, R4; CAEAudioEntity *
3AB266:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB272)
3AB26A:  MOVS            R6, #0x6B ; 'k'
3AB26C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB26E:  ADD             R1, PC; AESoundManager_ptr
3AB270:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB272:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB274:  LDRB.W          R5, [R0,#0x6B]
3AB278:  LDR             R0, [R1]; AESoundManager ; this
3AB27A:  MOVS            R1, #0x6B ; 'k'; __int16
3AB27C:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB280:  CMP             R0, #0
3AB282:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB286:  SXTB            R1, R5
3AB288:  VMOV.F32        S0, #-6.0
3AB28C:  VMOV            S2, R1
3AB290:  LDR             R0, [R4,#4]
3AB292:  MOV.W           R5, #0x3F800000
3AB296:  VCVT.F32.S32    S2, S2
3AB29A:  LDR             R1, [R0,#0x14]
3AB29C:  ADD.W           R2, R1, #0x30 ; '0'
3AB2A0:  CMP             R1, #0
3AB2A2:  IT EQ
3AB2A4:  ADDEQ           R2, R0, #4
3AB2A6:  MOVS            R0, #0
3AB2A8:  LDRD.W          R1, R3, [R2]
3AB2AC:  LDR             R2, [R2,#8]
3AB2AE:  VADD.F32        S0, S2, S0
3AB2B2:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB2B6:  STRD.W          R5, R0, [SP,#0xD0+var_B8]
3AB2BA:  ADD             R5, SP, #0xD0+var_A4
3AB2BC:  STRD.W          R0, R0, [SP,#0xD0+var_B0]
3AB2C0:  STR             R0, [SP,#0xD0+var_A8]
3AB2C2:  MOV             R0, R5
3AB2C4:  STRD.W          R1, R3, [SP,#0xD0+var_D0]
3AB2C8:  MOVS            R1, #0x13
3AB2CA:  STR             R2, [SP,#0xD0+var_C8]
3AB2CC:  MOVS            R2, #0x26 ; '&'
3AB2CE:  MOV             R3, R4
3AB2D0:  VSTR            S0, [SP,#0xD0+var_C4]
3AB2D4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB2D8:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB2E0)
3AB2DC:  ADD             R0, PC; AESoundManager_ptr
3AB2DE:  B               loc_3AB4F6
3AB2E0:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB2F0); jumptable 003AAD0E case 108
3AB2E4:  MOV             R2, R4; CAEAudioEntity *
3AB2E6:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB2F2)
3AB2EA:  MOVS            R6, #0x6C ; 'l'
3AB2EC:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB2EE:  ADD             R1, PC; AESoundManager_ptr
3AB2F0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB2F2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB2F4:  LDRB.W          R5, [R0,#0x6C]
3AB2F8:  LDR             R0, [R1]; AESoundManager ; this
3AB2FA:  MOVS            R1, #0x6C ; 'l'; __int16
3AB2FC:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB300:  CMP             R0, #0
3AB302:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB306:  SXTB            R1, R5
3AB308:  VMOV.F32        S0, #-3.0
3AB30C:  VMOV            S2, R1
3AB310:  LDR             R0, [R4,#4]
3AB312:  MOV.W           R5, #0x3F800000
3AB316:  VCVT.F32.S32    S2, S2
3AB31A:  LDR             R1, [R0,#0x14]
3AB31C:  ADD.W           R2, R1, #0x30 ; '0'
3AB320:  CMP             R1, #0
3AB322:  IT EQ
3AB324:  ADDEQ           R2, R0, #4
3AB326:  MOVS            R0, #0
3AB328:  LDRD.W          R1, R3, [R2]
3AB32C:  LDR             R2, [R2,#8]
3AB32E:  VADD.F32        S0, S2, S0
3AB332:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB336:  STRD.W          R5, R0, [SP,#0xD0+var_B8]
3AB33A:  ADD             R5, SP, #0xD0+var_A4
3AB33C:  STRD.W          R0, R0, [SP,#0xD0+var_B0]
3AB340:  STR             R0, [SP,#0xD0+var_A8]
3AB342:  MOV             R0, R5
3AB344:  STRD.W          R1, R3, [SP,#0xD0+var_D0]
3AB348:  MOVS            R1, #0x13
3AB34A:  STR             R2, [SP,#0xD0+var_C8]
3AB34C:  MOVS            R2, #0x1F
3AB34E:  MOV             R3, R4
3AB350:  VSTR            S0, [SP,#0xD0+var_C4]
3AB354:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB358:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB360)
3AB35C:  ADD             R0, PC; AESoundManager_ptr
3AB35E:  B               loc_3AB4F6
3AB360:  DCFS 450.0
3AB364:  DCFS 800.0
3AB368:  DCFS 0.0
3AB36C:  DCFS 0.00001
3AB370:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB382); jumptable 003AAD0E case 109
3AB374:  MOV             R2, R4; CAEAudioEntity *
3AB376:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB384)
3AB37A:  MOV.W           R8, #0x6D ; 'm'
3AB37E:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB380:  ADD             R1, PC; AESoundManager_ptr
3AB382:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB384:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB386:  LDRB.W          R5, [R0,#0x6D]
3AB38A:  LDR             R0, [R1]; AESoundManager ; this
3AB38C:  MOVS            R1, #0x6D ; 'm'; __int16
3AB38E:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB392:  CMP             R0, #0
3AB394:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB398:  LDR             R0, [R4,#4]
3AB39A:  SXTB            R2, R5
3AB39C:  VMOV            S0, R2
3AB3A0:  ADD             R5, SP, #0xD0+var_A4
3AB3A2:  MOVS            R6, #0
3AB3A4:  MOV.W           R3, #0x3F800000
3AB3A8:  LDR             R1, [R0,#0x14]
3AB3AA:  ADD.W           R2, R1, #0x30 ; '0'
3AB3AE:  CMP             R1, #0
3AB3B0:  IT EQ
3AB3B2:  ADDEQ           R2, R0, #4
3AB3B4:  LDM             R2, {R0-R2}
3AB3B6:  VCVT.F32.S32    S0, S0
3AB3BA:  STRD.W          R3, R3, [SP,#0xD0+var_C0]
3AB3BE:  STRD.W          R3, R6, [SP,#0xD0+var_B8]
3AB3C2:  MOV             R3, R4
3AB3C4:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3AB3C8:  STR             R6, [SP,#0xD0+var_A8]
3AB3CA:  VSTR            S0, [SP,#0xD0+var_C4]
3AB3CE:  STMEA.W         SP, {R0-R2}
3AB3D2:  MOV             R0, R5
3AB3D4:  MOVS            R1, #0x13
3AB3D6:  MOVS            R2, #0x2C ; ','
3AB3D8:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB3DC:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB3E4)
3AB3E0:  ADD             R0, PC; AESoundManager_ptr
3AB3E2:  B               loc_3AB456
3AB3E4:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB3F6); jumptable 003AAD0E case 110
3AB3E8:  MOV             R2, R4; CAEAudioEntity *
3AB3EA:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB3F8)
3AB3EE:  MOV.W           R8, #0x6E ; 'n'
3AB3F2:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB3F4:  ADD             R1, PC; AESoundManager_ptr
3AB3F6:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB3F8:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB3FA:  LDRB.W          R5, [R0,#0x6E]
3AB3FE:  LDR             R0, [R1]; AESoundManager ; this
3AB400:  MOVS            R1, #0x6E ; 'n'; __int16
3AB402:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB406:  CMP             R0, #0
3AB408:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB40C:  LDR             R0, [R4,#4]
3AB40E:  SXTB            R2, R5
3AB410:  VMOV            S0, R2
3AB414:  ADD             R5, SP, #0xD0+var_A4
3AB416:  MOVS            R6, #0
3AB418:  MOV.W           R3, #0x3F800000
3AB41C:  LDR             R1, [R0,#0x14]
3AB41E:  ADD.W           R2, R1, #0x30 ; '0'
3AB422:  CMP             R1, #0
3AB424:  IT EQ
3AB426:  ADDEQ           R2, R0, #4
3AB428:  LDM             R2, {R0-R2}
3AB42A:  VCVT.F32.S32    S0, S0
3AB42E:  STRD.W          R3, R3, [SP,#0xD0+var_C0]
3AB432:  STRD.W          R3, R6, [SP,#0xD0+var_B8]
3AB436:  MOV             R3, R4
3AB438:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3AB43C:  STR             R6, [SP,#0xD0+var_A8]
3AB43E:  VSTR            S0, [SP,#0xD0+var_C4]
3AB442:  STMEA.W         SP, {R0-R2}
3AB446:  MOV             R0, R5
3AB448:  MOVS            R1, #0x13
3AB44A:  MOVS            R2, #0x2C ; ','
3AB44C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB450:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB458)
3AB454:  ADD             R0, PC; AESoundManager_ptr
3AB456:  MOVS            R1, #0x20 ; ' '
3AB458:  STRH.W          R6, [SP,#0xD0+var_48]
3AB45C:  STRH.W          R1, [SP,#0xD0+var_4E]
3AB460:  MOV             R1, #0x3D4CCCCD
3AB468:  LDR             R0, [R0]; AESoundManager
3AB46A:  STR             R1, [SP,#0xD0+var_84]
3AB46C:  MOV.W           R1, #0x40000000
3AB470:  STR             R1, [SP,#0xD0+var_8C]
3AB472:  STR.W           R8, [SP,#0xD0+var_98]
3AB476:  B               loc_3AAE66
3AB478:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB488); jumptable 003AAD0E case 111
3AB47C:  MOV             R2, R4; CAEAudioEntity *
3AB47E:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB48A)
3AB482:  MOVS            R6, #0x6F ; 'o'
3AB484:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB486:  ADD             R1, PC; AESoundManager_ptr
3AB488:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB48A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB48C:  LDRB.W          R5, [R0,#0x6F]
3AB490:  LDR             R0, [R1]; AESoundManager ; this
3AB492:  MOVS            R1, #0x6F ; 'o'; __int16
3AB494:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB498:  CMP             R0, #0
3AB49A:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB49E:  SXTB            R1, R5
3AB4A0:  VMOV.F32        S0, #-6.0
3AB4A4:  VMOV            S2, R1
3AB4A8:  LDR             R0, [R4,#4]
3AB4AA:  MOV.W           R5, #0x3F800000
3AB4AE:  VCVT.F32.S32    S2, S2
3AB4B2:  LDR             R1, [R0,#0x14]
3AB4B4:  ADD.W           R2, R1, #0x30 ; '0'
3AB4B8:  CMP             R1, #0
3AB4BA:  IT EQ
3AB4BC:  ADDEQ           R2, R0, #4
3AB4BE:  MOVS            R0, #0
3AB4C0:  LDRD.W          R1, R3, [R2]
3AB4C4:  LDR             R2, [R2,#8]
3AB4C6:  VADD.F32        S0, S2, S0
3AB4CA:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB4CE:  STRD.W          R5, R0, [SP,#0xD0+var_B8]
3AB4D2:  ADD             R5, SP, #0xD0+var_A4
3AB4D4:  STRD.W          R0, R0, [SP,#0xD0+var_B0]
3AB4D8:  STR             R0, [SP,#0xD0+var_A8]
3AB4DA:  MOV             R0, R5
3AB4DC:  STRD.W          R1, R3, [SP,#0xD0+var_D0]
3AB4E0:  MOVS            R1, #0x13
3AB4E2:  STR             R2, [SP,#0xD0+var_C8]
3AB4E4:  MOVS            R2, #0x26 ; '&'
3AB4E6:  MOV             R3, R4
3AB4E8:  VSTR            S0, [SP,#0xD0+var_C4]
3AB4EC:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB4F0:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB4F8)
3AB4F4:  ADD             R0, PC; AESoundManager_ptr
3AB4F6:  MOV.W           R1, #0x40000000
3AB4FA:  LDR             R0, [R0]; AESoundManager
3AB4FC:  STR             R1, [SP,#0xD0+var_8C]
3AB4FE:  MOV             R1, #0x3D4CCCCD
3AB506:  STR             R1, [SP,#0xD0+var_84]
3AB508:  STR             R6, [SP,#0xD0+var_98]
3AB50A:  B               loc_3AAE66
3AB50C:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB51A); jumptable 003AAD0E case 113
3AB510:  MOV             R2, R4; CAEAudioEntity *
3AB512:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB51C)
3AB516:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB518:  ADD             R1, PC; AESoundManager_ptr
3AB51A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB51C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB51E:  LDRSB.W         R5, [R0,#0x71]
3AB522:  LDR             R0, [R1]; AESoundManager ; this
3AB524:  MOVS            R1, #0x71 ; 'q'; __int16
3AB526:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB52A:  VMOV            S0, R5
3AB52E:  CMP             R0, #0
3AB530:  VCVT.F32.S32    S16, S0
3AB534:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB538:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB544)
3AB53C:  MOVS            R1, #0x72 ; 'r'; __int16
3AB53E:  MOV             R2, R4; CAEAudioEntity *
3AB540:  ADD             R0, PC; AESoundManager_ptr
3AB542:  LDR             R0, [R0]; AESoundManager ; this
3AB544:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB548:  CMP             R0, #0
3AB54A:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB54E:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AB55A)
3AB552:  MOVS            R1, #0x8F; unsigned __int16
3AB554:  MOVS            R2, #5; __int16
3AB556:  ADD             R0, PC; AEAudioHardware_ptr
3AB558:  LDR             R0, [R0]; AEAudioHardware ; this
3AB55A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB55E:  CMP             R0, #0
3AB560:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB564:  LDR             R0, [R4,#4]
3AB566:  ADD             R5, SP, #0xD0+var_A4
3AB568:  MOVS            R3, #0
3AB56A:  MOV.W           R6, #0x3F800000
3AB56E:  LDR             R1, [R0,#0x14]
3AB570:  ADD.W           R2, R1, #0x30 ; '0'
3AB574:  CMP             R1, #0
3AB576:  IT EQ
3AB578:  ADDEQ           R2, R0, #4
3AB57A:  LDM             R2, {R0-R2}
3AB57C:  STRD.W          R6, R6, [SP,#0xD0+var_C0]
3AB580:  STRD.W          R6, R3, [SP,#0xD0+var_B8]
3AB584:  STRD.W          R3, R3, [SP,#0xD0+var_B0]
3AB588:  STR             R3, [SP,#0xD0+var_A8]
3AB58A:  MOV             R3, R4
3AB58C:  VSTR            S16, [SP,#0xD0+var_C4]
3AB590:  STMEA.W         SP, {R0-R2}
3AB594:  MOV             R0, R5
3AB596:  MOVS            R1, #5
3AB598:  MOVS            R2, #0x46 ; 'F'
3AB59A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB59E:  MOV             R0, #0x3D4CCCCD
3AB5A6:  STR             R0, [SP,#0xD0+var_84]
3AB5A8:  MOV             R0, #0x3F0F5C29
3AB5B0:  STR             R0, [SP,#0xD0+var_88]
3AB5B2:  MOV.W           R0, #0x40000000
3AB5B6:  STR             R0, [SP,#0xD0+var_8C]
3AB5B8:  MOVS            R0, #0x80
3AB5BA:  STRH.W          R0, [SP,#0xD0+var_4E]
3AB5BE:  MOV             R0, R5; this
3AB5C0:  LDR             R1, [R4,#4]; CEntity *
3AB5C2:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3AB5C6:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB5D0)
3AB5CA:  MOVS            R1, #0x71 ; 'q'
3AB5CC:  ADD             R0, PC; AESoundManager_ptr
3AB5CE:  B               loc_3AB25A
3AB5D0:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB5DE); jumptable 003AAD0E case 114
3AB5D4:  MOV             R2, R4; CAEAudioEntity *
3AB5D6:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB5E0)
3AB5DA:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB5DC:  ADD             R1, PC; AESoundManager_ptr
3AB5DE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB5E0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB5E2:  LDRSB.W         R5, [R0,#0x72]
3AB5E6:  LDR             R0, [R1]; AESoundManager ; this
3AB5E8:  MOVS            R1, #0x71 ; 'q'; __int16
3AB5EA:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB5EE:  VMOV            S0, R5
3AB5F2:  CMP             R0, #0
3AB5F4:  VCVT.F32.S32    S16, S0
3AB5F8:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB5FC:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB608)
3AB600:  MOVS            R1, #0x72 ; 'r'; __int16
3AB602:  MOV             R2, R4; CAEAudioEntity *
3AB604:  ADD             R0, PC; AESoundManager_ptr
3AB606:  LDR             R0, [R0]; AESoundManager ; this
3AB608:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB60C:  CMP             R0, #0
3AB60E:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB612:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AB61E)
3AB616:  MOVS            R1, #0x8F; unsigned __int16
3AB618:  MOVS            R2, #5; __int16
3AB61A:  ADD             R0, PC; AEAudioHardware_ptr
3AB61C:  LDR             R0, [R0]; AEAudioHardware ; this
3AB61E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB622:  CMP             R0, #0
3AB624:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB628:  LDR             R0, [R4,#4]
3AB62A:  ADD             R5, SP, #0xD0+var_A4
3AB62C:  MOVS            R3, #0
3AB62E:  MOV.W           R6, #0x3F800000
3AB632:  LDR             R1, [R0,#0x14]
3AB634:  ADD.W           R2, R1, #0x30 ; '0'
3AB638:  CMP             R1, #0
3AB63A:  IT EQ
3AB63C:  ADDEQ           R2, R0, #4
3AB63E:  LDM             R2, {R0-R2}
3AB640:  STRD.W          R6, R6, [SP,#0xD0+var_C0]
3AB644:  STRD.W          R6, R3, [SP,#0xD0+var_B8]
3AB648:  STRD.W          R3, R3, [SP,#0xD0+var_B0]
3AB64C:  STR             R3, [SP,#0xD0+var_A8]
3AB64E:  MOV             R3, R4
3AB650:  VSTR            S16, [SP,#0xD0+var_C4]
3AB654:  STMEA.W         SP, {R0-R2}
3AB658:  MOV             R0, R5
3AB65A:  MOVS            R1, #5
3AB65C:  MOVS            R2, #0x46 ; 'F'
3AB65E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB662:  MOV             R0, #0x3D4CCCCD
3AB66A:  STR             R0, [SP,#0xD0+var_84]
3AB66C:  MOV.W           R0, #0x3F000000
3AB670:  STR             R0, [SP,#0xD0+var_88]
3AB672:  MOV.W           R0, #0x40000000
3AB676:  STR             R0, [SP,#0xD0+var_8C]
3AB678:  MOVS            R0, #0x80
3AB67A:  STRH.W          R0, [SP,#0xD0+var_4E]
3AB67E:  MOV             R0, R5; this
3AB680:  LDR             R1, [R4,#4]; CEntity *
3AB682:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3AB686:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB690)
3AB68A:  MOVS            R1, #0x72 ; 'r'
3AB68C:  ADD             R0, PC; AESoundManager_ptr
3AB68E:  B               loc_3AB25A
3AB690:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB69E); jumptable 003AAD0E case 115
3AB694:  MOV             R2, R4; CAEAudioEntity *
3AB696:  LDR.W           R1, =(AESoundManager_ptr - 0x3AB6A0)
3AB69A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB69C:  ADD             R1, PC; AESoundManager_ptr
3AB69E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB6A0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB6A2:  LDRSB.W         R5, [R0,#0x73]
3AB6A6:  LDR             R0, [R1]; AESoundManager ; this
3AB6A8:  MOVS            R1, #0x73 ; 's'; __int16
3AB6AA:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB6AE:  VMOV            S0, R5
3AB6B2:  CMP             R0, #0
3AB6B4:  VCVT.F32.S32    S16, S0
3AB6B8:  BNE.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB6BC:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AB6C8)
3AB6C0:  MOVS            R1, #0x45 ; 'E'; unsigned __int16
3AB6C2:  MOVS            R2, #0x28 ; '('; __int16
3AB6C4:  ADD             R0, PC; AEAudioHardware_ptr
3AB6C6:  LDR             R0, [R0]; AEAudioHardware ; this
3AB6C8:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB6CC:  CMP             R0, #0
3AB6CE:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB6D2:  LDR             R0, [R4,#4]
3AB6D4:  ADD             R5, SP, #0xD0+var_A4
3AB6D6:  MOVS            R3, #0
3AB6D8:  MOV.W           R6, #0x3F800000
3AB6DC:  LDR             R1, [R0,#0x14]
3AB6DE:  ADD.W           R2, R1, #0x30 ; '0'
3AB6E2:  CMP             R1, #0
3AB6E4:  IT EQ
3AB6E6:  ADDEQ           R2, R0, #4
3AB6E8:  LDM             R2, {R0-R2}
3AB6EA:  STRD.W          R6, R6, [SP,#0xD0+var_C0]
3AB6EE:  STRD.W          R6, R3, [SP,#0xD0+var_B8]
3AB6F2:  STRD.W          R3, R3, [SP,#0xD0+var_B0]
3AB6F6:  STR             R3, [SP,#0xD0+var_A8]
3AB6F8:  MOV             R3, R4
3AB6FA:  VSTR            S16, [SP,#0xD0+var_C4]
3AB6FE:  STMEA.W         SP, {R0-R2}
3AB702:  MOV             R0, R5
3AB704:  MOVS            R1, #0x28 ; '('
3AB706:  MOVS            R2, #4
3AB708:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB70C:  MOV.W           R0, #0x40000000
3AB710:  STR             R0, [SP,#0xD0+var_8C]
3AB712:  MOV             R0, #0x3D4CCCCD
3AB71A:  STR             R0, [SP,#0xD0+var_84]
3AB71C:  MOVS            R0, #0x80
3AB71E:  STRH.W          R0, [SP,#0xD0+var_4E]
3AB722:  MOV             R0, R5; this
3AB724:  LDR             R1, [R4,#4]; CEntity *
3AB726:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3AB72A:  LDR.W           R0, =(AESoundManager_ptr - 0x3AB734)
3AB72E:  MOVS            R1, #0x73 ; 's'
3AB730:  ADD             R0, PC; AESoundManager_ptr
3AB732:  B               loc_3AB25A
3AB734:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB73C); jumptable 003AAD0E case 119
3AB738:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB73A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB73C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB73E:  LDRSB.W         R0, [R0,#0x77]
3AB742:  VMOV            S0, R0
3AB746:  VCVT.F32.S32    S16, S0
3AB74A:  LDRSB.W         R0, [R4,#0x80]
3AB74E:  CMP             R0, #2
3AB750:  BEQ             loc_3AB7DE
3AB752:  CMP             R0, #1
3AB754:  BNE             loc_3AB7E6
3AB756:  VMOV.F32        S0, #-3.0
3AB75A:  B               loc_3AB7E2
3AB75C:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB764); jumptable 003AAD0E case 120
3AB760:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB762:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB764:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB766:  LDRSB.W         R0, [R0,#0x78]
3AB76A:  VMOV            S0, R0
3AB76E:  VCVT.F32.S32    S16, S0
3AB772:  LDRSB.W         R0, [R4,#0x80]
3AB776:  CMP             R0, #2
3AB778:  BEQ.W           loc_3AB88C
3AB77C:  CMP             R0, #1
3AB77E:  BNE.W           loc_3AB894
3AB782:  VMOV.F32        S0, #-3.0
3AB786:  B               loc_3AB890
3AB788:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB790); jumptable 003AAD0E case 121
3AB78C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB78E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB790:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB792:  LDRSB.W         R0, [R0,#0x79]
3AB796:  VMOV            S0, R0
3AB79A:  VCVT.F32.S32    S16, S0
3AB79E:  LDRSB.W         R0, [R4,#0x80]
3AB7A2:  CMP             R0, #2
3AB7A4:  BEQ.W           loc_3AB918
3AB7A8:  CMP             R0, #1
3AB7AA:  BNE.W           loc_3AB920
3AB7AE:  VMOV.F32        S0, #-3.0
3AB7B2:  B               loc_3AB91C
3AB7B4:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AB7BA); jumptable 003AAD0E case 122
3AB7B6:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AB7B8:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AB7BA:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AB7BC:  LDRSB.W         R0, [R0,#0x7A]
3AB7C0:  VMOV            S0, R0
3AB7C4:  VCVT.F32.S32    S16, S0
3AB7C8:  LDRSB.W         R0, [R4,#0x80]
3AB7CC:  CMP             R0, #2
3AB7CE:  BEQ.W           loc_3ABA00
3AB7D2:  CMP             R0, #1
3AB7D4:  BNE.W           loc_3ABA08
3AB7D8:  VMOV.F32        S0, #-3.0
3AB7DC:  B               loc_3ABA04
3AB7DE:  VMOV.F32        S0, #-6.0
3AB7E2:  VADD.F32        S16, S16, S0
3AB7E6:  LDR             R0, =(AEAudioHardware_ptr - 0x3AB7F0)
3AB7E8:  MOVS            R1, #0x27 ; '''; unsigned __int16
3AB7EA:  MOVS            R2, #2; __int16
3AB7EC:  ADD             R0, PC; AEAudioHardware_ptr
3AB7EE:  LDR             R0, [R0]; AEAudioHardware ; this
3AB7F0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB7F4:  CMP             R0, #0
3AB7F6:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB7FA:  LDR             R0, =(AESoundManager_ptr - 0x3AB808)
3AB7FC:  MOVS            R1, #0x77 ; 'w'; __int16
3AB7FE:  MOV             R2, R4; CAEAudioEntity *
3AB800:  MOV.W           R9, #0x77 ; 'w'
3AB804:  ADD             R0, PC; AESoundManager_ptr
3AB806:  LDR.W           R10, [R0]; AESoundManager
3AB80A:  MOV             R0, R10; this
3AB80C:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3AB810:  MOV             R6, R0
3AB812:  LDR             R0, [R4,#4]
3AB814:  ADD.W           R8, SP, #0xD0+var_A4
3AB818:  MOVS            R3, #0
3AB81A:  MOV.W           R5, #0x3F800000
3AB81E:  LDR             R1, [R0,#0x14]
3AB820:  ADD.W           R2, R1, #0x30 ; '0'
3AB824:  CMP             R1, #0
3AB826:  IT EQ
3AB828:  ADDEQ           R2, R0, #4
3AB82A:  LDM             R2, {R0-R2}
3AB82C:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB830:  STRD.W          R5, R3, [SP,#0xD0+var_B8]
3AB834:  STRD.W          R3, R3, [SP,#0xD0+var_B0]
3AB838:  STR             R3, [SP,#0xD0+var_A8]
3AB83A:  MOV             R3, R4
3AB83C:  VSTR            S16, [SP,#0xD0+var_C4]
3AB840:  STMEA.W         SP, {R0-R2}
3AB844:  MOV             R0, R8
3AB846:  MOVS            R1, #2
3AB848:  MOVS            R2, #0x1D
3AB84A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB84E:  ADR             R0, dword_3ABBB0
3AB850:  CMP             R6, #0
3AB852:  IT EQ
3AB854:  ADDEQ           R0, #4
3AB856:  CMP             R6, #0
3AB858:  VLDR            S0, [R0]
3AB85C:  MOV             R0, #0x3D75C290
3AB864:  MOV             R1, R8
3AB866:  STR             R0, [SP,#0xD0+var_84]
3AB868:  MOV.W           R0, #0x3FC00000
3AB86C:  VSTR            S0, [SP,#0xD0+var_88]
3AB870:  STR             R0, [SP,#0xD0+var_8C]
3AB872:  MOV.W           R0, #0x20 ; ' '
3AB876:  STRH.W          R0, [SP,#0xD0+var_4E]
3AB87A:  IT NE
3AB87C:  MOVNE           R6, #0x28 ; '('
3AB87E:  STRH.W          R6, [SP,#0xD0+var_48]
3AB882:  MOV             R0, R10
3AB884:  STR.W           R9, [SP,#0xD0+var_98]
3AB888:  B.W             loc_3AAE68
3AB88C:  VMOV.F32        S0, #-6.0
3AB890:  VADD.F32        S16, S16, S0
3AB894:  LDR             R0, =(AEAudioHardware_ptr - 0x3AB89E)
3AB896:  MOVS            R1, #0x27 ; '''; unsigned __int16
3AB898:  MOVS            R2, #2; __int16
3AB89A:  ADD             R0, PC; AEAudioHardware_ptr
3AB89C:  LDR             R0, [R0]; AEAudioHardware ; this
3AB89E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB8A2:  CMP             R0, #0
3AB8A4:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB8A8:  MOVS            R0, #(word_2E+1); this
3AB8AA:  MOVS            R1, #0x31 ; '1'; int
3AB8AC:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AB8B0:  LDR             R1, [R4,#4]
3AB8B2:  ADD.W           R8, SP, #0xD0+var_A4
3AB8B6:  MOVS            R6, #0
3AB8B8:  MOV.W           R5, #0x3F800000
3AB8BC:  LDR             R2, [R1,#0x14]
3AB8BE:  ADD.W           R3, R2, #0x30 ; '0'
3AB8C2:  CMP             R2, #0
3AB8C4:  IT EQ
3AB8C6:  ADDEQ           R3, R1, #4
3AB8C8:  LDM             R3, {R1-R3}
3AB8CA:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB8CE:  STRD.W          R5, R6, [SP,#0xD0+var_B8]
3AB8D2:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3AB8D6:  STR             R6, [SP,#0xD0+var_A8]
3AB8D8:  VSTR            S16, [SP,#0xD0+var_C4]
3AB8DC:  STMEA.W         SP, {R1-R3}
3AB8E0:  SXTH            R2, R0
3AB8E2:  MOV             R0, R8
3AB8E4:  MOVS            R1, #2
3AB8E6:  MOV             R3, R4
3AB8E8:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB8EC:  MOVW            R1, #0xC290
3AB8F0:  LDR             R0, =(AESoundManager_ptr - 0x3AB902)
3AB8F2:  MOVT            R1, #0x3D75
3AB8F6:  STRD.W          R5, R1, [SP,#0xD0+var_88]
3AB8FA:  MOV.W           R1, #0x3FC00000
3AB8FE:  ADD             R0, PC; AESoundManager_ptr
3AB900:  STR             R1, [SP,#0xD0+var_8C]
3AB902:  MOVS            R1, #0x20 ; ' '
3AB904:  STRH.W          R1, [SP,#0xD0+var_4E]
3AB908:  MOVS            R1, #0x79 ; 'y'
3AB90A:  STRH.W          R6, [SP,#0xD0+var_48]
3AB90E:  STR             R1, [SP,#0xD0+var_98]
3AB910:  MOV             R1, R8
3AB912:  LDR             R0, [R0]; AESoundManager
3AB914:  B.W             loc_3AAE68
3AB918:  VMOV.F32        S0, #-6.0
3AB91C:  VADD.F32        S16, S16, S0
3AB920:  LDR             R0, =(AEAudioHardware_ptr - 0x3AB92A)
3AB922:  MOVS            R1, #0x27 ; '''; unsigned __int16
3AB924:  MOVS            R2, #2; __int16
3AB926:  ADD             R0, PC; AEAudioHardware_ptr
3AB928:  LDR             R0, [R0]; AEAudioHardware ; this
3AB92A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AB92E:  CMP             R0, #0
3AB930:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3AB934:  VMOV.F32        S0, #-2.0
3AB938:  LDR             R0, [R4,#4]
3AB93A:  ADD.W           R8, SP, #0xD0+var_A4
3AB93E:  MOVS            R6, #0
3AB940:  MOV.W           R5, #0x3F800000
3AB944:  MOV             R3, R4
3AB946:  LDR             R1, [R0,#0x14]
3AB948:  ADD.W           R2, R1, #0x30 ; '0'
3AB94C:  CMP             R1, #0
3AB94E:  IT EQ
3AB950:  ADDEQ           R2, R0, #4
3AB952:  VADD.F32        S0, S16, S0
3AB956:  LDM             R2, {R0-R2}
3AB958:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB95C:  STRD.W          R5, R6, [SP,#0xD0+var_B8]
3AB960:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3AB964:  STR             R6, [SP,#0xD0+var_A8]
3AB966:  STMEA.W         SP, {R0-R2}
3AB96A:  MOV             R0, R8
3AB96C:  MOVS            R1, #2
3AB96E:  MOVS            R2, #0x21 ; '!'
3AB970:  VSTR            S0, [SP,#0xD0+var_C4]
3AB974:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB978:  LDR             R0, =(AESoundManager_ptr - 0x3AB988)
3AB97A:  MOV.W           R10, #0x20 ; ' '
3AB97E:  MOV.W           R11, #0x79 ; 'y'
3AB982:  MOV             R1, R8; CAESound *
3AB984:  ADD             R0, PC; AESoundManager_ptr
3AB986:  LDR.W           R9, [R0]; AESoundManager
3AB98A:  MOV             R0, #0x3D75C290
3AB992:  STRD.W          R5, R0, [SP,#0xD0+var_88]
3AB996:  MOV.W           R0, #0x3FC00000
3AB99A:  STR             R0, [SP,#0xD0+var_8C]
3AB99C:  MOV             R0, R9; this
3AB99E:  STRH.W          R10, [SP,#0xD0+var_4E]
3AB9A2:  STRH.W          R6, [SP,#0xD0+var_48]
3AB9A6:  STR.W           R11, [SP,#0xD0+var_98]
3AB9AA:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3AB9AE:  MOVS            R0, #dword_14; this
3AB9B0:  MOVS            R1, #0x1C; int
3AB9B2:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AB9B6:  LDR             R1, [R4,#4]
3AB9B8:  LDR             R2, [R1,#0x14]
3AB9BA:  ADD.W           R3, R2, #0x30 ; '0'
3AB9BE:  CMP             R2, #0
3AB9C0:  IT EQ
3AB9C2:  ADDEQ           R3, R1, #4
3AB9C4:  LDM             R3, {R1-R3}
3AB9C6:  STR             R6, [SP,#0xD0+var_A8]
3AB9C8:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3AB9CC:  STRD.W          R2, R3, [SP,#0xD0+var_CC]
3AB9D0:  SXTH            R2, R0
3AB9D2:  STRD.W          R5, R6, [SP,#0xD0+var_B8]
3AB9D6:  MOV             R0, R8
3AB9D8:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3AB9DC:  MOV             R3, R4
3AB9DE:  VSTR            S16, [SP,#0xD0+var_C4]
3AB9E2:  STR             R1, [SP,#0xD0+var_D0]
3AB9E4:  MOVS            R1, #2
3AB9E6:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AB9EA:  MOV             R0, #0x3D75C290
3AB9F2:  STRD.W          R5, R0, [SP,#0xD0+var_88]
3AB9F6:  MOV.W           R0, #0x3FC00000
3AB9FA:  STR             R0, [SP,#0xD0+var_8C]
3AB9FC:  MOVS            R0, #0x37 ; '7'
3AB9FE:  B               loc_3ABAE6
3ABA00:  VMOV.F32        S0, #-6.0
3ABA04:  VADD.F32        S16, S16, S0
3ABA08:  LDR             R0, =(AEAudioHardware_ptr - 0x3ABA12)
3ABA0A:  MOVS            R1, #0x27 ; '''; unsigned __int16
3ABA0C:  MOVS            R2, #2; __int16
3ABA0E:  ADD             R0, PC; AEAudioHardware_ptr
3ABA10:  LDR             R0, [R0]; AEAudioHardware ; this
3ABA12:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ABA16:  CMP             R0, #0
3ABA18:  BEQ.W           def_3AAD0E; jumptable 003AAD0E default case, cases 93-98,101,104-106,112,116-118
3ABA1C:  VMOV.F32        S0, #-2.0
3ABA20:  LDR             R0, [R4,#4]
3ABA22:  ADD.W           R8, SP, #0xD0+var_A4
3ABA26:  MOVS            R6, #0
3ABA28:  MOV.W           R5, #0x3F800000
3ABA2C:  MOV             R3, R4
3ABA2E:  LDR             R1, [R0,#0x14]
3ABA30:  ADD.W           R2, R1, #0x30 ; '0'
3ABA34:  CMP             R1, #0
3ABA36:  IT EQ
3ABA38:  ADDEQ           R2, R0, #4
3ABA3A:  VADD.F32        S0, S16, S0
3ABA3E:  LDM             R2, {R0-R2}
3ABA40:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3ABA44:  STRD.W          R5, R6, [SP,#0xD0+var_B8]
3ABA48:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3ABA4C:  STR             R6, [SP,#0xD0+var_A8]
3ABA4E:  STMEA.W         SP, {R0-R2}
3ABA52:  MOV             R0, R8
3ABA54:  MOVS            R1, #2
3ABA56:  MOVS            R2, #0x1F
3ABA58:  VSTR            S0, [SP,#0xD0+var_C4]
3ABA5C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3ABA60:  LDR             R0, =(AESoundManager_ptr - 0x3ABA70)
3ABA62:  MOV.W           R10, #0x20 ; ' '
3ABA66:  MOV.W           R11, #0x7A ; 'z'
3ABA6A:  MOV             R1, R8; CAESound *
3ABA6C:  ADD             R0, PC; AESoundManager_ptr
3ABA6E:  LDR.W           R9, [R0]; AESoundManager
3ABA72:  MOV             R0, #0x3D75C290
3ABA7A:  STRD.W          R5, R0, [SP,#0xD0+var_88]
3ABA7E:  MOV.W           R0, #0x3FC00000
3ABA82:  STR             R0, [SP,#0xD0+var_8C]
3ABA84:  MOV             R0, R9; this
3ABA86:  STRH.W          R10, [SP,#0xD0+var_4E]
3ABA8A:  STRH.W          R6, [SP,#0xD0+var_48]
3ABA8E:  STR.W           R11, [SP,#0xD0+var_98]
3ABA92:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3ABA96:  MOVS            R0, #dword_14; this
3ABA98:  MOVS            R1, #0x1C; int
3ABA9A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3ABA9E:  LDR             R1, [R4,#4]
3ABAA0:  LDR             R2, [R1,#0x14]
3ABAA2:  ADD.W           R3, R2, #0x30 ; '0'
3ABAA6:  CMP             R2, #0
3ABAA8:  IT EQ
3ABAAA:  ADDEQ           R3, R1, #4
3ABAAC:  LDM             R3, {R1-R3}
3ABAAE:  STR             R6, [SP,#0xD0+var_A8]
3ABAB0:  STRD.W          R6, R6, [SP,#0xD0+var_B0]
3ABAB4:  STRD.W          R2, R3, [SP,#0xD0+var_CC]
3ABAB8:  SXTH            R2, R0
3ABABA:  STRD.W          R5, R6, [SP,#0xD0+var_B8]
3ABABE:  MOV             R0, R8
3ABAC0:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3ABAC4:  MOV             R3, R4
3ABAC6:  VSTR            S16, [SP,#0xD0+var_C4]
3ABACA:  STR             R1, [SP,#0xD0+var_D0]
3ABACC:  MOVS            R1, #2
3ABACE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3ABAD2:  MOV             R0, #0x3D75C290
3ABADA:  STRD.W          R5, R0, [SP,#0xD0+var_88]
3ABADE:  MOV.W           R0, #0x3FC00000
3ABAE2:  STR             R0, [SP,#0xD0+var_8C]
3ABAE4:  MOVS            R0, #0x19
3ABAE6:  STRH.W          R10, [SP,#0xD0+var_4E]
3ABAEA:  STRH.W          R0, [SP,#0xD0+var_48]
3ABAEE:  MOV             R0, R9
3ABAF0:  STR.W           R11, [SP,#0xD0+var_98]
3ABAF4:  MOV             R1, R8
3ABAF6:  B.W             loc_3AAE68
