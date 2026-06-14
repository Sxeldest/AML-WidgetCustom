; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity12HandlePedHitEiP9CPhysicalhfj
; Address            : 0x398E88 - 0x3993E2
; =========================================================

398E88:  PUSH            {R4-R7,LR}
398E8A:  ADD             R7, SP, #0xC
398E8C:  PUSH.W          {R8-R11}
398E90:  SUB             SP, SP, #4
398E92:  VPUSH           {D8-D11}
398E96:  SUB             SP, SP, #0x38
398E98:  MOV             R10, R0
398E9A:  LDR.W           R0, =(AEAudioHardware_ptr - 0x398EA8)
398E9E:  LDR.W           R6, [R10,#0x94]
398EA2:  MOV             R11, R2
398EA4:  ADD             R0, PC; AEAudioHardware_ptr
398EA6:  MOV             R5, R1
398EA8:  MOVS            R1, #0x8F; unsigned __int16
398EAA:  MOVS            R2, #5; __int16
398EAC:  LDR             R0, [R0]; AEAudioHardware ; this
398EAE:  MOV             R9, R3
398EB0:  LDRSB.W         R4, [R6,#0x71C]
398EB4:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398EB8:  CMP             R0, #0
398EBA:  BEQ.W           loc_39902A
398EBE:  LDR             R0, [R7,#arg_4]
398EC0:  MOV.W           R8, #0xFFFFFFFF
398EC4:  STR             R0, [SP,#0x78+var_44]
398EC6:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x398ED2)
398ECA:  VLDR            S0, [R7,#arg_0]
398ECE:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
398ED0:  VLDR            S18, =0.0588
398ED4:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
398ED6:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
398ED8:  LDRSB           R0, [R0,R5]
398EDA:  VMOV            S2, R0
398EDE:  RSB.W           R0, R4, R4,LSL#3
398EE2:  VCVT.F32.S32    S2, S2
398EE6:  ADD.W           R0, R6, R0,LSL#2
398EEA:  LDR.W           R4, [R0,#0x5A4]
398EEE:  MOV.W           R0, #0xFFFFFFFF
398EF2:  CMP             R4, #0x2D ; '-'; switch 46 cases
398EF4:  BHI.W           def_398EFA; jumptable 00398EFA default case, cases 9,19-21,35,36
398EF8:  MOVS            R2, #0x3A ; ':'
398EFA:  TBH.W           [PC,R4,LSL#1]; switch jump
398EFE:  DCW 0x2F; jump table for switch statement
398F00:  DCW 0x2E
398F02:  DCW 0x1B9
398F04:  DCW 0x1BB
398F06:  DCW 0x1BD
398F08:  DCW 0x1C1
398F0A:  DCW 0x1C3
398F0C:  DCW 0x1C5
398F0E:  DCW 0x1C7
398F10:  DCW 0x1C9
398F12:  DCW 0xF6
398F14:  DCW 0xF6
398F16:  DCW 0xF6
398F18:  DCW 0xF6
398F1A:  DCW 0x1CC
398F1C:  DCW 0x1D0
398F1E:  DCW 0x2E
398F20:  DCW 0x2E
398F22:  DCW 0x2E
398F24:  DCW 0x1C9
398F26:  DCW 0x1C9
398F28:  DCW 0x1C9
398F2A:  DCW 0x2E
398F2C:  DCW 0x2E
398F2E:  DCW 0x2E
398F30:  DCW 0x2E
398F32:  DCW 0x2E
398F34:  DCW 0x2E
398F36:  DCW 0x2E
398F38:  DCW 0x2E
398F3A:  DCW 0x2E
398F3C:  DCW 0x2E
398F3E:  DCW 0x2E
398F40:  DCW 0x2E
398F42:  DCW 0x2E
398F44:  DCW 0x1C9
398F46:  DCW 0x1C9
398F48:  DCW 0x2E
398F4A:  DCW 0x2E
398F4C:  DCW 0x2E
398F4E:  DCW 0x2E
398F50:  DCW 0x2E
398F52:  DCW 0x2E
398F54:  DCW 0x2E
398F56:  DCW 0x2F
398F58:  DCW 0x2F
398F5A:  MOVS            R2, #0x2C ; ','; jumptable 00398EFA cases 1,16-18,22-34,37-43
398F5C:  VADD.F32        S16, S2, S0; jumptable 00398EFA cases 0,44,45
398F60:  CMP.W           R11, #0
398F64:  BEQ             loc_398FAE
398F66:  LDRB.W          R1, [R11,#0x3A]
398F6A:  AND.W           R1, R1, #7
398F6E:  CMP             R1, #3
398F70:  BNE             loc_398FAE
398F72:  VMOV.F32        S20, #-3.0
398F76:  LDR.W           R9, [SP,#0x78+var_44]
398F7A:  SUB.W           R6, R5, #0x3D ; '='; switch 8 cases
398F7E:  VLDR            S0, =0.0
398F82:  CMP             R6, #7
398F84:  STR             R5, [SP,#0x78+var_48]
398F86:  BHI.W           def_398F94; jumptable 00398F94 default case
398F8A:  VMOV.F32        S22, #-6.0
398F8E:  MOV.W           R11, #0x52 ; 'R'
398F92:  MOVS            R1, #5
398F94:  TBH.W           [PC,R6,LSL#1]; switch jump
398F98:  DCW 0xB7; jump table for switch statement
398F9A:  DCW 0xD4
398F9C:  DCW 0xF9
398F9E:  DCW 0x196
398FA0:  DCW 8
398FA2:  DCW 0x112
398FA4:  DCW 8
398FA6:  DCW 0x164
398FA8:  MOVS            R0, #0x28 ; '('; jumptable 00398F94 cases 65,67
398FAA:  MOVS            R1, #0x2B ; '+'
398FAC:  B               loc_3991C0
398FAE:  VMOV.F32        S20, #-3.0
398FB2:  SUB.W           R1, R5, #0x3D ; '='
398FB6:  CMP             R1, #7
398FB8:  BHI.W           loc_3990EE
398FBC:  MOV.W           R8, #1
398FC0:  LSL.W           R0, R8, R1
398FC4:  LSLS            R1, R0, #0x1D; unsigned __int8
398FC6:  BNE             loc_39905C
398FC8:  TST.W           R0, #0x70
398FCC:  BEQ             loc_3990AE
398FCE:  MOV             R0, R9; this
398FD0:  STR             R5, [SP,#0x78+var_48]
398FD2:  BLX             j__ZN23CAECollisionAudioEntity30GetSurfaceHardnessVolumeOffsetEh; CAECollisionAudioEntity::GetSurfaceHardnessVolumeOffset(uchar)
398FD6:  LDR.W           R1, [R10,#0x94]; CEntity *
398FDA:  MOV             R8, R0
398FDC:  LDR.W           R0, =(AudioEngine_ptr - 0x398FEE)
398FE0:  MOVS            R2, #0
398FE2:  MOV.W           R12, #1
398FE6:  MOV.W           R4, #0x3F800000
398FEA:  ADD             R0, PC; AudioEngine_ptr
398FEC:  LDR             R3, [R1,#0x14]
398FEE:  LDR             R0, [R0]; AudioEngine ; this
398FF0:  ADD.W           R6, R3, #0x30 ; '0'
398FF4:  CMP             R3, #0
398FF6:  MOV.W           R3, #0x3E ; '>'; unsigned __int8
398FFA:  IT EQ
398FFC:  ADDEQ           R6, R1, #4
398FFE:  STRD.W          R9, R6, [SP,#0x78+var_78]; unsigned __int8
399002:  STRD.W          R2, R4, [SP,#0x78+var_70]; CVector *
399006:  STRD.W          R4, R12, [SP,#0x78+var_68]; float
39900A:  STR             R2, [SP,#0x78+var_60]; unsigned __int8
39900C:  MOV             R2, R11; CEntity *
39900E:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
399012:  VMOV.F32        S22, #-3.0
399016:  LDR.W           R9, [SP,#0x78+var_44]
39901A:  VMOV            S0, R8
39901E:  MOV.W           R8, #0xFFFFFFFF
399022:  MOVS            R2, #0x3A ; ':'
399024:  MOV.W           R11, #0xFFFFFFFF
399028:  B               loc_3991D0
39902A:  LDR.W           R0, =(AudioEngine_ptr - 0x399032)
39902E:  ADD             R0, PC; AudioEngine_ptr
399030:  LDR             R0, [R0]; AudioEngine ; this
399032:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
399036:  CMP             R0, #0
399038:  BNE.W           loc_3993D4
39903C:  LDR.W           R0, =(AEAudioHardware_ptr - 0x399048)
399040:  MOVS            R1, #0x8F; unsigned __int16
399042:  MOVS            R2, #5; __int16
399044:  ADD             R0, PC; AEAudioHardware_ptr
399046:  LDR             R0, [R0]; AEAudioHardware ; this
399048:  ADD             SP, SP, #0x38 ; '8'
39904A:  VPOP            {D8-D11}
39904E:  ADD             SP, SP, #4
399050:  POP.W           {R8-R11}
399054:  POP.W           {R4-R7,LR}
399058:  B.W             sub_18B078
39905C:  MOV             R0, R9; this
39905E:  STR             R5, [SP,#0x78+var_48]
399060:  STR             R2, [SP,#0x78+var_4C]
399062:  BLX             j__ZN23CAECollisionAudioEntity30GetSurfaceHardnessVolumeOffsetEh; CAECollisionAudioEntity::GetSurfaceHardnessVolumeOffset(uchar)
399066:  LDR.W           R1, [R10,#0x94]; CEntity *
39906A:  MOV             R5, R0
39906C:  LDR.W           R0, =(AudioEngine_ptr - 0x39907A)
399070:  MOVS            R2, #0
399072:  MOV.W           R6, #0x3F800000
399076:  ADD             R0, PC; AudioEngine_ptr
399078:  LDR             R3, [R1,#0x14]
39907A:  LDR             R0, [R0]; AudioEngine ; this
39907C:  ADD.W           R4, R3, #0x30 ; '0'
399080:  CMP             R3, #0
399082:  MOV.W           R3, #0x3E ; '>'; unsigned __int8
399086:  IT EQ
399088:  ADDEQ           R4, R1, #4
39908A:  STRD.W          R9, R4, [SP,#0x78+var_78]; unsigned __int8
39908E:  STRD.W          R2, R6, [SP,#0x78+var_70]; CVector *
399092:  STRD.W          R6, R8, [SP,#0x78+var_68]; float
399096:  MOV.W           R8, #0xFFFFFFFF
39909A:  STR             R2, [SP,#0x78+var_60]; unsigned __int8
39909C:  MOV             R2, R11; CEntity *
39909E:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
3990A2:  LDR             R2, [SP,#0x78+var_4C]
3990A4:  VMOV            S0, R5
3990A8:  MOV.W           R0, #0xFFFFFFFF
3990AC:  B               loc_3990F4
3990AE:  LDR.W           R1, [R10,#0x94]; CEntity *
3990B2:  MOVS            R2, #0
3990B4:  LDR.W           R0, =(AudioEngine_ptr - 0x3990C4)
3990B8:  MOV.W           R12, #1
3990BC:  MOV.W           R4, #0x3F800000
3990C0:  ADD             R0, PC; AudioEngine_ptr
3990C2:  LDR             R3, [R1,#0x14]
3990C4:  LDR             R0, [R0]; AudioEngine ; this
3990C6:  ADD.W           R6, R3, #0x30 ; '0'
3990CA:  CMP             R3, #0
3990CC:  MOV.W           R3, #0x3E ; '>'; unsigned __int8
3990D0:  IT EQ
3990D2:  ADDEQ           R6, R1, #4
3990D4:  STRD.W          R9, R6, [SP,#0x78+var_78]; unsigned __int8
3990D8:  STRD.W          R2, R4, [SP,#0x78+var_70]; CVector *
3990DC:  STRD.W          R4, R12, [SP,#0x78+var_68]; float
3990E0:  STR             R2, [SP,#0x78+var_60]; unsigned __int8
3990E2:  MOV             R2, R11; CEntity *
3990E4:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
3990E8:  B               loc_3993D4
3990EA:  MOVS            R2, #0x32 ; '2'; jumptable 00398EFA cases 10-13
3990EC:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
3990EE:  STR             R5, [SP,#0x78+var_48]
3990F0:  VLDR            S0, =0.0
3990F4:  LDR.W           R9, [SP,#0x78+var_44]
3990F8:  CMP             R2, R8; jumptable 00398F94 default case
3990FA:  BLE.W           loc_3992B2
3990FE:  MOV             R11, R0
399100:  VMOV.F32        S22, S20
399104:  B               loc_3991D0
399106:  SUBS            R6, R4, #1; jumptable 00398F94 case 61
399108:  CMP             R6, #0xD
39910A:  BHI.W           def_399118; jumptable 00399118 default case, cases 2,3,6,7,10-13
39910E:  VMOV.F32        S22, #-9.0
399112:  MOV.W           R11, #0x51 ; 'Q'
399116:  MOVS            R1, #5
399118:  TBH.W           [PC,R6,LSL#1]; switch jump
39911C:  DCW 0xF; jump table for switch statement
39911E:  DCW 0x12A
399120:  DCW 0x12A
399122:  DCW 0xD4
399124:  DCW 0x12D
399126:  DCW 0x12A
399128:  DCW 0x12A
39912A:  DCW 0xD4
39912C:  DCW 0x130
39912E:  DCW 0x12A
399130:  DCW 0x12A
399132:  DCW 0x12A
399134:  DCW 0x12A
399136:  DCW 0xE
399138:  B               def_398F94; jumptable 00399118 case 14
39913A:  MOVS            R0, #0x28 ; '('; jumptable 00399118 case 1
39913C:  MOVS            R1, #0x2B ; '+'
39913E:  B               loc_399178
399140:  SUBS            R6, R4, #1; jumptable 00398F94 case 62
399142:  CMP             R6, #0xD
399144:  BHI.W           def_399152; jumptable 00399152 default case, cases 2,3,6,7,10-13
399148:  VMOV.F32        S22, #-9.0
39914C:  MOV.W           R11, #0x51 ; 'Q'
399150:  MOVS            R1, #5
399152:  TBH.W           [PC,R6,LSL#1]; switch jump
399156:  DCW 0xF; jump table for switch statement
399158:  DCW 0x116
39915A:  DCW 0x116
39915C:  DCW 0xB7
39915E:  DCW 0x122
399160:  DCW 0x116
399162:  DCW 0x116
399164:  DCW 0xB7
399166:  DCW 0x12E
399168:  DCW 0x116
39916A:  DCW 0x116
39916C:  DCW 0x116
39916E:  DCW 0x116
399170:  DCW 0xE
399172:  B               def_398F94; jumptable 00399152 case 14
399174:  MOVS            R0, #dword_24; jumptable 00399152 case 1
399176:  MOVS            R1, #0x27 ; '''; int
399178:  MOV             R5, R2
39917A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39917E:  MOV             R2, R5
399180:  VMOV.F32        S0, #1.0
399184:  CMP             R2, R8
399186:  BGT             loc_3990FE
399188:  B               loc_3992B2
39918A:  SUBS            R6, R4, #4; jumptable 00398F94 case 63
39918C:  CMP             R6, #0xA
39918E:  BHI.W           def_39919C; jumptable 0039919C default case, cases 6,7,10-13
399192:  VMOV.F32        S22, #-9.0
399196:  MOV.W           R11, #0x51 ; 'Q'
39919A:  MOVS            R1, #5
39919C:  TBB.W           [PC,R6]; switch jump
3991A0:  DCB 0x92; jump table for switch statement
3991A1:  DCB 7
3991A2:  DCB 0x81
3991A3:  DCB 0x81
3991A4:  DCB 0x92
3991A5:  DCB 0xE5
3991A6:  DCB 0x81
3991A7:  DCB 0x81
3991A8:  DCB 0x81
3991A9:  DCB 0x81
3991AA:  DCB 6
3991AB:  ALIGN 2
3991AC:  B               def_398F94; jumptable 0039919C case 14
3991AE:  VMOV.F32        S0, #-10.0; jumptable 0039919C case 5
3991B2:  B               loc_3992A6
3991B4:  DCFS 0.0588
3991B8:  DCFS 0.0
3991BC:  MOVS            R0, #dword_24; jumptable 00398F94 case 66
3991BE:  MOVS            R1, #0x27 ; '''; int
3991C0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3991C4:  MOV             R11, R0
3991C6:  VMOV.F32        S22, #-3.0
3991CA:  VLDR            S0, =0.0
3991CE:  MOVS            R2, #0x3A ; ':'
3991D0:  LDR.W           R0, [R10,#0x94]
3991D4:  VADD.F32        S0, S16, S0
3991D8:  MOVS            R5, #0
3991DA:  MOV.W           R6, #0x3F800000
3991DE:  LDR             R1, [R0,#0x14]
3991E0:  ADD.W           R3, R1, #0x30 ; '0'
3991E4:  CMP             R1, #0
3991E6:  IT EQ
3991E8:  ADDEQ           R3, R0, #4
3991EA:  LDM.W           R3, {R0,R1,R4}
3991EE:  MOVS            R3, #0x80
3991F0:  STR             R5, [SP,#0x78+var_50]
3991F2:  VSTR            S18, [SP,#0x78+var_54]
3991F6:  STRD.W          R6, R6, [SP,#0x78+var_68]
3991FA:  STRD.W          R6, R5, [SP,#0x78+var_60]
3991FE:  ADD.W           R6, R10, #8
399202:  STR             R3, [SP,#0x78+var_58]
399204:  MOV             R3, R10
399206:  VSTR            S0, [SP,#0x78+var_6C]
39920A:  STMEA.W         SP, {R0,R1,R4}
39920E:  MOV             R0, R6
399210:  MOVS            R1, #5
399212:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399216:  LDR.W           R1, [R10,#0x94]; CEntity *
39921A:  MOV             R0, R6; this
39921C:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
399220:  CMP.W           R9, #0
399224:  BEQ             loc_399250
399226:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x399234)
399228:  MOVS            R1, #4; unsigned __int16
39922A:  STRD.W          R5, R5, [R10,#0x24]
39922E:  MOVS            R2, #1; unsigned __int16
399230:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
399232:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
399234:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
399236:  ADD             R0, R9
399238:  VMOV            S0, R0
39923C:  VCVT.F32.U32    S0, S0
399240:  LDR             R0, [SP,#0x78+var_48]
399242:  STR.W           R0, [R10,#0x14]
399246:  MOV             R0, R6; this
399248:  VSTR            S0, [R10,#0x18]
39924C:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
399250:  LDR             R0, =(AESoundManager_ptr - 0x399258)
399252:  MOV             R1, R6; CAESound *
399254:  ADD             R0, PC; AESoundManager_ptr
399256:  LDR             R0, [R0]; AESoundManager ; this
399258:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39925C:  MOVS            R1, #5
39925E:  B               loc_3992BA
399260:  MOVS            R0, #(dword_38+3); jumptable 00398F94 case 68
399262:  MOVS            R1, #0x3E ; '>'; int
399264:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
399268:  MOV             R11, R0
39926A:  VMOV.F32        S22, #-3.0
39926E:  B               loc_39925C
399270:  MOVS            R2, #0x30 ; '0'; jumptable 00398EFA case 2
399272:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399274:  MOVS            R2, #0x23 ; '#'; jumptable 00398EFA case 3
399276:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399278:  VLDR            S18, =0.03; jumptable 00398EFA case 4
39927C:  MOVS            R2, #0x39 ; '9'
39927E:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399280:  MOVS            R2, #0x22 ; '"'; jumptable 00398EFA case 5
399282:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399284:  MOVS            R2, #0x4B ; 'K'; jumptable 00398EFA case 6
399286:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399288:  MOVS            R2, #0x43 ; 'C'; jumptable 00398EFA case 7
39928A:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
39928C:  MOVS            R2, #0x38 ; '8'; jumptable 00398EFA case 8
39928E:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399290:  MOV.W           R2, #0xFFFFFFFF; jumptable 00398EFA default case, cases 9,19-21,35,36
399294:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
399296:  VLDR            S18, =0.07; jumptable 00398EFA case 14
39929A:  MOVS            R2, #0x36 ; '6'
39929C:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
39929E:  MOVS            R2, #0x2E ; '.'; jumptable 00398EFA case 15
3992A0:  B               loc_398F5C; jumptable 00398EFA cases 0,44,45
3992A2:  VMOV.F32        S0, #-15.0; jumptable 0039919C default case, cases 6,7,10-13
3992A6:  VMOV.F32        S20, #-6.0
3992AA:  MOVS            R0, #0x52 ; 'R'
3992AC:  CMP             R2, R8
3992AE:  BGT.W           loc_3990FE
3992B2:  MOVS            R1, #5
3992B4:  MOV             R11, R0
3992B6:  VMOV.F32        S22, S20
3992BA:  SXTH.W          R0, R11
3992BE:  CMP             R0, R8
3992C0:  BLE.W           loc_3993D4
3992C4:  LDR.W           R0, [R10,#0x94]; jumptable 00398F94 case 64
3992C8:  VADD.F32        S0, S16, S22
3992CC:  MOVW            R6, #0xD845
3992D0:  MOV.W           R8, #0
3992D4:  MOVT            R6, #0x3D70
3992D8:  MOVS            R4, #0x80
3992DA:  LDR             R2, [R0,#0x14]
3992DC:  MOV.W           R5, #0x3F800000
3992E0:  ADD.W           R12, SP, #0x78+var_58
3992E4:  ADD.W           R3, R2, #0x30 ; '0'
3992E8:  CMP             R2, #0
3992EA:  IT EQ
3992EC:  ADDEQ           R3, R0, #4
3992EE:  LDM             R3, {R0,R2,R3}
3992F0:  STRD.W          R5, R5, [SP,#0x78+var_68]
3992F4:  STRD.W          R5, R8, [SP,#0x78+var_60]
3992F8:  STM.W           R12, {R4,R6,R8}
3992FC:  ADD.W           R6, R10, #8
399300:  VSTR            S0, [SP,#0x78+var_6C]
399304:  STMEA.W         SP, {R0,R2,R3}
399308:  SXTH.W          R2, R11
39930C:  MOV             R0, R6
39930E:  MOV             R3, R10
399310:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399314:  LDR.W           R1, [R10,#0x94]; CEntity *
399318:  MOV             R0, R6; this
39931A:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
39931E:  CMP.W           R9, #0
399322:  BEQ             loc_39934E
399324:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x399332)
399326:  MOVS            R1, #4; unsigned __int16
399328:  STRD.W          R8, R8, [R10,#0x24]
39932C:  MOVS            R2, #1; unsigned __int16
39932E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
399330:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
399332:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
399334:  ADD             R0, R9
399336:  VMOV            S0, R0
39933A:  VCVT.F32.U32    S0, S0
39933E:  LDR             R0, [SP,#0x78+var_48]
399340:  STR.W           R0, [R10,#0x14]
399344:  MOV             R0, R6; this
399346:  VSTR            S0, [R10,#0x18]
39934A:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
39934E:  LDR             R0, =(AESoundManager_ptr - 0x399356)
399350:  MOV             R1, R6; CAESound *
399352:  ADD             R0, PC; AESoundManager_ptr
399354:  LDR             R0, [R0]; AESoundManager ; this
399356:  ADD             SP, SP, #0x38 ; '8'
399358:  VPOP            {D8-D11}
39935C:  ADD             SP, SP, #4
39935E:  POP.W           {R8-R11}
399362:  POP.W           {R4-R7,LR}
399366:  B.W             sub_19F824
39936A:  LDR             R0, =(AEAudioHardware_ptr - 0x399370); jumptable 0039919C case 9
39936C:  ADD             R0, PC; AEAudioHardware_ptr
39936E:  B               loc_3993B6
399370:  MOVS            R0, #0x28 ; '('; jumptable 00399118 default case, cases 2,3,6,7,10-13
399372:  MOVS            R1, #0x2B ; '+'
399374:  B               loc_399386
399376:  MOVS            R0, #0x28 ; '('; jumptable 00399118 case 5
399378:  MOVS            R1, #0x2B ; '+'
39937A:  B               loc_39939E
39937C:  LDR             R0, =(AEAudioHardware_ptr - 0x399382); jumptable 00399118 case 9
39937E:  ADD             R0, PC; AEAudioHardware_ptr
399380:  B               loc_3993B6
399382:  MOVS            R0, #dword_24; jumptable 00399152 default case, cases 2,3,6,7,10-13
399384:  MOVS            R1, #0x27 ; '''; int
399386:  MOV             R5, R2
399388:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39938C:  MOV             R2, R5
39938E:  VMOV.F32        S0, #-15.0
399392:  CMP             R2, R8
399394:  BGT.W           loc_3990FE
399398:  B               loc_3992B2
39939A:  MOVS            R0, #dword_24; jumptable 00399152 case 5
39939C:  MOVS            R1, #0x27 ; '''; int
39939E:  MOV             R5, R2
3993A0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3993A4:  MOV             R2, R5
3993A6:  VMOV.F32        S0, #-10.0
3993AA:  CMP             R2, R8
3993AC:  BGT.W           loc_3990FE
3993B0:  B               loc_3992B2
3993B2:  LDR             R0, =(AEAudioHardware_ptr - 0x3993B8); jumptable 00399152 case 9
3993B4:  ADD             R0, PC; AEAudioHardware_ptr
3993B6:  LDR             R0, [R0]; AEAudioHardware ; this
3993B8:  MOVS            R1, #0x1B; unsigned __int16
3993BA:  MOVS            R2, #3; __int16
3993BC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3993C0:  CBZ             R0, loc_3993D4
3993C2:  MOVS            R0, #byte_7; this
3993C4:  MOVS            R1, #9; int
3993C6:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3993CA:  MOV             R11, R0
3993CC:  VMOV.F32        S22, #-3.0
3993D0:  MOVS            R1, #3
3993D2:  B               loc_3992BA
3993D4:  ADD             SP, SP, #0x38 ; '8'
3993D6:  VPOP            {D8-D11}
3993DA:  ADD             SP, SP, #4
3993DC:  POP.W           {R8-R11}
3993E0:  POP             {R4-R7,PC}
