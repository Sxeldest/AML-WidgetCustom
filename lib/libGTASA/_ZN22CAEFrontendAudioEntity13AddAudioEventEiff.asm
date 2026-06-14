; =========================================================
; Game Engine Function: _ZN22CAEFrontendAudioEntity13AddAudioEventEiff
; Address            : 0x395FA0 - 0x39718A
; =========================================================

395FA0:  PUSH            {R4-R7,LR}
395FA2:  ADD             R7, SP, #0xC
395FA4:  PUSH.W          {R8-R11}
395FA8:  SUB             SP, SP, #4
395FAA:  VPUSH           {D8-D10}
395FAE:  SUB             SP, SP, #0xA0
395FB0:  MOV             R11, R0
395FB2:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x395FBE)
395FB6:  MOVS            R6, #0
395FB8:  CMP             R1, #0x65 ; 'e'; switch 102 cases
395FBA:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
395FBC:  STR             R6, [SP,#0xD8+var_A4]
395FBE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
395FC0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
395FC2:  LDRSB           R0, [R0,R1]
395FC4:  VMOV            S0, R0
395FC8:  VCVT.F32.S32    S0, S0
395FCC:  BHI.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
395FD0:  VMOV            S2, R2
395FD4:  VMOV            S18, R3
395FD8:  VADD.F32        S16, S0, S2
395FDC:  TBH.W           [PC,R1,LSL#1]; switch jump
395FE0:  DCW 0x1DC; jump table for switch statement
395FE2:  DCW 0x21A
395FE4:  DCW 0x25C
395FE6:  DCW 0x299
395FE8:  DCW 0x2D6
395FEA:  DCW 0x319
395FEC:  DCW 0x66
395FEE:  DCW 0xB0
395FF0:  DCW 0xB0
395FF2:  DCW 0xB0
395FF4:  DCW 0xB0
395FF6:  DCW 0x19E
395FF8:  DCW 0xFB
395FFA:  DCW 0xFB
395FFC:  DCW 0x146
395FFE:  DCW 0x146
396000:  DCW 0x340
396002:  DCW 0x146
396004:  DCW 0x66
396006:  DCW 0x66
396008:  DCW 0x66
39600A:  DCW 0x7E3
39600C:  DCW 0x7E3
39600E:  DCW 0x7E3
396010:  DCW 0x7E3
396012:  DCW 0x7E3
396014:  DCW 0x7E3
396016:  DCW 0x3B3
396018:  DCW 0x3DD
39601A:  DCW 0x407
39601C:  DCW 0x431
39601E:  DCW 0x46C
396020:  DCW 0x19E
396022:  DCW 0x4A7
396024:  DCW 0x50C
396026:  DCW 0x542
396028:  DCW 0x550
39602A:  DCW 0x55A
39602C:  DCW 0x57F
39602E:  DCW 0x7E3
396030:  DCW 0x66
396032:  DCW 0x5A8
396034:  DCW 0x5CD
396036:  DCW 0xFB
396038:  DCW 0x5F7
39603A:  DCW 0x63A
39603C:  DCW 0x686
39603E:  DCW 0x6B4
396040:  DCW 0x6E5
396042:  DCW 0x6EA
396044:  DCW 0x730
396046:  DCW 0x7A7
396048:  DCW 0x7E3
39604A:  DCW 0x7E3
39604C:  DCW 0x7E3
39604E:  DCW 0x7E3
396050:  DCW 0x7E3
396052:  DCW 0x7E3
396054:  DCW 0x7E3
396056:  DCW 0x7E3
396058:  DCW 0x7E3
39605A:  DCW 0x7E3
39605C:  DCW 0x7E3
39605E:  DCW 0x7E3
396060:  DCW 0x7E3
396062:  DCW 0x7E3
396064:  DCW 0x7E3
396066:  DCW 0x7E3
396068:  DCW 0x7E3
39606A:  DCW 0x7E3
39606C:  DCW 0x7E3
39606E:  DCW 0x7E3
396070:  DCW 0x7E3
396072:  DCW 0x7E3
396074:  DCW 0x7E3
396076:  DCW 0x7E3
396078:  DCW 0x7E3
39607A:  DCW 0x7E3
39607C:  DCW 0x7E3
39607E:  DCW 0x7E3
396080:  DCW 0x7E3
396082:  DCW 0x7E3
396084:  DCW 0x7E3
396086:  DCW 0x7E3
396088:  DCW 0x7E3
39608A:  DCW 0x7E3
39608C:  DCW 0x7E3
39608E:  DCW 0x7E3
396090:  DCW 0x7E3
396092:  DCW 0x7E3
396094:  DCW 0x7E3
396096:  DCW 0x7E3
396098:  DCW 0x7E3
39609A:  DCW 0x7E3
39609C:  DCW 0x7E3
39609E:  DCW 0x7E3
3960A0:  DCW 0x7E3
3960A2:  DCW 0x7E3
3960A4:  DCW 0x7E3
3960A6:  DCW 0x7E3
3960A8:  DCW 0x7E3
3960AA:  DCW 0x7AF
3960AC:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3960B8); jumptable 00395FDC cases 6,18-20,40
3960B0:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3960B2:  MOVS            R2, #0; __int16
3960B4:  ADD             R0, PC; AEAudioHardware_ptr
3960B6:  LDR             R0, [R0]; AEAudioHardware ; this
3960B8:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3960BC:  CMP             R0, #0
3960BE:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3960C2:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3960CE)
3960C6:  LDR.W           R1, [R11,#0x84]
3960CA:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3960CC:  ADDS            R1, #5
3960CE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3960D0:  LDR             R0, [R0]; CTimer::m_FrameCounter
3960D2:  CMP             R0, R1
3960D4:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3960D8:  STR.W           R0, [R11,#0x84]
3960DC:  MOVS            R0, #0
3960DE:  ADD.W           R8, SP, #0xD8+var_AC
3960E2:  MOV.W           R5, #0x3F800000
3960E6:  MOVS            R4, #0
3960E8:  MOVT            R0, #0xBF80
3960EC:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
3960F0:  MOVS            R1, #0
3960F2:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
3960F6:  MOVS            R2, #0x1B
3960F8:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
3960FC:  MOV             R3, R11
3960FE:  STR             R4, [SP,#0xD8+var_B0]
396100:  VSTR            S16, [SP,#0xD8+var_CC]
396104:  STRD.W          R0, R4, [SP,#0xD8+var_D8]
396108:  MOV             R0, R8
39610A:  STR             R4, [SP,#0xD8+var_D0]
39610C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396110:  LDR.W           R0, =(AESoundManager_ptr - 0x396122)
396114:  MOVW            R9, #0x111B
396118:  MOV             R1, R8; CAESound *
39611A:  STRH.W          R9, [SP,#0xD8+var_56]
39611E:  ADD             R0, PC; AESoundManager_ptr
396120:  VSTR            S18, [SP,#0xD8+var_90]
396124:  LDR             R6, [R0]; AESoundManager
396126:  MOV             R0, R6; this
396128:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39612C:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
396130:  MOV             R0, R8
396132:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
396136:  MOVS            R1, #0
396138:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
39613C:  MOVS            R2, #0x1C
39613E:  B               loc_396604
396140:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39614C); jumptable 00395FDC cases 7-10
396144:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396146:  MOVS            R2, #0; __int16
396148:  ADD             R0, PC; AEAudioHardware_ptr
39614A:  LDR             R0, [R0]; AEAudioHardware ; this
39614C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396150:  CMP             R0, #0
396152:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396156:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x396162)
39615A:  LDR.W           R1, [R11,#0x84]
39615E:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
396160:  ADDS            R1, #5
396162:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
396164:  LDR             R0, [R0]; CTimer::m_FrameCounter
396166:  CMP             R0, R1
396168:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39616C:  STR.W           R0, [R11,#0x84]
396170:  MOVS            R0, #0
396172:  ADD.W           R8, SP, #0xD8+var_AC
396176:  MOV.W           R4, #0x3F800000
39617A:  MOVS            R5, #0
39617C:  MOVT            R0, #0xBF80
396180:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396184:  MOVS            R1, #0
396186:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
39618A:  MOVS            R2, #0x10
39618C:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396190:  MOV             R3, R11
396192:  STR             R5, [SP,#0xD8+var_B0]
396194:  VSTR            S16, [SP,#0xD8+var_CC]
396198:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
39619C:  MOV             R0, R8
39619E:  STR             R5, [SP,#0xD8+var_D0]
3961A0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3961A4:  LDR.W           R0, =(AESoundManager_ptr - 0x3961B6)
3961A8:  MOVW            R9, #0x111B
3961AC:  MOV             R1, R8; CAESound *
3961AE:  STRH.W          R9, [SP,#0xD8+var_56]
3961B2:  ADD             R0, PC; AESoundManager_ptr
3961B4:  VSTR            S18, [SP,#0xD8+var_90]
3961B8:  LDR             R6, [R0]; AESoundManager
3961BA:  MOV             R0, R6; this
3961BC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3961C0:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
3961C4:  MOV             R0, R8
3961C6:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
3961CA:  MOVS            R1, #0
3961CC:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
3961D0:  MOVS            R2, #0x11
3961D2:  B.W             loc_396CCC
3961D6:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3961E2); jumptable 00395FDC cases 12,13,43
3961DA:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3961DC:  MOVS            R2, #0; __int16
3961DE:  ADD             R0, PC; AEAudioHardware_ptr
3961E0:  LDR             R0, [R0]; AEAudioHardware ; this
3961E2:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3961E6:  CMP             R0, #0
3961E8:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3961EC:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3961F8)
3961F0:  LDR.W           R1, [R11,#0x88]
3961F4:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3961F6:  ADDS            R1, #5
3961F8:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3961FA:  LDR             R0, [R0]; CTimer::m_FrameCounter
3961FC:  CMP             R0, R1
3961FE:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396202:  STR.W           R0, [R11,#0x88]
396206:  MOVS            R0, #0
396208:  ADD.W           R8, SP, #0xD8+var_AC
39620C:  MOV.W           R4, #0x3F800000
396210:  MOVS            R5, #0
396212:  MOVT            R0, #0xBF80
396216:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
39621A:  MOVS            R1, #0
39621C:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396220:  MOVS            R2, #0x12
396222:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396226:  MOV             R3, R11
396228:  STR             R5, [SP,#0xD8+var_B0]
39622A:  VSTR            S16, [SP,#0xD8+var_CC]
39622E:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
396232:  MOV             R0, R8
396234:  STR             R5, [SP,#0xD8+var_D0]
396236:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39623A:  LDR.W           R0, =(AESoundManager_ptr - 0x39624C)
39623E:  MOVW            R9, #0x151B
396242:  MOV             R1, R8; CAESound *
396244:  STRH.W          R9, [SP,#0xD8+var_56]
396248:  ADD             R0, PC; AESoundManager_ptr
39624A:  VSTR            S18, [SP,#0xD8+var_90]
39624E:  LDR             R6, [R0]; AESoundManager
396250:  MOV             R0, R6; this
396252:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396256:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
39625A:  MOV             R0, R8
39625C:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396260:  MOVS            R1, #0
396262:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396266:  MOVS            R2, #0x13
396268:  B.W             loc_396CCC
39626C:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396278); jumptable 00395FDC cases 14,15,17
396270:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396272:  MOVS            R2, #0; __int16
396274:  ADD             R0, PC; AEAudioHardware_ptr
396276:  LDR             R0, [R0]; AEAudioHardware ; this
396278:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39627C:  CMP             R0, #0
39627E:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396282:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x39628E)
396286:  LDR.W           R1, [R11,#0x84]
39628A:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
39628C:  ADDS            R1, #5
39628E:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
396290:  LDR             R0, [R0]; CTimer::m_FrameCounter
396292:  CMP             R0, R1
396294:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396298:  MOVW            R9, #0x4BC7
39629C:  STR.W           R0, [R11,#0x84]
3962A0:  MOVS            R0, #0
3962A2:  ADD.W           R8, SP, #0xD8+var_AC
3962A6:  MOVS            R5, #0
3962A8:  MOV.W           R4, #0x3F800000
3962AC:  MOVT            R9, #0x3F57
3962B0:  MOVT            R0, #0xBF80
3962B4:  STRD.W          R4, R9, [SP,#0xD8+var_C8]
3962B8:  MOVS            R1, #0
3962BA:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
3962BE:  MOVS            R2, #0x1B
3962C0:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
3962C4:  MOV             R3, R11
3962C6:  STR             R5, [SP,#0xD8+var_B0]
3962C8:  VSTR            S16, [SP,#0xD8+var_CC]
3962CC:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
3962D0:  MOV             R0, R8
3962D2:  STR             R5, [SP,#0xD8+var_D0]
3962D4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3962D8:  LDR.W           R0, =(AESoundManager_ptr - 0x3962EA)
3962DC:  MOVW            R10, #0x111B
3962E0:  MOV             R1, R8; CAESound *
3962E2:  STRH.W          R10, [SP,#0xD8+var_56]
3962E6:  ADD             R0, PC; AESoundManager_ptr
3962E8:  LDR             R6, [R0]; AESoundManager
3962EA:  MOV             R0, R6; this
3962EC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3962F0:  MOV             R0, R8
3962F2:  MOVS            R1, #0
3962F4:  MOVS            R2, #0x1C
3962F6:  MOV             R3, R11
3962F8:  STRD.W          R4, R9, [SP,#0xD8+var_C8]
3962FC:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396300:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396304:  STR             R5, [SP,#0xD8+var_B0]
396306:  VSTR            S16, [SP,#0xD8+var_CC]
39630A:  STRD.W          R4, R5, [SP,#0xD8+var_D8]
39630E:  STR             R5, [SP,#0xD8+var_D0]
396310:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396314:  STRH.W          R10, [SP,#0xD8+var_56]
396318:  B.W             loc_396CE6
39631C:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39632A); jumptable 00395FDC cases 11,32
396320:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396322:  MOVS            R2, #0; __int16
396324:  MOVS            R5, #0
396326:  ADD             R0, PC; AEAudioHardware_ptr
396328:  LDR             R0, [R0]; AEAudioHardware ; this
39632A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39632E:  CMP             R0, #0
396330:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396334:  MOVS            R0, #0
396336:  ADD.W           R8, SP, #0xD8+var_AC
39633A:  MOV.W           R4, #0x3F800000
39633E:  MOVT            R0, #0xBF80
396342:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396346:  MOVS            R1, #0
396348:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
39634C:  MOVS            R2, #0xE
39634E:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396352:  MOV             R3, R11
396354:  STR             R5, [SP,#0xD8+var_B0]
396356:  VSTR            S16, [SP,#0xD8+var_CC]
39635A:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
39635E:  MOV             R0, R8
396360:  STR             R5, [SP,#0xD8+var_D0]
396362:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396366:  LDR.W           R0, =(AESoundManager_ptr - 0x396378)
39636A:  MOVW            R9, #0x151B
39636E:  MOV             R1, R8; CAESound *
396370:  STRH.W          R9, [SP,#0xD8+var_56]
396374:  ADD             R0, PC; AESoundManager_ptr
396376:  VSTR            S18, [SP,#0xD8+var_90]
39637A:  LDR             R6, [R0]; AESoundManager
39637C:  MOV             R0, R6; this
39637E:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396382:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396386:  MOV             R0, R8
396388:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
39638C:  MOVS            R1, #0
39638E:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396392:  MOVS            R2, #0xF
396394:  B.W             loc_396CCC
396398:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3963A6); jumptable 00395FDC case 0
39639C:  MOVS            R1, #0x3B ; ';'; unsigned __int16
39639E:  MOVS            R2, #0; __int16
3963A0:  MOVS            R5, #0
3963A2:  ADD             R0, PC; AEAudioHardware_ptr
3963A4:  LDR             R0, [R0]; AEAudioHardware ; this
3963A6:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3963AA:  CMP             R0, #0
3963AC:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3963B0:  MOVS            R0, #0
3963B2:  ADD.W           R8, SP, #0xD8+var_AC
3963B6:  MOV.W           R4, #0x3F800000
3963BA:  MOVT            R0, #0xBF80
3963BE:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
3963C2:  MOVS            R1, #0
3963C4:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
3963C8:  MOVS            R2, #0x19
3963CA:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
3963CE:  MOV             R3, R11
3963D0:  STR             R5, [SP,#0xD8+var_B0]
3963D2:  VSTR            S16, [SP,#0xD8+var_CC]
3963D6:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
3963DA:  MOV             R0, R8
3963DC:  STR             R5, [SP,#0xD8+var_D0]
3963DE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3963E2:  LDR.W           R0, =(AESoundManager_ptr - 0x3963F4)
3963E6:  MOVW            R9, #0x151B
3963EA:  MOV             R1, R8; CAESound *
3963EC:  STRH.W          R9, [SP,#0xD8+var_56]
3963F0:  ADD             R0, PC; AESoundManager_ptr
3963F2:  VSTR            S18, [SP,#0xD8+var_90]
3963F6:  LDR             R6, [R0]; AESoundManager
3963F8:  MOV             R0, R6; this
3963FA:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3963FE:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396402:  MOV             R0, R8
396404:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396408:  MOVS            R1, #0
39640A:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
39640E:  MOVS            R2, #0x1A
396410:  B.W             loc_396CCC
396414:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396420); jumptable 00395FDC case 1
396418:  MOVS            R1, #0x3C ; '<'; unsigned __int16
39641A:  MOVS            R2, #1; __int16
39641C:  ADD             R0, PC; AEAudioHardware_ptr
39641E:  LDR             R0, [R0]; AEAudioHardware ; this
396420:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396424:  CMP             R0, #0
396426:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39642A:  MOVS            R0, #0
39642C:  ADD.W           R8, SP, #0xD8+var_AC
396430:  MOV.W           R5, #0x3F800000
396434:  MOVS            R4, #0
396436:  MOVT            R0, #0xBF80
39643A:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
39643E:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
396442:  MOVS            R1, #1
396444:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396448:  MOVS            R2, #6
39644A:  STR             R4, [SP,#0xD8+var_B0]
39644C:  MOV             R3, R11
39644E:  VSTR            S16, [SP,#0xD8+var_CC]
396452:  STRD.W          R0, R4, [SP,#0xD8+var_D8]
396456:  MOV             R0, R8
396458:  STR             R4, [SP,#0xD8+var_D0]
39645A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39645E:  LDR.W           R0, =(AESoundManager_ptr - 0x396470)
396462:  MOVW            R9, #0x151B
396466:  MOV             R1, R8; CAESound *
396468:  STRH.W          R9, [SP,#0xD8+var_56]
39646C:  ADD             R0, PC; AESoundManager_ptr
39646E:  VSTR            S18, [SP,#0xD8+var_90]
396472:  LDR             R6, [R0]; AESoundManager
396474:  MOV             R0, R6; this
396476:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39647A:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
39647E:  MOV             R0, R8
396480:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
396484:  MOVS            R1, #1
396486:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
39648A:  STR             R4, [SP,#0xD8+var_B0]
39648C:  VSTR            S16, [SP,#0xD8+var_CC]
396490:  STRD.W          R5, R4, [SP,#0xD8+var_D8]
396494:  STR             R4, [SP,#0xD8+var_D0]
396496:  B               loc_396C50
396498:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3964A4); jumptable 00395FDC case 2
39649C:  MOVS            R1, #0x3C ; '<'; unsigned __int16
39649E:  MOVS            R2, #1; __int16
3964A0:  ADD             R0, PC; AEAudioHardware_ptr
3964A2:  LDR             R0, [R0]; AEAudioHardware ; this
3964A4:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3964A8:  CMP             R0, #0
3964AA:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3964AE:  MOVS            R0, #0
3964B0:  ADD.W           R8, SP, #0xD8+var_AC
3964B4:  MOV.W           R5, #0x3F800000
3964B8:  MOVS            R4, #0
3964BA:  MOVT            R0, #0xBF80
3964BE:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
3964C2:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
3964C6:  MOVS            R1, #1
3964C8:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
3964CC:  MOVS            R2, #0
3964CE:  STR             R4, [SP,#0xD8+var_B0]
3964D0:  MOV             R3, R11
3964D2:  VSTR            S16, [SP,#0xD8+var_CC]
3964D6:  STRD.W          R0, R4, [SP,#0xD8+var_D8]
3964DA:  MOV             R0, R8
3964DC:  STR             R4, [SP,#0xD8+var_D0]
3964DE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3964E2:  LDR.W           R0, =(AESoundManager_ptr - 0x3964F4)
3964E6:  MOVW            R9, #0x151B
3964EA:  MOV             R1, R8; CAESound *
3964EC:  STRH.W          R9, [SP,#0xD8+var_56]
3964F0:  ADD             R0, PC; AESoundManager_ptr
3964F2:  VSTR            S18, [SP,#0xD8+var_90]
3964F6:  LDR             R6, [R0]; AESoundManager
3964F8:  MOV             R0, R6; this
3964FA:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3964FE:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
396502:  MOV             R0, R8
396504:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
396508:  MOVS            R1, #1
39650A:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
39650E:  MOVS            R2, #1
396510:  B               loc_396604
396512:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39651E); jumptable 00395FDC case 3
396516:  MOVS            R1, #0x3C ; '<'; unsigned __int16
396518:  MOVS            R2, #1; __int16
39651A:  ADD             R0, PC; AEAudioHardware_ptr
39651C:  LDR             R0, [R0]; AEAudioHardware ; this
39651E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396522:  CMP             R0, #0
396524:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396528:  MOVS            R0, #0
39652A:  ADD.W           R8, SP, #0xD8+var_AC
39652E:  MOV.W           R5, #0x3F800000
396532:  MOVS            R4, #0
396534:  MOVT            R0, #0xBF80
396538:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
39653C:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
396540:  MOVS            R1, #1
396542:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396546:  MOVS            R2, #4
396548:  STR             R4, [SP,#0xD8+var_B0]
39654A:  MOV             R3, R11
39654C:  VSTR            S16, [SP,#0xD8+var_CC]
396550:  STRD.W          R0, R4, [SP,#0xD8+var_D8]
396554:  MOV             R0, R8
396556:  STR             R4, [SP,#0xD8+var_D0]
396558:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39655C:  LDR.W           R0, =(AESoundManager_ptr - 0x39656E)
396560:  MOVW            R9, #0x111B
396564:  MOV             R1, R8; CAESound *
396566:  STRH.W          R9, [SP,#0xD8+var_56]
39656A:  ADD             R0, PC; AESoundManager_ptr
39656C:  VSTR            S18, [SP,#0xD8+var_90]
396570:  LDR             R6, [R0]; AESoundManager
396572:  MOV             R0, R6; this
396574:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396578:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
39657C:  MOV             R0, R8
39657E:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
396582:  MOVS            R1, #1
396584:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396588:  MOVS            R2, #5
39658A:  B               loc_396604
39658C:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396598); jumptable 00395FDC case 4
396590:  MOVS            R1, #0x3C ; '<'; unsigned __int16
396592:  MOVS            R2, #1; __int16
396594:  ADD             R0, PC; AEAudioHardware_ptr
396596:  LDR             R0, [R0]; AEAudioHardware ; this
396598:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39659C:  CMP             R0, #0
39659E:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3965A2:  MOVS            R0, #0
3965A4:  ADD.W           R8, SP, #0xD8+var_AC
3965A8:  MOV.W           R5, #0x3F800000
3965AC:  MOVS            R4, #0
3965AE:  MOVT            R0, #0xBF80
3965B2:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
3965B6:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
3965BA:  MOVS            R1, #1
3965BC:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
3965C0:  MOVS            R2, #2
3965C2:  STR             R4, [SP,#0xD8+var_B0]
3965C4:  MOV             R3, R11
3965C6:  VSTR            S16, [SP,#0xD8+var_CC]
3965CA:  STRD.W          R0, R4, [SP,#0xD8+var_D8]
3965CE:  MOV             R0, R8
3965D0:  STR             R4, [SP,#0xD8+var_D0]
3965D2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3965D6:  LDR.W           R0, =(AESoundManager_ptr - 0x3965E8)
3965DA:  MOVW            R9, #0x151B
3965DE:  MOV             R1, R8; CAESound *
3965E0:  STRH.W          R9, [SP,#0xD8+var_56]
3965E4:  ADD             R0, PC; AESoundManager_ptr
3965E6:  VSTR            S18, [SP,#0xD8+var_90]
3965EA:  LDR             R6, [R0]; AESoundManager
3965EC:  MOV             R0, R6; this
3965EE:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3965F2:  STRD.W          R5, R5, [SP,#0xD8+var_C8]
3965F6:  MOV             R0, R8
3965F8:  STRD.W          R5, R4, [SP,#0xD8+var_C0]
3965FC:  MOVS            R1, #1
3965FE:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396602:  MOVS            R2, #3
396604:  STR             R4, [SP,#0xD8+var_B0]
396606:  VSTR            S16, [SP,#0xD8+var_CC]
39660A:  STRD.W          R5, R4, [SP,#0xD8+var_D8]
39660E:  STR             R4, [SP,#0xD8+var_D0]
396610:  B               loc_396CD8
396612:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39661E); jumptable 00395FDC case 5
396616:  MOVS            R1, #0x3C ; '<'; unsigned __int16
396618:  MOVS            R2, #1; __int16
39661A:  ADD             R0, PC; AEAudioHardware_ptr
39661C:  LDR             R0, [R0]; AEAudioHardware ; this
39661E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396622:  CMP             R0, #0
396624:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396628:  ADD             R5, SP, #0xD8+var_AC
39662A:  MOV.W           R1, #0x3F800000
39662E:  MOVS            R0, #0
396630:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
396634:  STRD.W          R1, R0, [SP,#0xD8+var_C0]
396638:  MOVS            R2, #8
39663A:  STRD.W          R0, R0, [SP,#0xD8+var_B8]
39663E:  MOV             R3, R11
396640:  STR             R0, [SP,#0xD8+var_B0]
396642:  VSTR            S16, [SP,#0xD8+var_CC]
396646:  STRD.W          R0, R1, [SP,#0xD8+var_D8]
39664A:  MOVS            R1, #1
39664C:  STR             R0, [SP,#0xD8+var_D0]
39664E:  MOV             R0, R5
396650:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396654:  LDR.W           R0, =(AESoundManager_ptr - 0x396660)
396658:  MOVW            R1, #0x11B
39665C:  ADD             R0, PC; AESoundManager_ptr
39665E:  B               loc_396BC4
396660:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39666C); jumptable 00395FDC case 16
396664:  MOVS            R1, #0x8F; unsigned __int16
396666:  MOVS            R2, #5; __int16
396668:  ADD             R0, PC; AEAudioHardware_ptr
39666A:  LDR             R0, [R0]; AEAudioHardware ; this
39666C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396670:  CMP             R0, #0
396672:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396676:  MOV.W           R0, #0x3F000000; this
39667A:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
39667E:  VMOV.F32        S20, #1.0
396682:  VLDR            S18, =1.1892
396686:  MOV             R9, R0
396688:  MOVS            R0, #0
39668A:  ADD.W           R8, SP, #0xD8+var_AC
39668E:  MOVS            R5, #0
396690:  CMP.W           R9, #0
396694:  VMOV.F32        S0, S18
396698:  MOV.W           R10, #0x3F800000
39669C:  MOVT            R0, #0xBF80
3966A0:  MOV.W           R1, #5
3966A4:  MOV.W           R2, #0x1C
3966A8:  MOV             R3, R11
3966AA:  IT EQ
3966AC:  VMOVEQ.F32      S0, S20
3966B0:  STRD.W          R10, R5, [SP,#0xD8+var_C0]
3966B4:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
3966B8:  STR             R5, [SP,#0xD8+var_B0]
3966BA:  STR.W           R10, [SP,#0xD8+var_C8]
3966BE:  VSTR            S16, [SP,#0xD8+var_CC]
3966C2:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
3966C6:  MOV             R0, R8
3966C8:  STR             R5, [SP,#0xD8+var_D0]
3966CA:  VSTR            S0, [SP,#0xD8+var_C4]
3966CE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3966D2:  LDR.W           R0, =(AESoundManager_ptr - 0x3966E0)
3966D6:  MOVW            R4, #0x110F
3966DA:  MOV             R1, R8; CAESound *
3966DC:  ADD             R0, PC; AESoundManager_ptr
3966DE:  LDR             R6, [R0]; AESoundManager
3966E0:  MOVS            R0, #0x10
3966E2:  STR             R0, [SP,#0xD8+var_A0]
3966E4:  STRH.W          R4, [SP,#0xD8+var_56]
3966E8:  MOV             R0, R6; this
3966EA:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3966EE:  CMP.W           R9, #0
3966F2:  STRD.W          R5, R5, [SP,#0xD8+var_B4]
3966F6:  STRD.W          R5, R5, [SP,#0xD8+var_BC]
3966FA:  MOV             R0, R8
3966FC:  STRD.W          R5, R5, [SP,#0xD8+var_D4]
396700:  IT EQ
396702:  VMOVEQ.F32      S20, S18
396706:  MOVS            R1, #5
396708:  MOVS            R2, #0x1C
39670A:  MOV             R3, R11
39670C:  STR.W           R10, [SP,#0xD8+var_C0]
396710:  VSTR            S20, [SP,#0xD8+var_C4]
396714:  STR.W           R10, [SP,#0xD8+var_C8]
396718:  VSTR            S16, [SP,#0xD8+var_CC]
39671C:  STR.W           R10, [SP,#0xD8+var_D8]
396720:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396724:  MOVS            R0, #0x10
396726:  MOV             R1, R8; CAESound *
396728:  STR             R0, [SP,#0xD8+var_A0]
39672A:  MOV             R0, R6; this
39672C:  STRH.W          R4, [SP,#0xD8+var_56]
396730:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396734:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39673C)
396738:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39673A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
39673C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
39673E:  STR.W           R0, [R11,#0x90]
396742:  B.W             def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396746:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396754); jumptable 00395FDC case 27
39674A:  MOVS            R2, #0x2A ; '*'; __int16
39674C:  LDRH.W          R1, [R11,#0x82]; unsigned __int16
396750:  ADD             R0, PC; AEAudioHardware_ptr
396752:  LDR             R0, [R0]; AEAudioHardware ; this
396754:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396758:  CMP             R0, #0
39675A:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39675E:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x39676A)
396762:  LDR.W           R1, [R11,#0x8C]
396766:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
396768:  ADDS            R1, #5
39676A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
39676C:  LDR             R0, [R0]; CTimer::m_FrameCounter
39676E:  CMP             R0, R1
396770:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396774:  LDRSH.W         R1, [R11,#0x80]
396778:  CMP             R1, #0xB
39677A:  BLT.W           loc_39701A
39677E:  LDR.W           R0, =(AESoundManager_ptr - 0x396788)
396782:  MOVS            R1, #0x2A ; '*'; __int16
396784:  ADD             R0, PC; AESoundManager_ptr
396786:  LDR             R0, [R0]; AESoundManager ; this
396788:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
39678C:  CMP             R0, #0
39678E:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396792:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39679A)
396796:  ADD             R0, PC; AEAudioHardware_ptr
396798:  B               loc_396894
39679A:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3967A8); jumptable 00395FDC case 28
39679E:  MOVS            R2, #0x2A ; '*'; __int16
3967A0:  LDRH.W          R1, [R11,#0x82]; unsigned __int16
3967A4:  ADD             R0, PC; AEAudioHardware_ptr
3967A6:  LDR             R0, [R0]; AEAudioHardware ; this
3967A8:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3967AC:  CMP             R0, #0
3967AE:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3967B2:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3967BE)
3967B6:  LDR.W           R1, [R11,#0x8C]
3967BA:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3967BC:  ADDS            R1, #5
3967BE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3967C0:  LDR             R0, [R0]; CTimer::m_FrameCounter
3967C2:  CMP             R0, R1
3967C4:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3967C8:  LDRSH.W         R1, [R11,#0x80]
3967CC:  CMP             R1, #0xB
3967CE:  BLT.W           loc_397074
3967D2:  LDR.W           R0, =(AESoundManager_ptr - 0x3967DC)
3967D6:  MOVS            R1, #0x2A ; '*'; __int16
3967D8:  ADD             R0, PC; AESoundManager_ptr
3967DA:  LDR             R0, [R0]; AESoundManager ; this
3967DC:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3967E0:  CMP             R0, #0
3967E2:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3967E6:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3967EE)
3967EA:  ADD             R0, PC; AEAudioHardware_ptr
3967EC:  B               loc_396894
3967EE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3967FC); jumptable 00395FDC case 29
3967F2:  MOVS            R2, #0x2A ; '*'; __int16
3967F4:  LDRH.W          R1, [R11,#0x82]; unsigned __int16
3967F8:  ADD             R0, PC; AEAudioHardware_ptr
3967FA:  LDR             R0, [R0]; AEAudioHardware ; this
3967FC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396800:  CMP             R0, #0
396802:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396806:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x396812)
39680A:  LDR.W           R1, [R11,#0x8C]
39680E:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
396810:  ADDS            R1, #5
396812:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
396814:  LDR             R0, [R0]; CTimer::m_FrameCounter
396816:  CMP             R0, R1
396818:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39681C:  LDRSH.W         R1, [R11,#0x80]
396820:  CMP             R1, #0xB
396822:  BLT.W           loc_3970C8
396826:  LDR.W           R0, =(AESoundManager_ptr - 0x396830)
39682A:  MOVS            R1, #0x2A ; '*'; __int16
39682C:  ADD             R0, PC; AESoundManager_ptr
39682E:  LDR             R0, [R0]; AESoundManager ; this
396830:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
396834:  CMP             R0, #0
396836:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39683A:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396842)
39683E:  ADD             R0, PC; AEAudioHardware_ptr
396840:  B               loc_396894
396842:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396850); jumptable 00395FDC case 30
396846:  MOVS            R2, #0x2A ; '*'; __int16
396848:  LDRH.W          R1, [R11,#0x82]; unsigned __int16
39684C:  ADD             R0, PC; AEAudioHardware_ptr
39684E:  LDR             R0, [R0]; AEAudioHardware ; this
396850:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396854:  CMP             R0, #0
396856:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39685A:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x396866)
39685E:  LDR.W           R1, [R11,#0x8C]
396862:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
396864:  ADDS            R1, #5
396866:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
396868:  LDR             R0, [R0]; CTimer::m_FrameCounter
39686A:  CMP             R0, R1
39686C:  BCC.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396870:  LDRSH.W         R1, [R11,#0x80]
396874:  CMP             R1, #0xB
396876:  BLT.W           loc_397122
39687A:  LDR.W           R0, =(AESoundManager_ptr - 0x396884)
39687E:  MOVS            R1, #0x2A ; '*'; __int16
396880:  ADD             R0, PC; AESoundManager_ptr
396882:  LDR             R0, [R0]; AESoundManager ; this
396884:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
396888:  CMP             R0, #0
39688A:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39688E:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396896)
396892:  ADD             R0, PC; AEAudioHardware_ptr
396894:  LDRH.W          R1, [R11,#0x82]
396898:  LDR             R0, [R0]; AEAudioHardware ; this
39689A:  ADDS            R1, #1
39689C:  SXTH            R2, R1
39689E:  CMP             R2, #0x1F
3968A0:  IT GT
3968A2:  MOVGT           R1, #0x1C
3968A4:  MOVS            R2, #0x2A ; '*'; __int16
3968A6:  STRH.W          R1, [R11,#0x82]
3968AA:  UXTH            R1, R1; unsigned __int16
3968AC:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3968B0:  MOVS            R0, #0
3968B2:  STRH.W          R0, [R11,#0x80]
3968B6:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3968B8:  LDRB.W          R0, [R11,#0x7C]; jumptable 00395FDC case 31
3968BC:  CMP             R0, #0
3968BE:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3968C2:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3968D0)
3968C6:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3968C8:  MOVS            R2, #0; __int16
3968CA:  MOVS            R4, #0
3968CC:  ADD             R0, PC; AEAudioHardware_ptr
3968CE:  LDR             R0, [R0]; AEAudioHardware ; this
3968D0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3968D4:  CMP             R0, #0
3968D6:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3968DA:  ADD             R5, SP, #0xD8+var_AC
3968DC:  MOV.W           R0, #0x3F800000
3968E0:  STRD.W          R0, R0, [SP,#0xD8+var_C8]
3968E4:  MOVS            R1, #0
3968E6:  STRD.W          R0, R4, [SP,#0xD8+var_C0]
3968EA:  MOVS            R2, #8
3968EC:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
3968F0:  MOV             R3, R11
3968F2:  STR             R4, [SP,#0xD8+var_B0]
3968F4:  VSTR            S16, [SP,#0xD8+var_CC]
3968F8:  STRD.W          R4, R0, [SP,#0xD8+var_D8]
3968FC:  MOV             R0, R5
3968FE:  STR             R4, [SP,#0xD8+var_D0]
396900:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396904:  LDR.W           R0, =(AESoundManager_ptr - 0x396916)
396908:  MOVW            R1, #0x11F
39690C:  STRH.W          R1, [SP,#0xD8+var_56]
396910:  MOV             R1, R5; CAESound *
396912:  ADD             R0, PC; AESoundManager_ptr
396914:  VSTR            S18, [SP,#0xD8+var_90]
396918:  LDR             R0, [R0]; AESoundManager ; this
39691A:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39691E:  CMP             R0, #0
396920:  STR.W           R0, [R11,#0x98]
396924:  IT NE
396926:  MOVNE           R0, #1
396928:  STRB.W          R0, [R11,#0x7C]
39692C:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39692E:  LDR.W           R0, =(AESoundManager_ptr - 0x39693A); jumptable 00395FDC case 33
396932:  MOVS            R1, #0x21 ; '!'; __int16
396934:  MOV             R2, R11; CAEAudioEntity *
396936:  ADD             R0, PC; AESoundManager_ptr
396938:  LDR             R0, [R0]; AESoundManager ; this
39693A:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39693E:  CMP             R0, #0
396940:  BNE             loc_3969E8
396942:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396950)
396946:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396948:  MOVS            R2, #0; __int16
39694A:  MOVS            R5, #0
39694C:  ADD             R0, PC; AEAudioHardware_ptr
39694E:  LDR             R0, [R0]; AEAudioHardware ; this
396950:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396954:  CMP             R0, #0
396956:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39695A:  MOVS            R0, #0
39695C:  ADD.W           R8, SP, #0xD8+var_AC
396960:  MOV.W           R4, #0x3F800000
396964:  MOVT            R0, #0xBF80
396968:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
39696C:  MOVS            R1, #0
39696E:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396972:  MOVS            R2, #4
396974:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396978:  MOV             R3, R11
39697A:  STR             R5, [SP,#0xD8+var_B0]
39697C:  VSTR            S16, [SP,#0xD8+var_CC]
396980:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
396984:  MOV             R0, R8
396986:  STR             R5, [SP,#0xD8+var_D0]
396988:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39698C:  LDR.W           R0, =(AESoundManager_ptr - 0x39699E)
396990:  MOVW            R9, #0x110F
396994:  MOV.W           R10, #0x21 ; '!'
396998:  MOV             R1, R8; CAESound *
39699A:  ADD             R0, PC; AESoundManager_ptr
39699C:  STRH.W          R9, [SP,#0xD8+var_56]
3969A0:  VSTR            S18, [SP,#0xD8+var_90]
3969A4:  LDR             R6, [R0]; AESoundManager
3969A6:  STR.W           R10, [SP,#0xD8+var_A0]
3969AA:  MOV             R0, R6; this
3969AC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3969B0:  MOV             R0, R8
3969B2:  MOVS            R1, #0
3969B4:  MOVS            R2, #5
3969B6:  MOV             R3, R11
3969B8:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
3969BC:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
3969C0:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
3969C4:  STR             R5, [SP,#0xD8+var_B0]
3969C6:  VSTR            S16, [SP,#0xD8+var_CC]
3969CA:  STRD.W          R4, R5, [SP,#0xD8+var_D8]
3969CE:  STR             R5, [SP,#0xD8+var_D0]
3969D0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3969D4:  MOV             R0, R6; this
3969D6:  MOV             R1, R8; CAESound *
3969D8:  STRH.W          R9, [SP,#0xD8+var_56]
3969DC:  VSTR            S18, [SP,#0xD8+var_90]
3969E0:  STR.W           R10, [SP,#0xD8+var_A0]
3969E4:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3969E8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3969F0)
3969EC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3969EE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3969F0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3969F2:  STR.W           R0, [R11,#0x94]
3969F6:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
3969F8:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396A04); jumptable 00395FDC case 34
3969FC:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3969FE:  MOVS            R2, #0; __int16
396A00:  ADD             R0, PC; AEAudioHardware_ptr
396A02:  LDR             R0, [R0]; AEAudioHardware ; this
396A04:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396A08:  CMP             R0, #0
396A0A:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396A0E:  LDR.W           R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x396A1A)
396A12:  LDR.W           R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x396A1C)
396A16:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
396A18:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
396A1A:  LDR             R0, [R0]; CTimer::m_UserPause ...
396A1C:  LDR             R1, [R1]; CTimer::m_CodePause ...
396A1E:  LDRB            R0, [R0]; CTimer::m_UserPause
396A20:  LDRB            R1, [R1]; CTimer::m_CodePause
396A22:  ORRS            R0, R1
396A24:  LSLS            R0, R0, #0x18
396A26:  MOVW            R0, #0xFFFF
396A2A:  BEQ.W           loc_396FCC
396A2E:  LDRH.W          R1, [R11,#0x1CC]
396A32:  CMP             R1, #0
396A34:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396A38:  ADD.W           R5, R11, #0x144
396A3C:  MOVS            R2, #0xC8
396A3E:  SXTH            R0, R0
396A40:  MOVW            R1, #0x28A
396A44:  STRD.W          R11, R2, [SP,#0xD8+var_D8]; CAEAudioEntity *
396A48:  MOVS            R2, #2; __int16
396A4A:  STRD.W          R1, R0, [SP,#0xD8+var_D0]; unsigned __int16
396A4E:  MOVS            R1, #0; __int16
396A50:  STR             R0, [SP,#0xD8+var_C8]; __int16
396A52:  MOV             R0, R5; this
396A54:  MOVS            R3, #1; __int16
396A56:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
396A5A:  MOVW            R0, #0x15B
396A5E:  B               loc_396FFA
396A60:  DCFS 1.1892
396A64:  LDR.W           R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x396A70); jumptable 00395FDC case 35
396A68:  LDR.W           R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x396A72)
396A6C:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
396A6E:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
396A70:  LDR             R0, [R0]; CTimer::m_UserPause ...
396A72:  LDR             R1, [R1]; CTimer::m_CodePause ...
396A74:  LDRB            R0, [R0]; CTimer::m_UserPause
396A76:  LDRB            R1, [R1]; CTimer::m_CodePause
396A78:  ORRS            R0, R1
396A7A:  LSLS            R0, R0, #0x18
396A7C:  BEQ.W           loc_396FBA
396A80:  LDRH.W          R0, [R11,#0x1CC]; jumptable 00395FDC case 36
396A84:  CMP             R0, #0
396A86:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396A8A:  ADD.W           R0, R11, #0x144; this
396A8E:  BLX             j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
396A92:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396A94:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396AA2); jumptable 00395FDC case 37
396A98:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396A9A:  MOVS            R2, #0; __int16
396A9C:  MOVS            R4, #0
396A9E:  ADD             R0, PC; AEAudioHardware_ptr
396AA0:  LDR             R0, [R0]; AEAudioHardware ; this
396AA2:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396AA6:  CMP             R0, #0
396AA8:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396AAC:  ADD             R5, SP, #0xD8+var_AC
396AAE:  MOV.W           R0, #0x3F800000
396AB2:  STRD.W          R0, R0, [SP,#0xD8+var_C8]
396AB6:  MOVS            R1, #0
396AB8:  STRD.W          R0, R4, [SP,#0xD8+var_C0]
396ABC:  MOVS            R2, #0x17
396ABE:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396AC2:  MOV             R3, R11
396AC4:  STR             R4, [SP,#0xD8+var_B0]
396AC6:  VSTR            S16, [SP,#0xD8+var_CC]
396ACA:  STRD.W          R4, R0, [SP,#0xD8+var_D8]
396ACE:  MOV             R0, R5
396AD0:  STR             R4, [SP,#0xD8+var_D0]
396AD2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396AD6:  LDR.W           R0, =(AESoundManager_ptr - 0x396ADE)
396ADA:  ADD             R0, PC; AESoundManager_ptr
396ADC:  B               loc_396D3E
396ADE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396AEC); jumptable 00395FDC case 38
396AE2:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396AE4:  MOVS            R2, #0; __int16
396AE6:  MOVS            R4, #0
396AE8:  ADD             R0, PC; AEAudioHardware_ptr
396AEA:  LDR             R0, [R0]; AEAudioHardware ; this
396AEC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396AF0:  CMP             R0, #0
396AF2:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396AF6:  MOVW            R1, #0x1206
396AFA:  ADD             R5, SP, #0xD8+var_AC
396AFC:  MOV.W           R0, #0x3F800000
396B00:  MOVT            R1, #0x3F64
396B04:  STRD.W          R0, R1, [SP,#0xD8+var_C8]
396B08:  MOVS            R1, #0
396B0A:  STRD.W          R0, R4, [SP,#0xD8+var_C0]
396B0E:  MOVS            R2, #0x17
396B10:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396B14:  MOV             R3, R11
396B16:  STR             R4, [SP,#0xD8+var_B0]
396B18:  VSTR            S16, [SP,#0xD8+var_CC]
396B1C:  STRD.W          R4, R0, [SP,#0xD8+var_D8]
396B20:  MOV             R0, R5
396B22:  STR             R4, [SP,#0xD8+var_D0]
396B24:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396B28:  LDR.W           R0, =(AESoundManager_ptr - 0x396B30)
396B2C:  ADD             R0, PC; AESoundManager_ptr
396B2E:  B               loc_396D3E
396B30:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396B3E); jumptable 00395FDC case 41
396B34:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396B36:  MOVS            R2, #0; __int16
396B38:  MOVS            R4, #0
396B3A:  ADD             R0, PC; AEAudioHardware_ptr
396B3C:  LDR             R0, [R0]; AEAudioHardware ; this
396B3E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396B42:  CMP             R0, #0
396B44:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396B48:  ADD             R5, SP, #0xD8+var_AC
396B4A:  MOV.W           R0, #0x3F800000
396B4E:  STRD.W          R0, R0, [SP,#0xD8+var_C8]
396B52:  MOVS            R1, #0
396B54:  STRD.W          R0, R4, [SP,#0xD8+var_C0]
396B58:  MOVS            R2, #0xA
396B5A:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396B5E:  MOV             R3, R11
396B60:  STR             R4, [SP,#0xD8+var_B0]
396B62:  VSTR            S16, [SP,#0xD8+var_CC]
396B66:  STRD.W          R4, R0, [SP,#0xD8+var_D8]
396B6A:  MOV             R0, R5
396B6C:  STR             R4, [SP,#0xD8+var_D0]
396B6E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396B72:  LDR.W           R0, =(AESoundManager_ptr - 0x396B7A)
396B76:  ADD             R0, PC; AESoundManager_ptr
396B78:  B               loc_396BC2
396B7A:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396B88); jumptable 00395FDC case 42
396B7E:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396B80:  MOVS            R2, #0; __int16
396B82:  MOVS            R4, #0
396B84:  ADD             R0, PC; AEAudioHardware_ptr
396B86:  LDR             R0, [R0]; AEAudioHardware ; this
396B88:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396B8C:  CMP             R0, #0
396B8E:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396B92:  ADD             R5, SP, #0xD8+var_AC
396B94:  MOV.W           R0, #0x3F800000
396B98:  STRD.W          R0, R0, [SP,#0xD8+var_C8]
396B9C:  MOVS            R1, #0
396B9E:  STRD.W          R0, R4, [SP,#0xD8+var_C0]
396BA2:  MOVS            R2, #0xB
396BA4:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396BA8:  MOV             R3, R11
396BAA:  STR             R4, [SP,#0xD8+var_B0]
396BAC:  VSTR            S16, [SP,#0xD8+var_CC]
396BB0:  STRD.W          R4, R0, [SP,#0xD8+var_D8]
396BB4:  MOV             R0, R5
396BB6:  STR             R4, [SP,#0xD8+var_D0]
396BB8:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396BBC:  LDR.W           R0, =(AESoundManager_ptr - 0x396BC4)
396BC0:  ADD             R0, PC; AESoundManager_ptr
396BC2:  MOVS            R1, #3
396BC4:  STRH.W          R1, [SP,#0xD8+var_56]
396BC8:  VSTR            S18, [SP,#0xD8+var_90]
396BCC:  B               loc_396F9E
396BCE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396BDC); jumptable 00395FDC case 44
396BD2:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396BD4:  MOVS            R2, #0; __int16
396BD6:  MOVS            R5, #0
396BD8:  ADD             R0, PC; AEAudioHardware_ptr
396BDA:  LDR             R0, [R0]; AEAudioHardware ; this
396BDC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396BE0:  CMP             R0, #0
396BE2:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396BE6:  MOVS            R0, #0
396BE8:  ADD.W           R8, SP, #0xD8+var_AC
396BEC:  MOV.W           R4, #0x3F800000
396BF0:  MOVT            R0, #0xBF80
396BF4:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396BF8:  MOVS            R1, #0
396BFA:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396BFE:  MOVS            R2, #6
396C00:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396C04:  MOV             R3, R11
396C06:  STR             R5, [SP,#0xD8+var_B0]
396C08:  VSTR            S16, [SP,#0xD8+var_CC]
396C0C:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
396C10:  MOV             R0, R8
396C12:  STR             R5, [SP,#0xD8+var_D0]
396C14:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396C18:  LDR.W           R0, =(AESoundManager_ptr - 0x396C2A)
396C1C:  MOVW            R9, #0x151B
396C20:  MOV             R1, R8; CAESound *
396C22:  STRH.W          R9, [SP,#0xD8+var_56]
396C26:  ADD             R0, PC; AESoundManager_ptr
396C28:  VSTR            S18, [SP,#0xD8+var_90]
396C2C:  LDR             R6, [R0]; AESoundManager
396C2E:  MOV             R0, R6; this
396C30:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396C34:  MOV             R0, R8
396C36:  MOVS            R1, #0
396C38:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396C3C:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396C40:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396C44:  STR             R5, [SP,#0xD8+var_B0]
396C46:  VSTR            S16, [SP,#0xD8+var_CC]
396C4A:  STRD.W          R4, R5, [SP,#0xD8+var_D8]
396C4E:  STR             R5, [SP,#0xD8+var_D0]
396C50:  MOVS            R2, #7
396C52:  B               loc_396CD8
396C54:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396C62); jumptable 00395FDC case 45
396C58:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396C5A:  MOVS            R2, #0; __int16
396C5C:  MOVS            R5, #0
396C5E:  ADD             R0, PC; AEAudioHardware_ptr
396C60:  LDR             R0, [R0]; AEAudioHardware ; this
396C62:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396C66:  CMP             R0, #0
396C68:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396C6C:  MOVS            R0, #0
396C6E:  ADD.W           R8, SP, #0xD8+var_AC
396C72:  MOV.W           R4, #0x3F800000
396C76:  MOVT            R0, #0xBF80
396C7A:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396C7E:  MOVS            R1, #0
396C80:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396C84:  MOVS            R2, #0xC
396C86:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396C8A:  MOV             R3, R11
396C8C:  STR             R5, [SP,#0xD8+var_B0]
396C8E:  VSTR            S16, [SP,#0xD8+var_CC]
396C92:  STRD.W          R0, R5, [SP,#0xD8+var_D8]
396C96:  MOV             R0, R8
396C98:  STR             R5, [SP,#0xD8+var_D0]
396C9A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396C9E:  LDR.W           R0, =(AESoundManager_ptr - 0x396CB0)
396CA2:  MOVW            R9, #0x151B
396CA6:  MOV             R1, R8; CAESound *
396CA8:  STRH.W          R9, [SP,#0xD8+var_56]
396CAC:  ADD             R0, PC; AESoundManager_ptr
396CAE:  VSTR            S18, [SP,#0xD8+var_90]
396CB2:  LDR             R6, [R0]; AESoundManager
396CB4:  MOV             R0, R6; this
396CB6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396CBA:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396CBE:  MOV             R0, R8
396CC0:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396CC4:  MOVS            R1, #0
396CC6:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396CCA:  MOVS            R2, #0xD
396CCC:  STR             R5, [SP,#0xD8+var_B0]
396CCE:  VSTR            S16, [SP,#0xD8+var_CC]
396CD2:  STRD.W          R4, R5, [SP,#0xD8+var_D8]
396CD6:  STR             R5, [SP,#0xD8+var_D0]
396CD8:  MOV             R3, R11
396CDA:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396CDE:  STRH.W          R9, [SP,#0xD8+var_56]
396CE2:  VSTR            S18, [SP,#0xD8+var_90]
396CE6:  MOV             R0, R6
396CE8:  MOV             R1, R8
396CEA:  B               loc_396FA2
396CEC:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396CFA); jumptable 00395FDC case 46
396CF0:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396CF2:  MOVS            R2, #0; __int16
396CF4:  MOVS            R4, #0
396CF6:  ADD             R0, PC; AEAudioHardware_ptr
396CF8:  LDR             R0, [R0]; AEAudioHardware ; this
396CFA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396CFE:  CMP             R0, #0
396D00:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396D04:  ADD             R5, SP, #0xD8+var_AC
396D06:  MOV.W           R0, #0x3F800000
396D0A:  STRD.W          R0, R0, [SP,#0xD8+var_C8]
396D0E:  MOVS            R1, #0
396D10:  STRD.W          R0, R4, [SP,#0xD8+var_C0]
396D14:  MOVS            R2, #9
396D16:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
396D1A:  MOV             R3, R11
396D1C:  STR             R4, [SP,#0xD8+var_B0]
396D1E:  VSTR            S16, [SP,#0xD8+var_CC]
396D22:  STRD.W          R4, R0, [SP,#0xD8+var_D8]
396D26:  MOV             R0, R5
396D28:  STR             R4, [SP,#0xD8+var_D0]
396D2A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396D2E:  LDR.W           R0, =(AESoundManager_ptr - 0x396D3E)
396D32:  MOV             R1, #0x3D70D845
396D3A:  ADD             R0, PC; AESoundManager_ptr
396D3C:  STR             R1, [SP,#0xD8+var_8C]
396D3E:  MOVW            R1, #0x11B
396D42:  STRH.W          R1, [SP,#0xD8+var_56]
396D46:  B               loc_396F9E
396D48:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396D54); jumptable 00395FDC case 47
396D4C:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396D4E:  MOVS            R2, #0; __int16
396D50:  ADD             R0, PC; AEAudioHardware_ptr
396D52:  LDR             R0, [R0]; AEAudioHardware ; this
396D54:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396D58:  CMP             R0, #0
396D5A:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396D5E:  LDR.W           R0, =(AESoundManager_ptr - 0x396D6C)
396D62:  MOVS            R1, #0x2F ; '/'; __int16
396D64:  MOV             R2, R11; CAEAudioEntity *
396D66:  MOVS            R4, #0x2F ; '/'
396D68:  ADD             R0, PC; AESoundManager_ptr
396D6A:  LDR             R0, [R0]; AESoundManager ; this
396D6C:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
396D70:  CMP             R0, #0
396D72:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396D76:  ADD             R5, SP, #0xD8+var_AC
396D78:  MOV.W           R1, #0x3F800000
396D7C:  MOVS            R0, #0
396D7E:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
396D82:  STRD.W          R1, R0, [SP,#0xD8+var_C0]
396D86:  MOVS            R2, #3
396D88:  STRD.W          R0, R0, [SP,#0xD8+var_B8]
396D8C:  MOV             R3, R11
396D8E:  STR             R0, [SP,#0xD8+var_B0]
396D90:  VSTR            S16, [SP,#0xD8+var_CC]
396D94:  STRD.W          R0, R1, [SP,#0xD8+var_D8]
396D98:  MOVS            R1, #0
396D9A:  STR             R0, [SP,#0xD8+var_D0]
396D9C:  MOV             R0, R5
396D9E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396DA2:  LDR.W           R0, =(AESoundManager_ptr - 0x396DAA)
396DA6:  ADD             R0, PC; AESoundManager_ptr
396DA8:  B               loc_396E14
396DAA:  LDR.W           R0, =(AESoundManager_ptr - 0x396DB4); jumptable 00395FDC case 48
396DAE:  MOVS            R1, #0x2F ; '/'
396DB0:  ADD             R0, PC; AESoundManager_ptr
396DB2:  B               loc_396F34
396DB4:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396DC0); jumptable 00395FDC case 49
396DB8:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396DBA:  MOVS            R2, #0; __int16
396DBC:  ADD             R0, PC; AEAudioHardware_ptr
396DBE:  LDR             R0, [R0]; AEAudioHardware ; this
396DC0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396DC4:  CMP             R0, #0
396DC6:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396DCA:  LDR.W           R0, =(AESoundManager_ptr - 0x396DD8)
396DCE:  MOVS            R1, #0x31 ; '1'; __int16
396DD0:  MOV             R2, R11; CAEAudioEntity *
396DD2:  MOVS            R4, #0x31 ; '1'
396DD4:  ADD             R0, PC; AESoundManager_ptr
396DD6:  LDR             R0, [R0]; AESoundManager ; this
396DD8:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
396DDC:  CMP             R0, #0
396DDE:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396DE2:  ADD             R5, SP, #0xD8+var_AC
396DE4:  MOV.W           R1, #0x3F800000
396DE8:  MOVS            R0, #0
396DEA:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
396DEE:  STRD.W          R1, R0, [SP,#0xD8+var_C0]
396DF2:  MOVS            R2, #0x18
396DF4:  STRD.W          R0, R0, [SP,#0xD8+var_B8]
396DF8:  MOV             R3, R11
396DFA:  STR             R0, [SP,#0xD8+var_B0]
396DFC:  VSTR            S16, [SP,#0xD8+var_CC]
396E00:  STRD.W          R0, R1, [SP,#0xD8+var_D8]
396E04:  MOVS            R1, #0
396E06:  STR             R0, [SP,#0xD8+var_D0]
396E08:  MOV             R0, R5
396E0A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396E0E:  LDR.W           R0, =(AESoundManager_ptr - 0x396E16)
396E12:  ADD             R0, PC; AESoundManager_ptr
396E14:  MOVW            R1, #0x103
396E18:  B               loc_396F94
396E1A:  ALIGN 4
396E1C:  DCD _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x395FBE
396E20:  DCD AEAudioHardware_ptr - 0x3960B8
396E24:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x3960CE
396E28:  DCD AESoundManager_ptr - 0x396122
396E2C:  DCD AEAudioHardware_ptr - 0x39614C
396E30:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x396162
396E34:  DCD AESoundManager_ptr - 0x3961B6
396E38:  DCD AEAudioHardware_ptr - 0x3961E2
396E3C:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x3961F8
396E40:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396E4E); jumptable 00395FDC case 50
396E44:  MOVS            R3, #2; __int16
396E46:  LDRSB.W         R1, [R11,#0x7D]
396E4A:  ADD             R0, PC; AEAudioHardware_ptr
396E4C:  LDR             R0, [R0]; AEAudioHardware ; this
396E4E:  LSLS            R1, R1, #1
396E50:  UXTH            R2, R1; unsigned __int16
396E52:  MOVS            R1, #0x52 ; 'R'; unsigned __int16
396E54:  BLX             j__ZN16CAEAudioHardware13IsSoundLoadedEtts; CAEAudioHardware::IsSoundLoaded(ushort,ushort,short)
396E58:  CMP             R0, #0
396E5A:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396E5E:  LDR.W           R0, =(AEAudioHardware_ptr - 0x396E6E)
396E62:  MOVS            R2, #1
396E64:  LDRSB.W         R1, [R11,#0x7D]
396E68:  MOVS            R3, #5; __int16
396E6A:  ADD             R0, PC; AEAudioHardware_ptr
396E6C:  ORR.W           R1, R2, R1,LSL#1
396E70:  LDR             R0, [R0]; AEAudioHardware ; this
396E72:  UXTH            R2, R1; unsigned __int16
396E74:  MOVS            R1, #0x52 ; 'R'; unsigned __int16
396E76:  BLX             j__ZN16CAEAudioHardware13IsSoundLoadedEtts; CAEAudioHardware::IsSoundLoaded(ushort,ushort,short)
396E7A:  CMP             R0, #0
396E7C:  BEQ.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396E80:  LDR.W           R0, =(AESoundManager_ptr - 0x396E90)
396E84:  MOVS            R1, #0x32 ; '2'; __int16
396E86:  MOV             R2, R11; CAEAudioEntity *
396E88:  MOV.W           R8, #0x32 ; '2'
396E8C:  ADD             R0, PC; AESoundManager_ptr
396E8E:  LDR             R0, [R0]; AESoundManager ; this
396E90:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
396E94:  CMP             R0, #0
396E96:  BNE.W           def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396E9A:  LDRSB.W         R0, [R11,#0x7D]
396E9E:  MOVS            R1, #0
396EA0:  ADD.W           R9, SP, #0xD8+var_AC
396EA4:  MOV.W           R4, #0x3F800000
396EA8:  MOVS            R5, #0
396EAA:  MOVT            R1, #0xBF80
396EAE:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396EB2:  LSLS            R2, R0, #1
396EB4:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396EB8:  MOV             R0, R9
396EBA:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396EBE:  MOV             R3, R11
396EC0:  STR             R5, [SP,#0xD8+var_B0]
396EC2:  VSTR            S16, [SP,#0xD8+var_CC]
396EC6:  STRD.W          R1, R5, [SP,#0xD8+var_D8]
396ECA:  MOVS            R1, #2
396ECC:  STR             R5, [SP,#0xD8+var_D0]
396ECE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396ED2:  LDR             R0, =(AESoundManager_ptr - 0x396EE2)
396ED4:  MOVW            R10, #0x111B
396ED8:  MOV             R1, R9; CAESound *
396EDA:  STRH.W          R10, [SP,#0xD8+var_56]
396EDE:  ADD             R0, PC; AESoundManager_ptr
396EE0:  VSTR            S18, [SP,#0xD8+var_90]
396EE4:  STR.W           R8, [SP,#0xD8+var_A0]
396EE8:  LDR             R6, [R0]; AESoundManager
396EEA:  MOV             R0, R6; this
396EEC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396EF0:  LDRSB.W         R0, [R11,#0x7D]
396EF4:  MOVS            R1, #1
396EF6:  MOV             R3, R11
396EF8:  STR             R5, [SP,#0xD8+var_B0]
396EFA:  STRD.W          R5, R5, [SP,#0xD8+var_B8]
396EFE:  ORR.W           R2, R1, R0,LSL#1
396F02:  MOV             R0, R9
396F04:  MOVS            R1, #5
396F06:  STRD.W          R5, R5, [SP,#0xD8+var_D4]
396F0A:  STRD.W          R4, R5, [SP,#0xD8+var_C0]
396F0E:  STRD.W          R4, R4, [SP,#0xD8+var_C8]
396F12:  VSTR            S16, [SP,#0xD8+var_CC]
396F16:  STR             R4, [SP,#0xD8+var_D8]
396F18:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396F1C:  MOV             R0, R6
396F1E:  MOV             R1, R9
396F20:  STRH.W          R10, [SP,#0xD8+var_56]
396F24:  VSTR            S18, [SP,#0xD8+var_90]
396F28:  STR.W           R8, [SP,#0xD8+var_A0]
396F2C:  B               loc_396FA2
396F2E:  LDR             R0, =(AESoundManager_ptr - 0x396F36); jumptable 00395FDC case 51
396F30:  MOVS            R1, #0x32 ; '2'; __int16
396F32:  ADD             R0, PC; AESoundManager_ptr
396F34:  LDR             R0, [R0]; AESoundManager ; this
396F36:  MOV             R2, R11; CAEAudioEntity *
396F38:  BLX             j__ZN15CAESoundManager43CancelSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::CancelSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
396F3C:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396F3E:  LDR             R0, =(AEAudioHardware_ptr - 0x396F48); jumptable 00395FDC case 101
396F40:  MOVS            R1, #0x3B ; ';'; unsigned __int16
396F42:  MOVS            R2, #0; __int16
396F44:  ADD             R0, PC; AEAudioHardware_ptr
396F46:  LDR             R0, [R0]; AEAudioHardware ; this
396F48:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
396F4C:  CBZ             R0, def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396F4E:  LDR             R0, =(AESoundManager_ptr - 0x396F5A)
396F50:  MOVS            R1, #0x65 ; 'e'; __int16
396F52:  MOV             R2, R11; CAEAudioEntity *
396F54:  MOVS            R4, #0x65 ; 'e'
396F56:  ADD             R0, PC; AESoundManager_ptr
396F58:  LDR             R0, [R0]; AESoundManager ; this
396F5A:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
396F5E:  CBNZ            R0, def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396F60:  ADD             R5, SP, #0xD8+var_AC
396F62:  MOV.W           R1, #0x3F800000
396F66:  MOVS            R0, #0
396F68:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
396F6C:  STRD.W          R1, R0, [SP,#0xD8+var_C0]
396F70:  MOVS            R2, #0xD
396F72:  STRD.W          R0, R0, [SP,#0xD8+var_B8]
396F76:  MOV             R3, R11
396F78:  STR             R0, [SP,#0xD8+var_B0]
396F7A:  VSTR            S16, [SP,#0xD8+var_CC]
396F7E:  STRD.W          R0, R1, [SP,#0xD8+var_D8]
396F82:  MOVS            R1, #0
396F84:  STR             R0, [SP,#0xD8+var_D0]
396F86:  MOV             R0, R5
396F88:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
396F8C:  LDR             R0, =(AESoundManager_ptr - 0x396F96)
396F8E:  MOVW            R1, #0x101
396F92:  ADD             R0, PC; AESoundManager_ptr
396F94:  STRH.W          R1, [SP,#0xD8+var_56]
396F98:  VSTR            S18, [SP,#0xD8+var_90]
396F9C:  STR             R4, [SP,#0xD8+var_A0]
396F9E:  LDR             R0, [R0]; AESoundManager ; this
396FA0:  MOV             R1, R5; CAESound *
396FA2:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
396FA6:  ADD             R0, SP, #0xD8+var_AC; jumptable 00395FDC default case, cases 21-26,39,52-100
396FA8:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
396FAC:  ADD             SP, SP, #0xA0
396FAE:  VPOP            {D8-D10}
396FB2:  ADD             SP, SP, #4
396FB4:  POP.W           {R8-R11}
396FB8:  POP             {R4-R7,PC}
396FBA:  LDRH.W          R0, [R11,#0x124]
396FBE:  CMP             R0, #0
396FC0:  BEQ             def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396FC2:  ADD.W           R0, R11, #0x9C; this
396FC6:  BLX             j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
396FCA:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396FCC:  LDRH.W          R1, [R11,#0x124]
396FD0:  CMP             R1, #0
396FD2:  BNE             def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
396FD4:  ADD.W           R5, R11, #0x9C
396FD8:  MOVS            R2, #0xC8
396FDA:  SXTH            R0, R0
396FDC:  MOVW            R1, #0x28A
396FE0:  STRD.W          R11, R2, [SP,#0xD8+var_D8]; CAEAudioEntity *
396FE4:  MOVS            R2, #2; __int16
396FE6:  STRD.W          R1, R0, [SP,#0xD8+var_D0]; unsigned __int16
396FEA:  MOVS            R1, #0; __int16
396FEC:  STR             R0, [SP,#0xD8+var_C8]; __int16
396FEE:  MOV             R0, R5; this
396FF0:  MOVS            R3, #1; __int16
396FF2:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
396FF6:  MOVW            R0, #0x14B
396FFA:  MOV.W           R1, #0x3F800000
396FFE:  MOV.W           R2, #0x3F800000
397002:  STRD.W          R1, R1, [SP,#0xD8+var_D4]
397006:  MOVS            R3, #0
397008:  STRD.W          R1, R0, [SP,#0xD8+var_CC]
39700C:  MOV             R0, R5
39700E:  MOVS            R1, #0
397010:  VSTR            S16, [SP,#0xD8+var_D8]
397014:  BLX             j__ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft; CAETwinLoopSoundEntity::PlayTwinLoopSound(CVector,float,float,float,float,ushort)
397018:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
39701A:  STR.W           R0, [R11,#0x8C]
39701E:  MOVS            R0, #0; this
397020:  MOVS            R1, #2; int
397022:  MOVS            R4, #0
397024:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
397028:  MOV.W           R1, #0x3F800000
39702C:  MOVW            R2, #0xCCCD
397030:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
397034:  ADD             R5, SP, #0xD8+var_AC
397036:  STRD.W          R1, R4, [SP,#0xD8+var_C0]
39703A:  MOVS            R1, #0xBF800000
397040:  MOVT            R2, #0xBDCC
397044:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
397048:  MOV             R3, R11
39704A:  STR             R4, [SP,#0xD8+var_B0]
39704C:  VSTR            S16, [SP,#0xD8+var_CC]
397050:  STRD.W          R2, R1, [SP,#0xD8+var_D8]
397054:  SXTH            R2, R0
397056:  MOV             R0, R5
397058:  MOVS            R1, #0x2A ; '*'
39705A:  STR             R4, [SP,#0xD8+var_D0]
39705C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
397060:  LDR             R0, =(AESoundManager_ptr - 0x397070)
397062:  MOVS            R1, #7
397064:  STRH.W          R1, [SP,#0xD8+var_56]
397068:  MOV.W           R1, #0x3D000000
39706C:  ADD             R0, PC; AESoundManager_ptr
39706E:  STR             R1, [SP,#0xD8+var_8C]
397070:  MOVS            R1, #0x1B
397072:  B               loc_397174
397074:  STR.W           R0, [R11,#0x8C]
397078:  MOVS            R0, #0; this
39707A:  MOVS            R1, #2; int
39707C:  MOVS            R4, #0
39707E:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
397082:  MOVW            R2, #0xCCCD
397086:  ADD             R5, SP, #0xD8+var_AC
397088:  MOV.W           R1, #0x3F800000
39708C:  MOVT            R2, #0xBDCC
397090:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
397094:  MOV             R3, R11
397096:  STRD.W          R1, R4, [SP,#0xD8+var_C0]
39709A:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
39709E:  STR             R4, [SP,#0xD8+var_B0]
3970A0:  VSTR            S16, [SP,#0xD8+var_CC]
3970A4:  STRD.W          R2, R1, [SP,#0xD8+var_D8]
3970A8:  SXTH            R2, R0
3970AA:  MOV             R0, R5
3970AC:  MOVS            R1, #0x2A ; '*'
3970AE:  STR             R4, [SP,#0xD8+var_D0]
3970B0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3970B4:  LDR             R0, =(AESoundManager_ptr - 0x3970C4)
3970B6:  MOVS            R1, #7
3970B8:  STRH.W          R1, [SP,#0xD8+var_56]
3970BC:  MOV.W           R1, #0x3D000000
3970C0:  ADD             R0, PC; AESoundManager_ptr
3970C2:  STR             R1, [SP,#0xD8+var_8C]
3970C4:  MOVS            R1, #0x1C
3970C6:  B               loc_397174
3970C8:  STR.W           R0, [R11,#0x8C]
3970CC:  MOVS            R0, #0; this
3970CE:  MOVS            R1, #2; int
3970D0:  MOVS            R4, #0
3970D2:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3970D6:  MOV.W           R1, #0x3F800000
3970DA:  MOVW            R2, #0xCCCD
3970DE:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
3970E2:  ADD             R5, SP, #0xD8+var_AC
3970E4:  STRD.W          R1, R4, [SP,#0xD8+var_C0]
3970E8:  MOVS            R1, #0xBF800000
3970EE:  MOVT            R2, #0x3DCC
3970F2:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
3970F6:  MOV             R3, R11
3970F8:  STR             R4, [SP,#0xD8+var_B0]
3970FA:  VSTR            S16, [SP,#0xD8+var_CC]
3970FE:  STRD.W          R2, R1, [SP,#0xD8+var_D8]
397102:  SXTH            R2, R0
397104:  MOV             R0, R5
397106:  MOVS            R1, #0x2A ; '*'
397108:  STR             R4, [SP,#0xD8+var_D0]
39710A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39710E:  LDR             R0, =(AESoundManager_ptr - 0x39711E)
397110:  MOVS            R1, #7
397112:  STRH.W          R1, [SP,#0xD8+var_56]
397116:  MOV.W           R1, #0x3D000000
39711A:  ADD             R0, PC; AESoundManager_ptr
39711C:  STR             R1, [SP,#0xD8+var_8C]
39711E:  MOVS            R1, #0x1D
397120:  B               loc_397174
397122:  STR.W           R0, [R11,#0x8C]
397126:  MOVS            R0, #0; this
397128:  MOVS            R1, #2; int
39712A:  MOVS            R4, #0
39712C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
397130:  MOVW            R2, #0xCCCD
397134:  ADD             R5, SP, #0xD8+var_AC
397136:  MOV.W           R1, #0x3F800000
39713A:  MOVT            R2, #0x3DCC
39713E:  STRD.W          R1, R1, [SP,#0xD8+var_C8]
397142:  MOV             R3, R11
397144:  STRD.W          R1, R4, [SP,#0xD8+var_C0]
397148:  STRD.W          R4, R4, [SP,#0xD8+var_B8]
39714C:  STR             R4, [SP,#0xD8+var_B0]
39714E:  VSTR            S16, [SP,#0xD8+var_CC]
397152:  STRD.W          R2, R1, [SP,#0xD8+var_D8]
397156:  SXTH            R2, R0
397158:  MOV             R0, R5
39715A:  MOVS            R1, #0x2A ; '*'
39715C:  STR             R4, [SP,#0xD8+var_D0]
39715E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
397162:  LDR             R0, =(AESoundManager_ptr - 0x397172)
397164:  MOVS            R1, #7
397166:  STRH.W          R1, [SP,#0xD8+var_56]
39716A:  MOV.W           R1, #0x3D000000
39716E:  ADD             R0, PC; AESoundManager_ptr
397170:  STR             R1, [SP,#0xD8+var_8C]
397172:  MOVS            R1, #0x1E
397174:  LDR             R0, [R0]; AESoundManager ; this
397176:  STR             R1, [SP,#0xD8+var_A0]
397178:  MOV             R1, R5; CAESound *
39717A:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39717E:  LDRH.W          R0, [R11,#0x80]
397182:  ADDS            R0, #1
397184:  STRH.W          R0, [R11,#0x80]
397188:  B               def_395FDC; jumptable 00395FDC default case, cases 21-26,39,52-100
