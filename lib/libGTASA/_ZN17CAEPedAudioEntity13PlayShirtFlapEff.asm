; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity13PlayShirtFlapEff
; Address            : 0x399DB4 - 0x399E5C
; =========================================================

399DB4:  PUSH            {R4-R7,LR}
399DB6:  ADD             R7, SP, #0xC
399DB8:  PUSH.W          {R11}
399DBC:  VPUSH           {D8-D9}
399DC0:  SUB             SP, SP, #0x88
399DC2:  MOVS            R6, #0
399DC4:  MOV             R5, R0
399DC6:  STR             R6, [SP,#0xA8+var_8C]
399DC8:  VMOV            S16, R2
399DCC:  LDRH.W          R0, [R5,#0x130]
399DD0:  VMOV            S18, R1
399DD4:  ADD.W           R4, R5, #0xA8
399DD8:  CBZ             R0, loc_399DFC
399DDA:  LDR.W           R0, [R5,#0x94]
399DDE:  LDR             R1, [R0,#0x14]
399DE0:  ADD.W           R3, R1, #0x30 ; '0'
399DE4:  CMP             R1, #0
399DE6:  IT EQ
399DE8:  ADDEQ           R3, R0, #4
399DEA:  MOV             R0, R4
399DEC:  LDM             R3, {R1-R3}
399DEE:  VSTR            S18, [SP,#0xA8+var_A8]
399DF2:  VSTR            S16, [SP,#0xA8+var_A4]
399DF6:  BLX             j__ZN22CAETwinLoopSoundEntity19UpdateTwinLoopSoundE7CVectorff; CAETwinLoopSoundEntity::UpdateTwinLoopSound(CVector,float,float)
399DFA:  B               loc_399E4A
399DFC:  MOVS            R2, #0xC8
399DFE:  MOV.W           R0, #0xFFFFFFFF
399E02:  MOV.W           R1, #0x3E8
399E06:  STRD.W          R5, R2, [SP,#0xA8+var_A8]; CAEAudioEntity *
399E0A:  STRD.W          R1, R0, [SP,#0xA8+var_A0]; unsigned __int16
399E0E:  MOVS            R1, #5; __int16
399E10:  STR             R0, [SP,#0xA8+var_98]; __int16
399E12:  MOV             R0, R4; this
399E14:  MOVS            R2, #0x13; __int16
399E16:  MOVS            R3, #0x14; __int16
399E18:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
399E1C:  LDR.W           R0, [R5,#0x94]
399E20:  MOV.W           R5, #0x40000000
399E24:  LDR             R1, [R0,#0x14]
399E26:  ADD.W           R3, R1, #0x30 ; '0'
399E2A:  CMP             R1, #0
399E2C:  IT EQ
399E2E:  ADDEQ           R3, R0, #4
399E30:  MOV.W           R0, #0x3F800000
399E34:  LDM             R3, {R1-R3}
399E36:  STRD.W          R5, R0, [SP,#0xA8+var_A0]
399E3A:  MOV             R0, R4
399E3C:  STR             R6, [SP,#0xA8+var_98]
399E3E:  VSTR            S18, [SP,#0xA8+var_A8]
399E42:  VSTR            S16, [SP,#0xA8+var_A4]
399E46:  BLX             j__ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft; CAETwinLoopSoundEntity::PlayTwinLoopSound(CVector,float,float,float,float,ushort)
399E4A:  ADD             R0, SP, #0xA8+var_94; this
399E4C:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
399E50:  ADD             SP, SP, #0x88
399E52:  VPOP            {D8-D9}
399E56:  POP.W           {R11}
399E5A:  POP             {R4-R7,PC}
