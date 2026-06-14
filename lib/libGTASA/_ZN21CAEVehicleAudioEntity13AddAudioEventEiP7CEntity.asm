; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity13AddAudioEventEiP7CEntity
; Address            : 0x3ABC14 - 0x3ABD3C
; =========================================================

3ABC14:  PUSH            {R4-R7,LR}
3ABC16:  ADD             R7, SP, #0xC
3ABC18:  PUSH.W          {R11}
3ABC1C:  VPUSH           {D8}
3ABC20:  SUB             SP, SP, #0x30
3ABC22:  MOV             R4, R0
3ABC24:  LDR             R0, =(AEAudioHardware_ptr - 0x3ABC2E)
3ABC26:  MOV             R5, R2
3ABC28:  MOV             R6, R1
3ABC2A:  ADD             R0, PC; AEAudioHardware_ptr
3ABC2C:  MOVS            R1, #0x8A; unsigned __int16
3ABC2E:  MOVS            R2, #0x13; __int16
3ABC30:  LDR             R0, [R0]; AEAudioHardware ; this
3ABC32:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ABC36:  CBZ             R0, loc_3ABCA2
3ABC38:  LDR             R0, =(AEAudioHardware_ptr - 0x3ABC42)
3ABC3A:  MOVS            R1, #0x27 ; '''; unsigned __int16
3ABC3C:  MOVS            R2, #2; __int16
3ABC3E:  ADD             R0, PC; AEAudioHardware_ptr
3ABC40:  LDR             R0, [R0]; AEAudioHardware ; this
3ABC42:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ABC46:  CBZ             R5, loc_3ABCA2
3ABC48:  CMP             R6, #0x5D ; ']'
3ABC4A:  BNE             loc_3ABCA2
3ABC4C:  CBZ             R0, loc_3ABCA2
3ABC4E:  VLDR            S0, [R5,#0x54]
3ABC52:  VLDR            S2, [R5,#0x58]
3ABC56:  VMUL.F32        S0, S0, S0
3ABC5A:  VLDR            S4, [R5,#0x5C]
3ABC5E:  VMUL.F32        S2, S2, S2
3ABC62:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3ABC6C)
3ABC64:  VMUL.F32        S4, S4, S4
3ABC68:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3ABC6A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3ABC6C:  VADD.F32        S0, S0, S2
3ABC70:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3ABC72:  VMOV.F32        S2, #0.5625
3ABC76:  LDRSB.W         R0, [R0,#0x5D]
3ABC7A:  VADD.F32        S0, S0, S4
3ABC7E:  VMIN.F32        D0, D0, D1
3ABC82:  VDIV.F32        S0, S0, S2
3ABC86:  VMOV            S2, R0
3ABC8A:  VCVT.F32.S32    S16, S2
3ABC8E:  VLDR            S2, =1.0e-10
3ABC92:  VCMPE.F32       S0, S2
3ABC96:  VMRS            APSR_nzcv, FPSCR
3ABC9A:  BGE             loc_3ABCAE
3ABC9C:  VLDR            S0, =-100.0
3ABCA0:  B               loc_3ABCC2
3ABCA2:  ADD             SP, SP, #0x30 ; '0'
3ABCA4:  VPOP            {D8}
3ABCA8:  POP.W           {R11}
3ABCAC:  POP             {R4-R7,PC}
3ABCAE:  VMOV            R0, S0; this
3ABCB2:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3ABCB6:  VMOV.F32        S0, #10.0
3ABCBA:  VMOV            S2, R0
3ABCBE:  VMUL.F32        S0, S2, S0
3ABCC2:  VADD.F32        S0, S0, S16
3ABCC6:  LDR             R0, [R5,#0x14]
3ABCC8:  MOVS            R1, #0
3ABCCA:  MOV.W           R6, #0x3F800000
3ABCCE:  ADD.W           R2, R0, #0x30 ; '0'
3ABCD2:  CMP             R0, #0
3ABCD4:  IT EQ
3ABCD6:  ADDEQ           R2, R5, #4
3ABCD8:  LDRD.W          R0, R3, [R2]
3ABCDC:  LDR             R2, [R2,#8]
3ABCDE:  STRD.W          R6, R6, [SP,#0x48+var_38]
3ABCE2:  STRD.W          R6, R1, [SP,#0x48+var_30]
3ABCE6:  ADD.W           R6, R4, #8
3ABCEA:  STRD.W          R1, R1, [SP,#0x48+var_28]
3ABCEE:  STR             R1, [SP,#0x48+var_20]
3ABCF0:  MOVS            R1, #0x13
3ABCF2:  VSTR            S0, [SP,#0x48+var_3C]
3ABCF6:  STRD.W          R0, R3, [SP,#0x48+var_48]
3ABCFA:  MOV             R0, R6
3ABCFC:  STR             R2, [SP,#0x48+var_40]
3ABCFE:  MOVS            R2, #0xC
3ABD00:  MOV             R3, R4
3ABD02:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3ABD06:  MOVS            R0, #0x84
3ABD08:  MOV             R1, R5; CEntity *
3ABD0A:  STRH.W          R0, [R4,#0x5E]
3ABD0E:  MOV             R0, #0x3F59999A
3ABD16:  STR             R0, [R4,#0x20]
3ABD18:  MOV             R0, R6; this
3ABD1A:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3ABD1E:  LDR             R0, =(AESoundManager_ptr - 0x3ABD2A)
3ABD20:  MOVS            R1, #0x5D ; ']'
3ABD22:  STR             R1, [R4,#0x14]
3ABD24:  MOV             R1, R6; CAESound *
3ABD26:  ADD             R0, PC; AESoundManager_ptr
3ABD28:  LDR             R0, [R0]; AESoundManager ; this
3ABD2A:  ADD             SP, SP, #0x30 ; '0'
3ABD2C:  VPOP            {D8}
3ABD30:  POP.W           {R11}
3ABD34:  POP.W           {R4-R7,LR}
3ABD38:  B.W             sub_19F824
