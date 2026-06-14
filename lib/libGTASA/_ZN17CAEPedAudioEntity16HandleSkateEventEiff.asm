; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity16HandleSkateEventEiff
; Address            : 0x398A48 - 0x398B4E
; =========================================================

398A48:  PUSH            {R4-R7,LR}
398A4A:  ADD             R7, SP, #0xC
398A4C:  PUSH.W          {R8-R11}
398A50:  SUB             SP, SP, #0x2C
398A52:  MOV             R4, R0
398A54:  MOV             R5, R3
398A56:  LDR.W           R0, [R4,#0x94]
398A5A:  MOV             R6, R2
398A5C:  MOV             R8, R1
398A5E:  LDRB.W          R0, [R0,#0x485]
398A62:  LSLS            R0, R0, #0x1E
398A64:  BMI             loc_398B2E
398A66:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x398A6E)
398A68:  MOVS            R1, #3; int
398A6A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
398A6C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
398A6E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
398A70:  LDRB.W          R11, [R0,R8]
398A74:  MOV             R0, #0xFFFFFFFD; this
398A78:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
398A7C:  MOV             R9, R0
398A7E:  LDR             R0, =(AEAudioHardware_ptr - 0x398A88)
398A80:  MOVS            R1, #0; unsigned __int16
398A82:  MOVS            R2, #0x29 ; ')'; __int16
398A84:  ADD             R0, PC; AEAudioHardware_ptr
398A86:  MOV.W           R10, #0
398A8A:  LDR             R0, [R0]; AEAudioHardware ; this
398A8C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398A90:  CMP             R0, #0
398A92:  BEQ             loc_398B36
398A94:  SXTB.W          R1, R11
398A98:  LDR.W           R0, [R4,#0x94]
398A9C:  VMOV            S4, R1
398AA0:  MOVW            R3, #0xD845
398AA4:  VMOV            S2, R6
398AA8:  MOVT            R3, #0x3D70
398AAC:  VCVT.F32.S32    S4, S4
398AB0:  LDR             R1, [R0,#0x14]
398AB2:  VMOV            S6, R9
398AB6:  MOVS            R6, #0x80
398AB8:  VMOV            S0, R5
398ABC:  ADD.W           R2, R1, #0x30 ; '0'
398AC0:  VCVT.F32.S32    S6, S6
398AC4:  CMP             R1, #0
398AC6:  IT EQ
398AC8:  ADDEQ           R2, R0, #4
398ACA:  MOV.W           R5, #0x3F800000
398ACE:  LDM             R2, {R0-R2}
398AD0:  CMP.W           R8, #0x38 ; '8'
398AD4:  VADD.F32        S2, S4, S2
398AD8:  STRD.W          R5, R10, [SP,#0x48+var_30]
398ADC:  STRD.W          R6, R3, [SP,#0x48+var_28]
398AE0:  MOV             R3, R4
398AE2:  STR.W           R10, [SP,#0x48+var_20]
398AE6:  VSTR            S0, [SP,#0x48+var_34]
398AEA:  STR             R5, [SP,#0x48+var_38]
398AEC:  ADD.W           R5, R4, #8
398AF0:  STMEA.W         SP, {R0-R2}
398AF4:  MOV.W           R2, #8
398AF8:  MOV             R0, R5
398AFA:  VADD.F32        S2, S2, S6
398AFE:  MOV.W           R1, #0x29 ; ')'
398B02:  VSTR            S2, [SP,#0x48+var_3C]
398B06:  IT EQ
398B08:  MOVEQ           R2, #7
398B0A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
398B0E:  LDR.W           R1, [R4,#0x94]; CEntity *
398B12:  MOV             R0, R5; this
398B14:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
398B18:  LDR             R0, =(AESoundManager_ptr - 0x398B20)
398B1A:  MOV             R1, R5; CAESound *
398B1C:  ADD             R0, PC; AESoundManager_ptr
398B1E:  LDR             R0, [R0]; AESoundManager ; this
398B20:  ADD             SP, SP, #0x2C ; ','
398B22:  POP.W           {R8-R11}
398B26:  POP.W           {R4-R7,LR}
398B2A:  B.W             sub_19F824
398B2E:  ADD             SP, SP, #0x2C ; ','
398B30:  POP.W           {R8-R11}
398B34:  POP             {R4-R7,PC}
398B36:  LDR             R0, =(AEAudioHardware_ptr - 0x398B40)
398B38:  MOVS            R1, #0; unsigned __int16
398B3A:  MOVS            R2, #0x29 ; ')'; __int16
398B3C:  ADD             R0, PC; AEAudioHardware_ptr
398B3E:  LDR             R0, [R0]; AEAudioHardware ; this
398B40:  ADD             SP, SP, #0x2C ; ','
398B42:  POP.W           {R8-R11}
398B46:  POP.W           {R4-R7,LR}
398B4A:  B.W             sub_18B078
