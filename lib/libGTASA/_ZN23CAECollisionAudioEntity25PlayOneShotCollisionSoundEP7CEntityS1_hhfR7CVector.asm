; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity25PlayOneShotCollisionSoundEP7CEntityS1_hhfR7CVector
; Address            : 0x393A48 - 0x393D38
; =========================================================

393A48:  PUSH            {R4-R7,LR}
393A4A:  ADD             R7, SP, #0xC
393A4C:  PUSH.W          {R8-R11}
393A50:  SUB             SP, SP, #4
393A52:  VPUSH           {D8-D15}
393A56:  SUB             SP, SP, #0xE0
393A58:  MOV             R5, R1
393A5A:  MOVS            R1, #0
393A5C:  STR             R1, [SP,#0x140+var_CC]
393A5E:  MOV             R1, R0
393A60:  ADDW            R0, R0, #0x21A
393A64:  STR             R0, [SP,#0x140+var_114]
393A66:  LDR             R0, =(AEAudioHardware_ptr - 0x393A76)
393A68:  VMOV.F32        S18, #5.0
393A6C:  VMOV.F32        S22, #10.0
393A70:  LDR             R6, [R7,#arg_0]
393A72:  ADD             R0, PC; AEAudioHardware_ptr
393A74:  VMOV.F32        S26, #-3.0
393A78:  VMOV.F32        S28, #20.0
393A7C:  VLDR            S16, [R7,#arg_4]
393A80:  LDR             R0, [R0]; AEAudioHardware
393A82:  MOV             R9, R3
393A84:  STR             R0, [SP,#0x140+var_FC]
393A86:  MOV             R11, R2
393A88:  LDR             R0, =(gCollisionLookup_ptr - 0x393A92)
393A8A:  VLDR            S20, =100.0
393A8E:  ADD             R0, PC; gCollisionLookup_ptr
393A90:  VLDR            S24, =500.0
393A94:  VLDR            S30, =-100.0
393A98:  LDR             R0, [R0]; gCollisionLookup
393A9A:  STR             R0, [SP,#0x140+var_DC]
393A9C:  LDR             R0, =(gCollisionLookup_ptr - 0x393AA4)
393A9E:  STR             R1, [SP,#0x140+var_F4]
393AA0:  ADD             R0, PC; gCollisionLookup_ptr
393AA2:  STR.W           R9, [SP,#0x140+var_E0]
393AA6:  LDR             R0, [R0]; gCollisionLookup
393AA8:  STR             R0, [SP,#0x140+var_F8]
393AAA:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x393AB0)
393AAC:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
393AAE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
393AB0:  STR             R0, [SP,#0x140+var_100]
393AB2:  LDR             R0, =(gCollisionLookup_ptr - 0x393AB8)
393AB4:  ADD             R0, PC; gCollisionLookup_ptr
393AB6:  LDR             R0, [R0]; gCollisionLookup
393AB8:  STR             R0, [SP,#0x140+var_104]
393ABA:  LDR             R0, =(AESoundManager_ptr - 0x393AC0)
393ABC:  ADD             R0, PC; AESoundManager_ptr
393ABE:  LDR             R0, [R0]; AESoundManager
393AC0:  STR             R0, [SP,#0x140+var_110]
393AC2:  LDR             R0, =(AEAudioHardware_ptr - 0x393AC8)
393AC4:  ADD             R0, PC; AEAudioHardware_ptr
393AC6:  LDR             R0, [R0]; AEAudioHardware
393AC8:  STR             R0, [SP,#0x140+var_108]
393ACA:  LDR             R0, =(AEAudioHardware_ptr - 0x393AD0)
393ACC:  ADD             R0, PC; AEAudioHardware_ptr
393ACE:  LDR             R0, [R0]; AEAudioHardware
393AD0:  STR             R0, [SP,#0x140+var_10C]
393AD2:  MOVS            R0, #0
393AD4:  STRD.W          R5, R11, [SP,#0x140+var_E8]
393AD8:  B               loc_393B0C
393ADA:  STRB            R6, [R1]
393ADC:  STRB.W          R9, [R1,#-1]
393AE0:  LDR             R2, [SP,#0x140+var_F0]
393AE2:  STR.W           R2, [R1,#-0x12]
393AE6:  LDR             R2, [SP,#0x140+var_EC]
393AE8:  STR.W           R2, [R1,#-0xE]
393AEC:  STR.W           R0, [R1,#-0xA]
393AF0:  MOVS            R0, #0
393AF2:  STR.W           R0, [R1,#-6]
393AF6:  MOVS            R0, #1
393AF8:  STRB.W          R0, [R1,#-2]
393AFC:  LDR             R0, [SP,#0x140+var_F4]
393AFE:  MOV             R1, R0
393B00:  LDR.W           R0, [R1,#0x204]
393B04:  ADDS            R0, #1
393B06:  STR.W           R0, [R1,#0x204]
393B0A:  B               loc_393D18
393B0C:  MOV             R8, R0
393B0E:  CMP.W           R8, #0
393B12:  MOV             R10, R6
393B14:  MOV             R4, R9
393B16:  MOV             R0, R5
393B18:  MOV             R1, R11
393B1A:  ITTTT EQ
393B1C:  MOVEQ           R10, R9
393B1E:  MOVEQ           R4, R6
393B20:  MOVEQ           R0, R11
393B22:  MOVEQ           R1, R5
393B24:  CMP.W           R10, #0xC2
393B28:  BHI.W           loc_393D18
393B2C:  CMP.W           R10, #0xC0
393B30:  STRD.W          R1, R0, [SP,#0x140+var_F0]
393B34:  IT EQ
393B36:  CMPEQ           R4, #0xC0
393B38:  BNE             loc_393B54
393B3A:  LDR             R0, [SP,#0x140+var_FC]; this
393B3C:  MOV.W           R1, #0x128; unsigned __int16
393B40:  MOVS            R2, #0x1D; __int16
393B42:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
393B46:  CMP             R0, #0
393B48:  BEQ.W           loc_393D24
393B4C:  VMUL.F32        S16, S16, S18
393B50:  MOVS            R6, #0x1D
393B52:  B               loc_393B86
393B54:  CMP.W           R10, #0xC0
393B58:  IT NE
393B5A:  CMPNE           R4, #0xC0
393B5C:  BEQ.W           loc_393D24
393B60:  CMP.W           R10, #0xC2
393B64:  BEQ             loc_393B74
393B66:  CMP.W           R10, #0xC1
393B6A:  BNE             loc_393B84
393B6C:  MOVS            R6, #0x1D
393B6E:  LDR             R0, [SP,#0x140+var_10C]
393B70:  MOVS            R1, #0xA0
393B72:  B               loc_393B7A
393B74:  LDR             R0, [SP,#0x140+var_108]; this
393B76:  MOVS            R6, #0x1D
393B78:  MOVS            R1, #0xE2; unsigned __int16
393B7A:  MOVS            R2, #0x1D; __int16
393B7C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
393B80:  CBNZ            R0, loc_393B86
393B82:  B               loc_393D24
393B84:  MOVS            R6, #2
393B86:  LDR             R1, [SP,#0x140+var_DC]
393B88:  MOV.W           R0, R10,LSL#4
393B8C:  STR             R6, [SP,#0x140+var_D8]
393B8E:  ADD.W           R6, R1, R10,LSL#4
393B92:  LDR.W           R11, [R1,R0]
393B96:  MOV             R9, R6
393B98:  LDR.W           R1, [R9,#4]!; int
393B9C:  CMP             R11, R1
393B9E:  BEQ             loc_393BCC
393BA0:  LDR             R0, [SP,#0x140+var_F4]
393BA2:  ADD.W           R5, R0, R10,LSL#1
393BA6:  MOV             R0, R11; this
393BA8:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
393BAC:  MOV             R11, R0
393BAE:  LDRSH.W         R0, [R5,#0x7C]!
393BB2:  B               loc_393BC4
393BB4:  LDR.W           R1, [R9]; int
393BB8:  LDR             R0, [R6]; this
393BBA:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
393BBE:  MOV             R11, R0
393BC0:  LDRSH.W         R0, [R5]
393BC4:  SXTH.W          R1, R11
393BC8:  CMP             R1, R0
393BCA:  BEQ             loc_393BB4
393BCC:  UXTH.W          R0, R11
393BD0:  MOVW            R1, #0xFFFF
393BD4:  CMP             R0, R1
393BD6:  BEQ.W           loc_393D0E
393BDA:  LDR             R0, [SP,#0x140+var_F8]
393BDC:  EOR.W           R1, R10, #0xBC
393BE0:  ADD.W           R0, R0, R4,LSL#4
393BE4:  VLDR            S0, [R0,#0xC]
393BE8:  EOR.W           R0, R4, #0x3E ; '>'
393BEC:  ORRS            R0, R1
393BEE:  VCVT.F32.S32    S0, S0
393BF2:  VMUL.F32        S0, S16, S0
393BF6:  VDIV.F32        S0, S0, S20
393BFA:  VMUL.F32        S2, S0, S22
393BFE:  IT EQ
393C00:  VMOVEQ.F32      S0, S2
393C04:  VMUL.F32        S0, S0, S24
393C08:  VMOV            R0, S0; x
393C0C:  BLX             floorf
393C10:  VMOV            S0, R0
393C14:  VCVT.S32.F32    S0, S0
393C18:  VMOV            R0, S0
393C1C:  CMP             R0, #0x64 ; 'd'
393C1E:  IT GE
393C20:  MOVGE           R0, #0x64 ; 'd'
393C22:  RSB.W           R0, R0, #0x64 ; 'd'
393C26:  LSLS            R1, R0, #0x10
393C28:  CMP.W           R1, #0x630000
393C2C:  BGT             loc_393D0E
393C2E:  LDR             R2, [SP,#0x140+var_100]
393C30:  SXTH            R1, R0
393C32:  LDR             R2, [R2]
393C34:  LDRSB.W         R2, [R2,#0x74]
393C38:  VMOV            S0, R2
393C3C:  VCVT.F32.S32    S0, S0
393C40:  LDR             R2, [SP,#0x140+var_104]
393C42:  ADD.W           R2, R2, R10,LSL#4
393C46:  LDR             R4, [R2,#8]
393C48:  CMP             R1, R4
393C4A:  VADD.F32        S17, S0, S26
393C4E:  BLE             loc_393C82
393C50:  RSB.W           R0, R4, #0x64 ; 'd'
393C54:  VMOV            S0, R0
393C58:  RSB.W           R0, R1, #0x64 ; 'd'
393C5C:  VMOV            S2, R0
393C60:  VCVT.F32.S32    S0, S0
393C64:  VCVT.F32.S32    S2, S2
393C68:  VDIV.F32        S0, S2, S0
393C6C:  VMOV            R0, S0; x
393C70:  BLX             log10f
393C74:  VMOV            S0, R0
393C78:  VMUL.F32        S0, S0, S28
393C7C:  VADD.F32        S17, S17, S0
393C80:  B               loc_393C84
393C82:  MOV             R4, R0
393C84:  VCMPE.F32       S17, S30
393C88:  VMRS            APSR_nzcv, FPSCR
393C8C:  BLE             loc_393D0E
393C8E:  LDR             R0, [R7,#arg_8]
393C90:  MOV.W           R6, #0x40000000
393C94:  SXTH            R3, R4
393C96:  ADD             R5, SP, #0x140+var_D4
393C98:  MOV             R2, R0
393C9A:  LDM             R2, {R0-R2}
393C9C:  STR             R6, [SP,#0x140+var_130]
393C9E:  MOV.W           R6, #0x3F800000
393CA2:  STRD.W          R6, R6, [SP,#0x140+var_12C]
393CA6:  MOVS            R6, #0
393CA8:  STR             R6, [SP,#0x140+var_124]
393CAA:  MOVW            R6, #0x424
393CAE:  STR             R6, [SP,#0x140+var_120]
393CB0:  MOV             R6, #0x3CA3D70A
393CB8:  STRD.W          R6, R3, [SP,#0x140+var_11C]
393CBC:  VSTR            S17, [SP,#0x140+var_134]
393CC0:  STMEA.W         SP, {R0-R2}
393CC4:  SXTH.W          R2, R11
393CC8:  MOV             R0, R5
393CCA:  LDR             R4, [SP,#0x140+var_F4]
393CCC:  LDR             R1, [SP,#0x140+var_D8]
393CCE:  MOV             R3, R4
393CD0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
393CD4:  LDR             R0, [SP,#0x140+var_110]; this
393CD6:  MOV             R1, R5; CAESound *
393CD8:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
393CDC:  ADD.W           R1, R4, R10,LSL#1
393CE0:  CMP             R0, #0
393CE2:  STRH.W          R11, [R1,#0x7C]
393CE6:  BEQ             loc_393D0E
393CE8:  LDR             R1, [SP,#0x140+var_114]
393CEA:  MOV.W           R2, #0xFFFFFFFF
393CEE:  LDR.W           R9, [SP,#0x140+var_E0]
393CF2:  LDRD.W          R5, R11, [SP,#0x140+var_E8]
393CF6:  LDR             R6, [R7,#arg_0]
393CF8:  LDR.W           R3, [R1,#-0xA]
393CFC:  CMP             R3, #0
393CFE:  BEQ.W           loc_393ADA
393D02:  ADDS            R2, #1
393D04:  ADDS            R1, #0x14
393D06:  CMP.W           R2, #0x12A
393D0A:  BLE             loc_393CF8
393D0C:  B               loc_393D18
393D0E:  LDR.W           R9, [SP,#0x140+var_E0]
393D12:  LDRD.W          R5, R11, [SP,#0x140+var_E8]
393D16:  LDR             R6, [R7,#arg_0]
393D18:  ADD.W           R0, R8, #1
393D1C:  CMP.W           R8, #1
393D20:  BLT.W           loc_393B0C
393D24:  ADD             R0, SP, #0x140+var_D4; this
393D26:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
393D2A:  ADD             SP, SP, #0xE0
393D2C:  VPOP            {D8-D15}
393D30:  ADD             SP, SP, #4
393D32:  POP.W           {R8-R11}
393D36:  POP             {R4-R7,PC}
