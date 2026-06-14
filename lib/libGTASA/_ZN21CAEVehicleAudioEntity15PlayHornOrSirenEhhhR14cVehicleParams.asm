; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity15PlayHornOrSirenEhhhR14cVehicleParams
; Address            : 0x3B7E38 - 0x3B81FC
; =========================================================

3B7E38:  PUSH            {R4-R7,LR}
3B7E3A:  ADD             R7, SP, #0xC
3B7E3C:  PUSH.W          {R8,R9,R11}
3B7E40:  VPUSH           {D8-D9}
3B7E44:  SUB             SP, SP, #0x30
3B7E46:  MOV             R4, R0
3B7E48:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3B7E54)
3B7E4C:  MOV             R6, R2
3B7E4E:  MOV             R5, R3
3B7E50:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3B7E52:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3B7E54:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3B7E56:  LDRSB.W         R2, [R0,#0x61]
3B7E5A:  LDRSB.W         R3, [R0,#0x60]
3B7E5E:  VMOV            S0, R2
3B7E62:  VCVT.F32.S32    S16, S0
3B7E66:  LDRSB.W         R0, [R0,#0x5F]
3B7E6A:  VMOV            S0, R3
3B7E6E:  VCVT.F32.S32    S18, S0
3B7E72:  VMOV            S0, R0
3B7E76:  VCVT.F32.S32    S0, S0
3B7E7A:  LDRB.W          R0, [R4,#0x90]
3B7E7E:  CMP             R0, #0
3B7E80:  BEQ             loc_3B7F42
3B7E82:  LDRB.W          R2, [R4,#0xBE]
3B7E86:  CMP             R1, #0
3B7E88:  BEQ             loc_3B7F7A
3B7E8A:  CMP             R2, #0
3B7E8C:  BNE.W           loc_3B8038
3B7E90:  SUBS            R0, #1
3B7E92:  UXTB            R0, R0
3B7E94:  CMP             R0, #8
3B7E96:  BHI.W           loc_3B81F0
3B7E9A:  VLDR            S2, [R4,#0xA0]
3B7E9E:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
3B7EA0:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7EAC)
3B7EA2:  MOVS            R2, #0x11; __int16
3B7EA4:  VADD.F32        S0, S2, S0
3B7EA8:  ADD             R0, PC; AEAudioHardware_ptr
3B7EAA:  LDR             R0, [R0]; AEAudioHardware ; this
3B7EAC:  VSTR            S0, [R4,#0xC4]
3B7EB0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B7EB4:  CBNZ            R0, loc_3B7ECA
3B7EB6:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7EC0)
3B7EB8:  MOVS            R1, #0x8A; unsigned __int16
3B7EBA:  MOVS            R2, #0x13; __int16
3B7EBC:  ADD             R0, PC; AEAudioHardware_ptr
3B7EBE:  LDR             R0, [R0]; AEAudioHardware ; this
3B7EC0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B7EC4:  CMP             R0, #0
3B7EC6:  BEQ.W           loc_3B81F0
3B7ECA:  LDR.W           R0, [R4,#0x178]
3B7ECE:  CMP             R0, #0
3B7ED0:  BNE.W           loc_3B81F0
3B7ED4:  LDR             R0, [R4,#4]
3B7ED6:  ADD.W           R8, R4, #8
3B7EDA:  LDRSB.W         R2, [R4,#0x90]
3B7EDE:  VLDR            S0, [R4,#0xC4]
3B7EE2:  LDR             R1, [R0,#0x14]
3B7EE4:  ADD.W           R3, R1, #0x30 ; '0'
3B7EE8:  CMP             R1, #0
3B7EEA:  IT EQ
3B7EEC:  ADDEQ           R3, R0, #4
3B7EEE:  MOVS            R0, #0
3B7EF0:  LDRD.W          R12, LR, [R3]
3B7EF4:  MOV.W           R1, #0x3F800000
3B7EF8:  LDR             R3, [R3,#8]
3B7EFA:  STRD.W          R1, R1, [SP,#0x58+var_48]
3B7EFE:  STRD.W          R1, R0, [SP,#0x58+var_40]
3B7F02:  MOVS            R1, #0x11
3B7F04:  STRD.W          R0, R0, [SP,#0x58+var_38]
3B7F08:  STR             R0, [SP,#0x58+var_30]
3B7F0A:  MOV             R0, R8
3B7F0C:  VSTR            S0, [SP,#0x58+var_4C]
3B7F10:  STRD.W          R12, LR, [SP,#0x58+var_58]
3B7F14:  STR             R3, [SP,#0x58+var_50]
3B7F16:  MOV             R3, R4
3B7F18:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B7F1C:  MOVS            R2, #4
3B7F1E:  LDR             R0, =(AESoundManager_ptr - 0x3B7F2E)
3B7F20:  STRH.W          R2, [R4,#0x5E]
3B7F24:  MOVS            R1, #0
3B7F26:  LDR.W           R2, [R4,#0x94]
3B7F2A:  ADD             R0, PC; AESoundManager_ptr
3B7F2C:  MOVW            R3, #0x147B
3B7F30:  MOVT            R1, #0x4020
3B7F34:  MOVT            R3, #0x3E2E
3B7F38:  LDR             R0, [R0]; AESoundManager
3B7F3A:  STR             R3, [R4,#0x58]
3B7F3C:  STRD.W          R1, R2, [R4,#0x20]
3B7F40:  B               loc_3B802E
3B7F42:  CBZ             R1, loc_3B7F4A
3B7F44:  LDRB.W          R0, [R4,#0xBE]
3B7F48:  CBZ             R0, loc_3B7F8E
3B7F4A:  VMOV.F32        S0, #-1.5
3B7F4E:  VLDR            S2, [R4,#0xC4]
3B7F52:  VLDR            S4, =-100.0
3B7F56:  LDR.W           R0, [R4,#0x178]
3B7F5A:  CMP             R0, #0
3B7F5C:  VADD.F32        S0, S2, S0
3B7F60:  VMAX.F32        D1, D0, D2
3B7F64:  VSTR            S2, [R4,#0xC4]
3B7F68:  BEQ             loc_3B8038
3B7F6A:  VCMPE.F32       S0, S4
3B7F6E:  VMRS            APSR_nzcv, FPSCR
3B7F72:  BLE             loc_3B7F86
3B7F74:  VSTR            S2, [R0,#0x14]
3B7F78:  B               loc_3B8038
3B7F7A:  CMP             R2, #0
3B7F7C:  ITT NE
3B7F7E:  LDRNE.W         R0, [R4,#0x178]; this
3B7F82:  CMPNE           R0, #0
3B7F84:  BEQ             loc_3B8038
3B7F86:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3B7F8A:  MOVS            R0, #0
3B7F8C:  B               loc_3B8034
3B7F8E:  LDR.W           R0, [R4,#0x178]; this
3B7F92:  CBZ             R0, loc_3B7F9E
3B7F94:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3B7F98:  MOVS            R0, #0
3B7F9A:  STR.W           R0, [R4,#0x178]
3B7F9E:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7FAC)
3B7FA0:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
3B7FA2:  MOVS            R2, #0x11; __int16
3B7FA4:  VSTR            S18, [R4,#0xC4]
3B7FA8:  ADD             R0, PC; AEAudioHardware_ptr
3B7FAA:  LDR             R0, [R0]; AEAudioHardware ; this
3B7FAC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B7FB0:  CBNZ            R0, loc_3B7FC6
3B7FB2:  LDR             R0, =(AEAudioHardware_ptr - 0x3B7FBC)
3B7FB4:  MOVS            R1, #0x8A; unsigned __int16
3B7FB6:  MOVS            R2, #0x13; __int16
3B7FB8:  ADD             R0, PC; AEAudioHardware_ptr
3B7FBA:  LDR             R0, [R0]; AEAudioHardware ; this
3B7FBC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B7FC0:  CMP             R0, #0
3B7FC2:  BEQ.W           loc_3B81F0
3B7FC6:  LDR             R0, [R4,#4]
3B7FC8:  ADD.W           R8, R4, #8
3B7FCC:  LDRSB.W         R2, [R4,#0x90]
3B7FD0:  MOV.W           R9, #0x3F800000
3B7FD4:  VLDR            S0, [R4,#0xC4]
3B7FD8:  LDR             R1, [R0,#0x14]
3B7FDA:  ADD.W           R3, R1, #0x30 ; '0'
3B7FDE:  CMP             R1, #0
3B7FE0:  IT EQ
3B7FE2:  ADDEQ           R3, R0, #4
3B7FE4:  MOVS            R0, #0
3B7FE6:  LDRD.W          R12, R1, [R3]
3B7FEA:  LDR             R3, [R3,#8]
3B7FEC:  STRD.W          R9, R9, [SP,#0x58+var_48]
3B7FF0:  STRD.W          R9, R0, [SP,#0x58+var_40]
3B7FF4:  STRD.W          R0, R0, [SP,#0x58+var_38]
3B7FF8:  STR             R0, [SP,#0x58+var_30]
3B7FFA:  MOV             R0, R8
3B7FFC:  VSTR            S0, [SP,#0x58+var_4C]
3B8000:  STRD.W          R12, R1, [SP,#0x58+var_58]
3B8004:  MOVS            R1, #0x11
3B8006:  STR             R3, [SP,#0x58+var_50]
3B8008:  MOV             R3, R4
3B800A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B800E:  LDR             R0, =(AESoundManager_ptr - 0x3B801C)
3B8010:  MOVS            R1, #4
3B8012:  STRH.W          R1, [R4,#0x5E]
3B8016:  MOVS            R1, #0
3B8018:  ADD             R0, PC; AESoundManager_ptr
3B801A:  MOVT            R1, #0x4020
3B801E:  STRD.W          R1, R9, [R4,#0x20]
3B8022:  MOVW            R1, #0x147B
3B8026:  LDR             R0, [R0]; AESoundManager ; this
3B8028:  MOVT            R1, #0x3E2E
3B802C:  STR             R1, [R4,#0x58]
3B802E:  MOV             R1, R8; CAESound *
3B8030:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B8034:  STR.W           R0, [R4,#0x178]
3B8038:  LDRB.W          R1, [R4,#0xBF]
3B803C:  MOVS            R0, #0
3B803E:  CBZ             R1, loc_3B8050
3B8040:  LDRB.W          R1, [R4,#0xC0]
3B8044:  CMP             R1, #0
3B8046:  MOV.W           R1, #0
3B804A:  IT EQ
3B804C:  MOVEQ           R1, #1
3B804E:  B               loc_3B8052
3B8050:  MOVS            R1, #0
3B8052:  CMP             R6, #0
3B8054:  MOV             R2, R5
3B8056:  IT EQ
3B8058:  MOVEQ           R0, #1
3B805A:  CMP             R5, #0
3B805C:  IT NE
3B805E:  MOVNE           R2, #1
3B8060:  ORRS            R0, R2
3B8062:  IT EQ
3B8064:  CMPEQ           R1, #0
3B8066:  BNE             loc_3B80E0
3B8068:  LDR             R0, =(AEAudioHardware_ptr - 0x3B8072)
3B806A:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
3B806C:  MOVS            R2, #0x11; __int16
3B806E:  ADD             R0, PC; AEAudioHardware_ptr
3B8070:  LDR             R0, [R0]; AEAudioHardware ; this
3B8072:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B8076:  CMP             R0, #0
3B8078:  BEQ.W           loc_3B81F0
3B807C:  LDR.W           R0, [R4,#0x17C]
3B8080:  CMP             R0, #0
3B8082:  BNE.W           loc_3B81F0
3B8086:  LDR             R0, [R7,#arg_0]
3B8088:  MOVW            R1, #0x1A7
3B808C:  LDR             R0, [R0,#0x10]
3B808E:  LDRH            R0, [R0,#0x26]
3B8090:  CMP             R0, R1
3B8092:  BNE             loc_3B80F4
3B8094:  LDR             R0, =(AEAudioHardware_ptr - 0x3B809E)
3B8096:  MOVS            R1, #0x4F ; 'O'; unsigned __int16
3B8098:  MOVS            R2, #0x28 ; '('; __int16
3B809A:  ADD             R0, PC; AEAudioHardware_ptr
3B809C:  LDR             R0, [R0]; AEAudioHardware ; this
3B809E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B80A2:  CMP             R0, #0
3B80A4:  BEQ.W           loc_3B81F0
3B80A8:  LDR             R0, [R4,#4]
3B80AA:  MOVS            R3, #0
3B80AC:  MOV.W           R6, #0x3F800000
3B80B0:  LDR             R1, [R0,#0x14]
3B80B2:  ADD.W           R2, R1, #0x30 ; '0'
3B80B6:  CMP             R1, #0
3B80B8:  IT EQ
3B80BA:  ADDEQ           R2, R0, #4
3B80BC:  LDM             R2, {R0-R2}
3B80BE:  STRD.W          R6, R6, [SP,#0x58+var_48]
3B80C2:  STRD.W          R6, R3, [SP,#0x58+var_40]
3B80C6:  ADD.W           R6, R4, #8
3B80CA:  STRD.W          R3, R3, [SP,#0x58+var_38]
3B80CE:  STR             R3, [SP,#0x58+var_30]
3B80D0:  VSTR            S16, [SP,#0x58+var_4C]
3B80D4:  STMEA.W         SP, {R0-R2}
3B80D8:  MOV             R0, R6
3B80DA:  MOVS            R1, #0x28 ; '('
3B80DC:  MOVS            R2, #3
3B80DE:  B               loc_3B812A
3B80E0:  ANDS            R0, R1
3B80E2:  CMP             R0, #1
3B80E4:  BNE             loc_3B815A
3B80E6:  LDR.W           R0, [R4,#0x17C]; this
3B80EA:  CBZ             R0, loc_3B815A
3B80EC:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3B80F0:  MOVS            R0, #0
3B80F2:  B               loc_3B8156
3B80F4:  LDR             R0, [R4,#4]
3B80F6:  MOVS            R3, #0
3B80F8:  MOV.W           R6, #0x3F800000
3B80FC:  LDR             R1, [R0,#0x14]
3B80FE:  ADD.W           R2, R1, #0x30 ; '0'
3B8102:  CMP             R1, #0
3B8104:  IT EQ
3B8106:  ADDEQ           R2, R0, #4
3B8108:  LDM             R2, {R0-R2}
3B810A:  STRD.W          R6, R6, [SP,#0x58+var_48]
3B810E:  STRD.W          R6, R3, [SP,#0x58+var_40]
3B8112:  ADD.W           R6, R4, #8
3B8116:  STRD.W          R3, R3, [SP,#0x58+var_38]
3B811A:  STR             R3, [SP,#0x58+var_30]
3B811C:  VSTR            S16, [SP,#0x58+var_4C]
3B8120:  STMEA.W         SP, {R0-R2}
3B8124:  MOV             R0, R6
3B8126:  MOVS            R1, #0x11
3B8128:  MOVS            R2, #0xA
3B812A:  MOV             R3, R4
3B812C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B8130:  LDR             R0, =(AESoundManager_ptr - 0x3B813E)
3B8132:  MOVS            R2, #0
3B8134:  MOVS            R1, #4
3B8136:  MOVT            R2, #0x4040
3B813A:  ADD             R0, PC; AESoundManager_ptr
3B813C:  STRH.W          R1, [R4,#0x5E]
3B8140:  MOV.W           R1, #0x3F800000
3B8144:  LDR             R0, [R0]; AESoundManager ; this
3B8146:  STRD.W          R2, R1, [R4,#0x20]
3B814A:  MOV.W           R1, #0x3E800000
3B814E:  STR             R1, [R4,#0x58]
3B8150:  MOV             R1, R6; CAESound *
3B8152:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B8156:  STR.W           R0, [R4,#0x17C]
3B815A:  LDRB.W          R0, [R4,#0xC0]
3B815E:  CBZ             R5, loc_3B81DA
3B8160:  CMP             R0, #0
3B8162:  BNE             loc_3B81F0
3B8164:  LDR             R0, =(AEAudioHardware_ptr - 0x3B816E)
3B8166:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
3B8168:  MOVS            R2, #0x11; __int16
3B816A:  ADD             R0, PC; AEAudioHardware_ptr
3B816C:  LDR             R0, [R0]; AEAudioHardware ; this
3B816E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B8172:  CBZ             R0, loc_3B81F0
3B8174:  LDR.W           R0, [R4,#0x180]
3B8178:  CBNZ            R0, loc_3B81F0
3B817A:  LDR             R0, [R4,#4]
3B817C:  ADD.W           R5, R4, #8
3B8180:  MOVS            R3, #0
3B8182:  MOV.W           R6, #0x3F800000
3B8186:  LDR             R1, [R0,#0x14]
3B8188:  ADD.W           R2, R1, #0x30 ; '0'
3B818C:  CMP             R1, #0
3B818E:  IT EQ
3B8190:  ADDEQ           R2, R0, #4
3B8192:  LDM             R2, {R0-R2}
3B8194:  STRD.W          R6, R6, [SP,#0x58+var_48]
3B8198:  STRD.W          R6, R3, [SP,#0x58+var_40]
3B819C:  STRD.W          R3, R3, [SP,#0x58+var_38]
3B81A0:  STR             R3, [SP,#0x58+var_30]
3B81A2:  MOV             R3, R4
3B81A4:  VSTR            S16, [SP,#0x58+var_4C]
3B81A8:  STMEA.W         SP, {R0-R2}
3B81AC:  MOV             R0, R5
3B81AE:  MOVS            R1, #0x11
3B81B0:  MOVS            R2, #0xB
3B81B2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B81B6:  LDR             R0, =(AESoundManager_ptr - 0x3B81C4)
3B81B8:  MOVS            R1, #4
3B81BA:  STRH.W          R1, [R4,#0x5E]
3B81BE:  MOVS            R1, #0
3B81C0:  ADD             R0, PC; AESoundManager_ptr
3B81C2:  MOVT            R1, #0x4040
3B81C6:  STRD.W          R1, R6, [R4,#0x20]
3B81CA:  MOV.W           R1, #0x3E800000
3B81CE:  LDR             R0, [R0]; AESoundManager ; this
3B81D0:  STR             R1, [R4,#0x58]
3B81D2:  MOV             R1, R5; CAESound *
3B81D4:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B81D8:  B               loc_3B81EC
3B81DA:  CMP             R0, #0
3B81DC:  ITT NE
3B81DE:  LDRNE.W         R0, [R4,#0x180]; this
3B81E2:  CMPNE           R0, #0
3B81E4:  BEQ             loc_3B81F0
3B81E6:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3B81EA:  MOVS            R0, #0
3B81EC:  STR.W           R0, [R4,#0x180]
3B81F0:  ADD             SP, SP, #0x30 ; '0'
3B81F2:  VPOP            {D8-D9}
3B81F6:  POP.W           {R8,R9,R11}
3B81FA:  POP             {R4-R7,PC}
