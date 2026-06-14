; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity19PlayTrainBrakeSoundEsff
; Address            : 0x3ACC68 - 0x3ACD5E
; =========================================================

3ACC68:  PUSH            {R4-R7,LR}
3ACC6A:  ADD             R7, SP, #0xC
3ACC6C:  PUSH.W          {R8,R9,R11}
3ACC70:  VPUSH           {D8-D9}
3ACC74:  SUB             SP, SP, #0x88
3ACC76:  MOV             R4, R0
3ACC78:  MOVS            R0, #0
3ACC7A:  STR             R0, [SP,#0xB0+var_94]
3ACC7C:  MOV             R8, R1
3ACC7E:  LDRH.W          R1, [R4,#0xDE]; unsigned __int16
3ACC82:  MOVW            R9, #0xFFFF
3ACC86:  MOV             R5, R3
3ACC88:  MOV             R6, R2
3ACC8A:  CMP             R1, R9
3ACC8C:  BEQ             loc_3ACD4C
3ACC8E:  LDR             R0, =(AEAudioHardware_ptr - 0x3ACC96)
3ACC90:  MOVS            R2, #0x28 ; '('; __int16
3ACC92:  ADD             R0, PC; AEAudioHardware_ptr
3ACC94:  LDR             R0, [R0]; AEAudioHardware ; this
3ACC96:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ACC9A:  CMP             R0, #0
3ACC9C:  BEQ             loc_3ACD4C
3ACC9E:  VMOV            S0, R5
3ACCA2:  VLDR            S2, [R4,#0xD8]
3ACCA6:  LDRH.W          R0, [R4,#0x156]
3ACCAA:  VMOV            S16, R6
3ACCAE:  VADD.F32        S18, S2, S0
3ACCB2:  UXTH.W          R5, R8
3ACCB6:  CMP             R0, R5
3ACCB8:  BNE             loc_3ACCE0
3ACCBA:  CMP             R5, R9
3ACCBC:  BEQ             loc_3ACD4C
3ACCBE:  LDR             R0, [R4,#4]
3ACCC0:  LDR             R1, [R0,#0x14]
3ACCC2:  ADD.W           R3, R1, #0x30 ; '0'
3ACCC6:  CMP             R1, #0
3ACCC8:  IT EQ
3ACCCA:  ADDEQ           R3, R0, #4
3ACCCC:  ADD.W           R0, R4, #0x184
3ACCD0:  LDM             R3, {R1-R3}
3ACCD2:  VSTR            S18, [SP,#0xB0+var_B0]
3ACCD6:  VSTR            S16, [SP,#0xB0+var_AC]
3ACCDA:  BLX             j__ZN22CAETwinLoopSoundEntity19UpdateTwinLoopSoundE7CVectorff; CAETwinLoopSoundEntity::UpdateTwinLoopSound(CVector,float,float)
3ACCDE:  B               loc_3ACD4C
3ACCE0:  LDRH.W          R0, [R4,#0x20C]
3ACCE4:  ADD.W           R6, R4, #0x184
3ACCE8:  CMP             R0, #0
3ACCEA:  ITT NE
3ACCEC:  MOVNE           R0, R6; this
3ACCEE:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3ACCF2:  CMP             R5, R9
3ACCF4:  STRH.W          R8, [R4,#0x156]
3ACCF8:  BEQ             loc_3ACD4C
3ACCFA:  MOVS            R2, #0xC8
3ACCFC:  SXTH.W          R0, R9
3ACD00:  MOV.W           R1, #0x3E8
3ACD04:  STRD.W          R4, R2, [SP,#0xB0+var_B0]; CAEAudioEntity *
3ACD08:  STRD.W          R1, R0, [SP,#0xB0+var_A8]; unsigned __int16
3ACD0C:  MOVS            R1, #0x28 ; '('; __int16
3ACD0E:  STR             R0, [SP,#0xB0+var_A0]; __int16
3ACD10:  ADDS            R0, R5, #1
3ACD12:  MOV             R2, R8; __int16
3ACD14:  SXTH            R3, R0; __int16
3ACD16:  MOV             R0, R6; this
3ACD18:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
3ACD1C:  LDR             R0, [R4,#4]
3ACD1E:  MOVS            R4, #0
3ACD20:  MOV.W           R5, #0x3F800000
3ACD24:  MOVT            R4, #0x4060
3ACD28:  LDR             R1, [R0,#0x14]
3ACD2A:  ADD.W           R3, R1, #0x30 ; '0'
3ACD2E:  CMP             R1, #0
3ACD30:  IT EQ
3ACD32:  ADDEQ           R3, R0, #4
3ACD34:  MOVS            R0, #0
3ACD36:  LDM             R3, {R1-R3}
3ACD38:  STRD.W          R4, R5, [SP,#0xB0+var_A8]
3ACD3C:  STR             R0, [SP,#0xB0+var_A0]
3ACD3E:  MOV             R0, R6
3ACD40:  VSTR            S18, [SP,#0xB0+var_B0]
3ACD44:  VSTR            S16, [SP,#0xB0+var_AC]
3ACD48:  BLX             j__ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft; CAETwinLoopSoundEntity::PlayTwinLoopSound(CVector,float,float,float,float,ushort)
3ACD4C:  ADD             R0, SP, #0xB0+var_9C; this
3ACD4E:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3ACD52:  ADD             SP, SP, #0x88
3ACD54:  VPOP            {D8-D9}
3ACD58:  POP.W           {R8,R9,R11}
3ACD5C:  POP             {R4-R7,PC}
