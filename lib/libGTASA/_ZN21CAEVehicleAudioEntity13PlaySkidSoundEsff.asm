; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity13PlaySkidSoundEsff
; Address            : 0x3ACB90 - 0x3ACC68
; =========================================================

3ACB90:  PUSH            {R4-R7,LR}
3ACB92:  ADD             R7, SP, #0xC
3ACB94:  PUSH.W          {R8,R9,R11}
3ACB98:  VPUSH           {D8-D9}
3ACB9C:  SUB             SP, SP, #0x88
3ACB9E:  MOV             R4, R0
3ACBA0:  MOVS            R0, #0
3ACBA2:  STR             R0, [SP,#0xB0+var_94]
3ACBA4:  VMOV            S0, R3
3ACBA8:  VLDR            S2, [R4,#0xD8]
3ACBAC:  MOV             R6, R1
3ACBAE:  LDRH.W          R0, [R4,#0x156]
3ACBB2:  VMOV            S18, R2
3ACBB6:  VADD.F32        S16, S2, S0
3ACBBA:  UXTH            R5, R6
3ACBBC:  MOVW            R9, #0xFFFF
3ACBC0:  CMP             R0, R5
3ACBC2:  BNE             loc_3ACBEA
3ACBC4:  CMP             R5, R9
3ACBC6:  BEQ             loc_3ACC56
3ACBC8:  LDR             R0, [R4,#4]
3ACBCA:  LDR             R1, [R0,#0x14]
3ACBCC:  ADD.W           R3, R1, #0x30 ; '0'
3ACBD0:  CMP             R1, #0
3ACBD2:  IT EQ
3ACBD4:  ADDEQ           R3, R0, #4
3ACBD6:  ADD.W           R0, R4, #0x184
3ACBDA:  LDM             R3, {R1-R3}
3ACBDC:  VSTR            S16, [SP,#0xB0+var_B0]
3ACBE0:  VSTR            S18, [SP,#0xB0+var_AC]
3ACBE4:  BLX             j__ZN22CAETwinLoopSoundEntity19UpdateTwinLoopSoundE7CVectorff; CAETwinLoopSoundEntity::UpdateTwinLoopSound(CVector,float,float)
3ACBE8:  B               loc_3ACC56
3ACBEA:  LDRH.W          R0, [R4,#0x20C]
3ACBEE:  ADD.W           R8, R4, #0x184
3ACBF2:  CMP             R0, #0
3ACBF4:  ITT NE
3ACBF6:  MOVNE           R0, R8; this
3ACBF8:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3ACBFC:  CMP             R5, R9
3ACBFE:  STRH.W          R6, [R4,#0x156]
3ACC02:  BEQ             loc_3ACC56
3ACC04:  MOVS            R2, #0xC8
3ACC06:  SXTH.W          R0, R9
3ACC0A:  MOV.W           R1, #0x3E8
3ACC0E:  STRD.W          R4, R2, [SP,#0xB0+var_B0]; CAEAudioEntity *
3ACC12:  STRD.W          R1, R0, [SP,#0xB0+var_A8]; unsigned __int16
3ACC16:  MOVS            R1, #0x13; __int16
3ACC18:  STR             R0, [SP,#0xB0+var_A0]; __int16
3ACC1A:  ADDS            R0, R5, #1
3ACC1C:  MOV             R2, R6; __int16
3ACC1E:  SXTH            R3, R0; __int16
3ACC20:  MOV             R0, R8; this
3ACC22:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
3ACC26:  LDR             R0, [R4,#4]
3ACC28:  MOVS            R5, #0
3ACC2A:  MOV.W           R6, #0x3F800000
3ACC2E:  MOVT            R5, #0x4020
3ACC32:  LDR             R1, [R0,#0x14]
3ACC34:  ADD.W           R3, R1, #0x30 ; '0'
3ACC38:  CMP             R1, #0
3ACC3A:  IT EQ
3ACC3C:  ADDEQ           R3, R0, #4
3ACC3E:  MOVS            R0, #0
3ACC40:  LDM             R3, {R1-R3}
3ACC42:  STRD.W          R5, R6, [SP,#0xB0+var_A8]
3ACC46:  STR             R0, [SP,#0xB0+var_A0]
3ACC48:  MOV             R0, R8
3ACC4A:  VSTR            S16, [SP,#0xB0+var_B0]
3ACC4E:  VSTR            S18, [SP,#0xB0+var_AC]
3ACC52:  BLX             j__ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft; CAETwinLoopSoundEntity::PlayTwinLoopSound(CVector,float,float,float,float,ushort)
3ACC56:  ADD             R0, SP, #0xB0+var_9C; this
3ACC58:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3ACC5C:  ADD             SP, SP, #0x88
3ACC5E:  VPOP            {D8-D9}
3ACC62:  POP.W           {R8,R9,R11}
3ACC66:  POP             {R4-R7,PC}
