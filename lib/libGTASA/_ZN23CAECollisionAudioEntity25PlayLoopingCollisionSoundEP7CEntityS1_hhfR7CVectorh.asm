; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity25PlayLoopingCollisionSoundEP7CEntityS1_hhfR7CVectorh
; Address            : 0x394060 - 0x3943BE
; =========================================================

394060:  PUSH            {R4-R7,LR}
394062:  ADD             R7, SP, #0xC
394064:  PUSH.W          {R8-R11}
394068:  SUB             SP, SP, #4
39406A:  VPUSH           {D8-D9}
39406E:  SUB             SP, SP, #0xB8
394070:  MOV             R11, R3
394072:  LDR             R3, [R7,#arg_0]
394074:  MOV             R8, R0
394076:  MOVS            R0, #0
394078:  CMP.W           R11, #0x3F ; '?'
39407C:  STR             R0, [SP,#0xE8+var_9C]
39407E:  MOV             R10, R2
394080:  MOV             R5, R1
394082:  IT EQ
394084:  CMPEQ           R3, #0x3F ; '?'
394086:  BNE             loc_39410A
394088:  VLDR            S4, [R10,#0x48]
39408C:  VLDR            S10, [R5,#0x48]
394090:  VLDR            S2, [R10,#0x4C]
394094:  VLDR            S8, [R5,#0x4C]
394098:  VSUB.F32        S15, S10, S4
39409C:  VLDR            S12, [R10,#0x54]
3940A0:  VLDR            S1, [R5,#0x54]
3940A4:  VSUB.F32        S13, S8, S2
3940A8:  VLDR            S14, [R10,#0x58]
3940AC:  VLDR            S5, [R5,#0x58]
3940B0:  VSUB.F32        S11, S1, S12
3940B4:  VLDR            S0, [R10,#0x50]
3940B8:  VSUB.F32        S9, S5, S14
3940BC:  VLDR            S6, [R5,#0x50]
3940C0:  VLDR            S3, [R10,#0x5C]
3940C4:  VMUL.F32        S15, S15, S15
3940C8:  VLDR            S7, [R5,#0x5C]
3940CC:  VSUB.F32        S18, S6, S0
3940D0:  VMUL.F32        S13, S13, S13
3940D4:  VSUB.F32        S16, S7, S3
3940D8:  VMUL.F32        S11, S11, S11
3940DC:  VMUL.F32        S9, S9, S9
3940E0:  VADD.F32        S13, S15, S13
3940E4:  VMUL.F32        S16, S16, S16
3940E8:  VADD.F32        S9, S11, S9
3940EC:  VMUL.F32        S11, S18, S18
3940F0:  VADD.F32        S9, S9, S16
3940F4:  VADD.F32        S11, S13, S11
3940F8:  VCMPE.F32       S11, S9
3940FC:  VMRS            APSR_nzcv, FPSCR
394100:  BLE             loc_39419E
394102:  MOVS            R1, #0
394104:  MOVS            R0, #1
394106:  ADD             R2, SP, #0xE8+var_B0
394108:  B               loc_3941BC
39410A:  CMP             R3, #0x3E ; '>'
39410C:  BEQ             loc_394114
39410E:  CMP.W           R11, #0x3F ; '?'
394112:  BEQ             loc_39412A
394114:  VLDR            S18, =0.0
394118:  CMP.W           R11, #0x3E ; '>'
39411C:  VLDR            S16, =-100.0
394120:  BEQ.W           loc_394294
394124:  CMP             R3, #0x3F ; '?'
394126:  BNE.W           loc_394294
39412A:  VLDR            S0, [R5,#0x48]
39412E:  ADD.W           R0, R5, #0x54 ; 'T'
394132:  VLDR            S2, [R5,#0x4C]
394136:  VLDR            S6, [R5,#0x54]
39413A:  VMUL.F32        S0, S0, S0
39413E:  VLDR            S8, [R5,#0x58]
394142:  VMUL.F32        S2, S2, S2
394146:  VMUL.F32        S6, S6, S6
39414A:  VLDR            S4, [R5,#0x50]
39414E:  VMUL.F32        S8, S8, S8
394152:  VLDR            S10, [R5,#0x5C]
394156:  VMUL.F32        S4, S4, S4
39415A:  VMUL.F32        S10, S10, S10
39415E:  VADD.F32        S0, S0, S2
394162:  VADD.F32        S6, S6, S8
394166:  VADD.F32        S0, S0, S4
39416A:  VADD.F32        S2, S6, S10
39416E:  VCMPE.F32       S0, S2
394172:  VMRS            APSR_nzcv, FPSCR
394176:  IT GT
394178:  ADDGT.W         R0, R5, #0x48 ; 'H'
39417C:  VLDR            S0, [R0]
394180:  VLDR            S2, [R0,#4]
394184:  VMUL.F32        S0, S0, S0
394188:  VLDR            S4, [R0,#8]
39418C:  VMUL.F32        S2, S2, S2
394190:  VMUL.F32        S4, S4, S4
394194:  VADD.F32        S0, S0, S2
394198:  VADD.F32        S0, S0, S4
39419C:  B               loc_3941EC
39419E:  VMOV.F32        S0, S3
3941A2:  ADD             R2, SP, #0xE8+var_BC
3941A4:  VMOV.F32        S6, S7
3941A8:  MOVS            R1, #1
3941AA:  VMOV.F32        S2, S14
3941AE:  MOVS            R0, #0
3941B0:  VMOV.F32        S8, S5
3941B4:  VMOV.F32        S4, S12
3941B8:  VMOV.F32        S10, S1
3941BC:  VSUB.F32        S4, S10, S4
3941C0:  CMP             R1, #0
3941C2:  VSUB.F32        S2, S8, S2
3941C6:  CMP             R0, #1
3941C8:  VSUB.F32        S6, S6, S0
3941CC:  VMUL.F32        S8, S4, S4
3941D0:  VSTR            S4, [R2]
3941D4:  VMUL.F32        S0, S2, S2
3941D8:  VSTR            S2, [R2,#4]
3941DC:  VMUL.F32        S10, S6, S6
3941E0:  VSTR            S6, [R2,#8]
3941E4:  VADD.F32        S0, S8, S0
3941E8:  VADD.F32        S0, S0, S10
3941EC:  VSQRT.F32       S0, S0
3941F0:  VCMP.F32        S0, #0.0
3941F4:  VMRS            APSR_nzcv, FPSCR
3941F8:  BEQ             loc_39428C
3941FA:  LDR             R1, =(gCollisionLookup_ptr - 0x394204)
3941FC:  VLDR            S6, =0.3
394200:  ADD             R1, PC; gCollisionLookup_ptr
394202:  LDR             R0, [R7,#arg_C]
394204:  LDR             R1, [R1]; gCollisionLookup
394206:  CMP             R0, #0
394208:  ADD.W           R2, R1, R3,LSL#4
39420C:  ADD.W           R1, R1, R11,LSL#4
394210:  VLDR            S4, [R1,#0xC]
394214:  VLDR            S2, [R2,#0xC]
394218:  LDR             R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x394226)
39421A:  VCVT.F32.S32    S2, S2
39421E:  VCVT.F32.S32    S4, S4
394222:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
394224:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
394226:  VMUL.F32        S2, S4, S2
39422A:  VLDR            S4, =10000.0
39422E:  VDIV.F32        S2, S2, S4
394232:  VMUL.F32        S0, S0, S2
394236:  VMOV.F32        S2, #3.0
39423A:  VMOV.F32        S4, #6.0
39423E:  VSQRT.F32       S0, S0
394242:  VMUL.F32        S0, S0, S2
394246:  VMOV.F32        S2, #0.75
39424A:  VMIN.F32        D0, D0, D3
39424E:  VDIV.F32        S18, S0, S4
394252:  IT EQ
394254:  VMOVEQ.F32      S18, S0
394258:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
39425A:  LDRSB.W         R4, [R1,#0x74]
39425E:  VDIV.F32        S0, S18, S2
394262:  VMOV.F32        S2, #1.0
394266:  VMIN.F32        D0, D0, D1
39426A:  VMOV            R0, S0; x
39426E:  BLX             log10f
394272:  VMOV.F32        S0, #20.0
394276:  VMOV            S4, R4
39427A:  VMOV            S2, R0
39427E:  VCVT.F32.S32    S4, S4
394282:  VMUL.F32        S0, S2, S0
394286:  VADD.F32        S16, S0, S4
39428A:  B               loc_394294
39428C:  VLDR            S18, =0.0
394290:  VLDR            S16, =-100.0
394294:  VMOV.F32        S2, #0.75
394298:  LDR             R0, =(g_surfaceInfos_ptr - 0x3942A4)
39429A:  VLDR            S0, =0.8
39429E:  MOV             R1, R11; unsigned int
3942A0:  ADD             R0, PC; g_surfaceInfos_ptr
3942A2:  LDR             R4, [R7,#arg_8]
3942A4:  LDR             R0, [R0]; g_surfaceInfos ; this
3942A6:  VMAX.F32        D1, D9, D1
3942AA:  VMUL.F32        S18, S2, S0
3942AE:  BLX             j__ZN14SurfaceInfos_c12IsAudioGrassEj; SurfaceInfos_c::IsAudioGrass(uint)
3942B2:  MOV.W           R9, #0
3942B6:  CMP             R0, #0
3942B8:  MOV.W           R6, #0
3942BC:  BNE             loc_3942F2
3942BE:  LDR             R0, =(g_surfaceInfos_ptr - 0x3942C6)
3942C0:  LDR             R6, [R7,#arg_0]
3942C2:  ADD             R0, PC; g_surfaceInfos_ptr
3942C4:  LDR             R0, [R0]; g_surfaceInfos ; this
3942C6:  MOV             R1, R6; unsigned int
3942C8:  BLX             j__ZN14SurfaceInfos_c12IsAudioGrassEj; SurfaceInfos_c::IsAudioGrass(uint)
3942CC:  CBZ             R0, loc_3942D2
3942CE:  MOVS            R6, #0
3942D0:  B               loc_3942F2
3942D2:  LDR             R0, =(g_surfaceInfos_ptr - 0x3942DA)
3942D4:  MOV             R1, R11; unsigned int
3942D6:  ADD             R0, PC; g_surfaceInfos_ptr
3942D8:  LDR             R0, [R0]; g_surfaceInfos ; this
3942DA:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
3942DE:  CBNZ            R0, loc_3942F0
3942E0:  LDR             R0, =(g_surfaceInfos_ptr - 0x3942E8)
3942E2:  MOV             R1, R6; unsigned int
3942E4:  ADD             R0, PC; g_surfaceInfos_ptr
3942E6:  LDR             R0, [R0]; g_surfaceInfos ; this
3942E8:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
3942EC:  CMP             R0, #0
3942EE:  BEQ             loc_394398
3942F0:  MOVS            R6, #3
3942F2:  LDM.W           R4, {R0-R2}
3942F6:  MOV.W           R4, #0x3F800000
3942FA:  MOVS            R3, #4
3942FC:  STRD.W          R4, R9, [SP,#0xE8+var_D0]
394300:  ADD             R4, SP, #0xE8+var_A4
394302:  STRD.W          R3, R9, [SP,#0xE8+var_C8]
394306:  MOV.W           R3, #0x40000000
39430A:  STR.W           R9, [SP,#0xE8+var_C0]
39430E:  VSTR            S18, [SP,#0xE8+var_D4]
394312:  STR             R3, [SP,#0xE8+var_D8]
394314:  MOV             R3, R8
394316:  VSTR            S16, [SP,#0xE8+var_DC]
39431A:  STMEA.W         SP, {R0-R2}
39431E:  MOV             R0, R4
394320:  MOVS            R1, #2
394322:  MOV             R2, R6
394324:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394328:  LDR             R0, =(AESoundManager_ptr - 0x394330)
39432A:  MOV             R1, R4; CAESound *
39432C:  ADD             R0, PC; AESoundManager_ptr
39432E:  LDR             R0, [R0]; AESoundManager ; this
394330:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
394334:  LDR             R6, [R7,#arg_0]
394336:  CMP             R0, #0
394338:  BEQ             loc_394384
39433A:  ADDW            R1, R8, #0x21A
39433E:  MOV.W           R2, #0xFFFFFFFF
394342:  LDR.W           R3, [R1,#-0xA]
394346:  CBZ             R3, loc_394354
394348:  ADDS            R2, #1
39434A:  ADDS            R1, #0x14
39434C:  CMP.W           R2, #0x12A
394350:  BLE             loc_394342
394352:  B               loc_394384
394354:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x394360)
394356:  MOVS            R3, #2
394358:  STRB.W          R11, [R1,#-1]
39435C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39435E:  STRB.W          R3, [R1,#-2]
394362:  STRB            R6, [R1]
394364:  STR.W           R0, [R1,#-0xA]
394368:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds ...
39436A:  STR.W           R10, [R1,#-0xE]
39436E:  STR.W           R5, [R1,#-0x12]
394372:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
394374:  ADDS            R0, #0x64 ; 'd'
394376:  STR.W           R0, [R1,#-6]
39437A:  LDR.W           R0, [R8,#0x204]
39437E:  ADDS            R0, #1
394380:  STR.W           R0, [R8,#0x204]
394384:  ADD             R0, SP, #0xE8+var_A4; this
394386:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
39438A:  ADD             SP, SP, #0xB8
39438C:  VPOP            {D8-D9}
394390:  ADD             SP, SP, #4
394392:  POP.W           {R8-R11}
394396:  POP             {R4-R7,PC}
394398:  LDR             R0, =(g_surfaceInfos_ptr - 0x3943A0)
39439A:  MOV             R1, R11; unsigned int
39439C:  ADD             R0, PC; g_surfaceInfos_ptr
39439E:  LDR             R0, [R0]; g_surfaceInfos ; this
3943A0:  BLX             j__ZN14SurfaceInfos_c12IsAudioMetalEj; SurfaceInfos_c::IsAudioMetal(uint)
3943A4:  MOVS            R6, #2
3943A6:  CMP             R0, #0
3943A8:  BNE             loc_3942F2
3943AA:  LDR             R0, =(g_surfaceInfos_ptr - 0x3943B2)
3943AC:  LDR             R1, [R7,#arg_0]; unsigned int
3943AE:  ADD             R0, PC; g_surfaceInfos_ptr
3943B0:  LDR             R0, [R0]; g_surfaceInfos ; this
3943B2:  BLX             j__ZN14SurfaceInfos_c12IsAudioMetalEj; SurfaceInfos_c::IsAudioMetal(uint)
3943B6:  CMP             R0, #0
3943B8:  IT EQ
3943BA:  MOVEQ           R6, #1
3943BC:  B               loc_3942F2
