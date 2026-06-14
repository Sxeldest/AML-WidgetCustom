; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity16PlayBicycleSoundEsssff
; Address            : 0x3B7B98 - 0x3B7D40
; =========================================================

3B7B98:  PUSH            {R4-R7,LR}
3B7B9A:  ADD             R7, SP, #0xC
3B7B9C:  PUSH.W          {R8,R9,R11}
3B7BA0:  VPUSH           {D8-D9}
3B7BA4:  SUB             SP, SP, #0xA0
3B7BA6:  MOV             R4, R0
3B7BA8:  MOVS            R0, #0
3B7BAA:  STR             R0, [SP,#0xC8+var_94]
3B7BAC:  MOV             R9, R2
3B7BAE:  LDRH.W          R2, [R4,#0xE0]
3B7BB2:  MOVW            R0, #0xFFFF
3B7BB6:  MOV             R8, R3
3B7BB8:  MOV             R5, R1
3B7BBA:  CMP             R2, R0
3B7BBC:  BEQ.W           loc_3B7D2E
3B7BC0:  CMP             R5, #3
3B7BC2:  BEQ             loc_3B7BD8
3B7BC4:  CMP             R5, #2
3B7BC6:  BEQ             loc_3B7BE2
3B7BC8:  CMP             R5, #1
3B7BCA:  BNE             loc_3B7BF8
3B7BCC:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7BD8)
3B7BCE:  SXTH            R2, R2
3B7BD0:  LDRH.W          R1, [R4,#0xDC]
3B7BD4:  ADD             R0, PC; AEAudioHardware_ptr
3B7BD6:  B               loc_3B7BEC
3B7BD8:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7BE2)
3B7BDA:  MOVS            R1, #0x27 ; '''
3B7BDC:  MOVS            R2, #2
3B7BDE:  ADD             R0, PC; AEAudioHardware_ptr
3B7BE0:  B               loc_3B7BEC
3B7BE2:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7BEE)
3B7BE4:  MOVS            R2, #0x28 ; '('; __int16
3B7BE6:  LDRH.W          R1, [R4,#0xDE]; unsigned __int16
3B7BEA:  ADD             R0, PC; AEAudioHardware_ptr
3B7BEC:  LDR             R0, [R0]; AEAudioHardware ; this
3B7BEE:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B7BF2:  CMP             R0, #0
3B7BF4:  BEQ.W           loc_3B7D2E
3B7BF8:  ADD.W           R6, R4, R5,LSL#3
3B7BFC:  VLDR            S16, [R7,#arg_4]
3B7C00:  VLDR            S18, [R7,#arg_0]
3B7C04:  CMP             R5, #3
3B7C06:  LDR.W           R0, [R6,#0xE8]!
3B7C0A:  BNE             loc_3B7C8A
3B7C0C:  CMP             R0, #0
3B7C0E:  BNE.W           loc_3B7D2E
3B7C12:  MOVS            R0, #0; this
3B7C14:  MOVS            R1, #3; int
3B7C16:  MOVS            R5, #0
3B7C18:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3B7C1C:  LDR             R1, [R4,#4]
3B7C1E:  ADD.W           R9, SP, #0xC8+var_9C
3B7C22:  LDR.W           R8, =(unk_616AB4 - 0x3B7C2C)
3B7C26:  LDR             R2, [R1,#0x14]
3B7C28:  ADD             R8, PC; unk_616AB4
3B7C2A:  ADD.W           R3, R2, #0x30 ; '0'
3B7C2E:  CMP             R2, #0
3B7C30:  IT EQ
3B7C32:  ADDEQ           R3, R1, #4
3B7C34:  MOV.W           R2, #0x3F800000
3B7C38:  LDRD.W          R1, R12, [R3]
3B7C3C:  LDR             R3, [R3,#8]
3B7C3E:  STRD.W          R2, R2, [SP,#0xC8+var_B8]
3B7C42:  STRD.W          R2, R5, [SP,#0xC8+var_B0]
3B7C46:  STRD.W          R5, R5, [SP,#0xC8+var_A8]
3B7C4A:  STR             R5, [SP,#0xC8+var_A0]
3B7C4C:  LSLS            R5, R0, #0x10
3B7C4E:  ASRS            R0, R5, #0xE
3B7C50:  VSTR            S18, [SP,#0xC8+var_BC]
3B7C54:  LDRSH.W         R2, [R8,R0]
3B7C58:  MOV             R0, R9
3B7C5A:  STRD.W          R1, R12, [SP,#0xC8+var_C8]
3B7C5E:  STR             R3, [SP,#0xC8+var_C0]
3B7C60:  MOVS            R1, #2
3B7C62:  MOV             R3, R4
3B7C64:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B7C68:  LDR             R0, =(AESoundManager_ptr - 0x3B7C78)
3B7C6A:  ADD.W           R1, R8, R5,ASR#14
3B7C6E:  MOVS            R2, #0x24 ; '$'
3B7C70:  VSTR            S16, [SP,#0xC8+var_80]
3B7C74:  ADD             R0, PC; AESoundManager_ptr
3B7C76:  LDRH            R1, [R1,#2]
3B7C78:  VSTR            S18, [SP,#0xC8+var_88]
3B7C7C:  STRH.W          R2, [SP,#0xC8+var_46]
3B7C80:  STRH.W          R1, [SP,#0xC8+var_40]
3B7C84:  MOV             R1, R9
3B7C86:  LDR             R0, [R0]; AESoundManager
3B7C88:  B               loc_3B7D28
3B7C8A:  CBZ             R0, loc_3B7C98
3B7C8C:  VSTR            S18, [R0,#0x14]
3B7C90:  LDR             R0, [R6]
3B7C92:  VSTR            S16, [R0,#0x1C]
3B7C96:  B               loc_3B7D2E
3B7C98:  CMP             R5, #2
3B7C9A:  BEQ             loc_3B7CD8
3B7C9C:  CMP             R5, #1
3B7C9E:  BNE             loc_3B7D2E
3B7CA0:  LDR             R0, [R4,#4]
3B7CA2:  MOVS            R3, #0
3B7CA4:  MOV.W           R5, #0x3F800000
3B7CA8:  LDR             R1, [R0,#0x14]
3B7CAA:  ADD.W           R2, R1, #0x30 ; '0'
3B7CAE:  CMP             R1, #0
3B7CB0:  IT EQ
3B7CB2:  ADDEQ           R2, R0, #4
3B7CB4:  LDM             R2, {R0-R2}
3B7CB6:  STRD.W          R3, R3, [SP,#0xC8+var_A8]
3B7CBA:  STR             R3, [SP,#0xC8+var_A0]
3B7CBC:  STMEA.W         SP, {R0-R3,R5}
3B7CC0:  ADD             R0, SP, #0xC8+var_9C
3B7CC2:  MOV             R1, R9
3B7CC4:  STRD.W          R5, R5, [SP,#0xC8+var_B4]
3B7CC8:  MOV             R2, R8
3B7CCA:  STR             R3, [SP,#0xC8+var_AC]
3B7CCC:  MOV             R3, R4
3B7CCE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B7CD2:  VMOV.F32        S0, #2.5
3B7CD6:  B               loc_3B7D0E
3B7CD8:  LDR             R0, [R4,#4]
3B7CDA:  MOVS            R3, #0
3B7CDC:  MOV.W           R5, #0x3F800000
3B7CE0:  LDR             R1, [R0,#0x14]
3B7CE2:  ADD.W           R2, R1, #0x30 ; '0'
3B7CE6:  CMP             R1, #0
3B7CE8:  IT EQ
3B7CEA:  ADDEQ           R2, R0, #4
3B7CEC:  LDM             R2, {R0-R2}
3B7CEE:  STRD.W          R3, R3, [SP,#0xC8+var_A8]
3B7CF2:  STR             R3, [SP,#0xC8+var_A0]
3B7CF4:  STMEA.W         SP, {R0-R3,R5}
3B7CF8:  ADD             R0, SP, #0xC8+var_9C
3B7CFA:  MOV             R1, R9
3B7CFC:  STRD.W          R5, R5, [SP,#0xC8+var_B4]
3B7D00:  MOV             R2, R8
3B7D02:  STR             R3, [SP,#0xC8+var_AC]
3B7D04:  MOV             R3, R4
3B7D06:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B7D0A:  VMOV.F32        S0, #1.5
3B7D0E:  LDR             R0, =(AESoundManager_ptr - 0x3B7D1A)
3B7D10:  MOVS            R1, #4
3B7D12:  VSTR            S18, [SP,#0xC8+var_88]
3B7D16:  ADD             R0, PC; AESoundManager_ptr
3B7D18:  VSTR            S0, [SP,#0xC8+var_84]
3B7D1C:  VSTR            S16, [SP,#0xC8+var_80]
3B7D20:  LDR             R0, [R0]; AESoundManager ; this
3B7D22:  STRH.W          R1, [SP,#0xC8+var_46]
3B7D26:  ADD             R1, SP, #0xC8+var_9C; CAESound *
3B7D28:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B7D2C:  STR             R0, [R6]
3B7D2E:  ADD             R0, SP, #0xC8+var_9C; this
3B7D30:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3B7D34:  ADD             SP, SP, #0xA0
3B7D36:  VPOP            {D8-D9}
3B7D3A:  POP.W           {R8,R9,R11}
3B7D3E:  POP             {R4-R7,PC}
