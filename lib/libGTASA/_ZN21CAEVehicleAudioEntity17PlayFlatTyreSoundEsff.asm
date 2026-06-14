; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17PlayFlatTyreSoundEsff
; Address            : 0x3B4A78 - 0x3B4B56
; =========================================================

3B4A78:  PUSH            {R4-R7,LR}
3B4A7A:  ADD             R7, SP, #0xC
3B4A7C:  PUSH.W          {R8,R9,R11}
3B4A80:  VPUSH           {D8-D9}
3B4A84:  SUB             SP, SP, #0xA0
3B4A86:  MOV             R4, R0
3B4A88:  MOVS            R0, #0
3B4A8A:  STR             R0, [SP,#0xC8+var_94]
3B4A8C:  VMOV            S0, R3
3B4A90:  VLDR            S2, [R4,#0xD8]
3B4A94:  MOV             R5, R1
3B4A96:  LDRH.W          R0, [R4,#0x164]
3B4A9A:  VMOV            S18, R2
3B4A9E:  VADD.F32        S16, S2, S0
3B4AA2:  UXTH            R6, R5
3B4AA4:  MOVW            R8, #0xFFFF
3B4AA8:  CMP             R0, R6
3B4AAA:  BNE             loc_3B4AC6
3B4AAC:  CMP             R6, R8
3B4AAE:  BEQ             loc_3B4B44
3B4AB0:  LDR.W           R0, [R4,#0x168]
3B4AB4:  CMP             R0, #0
3B4AB6:  ITTT NE
3B4AB8:  VSTRNE          S18, [R0,#0x1C]
3B4ABC:  LDRNE.W         R0, [R4,#0x168]
3B4AC0:  VSTRNE          S16, [R0,#0x14]
3B4AC4:  B               loc_3B4B44
3B4AC6:  LDR.W           R0, [R4,#0x168]; this
3B4ACA:  CBZ             R0, loc_3B4AE4
3B4ACC:  MOVS            R1, #4; unsigned __int16
3B4ACE:  MOVS            R2, #0; unsigned __int16
3B4AD0:  MOV.W           R9, #0
3B4AD4:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B4AD8:  LDR.W           R0, [R4,#0x168]; this
3B4ADC:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B4AE0:  STR.W           R9, [R4,#0x168]
3B4AE4:  CMP             R6, R8
3B4AE6:  STRH.W          R5, [R4,#0x164]
3B4AEA:  BEQ             loc_3B4B44
3B4AEC:  LDR             R0, [R4,#4]
3B4AEE:  MOVS            R3, #0
3B4AF0:  MOV.W           R6, #0x3F800000
3B4AF4:  LDR             R1, [R0,#0x14]
3B4AF6:  ADD.W           R2, R1, #0x30 ; '0'
3B4AFA:  CMP             R1, #0
3B4AFC:  IT EQ
3B4AFE:  ADDEQ           R2, R0, #4
3B4B00:  LDM             R2, {R0-R2}
3B4B02:  STRD.W          R3, R3, [SP,#0xC8+var_A8]
3B4B06:  STR             R3, [SP,#0xC8+var_A0]
3B4B08:  STMEA.W         SP, {R0-R3,R6}
3B4B0C:  MOVS            R1, #0x13
3B4B0E:  MOV             R2, R5
3B4B10:  STRD.W          R6, R6, [SP,#0xC8+var_B4]
3B4B14:  ADD             R6, SP, #0xC8+var_9C
3B4B16:  STR             R3, [SP,#0xC8+var_AC]
3B4B18:  MOV             R3, R4
3B4B1A:  MOV             R0, R6
3B4B1C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B4B20:  LDR             R0, =(AESoundManager_ptr - 0x3B4B2C)
3B4B22:  MOVS            R1, #4
3B4B24:  VSTR            S18, [SP,#0xC8+var_80]
3B4B28:  ADD             R0, PC; AESoundManager_ptr
3B4B2A:  VSTR            S16, [SP,#0xC8+var_88]
3B4B2E:  STRH.W          R1, [SP,#0xC8+var_46]
3B4B32:  MOV.W           R1, #0x40000000
3B4B36:  LDR             R0, [R0]; AESoundManager ; this
3B4B38:  STR             R1, [SP,#0xC8+var_84]
3B4B3A:  MOV             R1, R6; CAESound *
3B4B3C:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B4B40:  STR.W           R0, [R4,#0x168]
3B4B44:  ADD             R0, SP, #0xC8+var_9C; this
3B4B46:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3B4B4A:  ADD             SP, SP, #0xA0
3B4B4C:  VPOP            {D8-D9}
3B4B50:  POP.W           {R8,R9,R11}
3B4B54:  POP             {R4-R7,PC}
