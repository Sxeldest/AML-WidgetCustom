; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity12WeaponReloadE11eWeaponTypeP9CPhysicali
; Address            : 0x3BAE9C - 0x3BAFE4
; =========================================================

3BAE9C:  PUSH            {R4-R7,LR}
3BAE9E:  ADD             R7, SP, #0xC
3BAEA0:  PUSH.W          {R8}
3BAEA4:  SUB             SP, SP, #0x30
3BAEA6:  MOV             R4, R2
3BAEA8:  MOV             R6, R3
3BAEAA:  MOV             R5, R1
3BAEAC:  MOV             R8, R0
3BAEAE:  CBZ             R4, def_3BAEC8; jumptable 003BAEC8 default case
3BAEB0:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAEBA)
3BAEB2:  MOVS            R1, #0x8F; unsigned __int16
3BAEB4:  MOVS            R2, #5; __int16
3BAEB6:  ADD             R0, PC; AEAudioHardware_ptr
3BAEB8:  LDR             R0, [R0]; AEAudioHardware ; this
3BAEBA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BAEBE:  CBZ             R0, loc_3BAEE8
3BAEC0:  SUB.W           R0, R5, #0x16; switch 13 cases
3BAEC4:  CMP             R0, #0xC
3BAEC6:  BHI             def_3BAEC8; jumptable 003BAEC8 default case
3BAEC8:  TBB.W           [PC,R0]; switch jump
3BAECC:  DCB 0x24; jump table for switch statement
3BAECD:  DCB 0x24
3BAECE:  DCB 0x36
3BAECF:  DCB 0x28
3BAED0:  DCB 0x3A
3BAED1:  DCB 0x28
3BAED2:  DCB 7
3BAED3:  DCB 7
3BAED4:  DCB 0x2F
3BAED5:  DCB 0x2F
3BAED6:  DCB 7
3BAED7:  DCB 0x41
3BAED8:  DCB 0x47
3BAED9:  ALIGN 2
3BAEDA:  MOVS            R2, #0x55 ; 'U'; jumptable 003BAEC8 cases 28,29,32
3BAEDC:  CMP             R6, #0x92
3BAEDE:  VLDR            S0, =0.0
3BAEE2:  IT EQ
3BAEE4:  MOVEQ           R2, #0x54 ; 'T'
3BAEE6:  B               loc_3BAF66
3BAEE8:  LDR             R0, =(AudioEngine_ptr - 0x3BAEEE)
3BAEEA:  ADD             R0, PC; AudioEngine_ptr
3BAEEC:  LDR             R0, [R0]; AudioEngine ; this
3BAEEE:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BAEF2:  CBZ             R0, loc_3BAEFC
3BAEF4:  ADD             SP, SP, #0x30 ; '0'; jumptable 003BAEC8 default case
3BAEF6:  POP.W           {R8}
3BAEFA:  POP             {R4-R7,PC}
3BAEFC:  LDR             R0, =(AEAudioHardware_ptr - 0x3BAF06)
3BAEFE:  MOVS            R1, #0x8F; unsigned __int16
3BAF00:  MOVS            R2, #5; __int16
3BAF02:  ADD             R0, PC; AEAudioHardware_ptr
3BAF04:  LDR             R0, [R0]; AEAudioHardware ; this
3BAF06:  ADD             SP, SP, #0x30 ; '0'
3BAF08:  POP.W           {R8}
3BAF0C:  POP.W           {R4-R7,LR}
3BAF10:  B.W             sub_18B078
3BAF14:  VLDR            S0, =0.0; jumptable 003BAEC8 cases 22,23
3BAF18:  MOVS            R2, #0x42 ; 'B'
3BAF1A:  B               loc_3BAF60
3BAF1C:  MOVS            R2, #0x48 ; 'H'; jumptable 003BAEC8 cases 25,27
3BAF1E:  CMP             R6, #0x92
3BAF20:  VLDR            S0, =0.0
3BAF24:  IT EQ
3BAF26:  MOVEQ           R2, #0x47 ; 'G'
3BAF28:  B               loc_3BAF66
3BAF2A:  MOVS            R2, #0x20 ; ' '; jumptable 003BAEC8 cases 30,31
3BAF2C:  CMP             R6, #0x92
3BAF2E:  VLDR            S0, =0.0
3BAF32:  IT EQ
3BAF34:  MOVEQ           R2, #0x1F
3BAF36:  B               loc_3BAF66
3BAF38:  VLDR            S0, =0.0; jumptable 003BAEC8 case 24
3BAF3C:  MOVS            R2, #0x33 ; '3'
3BAF3E:  B               loc_3BAF60
3BAF40:  VLDR            S0, =0.0; jumptable 003BAEC8 case 26
3BAF44:  MOVS            R2, #0x46 ; 'F'
3BAF46:  CMP             R6, #0x92
3BAF48:  IT EQ
3BAF4A:  MOVEQ           R2, #0x45 ; 'E'
3BAF4C:  B               loc_3BAF66
3BAF4E:  CMP             R6, #0x92; jumptable 003BAEC8 case 33
3BAF50:  BNE             def_3BAEC8; jumptable 003BAEC8 default case
3BAF52:  VMOV.F32        S0, #-6.0
3BAF56:  MOVS            R2, #0x20 ; ' '
3BAF58:  B               loc_3BAF66
3BAF5A:  VLDR            S0, =0.0; jumptable 003BAEC8 case 34
3BAF5E:  MOVS            R2, #0x20 ; ' '
3BAF60:  CMP             R6, #0x92
3BAF62:  IT EQ
3BAF64:  MOVEQ           R2, #0x37 ; '7'
3BAF66:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BAF76)
3BAF68:  MOV.W           R5, #0x3F800000
3BAF6C:  LDR             R1, [R4,#0x14]
3BAF6E:  MOV.W           R12, #0x80
3BAF72:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BAF74:  ADD.W           R3, R1, #0x30 ; '0'
3BAF78:  CMP             R1, #0
3BAF7A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3BAF7C:  MOV             R1, #0x3F28F5C3
3BAF84:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3BAF86:  LDRSB           R0, [R0,R6]
3BAF88:  IT EQ
3BAF8A:  ADDEQ           R3, R4, #4
3BAF8C:  LDRD.W          LR, R6, [R3]
3BAF90:  LDR             R3, [R3,#8]
3BAF92:  VMOV            S2, R0
3BAF96:  MOVS            R0, #0
3BAF98:  VCVT.F32.S32    S2, S2
3BAF9C:  STRD.W          R1, R5, [SP,#0x40+var_30]
3BAFA0:  STRD.W          R5, R0, [SP,#0x40+var_28]
3BAFA4:  ADD.W           R5, R8, #8
3BAFA8:  STRD.W          R12, R0, [SP,#0x40+var_20]
3BAFAC:  MOVS            R1, #5
3BAFAE:  STR             R0, [SP,#0x40+var_18]
3BAFB0:  MOV             R0, R5
3BAFB2:  STRD.W          LR, R6, [SP,#0x40+var_40]
3BAFB6:  STR             R3, [SP,#0x40+var_38]
3BAFB8:  MOV             R3, R8
3BAFBA:  VADD.F32        S0, S0, S2
3BAFBE:  VSTR            S0, [SP,#0x40+var_34]
3BAFC2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BAFC6:  MOV             R0, R5; this
3BAFC8:  MOV             R1, R4; CEntity *
3BAFCA:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BAFCE:  LDR             R0, =(AESoundManager_ptr - 0x3BAFD6)
3BAFD0:  MOV             R1, R5; CAESound *
3BAFD2:  ADD             R0, PC; AESoundManager_ptr
3BAFD4:  LDR             R0, [R0]; AESoundManager ; this
3BAFD6:  ADD             SP, SP, #0x30 ; '0'
3BAFD8:  POP.W           {R8}
3BAFDC:  POP.W           {R4-R7,LR}
3BAFE0:  B.W             sub_19F824
