; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft
; Address            : 0x3AAA1C - 0x3AAB6A
; =========================================================

3AAA1C:  PUSH            {R4-R7,LR}
3AAA1E:  ADD             R7, SP, #0xC
3AAA20:  PUSH.W          {R8-R11}
3AAA24:  SUB             SP, SP, #4
3AAA26:  VPUSH           {D8-D11}
3AAA2A:  SUB             SP, SP, #0xA8
3AAA2C:  MOV             R4, R0
3AAA2E:  MOVS            R0, #0
3AAA30:  STR             R0, [SP,#0xE8+var_AC]
3AAA32:  MOV             R11, R3
3AAA34:  LDR.W           R0, [R4,#0xA0]; this
3AAA38:  MOV             R9, R2
3AAA3A:  MOV             R10, R1
3AAA3C:  CMP             R0, #0
3AAA3E:  IT NE
3AAA40:  BLXNE           j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3AAA44:  LDR.W           R0, [R4,#0xA4]; this
3AAA48:  CMP             R0, #0
3AAA4A:  IT NE
3AAA4C:  BLXNE           j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3AAA50:  LDR.W           R8, [R7,#arg_10]
3AAA54:  MOVW            R0, #0xFFFF
3AAA58:  LDRH.W          R6, [R4,#0x9A]
3AAA5C:  VLDR            S16, [R7,#arg_C]
3AAA60:  VLDR            S20, [R7,#arg_8]
3AAA64:  CMP             R6, R0
3AAA66:  VLDR            S18, [R7,#arg_4]
3AAA6A:  VLDR            S22, [R7,#arg_0]
3AAA6E:  BNE             loc_3AAA7A
3AAA70:  MOVS            R0, #0; this
3AAA72:  MOVS            R1, #0x63 ; 'c'; int
3AAA74:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AAA78:  MOV             R6, R0
3AAA7A:  ORR.W           R8, R8, #0x24 ; '$'
3AAA7E:  MOVS            R5, #0
3AAA80:  LDRSH.W         R1, [R4,#0x7C]
3AAA84:  MOV             R3, R4
3AAA86:  LDRSH.W         R2, [R4,#0x7E]
3AAA8A:  STRD.W          R5, R8, [SP,#0xE8+var_CC]
3AAA8E:  STRD.W          R5, R5, [SP,#0xE8+var_C4]
3AAA92:  VSTR            S22, [SP,#0xE8+var_DC]
3AAA96:  VSTR            S20, [SP,#0xE8+var_D8]
3AAA9A:  VSTR            S18, [SP,#0xE8+var_D4]
3AAA9E:  VSTR            S16, [SP,#0xE8+var_D0]
3AAAA2:  STR.W           R10, [SP,#0xE8+var_E8]
3AAAA6:  STR.W           R10, [SP,#0xE8+var_B8]
3AAAAA:  MOV             R10, R9
3AAAAC:  STR.W           R9, [SP,#0xE8+var_E4]
3AAAB0:  MOV             R9, R11
3AAAB2:  STR.W           R11, [SP,#0xE8+var_E0]
3AAAB6:  ADD.W           R11, SP, #0xE8+var_B4
3AAABA:  MOV             R0, R11
3AAABC:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AAAC0:  LDR             R0, =(AESoundManager_ptr - 0x3AAACC)
3AAAC2:  MOV             R1, R11; CAESound *
3AAAC4:  STRH.W          R6, [SP,#0xE8+var_58]
3AAAC8:  ADD             R0, PC; AESoundManager_ptr
3AAACA:  LDR             R0, [R0]; AESoundManager ; this
3AAACC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3AAAD0:  LDRH.W          R6, [R4,#0x9C]
3AAAD4:  STR.W           R0, [R4,#0xA0]
3AAAD8:  MOVW            R0, #0xFFFF
3AAADC:  CMP             R6, R0
3AAADE:  BNE             loc_3AAAEA
3AAAE0:  MOVS            R0, #0; this
3AAAE2:  MOVS            R1, #0x63 ; 'c'; int
3AAAE4:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AAAE8:  MOV             R6, R0
3AAAEA:  MOVS            R0, #0
3AAAEC:  LDRSH.W         R1, [R4,#0x7C]
3AAAF0:  LDRSH.W         R2, [R4,#0x80]
3AAAF4:  MOVT            R0, #0xC2C8
3AAAF8:  STRD.W          R5, R8, [SP,#0xE8+var_CC]
3AAAFC:  STRD.W          R5, R5, [SP,#0xE8+var_C4]
3AAB00:  ADD             R5, SP, #0xE8+var_B4
3AAB02:  LDR             R3, [SP,#0xE8+var_B8]
3AAB04:  VSTR            S20, [SP,#0xE8+var_D8]
3AAB08:  VSTR            S18, [SP,#0xE8+var_D4]
3AAB0C:  VSTR            S16, [SP,#0xE8+var_D0]
3AAB10:  STRD.W          R3, R10, [SP,#0xE8+var_E8]
3AAB14:  MOV             R3, R4
3AAB16:  STRD.W          R9, R0, [SP,#0xE8+var_E0]
3AAB1A:  MOV             R0, R5
3AAB1C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3AAB20:  LDR             R0, =(AESoundManager_ptr - 0x3AAB2C)
3AAB22:  MOV             R1, R5; CAESound *
3AAB24:  STRH.W          R6, [SP,#0xE8+var_58]
3AAB28:  ADD             R0, PC; AESoundManager_ptr
3AAB2A:  LDR             R0, [R0]; AESoundManager ; this
3AAB2C:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3AAB30:  LDR             R1, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x3AAB3A)
3AAB32:  LDRH.W          R2, [R4,#0x8E]; int
3AAB36:  ADD             R1, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
3AAB38:  LDR             R3, [R1]; CTimer::m_snTimeInMillisecondsPauseMode ...
3AAB3A:  LDRH.W          R1, [R4,#0x90]; int
3AAB3E:  STR.W           R0, [R4,#0xA4]
3AAB42:  MOV             R0, R2; this
3AAB44:  LDR             R6, [R3]; CTimer::m_snTimeInMillisecondsPauseMode
3AAB46:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AAB4A:  ADD             R0, R6
3AAB4C:  STR.W           R0, [R4,#0x94]
3AAB50:  MOVS            R0, #1
3AAB52:  STRB.W          R0, [R4,#0x98]
3AAB56:  MOV             R0, R5; this
3AAB58:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AAB5C:  ADD             SP, SP, #0xA8
3AAB5E:  VPOP            {D8-D11}
3AAB62:  ADD             SP, SP, #4
3AAB64:  POP.W           {R8-R11}
3AAB68:  POP             {R4-R7,PC}
