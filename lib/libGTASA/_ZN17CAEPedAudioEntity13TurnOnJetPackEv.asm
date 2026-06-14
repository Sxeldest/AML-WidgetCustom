; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity13TurnOnJetPackEv
; Address            : 0x399E60 - 0x399F96
; =========================================================

399E60:  PUSH            {R4-R7,LR}
399E62:  ADD             R7, SP, #0xC
399E64:  PUSH.W          {R8-R11}
399E68:  SUB             SP, SP, #0x2C
399E6A:  MOV             R4, R0
399E6C:  LDR.W           R0, [R4,#0x94]
399E70:  CBZ             R0, loc_399E82
399E72:  LDRB.W          R1, [R4,#0x98]
399E76:  CMP             R1, #0
399E78:  ITT EQ
399E7A:  LDREQ.W         R1, [R4,#0xA0]
399E7E:  CMPEQ           R1, #0
399E80:  BEQ             loc_399E8A
399E82:  ADD             SP, SP, #0x2C ; ','
399E84:  POP.W           {R8-R11}
399E88:  POP             {R4-R7,PC}
399E8A:  LDR.W           R1, [R4,#0x9C]
399E8E:  CMP             R1, #0
399E90:  ITT EQ
399E92:  LDREQ.W         R1, [R4,#0xA4]
399E96:  CMPEQ           R1, #0
399E98:  BNE             loc_399E82
399E9A:  ADR             R1, dword_399FA0
399E9C:  MOVW            R10, #0
399EA0:  VLD1.64         {D16-D17}, [R1@128]
399EA4:  ADD.W           R1, R4, #0x84
399EA8:  ADD.W           R5, R4, #8
399EAC:  MOVS            R6, #0
399EAE:  VST1.32         {D16-D17}, [R1]
399EB2:  MOVS            R1, #1
399EB4:  MOVT            R10, #0xC2C8
399EB8:  MOV.W           R9, #0x3F800000
399EBC:  STRB.W          R1, [R4,#0x98]
399EC0:  MOV             R3, R4
399EC2:  LDR             R1, [R0,#0x14]
399EC4:  ADD.W           R2, R1, #0x30 ; '0'
399EC8:  CMP             R1, #0
399ECA:  IT EQ
399ECC:  ADDEQ           R2, R0, #4
399ECE:  LDM             R2, {R0-R2}
399ED0:  STRD.W          R6, R6, [SP,#0x48+var_28]
399ED4:  STR             R6, [SP,#0x48+var_20]
399ED6:  STMEA.W         SP, {R0-R2,R10}
399EDA:  MOV             R0, R5
399EDC:  MOVS            R1, #0x13
399EDE:  MOVS            R2, #0x1A
399EE0:  STRD.W          R9, R9, [SP,#0x48+var_38]
399EE4:  STRD.W          R9, R6, [SP,#0x48+var_30]
399EE8:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399EEC:  LDR             R0, =(AESoundManager_ptr - 0x399EFC)
399EEE:  MOV.W           R11, #4
399EF2:  MOV             R1, R5; CAESound *
399EF4:  STRH.W          R11, [R4,#0x5E]
399EF8:  ADD             R0, PC; AESoundManager_ptr
399EFA:  STR.W           R9, [R4,#0x24]
399EFE:  LDR.W           R8, [R0]; AESoundManager
399F02:  MOV             R0, R8; this
399F04:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
399F08:  STR.W           R0, [R4,#0x9C]
399F0C:  MOV             R3, R4
399F0E:  LDR.W           R0, [R4,#0x94]
399F12:  LDR             R1, [R0,#0x14]
399F14:  ADD.W           R2, R1, #0x30 ; '0'
399F18:  CMP             R1, #0
399F1A:  IT EQ
399F1C:  ADDEQ           R2, R0, #4
399F1E:  LDM             R2, {R0-R2}
399F20:  STRD.W          R6, R6, [SP,#0x48+var_28]
399F24:  STR             R6, [SP,#0x48+var_20]
399F26:  STRD.W          R9, R6, [SP,#0x48+var_30]
399F2A:  STRD.W          R9, R9, [SP,#0x48+var_38]
399F2E:  STMEA.W         SP, {R0-R2,R10}
399F32:  MOV             R0, R5
399F34:  MOVS            R1, #5
399F36:  MOVS            R2, #0xA
399F38:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399F3C:  MOV             R0, R8; this
399F3E:  MOV             R1, R5; CAESound *
399F40:  STRH.W          R11, [R4,#0x5E]
399F44:  STR.W           R9, [R4,#0x24]
399F48:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
399F4C:  STR.W           R0, [R4,#0xA0]
399F50:  MOV             R3, R4
399F52:  LDR.W           R0, [R4,#0x94]
399F56:  LDR             R1, [R0,#0x14]
399F58:  ADD.W           R2, R1, #0x30 ; '0'
399F5C:  CMP             R1, #0
399F5E:  IT EQ
399F60:  ADDEQ           R2, R0, #4
399F62:  LDM             R2, {R0-R2}
399F64:  STRD.W          R6, R6, [SP,#0x48+var_28]
399F68:  STR             R6, [SP,#0x48+var_20]
399F6A:  STRD.W          R9, R6, [SP,#0x48+var_30]
399F6E:  STRD.W          R9, R9, [SP,#0x48+var_38]
399F72:  STMEA.W         SP, {R0-R2,R10}
399F76:  MOV             R0, R5
399F78:  MOVS            R1, #0
399F7A:  MOVS            R2, #0
399F7C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399F80:  MOV             R0, R8; this
399F82:  MOV             R1, R5; CAESound *
399F84:  STRH.W          R11, [R4,#0x5E]
399F88:  STR.W           R9, [R4,#0x24]
399F8C:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
399F90:  STR.W           R0, [R4,#0xA4]
399F94:  B               loc_399E82
