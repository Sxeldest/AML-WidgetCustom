; =========================================================
; Game Engine Function: _ZN4CCam21Process_Cam_TwoPlayerEv
; Address            : 0x3C9F74 - 0x3CA6B8
; =========================================================

3C9F74:  PUSH            {R4-R7,LR}
3C9F76:  ADD             R7, SP, #0xC
3C9F78:  PUSH.W          {R8-R11}
3C9F7C:  SUB             SP, SP, #4
3C9F7E:  VPUSH           {D8-D15}
3C9F82:  SUB             SP, SP, #0x78; float
3C9F84:  MOV             R11, R0
3C9F86:  LDR.W           R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x3C9F8E)
3C9F8A:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
3C9F8C:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
3C9F8E:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus
3C9F90:  CMP             R0, #1
3C9F92:  BEQ             loc_3C9FC8
3C9F94:  CBNZ            R0, loc_3CA000
3C9F96:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3C9F9E)
3C9F9A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3C9F9C:  LDR             R0, [R0]; CWorld::Players ...
3C9F9E:  LDR             R0, [R0]; CWorld::Players
3C9FA0:  LDRB.W          R1, [R0,#0x485]
3C9FA4:  LSLS            R1, R1, #0x1F
3C9FA6:  ITT NE
3C9FA8:  LDRNE.W         R2, [R0,#0x590]; float
3C9FAC:  CMPNE           R2, #0
3C9FAE:  BNE             loc_3CA09C
3C9FB0:  LDR             R2, [R0,#0x14]; float
3C9FB2:  MOVS            R1, #0
3C9FB4:  STR             R1, [SP,#0xD8+var_D4]; bool
3C9FB6:  ADD.W           R1, R2, #0x30 ; '0'
3C9FBA:  CMP             R2, #0
3C9FBC:  IT EQ
3C9FBE:  ADDEQ           R1, R0, #4; CVector *
3C9FC0:  MOV             R0, R11; this
3C9FC2:  BLX             j__ZN4CCam20Process_FollowPed_SAERK7CVectorfffb; CCam::Process_FollowPed_SA(CVector const&,float,float,float,bool)
3C9FC6:  B               loc_3CA0C4
3C9FC8:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3C9FD0)
3C9FCC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3C9FCE:  LDR             R0, [R0]; CWorld::Players ...
3C9FD0:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3C9FD4:  LDRB.W          R1, [R0,#0x485]
3C9FD8:  LSLS            R1, R1, #0x1F
3C9FDA:  ITT NE
3C9FDC:  LDRNE.W         R2, [R0,#0x590]; float
3C9FE0:  CMPNE           R2, #0
3C9FE2:  BNE             loc_3CA0CC
3C9FE4:  STR.W           R0, [R11,#0x1F4]
3C9FE8:  MOVS            R1, #0
3C9FEA:  LDR             R2, [R0,#0x14]; float
3C9FEC:  STR             R1, [SP,#0xD8+var_D4]; bool
3C9FEE:  ADD.W           R1, R2, #0x30 ; '0'
3C9FF2:  CMP             R2, #0
3C9FF4:  IT EQ
3C9FF6:  ADDEQ           R1, R0, #4; CVector *
3C9FF8:  MOV             R0, R11; this
3C9FFA:  BLX             j__ZN4CCam20Process_FollowPed_SAERK7CVectorfffb; CCam::Process_FollowPed_SA(CVector const&,float,float,float,bool)
3C9FFE:  B               loc_3CA0E6
3CA000:  MOVW            R0, #0xA92
3CA004:  MOVS            R4, #0
3CA006:  MOVT            R0, #0xBF06
3CA00A:  ADD.W           R8, R11, #0x120
3CA00E:  STRD.W          R0, R4, [R11,#0x84]
3CA012:  ADD.W           R9, SP, #0xD8+var_6C
3CA016:  VLDR            S16, [R11,#0x94]
3CA01A:  ADD             R6, SP, #0xD8+var_78
3CA01C:  VLDR            S18, =0.15
3CA020:  MOV             R5, R4
3CA022:  CMP             R5, #0x14
3CA024:  BGT             loc_3CA08C
3CA026:  ADDS            R4, R5, #1
3CA028:  TST.W           R5, #1
3CA02C:  MOV             R2, R9; CVector *
3CA02E:  MOV             R3, R6; CVector *
3CA030:  MOV.W           R0, R4,LSR#1
3CA034:  VMOV            S0, R0
3CA038:  MOV             R0, R11; this
3CA03A:  VCVT.F32.S32    S0, S0
3CA03E:  VMUL.F32        S2, S0, S18
3CA042:  VNMUL.F32       S0, S0, S18
3CA046:  IT EQ
3CA048:  VMOVEQ.F32      S2, S0
3CA04C:  VLDR            S0, [R11,#0x94]
3CA050:  STR.W           R8, [SP,#0xD8+var_D8]; CVector *
3CA054:  VADD.F32        S16, S2, S0
3CA058:  VMOV            R1, S16; x
3CA05C:  BLX             j__ZN4CCam32Process_Cam_TwoPlayer_CalcSourceEfP7CVectorS1_S1_; CCam::Process_Cam_TwoPlayer_CalcSource(float,CVector *,CVector *,CVector *)
3CA060:  ADD             R3, SP, #0xD8+var_6C
3CA062:  LDM             R3, {R1-R3}
3CA064:  BLX             j__ZN4CCam30Process_Cam_TwoPlayer_TestLOSsE7CVector; CCam::Process_Cam_TwoPlayer_TestLOSs(CVector)
3CA068:  CMP             R0, #0
3CA06A:  BEQ             loc_3CA020
3CA06C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA07C)
3CA070:  MOV.W           R10, #0
3CA074:  LDR.W           R1, =(dword_952D70 - 0x3CA07E)
3CA078:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA07A:  ADD             R1, PC; dword_952D70
3CA07C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA07E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA080:  STR             R0, [R1]
3CA082:  SUBS            R1, R4, #1
3CA084:  CMP             R1, #1
3CA086:  BGE             loc_3CA100
3CA088:  MOV             R5, R1
3CA08A:  B               loc_3CA112
3CA08C:  CMP             R5, #0x15
3CA08E:  BNE             loc_3CA0FC
3CA090:  VLDR            S16, [R11,#0x94]
3CA094:  MOV.W           R10, #1
3CA098:  MOVS            R5, #0x15
3CA09A:  B               loc_3CA100
3CA09C:  STR.W           R2, [R11,#0x1F4]
3CA0A0:  MOVS            R1, #0
3CA0A2:  LDR             R0, [R2,#0x14]
3CA0A4:  STR             R1, [SP,#0xD8+var_D4]; bool
3CA0A6:  ADD.W           R1, R0, #0x30 ; '0'
3CA0AA:  CMP             R0, #0
3CA0AC:  IT EQ
3CA0AE:  ADDEQ           R1, R2, #4; CVector *
3CA0B0:  MOV             R0, R11; this
3CA0B2:  BLX             j__ZN4CCam20Process_FollowCar_SAERK7CVectorfffb; CCam::Process_FollowCar_SA(CVector const&,float,float,float,bool)
3CA0B6:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3CA0BE)
3CA0BA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3CA0BC:  LDR             R0, [R0]; CWorld::Players ...
3CA0BE:  LDR             R0, [R0]; CWorld::Players
3CA0C0:  STR.W           R0, [R11,#0x1F4]
3CA0C4:  MOVS            R0, #0
3CA0C6:  STRB.W          R0, [R11,#0xA]
3CA0CA:  B               loc_3CA6AA
3CA0CC:  STR.W           R2, [R11,#0x1F4]
3CA0D0:  MOVS            R1, #0
3CA0D2:  LDR             R0, [R2,#0x14]
3CA0D4:  STR             R1, [SP,#0xD8+var_D4]; bool
3CA0D6:  ADD.W           R1, R0, #0x30 ; '0'
3CA0DA:  CMP             R0, #0
3CA0DC:  IT EQ
3CA0DE:  ADDEQ           R1, R2, #4; CVector *
3CA0E0:  MOV             R0, R11; this
3CA0E2:  BLX             j__ZN4CCam20Process_FollowCar_SAERK7CVectorfffb; CCam::Process_FollowCar_SA(CVector const&,float,float,float,bool)
3CA0E6:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3CA0F0)
3CA0EA:  MOVS            R1, #0
3CA0EC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3CA0EE:  LDR             R0, [R0]; CWorld::Players ...
3CA0F0:  LDR             R0, [R0]; CWorld::Players
3CA0F2:  STRB.W          R1, [R11,#0xA]
3CA0F6:  STR.W           R0, [R11,#0x1F4]
3CA0FA:  B               loc_3CA6AA
3CA0FC:  MOV.W           R10, #0
3CA100:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA10C)
3CA104:  LDR.W           R1, =(dword_952D74 - 0x3CA10E)
3CA108:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA10A:  ADD             R1, PC; dword_952D74
3CA10C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA10E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA110:  STR             R0, [R1]
3CA112:  LDRB.W          R1, [R11,#0xA]
3CA116:  VLDR            S20, =3.1416
3CA11A:  CMP             R1, #0
3CA11C:  ITTE NE
3CA11E:  VSTRNE          S16, [R11,#0x94]
3CA122:  VMOVNE.F32      S0, S16
3CA126:  VLDREQ          S0, [R11,#0x94]
3CA12A:  VADD.F32        S2, S0, S20
3CA12E:  VCMPE.F32       S16, S2
3CA132:  VMRS            APSR_nzcv, FPSCR
3CA136:  BLE             loc_3CA13E
3CA138:  VLDR            S2, =-6.2832
3CA13C:  B               loc_3CA158
3CA13E:  VLDR            S2, =-3.1416
3CA142:  VADD.F32        S2, S0, S2
3CA146:  VCMPE.F32       S16, S2
3CA14A:  VMOV.F32        S2, S16
3CA14E:  VMRS            APSR_nzcv, FPSCR
3CA152:  BGE             loc_3CA15C
3CA154:  VLDR            S2, =6.2832
3CA158:  VADD.F32        S2, S16, S2
3CA15C:  VSUB.F32        S2, S2, S0
3CA160:  VLDR            S4, =0.2
3CA164:  VMUL.F32        S4, S2, S4
3CA168:  VLDR            S2, =0.1
3CA16C:  VCMPE.F32       S4, S2
3CA170:  VMRS            APSR_nzcv, FPSCR
3CA174:  BGT             loc_3CA18C
3CA176:  VLDR            S6, =-0.1
3CA17A:  VMOV.F32        S2, S4
3CA17E:  VCMPE.F32       S4, S6
3CA182:  VMRS            APSR_nzcv, FPSCR
3CA186:  IT LT
3CA188:  VMOVLT.F32      S2, S6
3CA18C:  VADD.F32        S22, S2, S0
3CA190:  VLDR            S24, =0.0
3CA194:  CMP             R5, #0
3CA196:  BNE.W           loc_3CA33C
3CA19A:  LDR.W           R1, =(dword_952D74 - 0x3CA1A2)
3CA19E:  ADD             R1, PC; dword_952D74
3CA1A0:  LDR             R1, [R1]
3CA1A2:  ADD.W           R1, R1, #0x3E8
3CA1A6:  CMP             R0, R1
3CA1A8:  BCC.W           loc_3CA33C
3CA1AC:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3CA1B8)
3CA1B0:  VLDR            S26, =0.01
3CA1B4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3CA1B6:  LDR             R0, [R0]; CWorld::Players ...
3CA1B8:  LDR             R1, [R0]; CWorld::Players
3CA1BA:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3CA1BE:  VLDR            S6, [R1,#0x48]
3CA1C2:  VLDR            S2, [R0,#0x48]
3CA1C6:  VLDR            S0, [R0,#0x4C]
3CA1CA:  VLDR            S8, [R1,#0x4C]
3CA1CE:  VADD.F32        S2, S6, S2
3CA1D2:  VLDR            S4, [R0,#0x50]
3CA1D6:  VADD.F32        S0, S8, S0
3CA1DA:  VLDR            S10, [R1,#0x50]
3CA1DE:  VADD.F32        S4, S10, S4
3CA1E2:  VMUL.F32        S8, S2, S2
3CA1E6:  VMUL.F32        S6, S0, S0
3CA1EA:  VMUL.F32        S4, S4, S4
3CA1EE:  VADD.F32        S6, S8, S6
3CA1F2:  VADD.F32        S24, S6, S4
3CA1F6:  VCMPE.F32       S24, S26
3CA1FA:  VMRS            APSR_nzcv, FPSCR
3CA1FE:  BLE             loc_3CA254
3CA200:  VMOV            R0, S2
3CA204:  LDR.W           R2, =(PEDCAM_SET_ptr - 0x3CA214)
3CA208:  VMOV            R1, S0; x
3CA20C:  LDR.W           R3, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CA216)
3CA210:  ADD             R2, PC; PEDCAM_SET_ptr
3CA212:  ADD             R3, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CA214:  LDR             R2, [R2]; PEDCAM_SET
3CA216:  LDR             R3, [R3]; CTimer::ms_fTimeStep ...
3CA218:  VLDR            S28, [R2,#0xA0]
3CA21C:  VLDR            S30, [R2,#0xA4]
3CA220:  VLDR            S17, [R3]
3CA224:  EOR.W           R0, R0, #0x80000000; y
3CA228:  BLX             atan2f
3CA22C:  VLDR            S0, =-1.5708
3CA230:  VMOV            S2, R0
3CA234:  VMUL.F32        S4, S28, S17
3CA238:  VADD.F32        S2, S2, S0
3CA23C:  VMUL.F32        S0, S17, S30
3CA240:  VSUB.F32        S6, S2, S22
3CA244:  VCMPE.F32       S6, S20
3CA248:  VMRS            APSR_nzcv, FPSCR
3CA24C:  BLE             loc_3CA262
3CA24E:  VLDR            S6, =-6.2832
3CA252:  B               loc_3CA274
3CA254:  VLDR            S24, =0.0
3CA258:  VLDR            S0, =-0.15
3CA25C:  VADD.F32        S16, S16, S0
3CA260:  B               loc_3CA2C4
3CA262:  VLDR            S8, =-3.1416
3CA266:  VCMPE.F32       S6, S8
3CA26A:  VMRS            APSR_nzcv, FPSCR
3CA26E:  BGE             loc_3CA278
3CA270:  VLDR            S6, =6.2832
3CA274:  VADD.F32        S2, S2, S6
3CA278:  VSQRT.F32       S6, S24
3CA27C:  VMOV.F32        S8, #1.0
3CA280:  VMUL.F32        S4, S6, S4
3CA284:  VSUB.F32        S2, S2, S22
3CA288:  VMIN.F32        D2, D2, D4
3CA28C:  VMUL.F32        S24, S4, S2
3CA290:  VCMPE.F32       S24, S0
3CA294:  VMRS            APSR_nzcv, FPSCR
3CA298:  BLE             loc_3CA2A0
3CA29A:  VMOV.F32        S24, S0
3CA29E:  B               loc_3CA2B2
3CA2A0:  VNEG.F32        S0, S0
3CA2A4:  VCMPE.F32       S24, S0
3CA2A8:  VMRS            APSR_nzcv, FPSCR
3CA2AC:  IT LT
3CA2AE:  VMOVLT.F32      S24, S0
3CA2B2:  VCMPE.F32       S24, S26
3CA2B6:  VMRS            APSR_nzcv, FPSCR
3CA2BA:  BLE             loc_3CA2C2
3CA2BC:  VADD.F32        S16, S16, S18
3CA2C0:  B               loc_3CA2C4
3CA2C2:  BLT             loc_3CA258
3CA2C4:  VABS.F32        S0, S24
3CA2C8:  VCMPE.F32       S0, S26
3CA2CC:  VMRS            APSR_nzcv, FPSCR
3CA2D0:  BLE             loc_3CA33C
3CA2D2:  VMOV            R1, S16; x
3CA2D6:  ADD             R2, SP, #0xD8+var_6C; CVector *
3CA2D8:  ADD             R3, SP, #0xD8+var_78; CVector *
3CA2DA:  MOV             R0, R11; this
3CA2DC:  STR.W           R8, [SP,#0xD8+var_D8]; CVector *
3CA2E0:  BLX             j__ZN4CCam32Process_Cam_TwoPlayer_CalcSourceEfP7CVectorS1_S1_; CCam::Process_Cam_TwoPlayer_CalcSource(float,CVector *,CVector *,CVector *)
3CA2E4:  ADD             R3, SP, #0xD8+var_6C
3CA2E6:  LDM             R3, {R1-R3}
3CA2E8:  BLX             j__ZN4CCam30Process_Cam_TwoPlayer_TestLOSsE7CVector; CCam::Process_Cam_TwoPlayer_TestLOSs(CVector)
3CA2EC:  CMP             R0, #0
3CA2EE:  BNE             loc_3CA33C
3CA2F0:  VCMPE.F32       S24, #0.0
3CA2F4:  VMRS            APSR_nzcv, FPSCR
3CA2F8:  BLE             loc_3CA308
3CA2FA:  VLDR            S0, [R11,#0x98]
3CA2FE:  VCMPE.F32       S0, #0.0
3CA302:  VMRS            APSR_nzcv, FPSCR
3CA306:  BGT             loc_3CA320
3CA308:  VCMPE.F32       S24, #0.0
3CA30C:  VMRS            APSR_nzcv, FPSCR
3CA310:  BGE             loc_3CA326
3CA312:  VLDR            S0, [R11,#0x98]
3CA316:  VCMPE.F32       S0, #0.0
3CA31A:  VMRS            APSR_nzcv, FPSCR
3CA31E:  BGE             loc_3CA326
3CA320:  MOVS            R0, #0
3CA322:  STR.W           R0, [R11,#0x98]
3CA326:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA332)
3CA32A:  LDR.W           R1, =(dword_952D74 - 0x3CA338)
3CA32E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA330:  VLDR            S24, =0.0
3CA334:  ADD             R1, PC; dword_952D74
3CA336:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA338:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA33A:  STR             R0, [R1]
3CA33C:  VLDR            S0, [R11,#0x94]
3CA340:  VADD.F32        S2, S22, S24
3CA344:  VADD.F32        S4, S0, S20
3CA348:  VCMPE.F32       S2, S4
3CA34C:  VMRS            APSR_nzcv, FPSCR
3CA350:  BLE             loc_3CA388
3CA352:  VLDR            S4, =-6.2832
3CA356:  B               loc_3CA39E
3CA358:  DCFS 0.15
3CA35C:  DCFS 3.1416
3CA360:  DCFS -6.2832
3CA364:  DCFS -3.1416
3CA368:  DCFS 6.2832
3CA36C:  DCFS 0.2
3CA370:  DCFS 0.1
3CA374:  DCFS -0.1
3CA378:  DCFS 0.0
3CA37C:  DCFS 0.01
3CA380:  DCFS -1.5708
3CA384:  DCFS -0.15
3CA388:  VLDR            S4, =-3.1416
3CA38C:  VADD.F32        S4, S0, S4
3CA390:  VCMPE.F32       S2, S4
3CA394:  VMRS            APSR_nzcv, FPSCR
3CA398:  BGE             loc_3CA3A2
3CA39A:  VLDR            S4, =6.2832
3CA39E:  VADD.F32        S2, S2, S4
3CA3A2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CA3B0)
3CA3A4:  VSUB.F32        S0, S2, S0
3CA3A8:  VMOV.F32        S20, #1.0
3CA3AC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CA3AE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CA3B0:  VLDR            S2, [R0]
3CA3B4:  LDR             R0, =(PEDCAM_SET_ptr - 0x3CA3BE)
3CA3B6:  VMOV            R1, S2; y
3CA3BA:  ADD             R0, PC; PEDCAM_SET_ptr
3CA3BC:  VMAX.F32        D2, D1, D10
3CA3C0:  LDR             R4, [R0]; PEDCAM_SET
3CA3C2:  LDR.W           R0, [R4,#(dword_6AA070 - 0x6A9FD8)]; x
3CA3C6:  VDIV.F32        S22, S0, S4
3CA3CA:  BLX             powf
3CA3CE:  VLDR            S24, [R4,#0x9C]
3CA3D2:  MOV             R6, R0
3CA3D4:  CMP             R5, #0
3CA3D6:  BNE.W           loc_3CA528
3CA3DA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA3E2)
3CA3DC:  LDR             R1, =(dword_952D74 - 0x3CA3E4)
3CA3DE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA3E0:  ADD             R1, PC; dword_952D74
3CA3E2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA3E4:  LDR             R1, [R1]
3CA3E6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA3E8:  ADD.W           R1, R1, #0x3E8; int
3CA3EC:  CMP             R0, R1
3CA3EE:  BCC.W           loc_3CA528
3CA3F2:  MOVS            R0, #0; this
3CA3F4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CA3F8:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3CA400)
3CA3FA:  MOVS            R2, #0; bool *
3CA3FC:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3CA3FE:  LDR             R4, [R1]; CWorld::Players ...
3CA400:  LDR             R1, [R4]; CPed *
3CA402:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3CA406:  MOV             R5, R0
3CA408:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x3CA40E)
3CA40A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
3CA40C:  LDR.W           R9, [R0]; CHID::currentInstanceIndex ...
3CA410:  MOVS            R0, #1
3CA412:  STR.W           R0, [R9]; CHID::currentInstanceIndex
3CA416:  MOVS            R0, #(stderr+1); this
3CA418:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CA41C:  LDR.W           R1, [R4,#(dword_96B830 - 0x96B69C)]; CPed *
3CA420:  MOVS            R2, #0; bool *
3CA422:  VMOV            S26, R5
3CA426:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3CA42A:  EOR.W           R0, R0, #0x80000000
3CA42E:  VMOV            S0, R0
3CA432:  MOVS            R0, #0
3CA434:  STR.W           R0, [R9]; CHID::currentInstanceIndex
3CA438:  VSUB.F32        S2, S0, S26
3CA43C:  VLDR            S0, =128.0
3CA440:  VCMPE.F32       S2, S0
3CA444:  VMRS            APSR_nzcv, FPSCR
3CA448:  BGT             loc_3CA460
3CA44A:  VLDR            S4, =-128.0
3CA44E:  VMOV.F32        S0, S2
3CA452:  VCMPE.F32       S2, S4
3CA456:  VMRS            APSR_nzcv, FPSCR
3CA45A:  IT LT
3CA45C:  VMOVLT.F32      S0, S4
3CA460:  LDR             R0, =(AIMWEAPON_STICK_SENS_ptr - 0x3CA472)
3CA462:  VABS.F32        S6, S0
3CA466:  VLDR            S2, =80.0
3CA46A:  VLDR            S4, [R11,#0x8C]
3CA46E:  ADD             R0, PC; AIMWEAPON_STICK_SENS_ptr
3CA470:  VDIV.F32        S2, S4, S2
3CA474:  LDR             R0, [R0]; AIMWEAPON_STICK_SENS
3CA476:  VLDR            S4, [R0]
3CA47A:  VMUL.F32        S4, S4, S4
3CA47E:  VMUL.F32        S4, S6, S4
3CA482:  VLDR            S6, =0.071429
3CA486:  VMUL.F32        S2, S2, S6
3CA48A:  VMUL.F32        S0, S0, S4
3CA48E:  VMUL.F32        S26, S0, S2
3CA492:  VLDR            S0, =0.01
3CA496:  VCMPE.F32       S26, S0
3CA49A:  VMRS            APSR_nzcv, FPSCR
3CA49E:  BLE             loc_3CA4A6
3CA4A0:  VADD.F32        S16, S16, S18
3CA4A4:  B               loc_3CA4B0
3CA4A6:  ITT LT
3CA4A8:  VLDRLT          S2, =-0.15
3CA4AC:  VADDLT.F32      S16, S16, S2
3CA4B0:  VABS.F32        S2, S26
3CA4B4:  VCMPE.F32       S2, S0
3CA4B8:  VMRS            APSR_nzcv, FPSCR
3CA4BC:  BLE             loc_3CA524
3CA4BE:  VMOV            R1, S16; x
3CA4C2:  ADD             R2, SP, #0xD8+var_6C; CVector *
3CA4C4:  ADD             R3, SP, #0xD8+var_78; CVector *
3CA4C6:  MOV             R0, R11; this
3CA4C8:  STR.W           R8, [SP,#0xD8+var_D8]; CVector *
3CA4CC:  BLX             j__ZN4CCam32Process_Cam_TwoPlayer_CalcSourceEfP7CVectorS1_S1_; CCam::Process_Cam_TwoPlayer_CalcSource(float,CVector *,CVector *,CVector *)
3CA4D0:  ADD             R3, SP, #0xD8+var_6C
3CA4D2:  LDM             R3, {R1-R3}
3CA4D4:  BLX             j__ZN4CCam30Process_Cam_TwoPlayer_TestLOSsE7CVector; CCam::Process_Cam_TwoPlayer_TestLOSs(CVector)
3CA4D8:  CMP             R0, #0
3CA4DA:  BNE             loc_3CA524
3CA4DC:  VCMPE.F32       S26, #0.0
3CA4E0:  VMRS            APSR_nzcv, FPSCR
3CA4E4:  BLE             loc_3CA4F4
3CA4E6:  VLDR            S0, [R11,#0x98]
3CA4EA:  VCMPE.F32       S0, #0.0
3CA4EE:  VMRS            APSR_nzcv, FPSCR
3CA4F2:  BGT             loc_3CA50C
3CA4F4:  VCMPE.F32       S26, #0.0
3CA4F8:  VMRS            APSR_nzcv, FPSCR
3CA4FC:  BGE             loc_3CA512
3CA4FE:  VLDR            S0, [R11,#0x98]
3CA502:  VCMPE.F32       S0, #0.0
3CA506:  VMRS            APSR_nzcv, FPSCR
3CA50A:  BGE             loc_3CA512
3CA50C:  MOVS            R0, #0
3CA50E:  STR.W           R0, [R11,#0x98]
3CA512:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA51A)
3CA514:  LDR             R1, =(dword_952D74 - 0x3CA520)
3CA516:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA518:  VLDR            S26, =0.0
3CA51C:  ADD             R1, PC; dword_952D74
3CA51E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA520:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA522:  STR             R0, [R1]
3CA524:  VADD.F32        S22, S22, S26
3CA528:  VCMPE.F32       S22, S24
3CA52C:  VMOV            S0, R6
3CA530:  VMRS            APSR_nzcv, FPSCR
3CA534:  BLE             loc_3CA53C
3CA536:  VMOV.F32        S22, S24
3CA53A:  B               loc_3CA54E
3CA53C:  VNEG.F32        S2, S24
3CA540:  VCMPE.F32       S22, S2
3CA544:  VMRS            APSR_nzcv, FPSCR
3CA548:  IT LT
3CA54A:  VMOVLT.F32      S22, S2
3CA54E:  VSUB.F32        S2, S20, S0
3CA552:  VLDR            S6, [R11,#0x98]
3CA556:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CA568)
3CA558:  ADD.W           R5, R11, #0x174
3CA55C:  VMUL.F32        S0, S0, S6
3CA560:  VLDR            S4, [R11,#0x94]
3CA564:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CA566:  ADD.W           R9, R11, #0x168
3CA56A:  MOV             R2, R5; CVector *
3CA56C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CA56E:  MOV             R3, R9; CVector *
3CA570:  VMUL.F32        S2, S2, S22
3CA574:  VADD.F32        S0, S2, S0
3CA578:  VSTR            S0, [R11,#0x98]
3CA57C:  VLDR            S2, [R0]
3CA580:  MOV             R0, R11; this
3CA582:  VMUL.F32        S0, S0, S2
3CA586:  VADD.F32        S0, S4, S0
3CA58A:  VMOV            R1, S0; x
3CA58E:  VSTR            S0, [R11,#0x94]
3CA592:  STR.W           R8, [SP,#0xD8+var_D8]; CVector *
3CA596:  BLX             j__ZN4CCam32Process_Cam_TwoPlayer_CalcSourceEfP7CVectorS1_S1_; CCam::Process_Cam_TwoPlayer_CalcSource(float,CVector *,CVector *,CVector *)
3CA59A:  CMP.W           R10, #1
3CA59E:  BNE             loc_3CA654
3CA5A0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA5A8)
3CA5A2:  LDR             R1, =(dword_952D70 - 0x3CA5AA)
3CA5A4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA5A6:  ADD             R1, PC; dword_952D70
3CA5A8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA5AA:  LDR             R1, [R1]
3CA5AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA5AE:  SUBS            R0, R0, R1
3CA5B0:  CMP.W           R0, #0x1F4
3CA5B4:  BLS             loc_3CA654
3CA5B6:  LDR             R0, =(gCurCamColVars_ptr - 0x3CA5C2)
3CA5B8:  MOVS            R1, #5
3CA5BA:  ADD             R2, SP, #0xD8+var_A8
3CA5BC:  ADD             R3, SP, #0xD8+var_B8
3CA5BE:  ADD             R0, PC; gCurCamColVars_ptr
3CA5C0:  LDR             R0, [R0]; gCurCamColVars
3CA5C2:  STRB            R1, [R0]
3CA5C4:  MOVS            R0, #0
3CA5C6:  MOVS            R1, #1
3CA5C8:  STR             R0, [SP,#0xD8+var_B8]
3CA5CA:  STRD.W          R1, R0, [SP,#0xD8+var_D8]
3CA5CE:  STRD.W          R0, R0, [SP,#0xD8+var_D0]; unsigned int
3CA5D2:  STRD.W          R0, R1, [SP,#0xD8+var_C8]
3CA5D6:  STRD.W          R1, R0, [SP,#0xD8+var_C0]
3CA5DA:  MOV             R0, R8
3CA5DC:  MOV             R1, R5
3CA5DE:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CA5E2:  CMP             R0, #1
3CA5E4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA5FA)
3CA5E6:  ITTTT EQ
3CA5E8:  VLDREQ          D16, [SP,#0xD8+var_A8]
3CA5EC:  LDREQ           R0, [SP,#0xD8+var_A0]
3CA5EE:  STREQ           R0, [R5,#8]
3CA5F0:  VSTREQ          D16, [R5]
3CA5F4:  LDR             R0, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x3CA5FC)
3CA5F6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA5F8:  ADD             R0, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
3CA5FA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3CA5FC:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpTimer ...
3CA5FE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3CA600:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpTimer
3CA602:  CMP             R1, R0
3CA604:  BLS             loc_3CA654
3CA606:  LDR             R0, =(_ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x3CA60C)
3CA608:  ADD             R0, PC; _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr
3CA60A:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpCounter ...
3CA60C:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpCounter
3CA60E:  CMP             R0, #5
3CA610:  BHI             loc_3CA654
3CA612:  LDR             R0, =(TheText_ptr - 0x3CA61A)
3CA614:  ADR             R5, aWrn22p_0; "WRN2_2P"
3CA616:  ADD             R0, PC; TheText_ptr
3CA618:  MOV             R1, R5; CKeyGen *
3CA61A:  LDR             R0, [R0]; TheText ; this
3CA61C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3CA620:  MOV             R1, R0; char *
3CA622:  MOVS            R0, #0
3CA624:  STRD.W          R0, R0, [SP,#0xD8+var_D8]; bool
3CA628:  MOV             R0, R5; this
3CA62A:  MOVS            R2, #0; unsigned __int16 *
3CA62C:  MOVS            R3, #0; bool
3CA62E:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
3CA632:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CA63E)
3CA634:  MOVW            R3, #0xEA60
3CA638:  LDR             R1, =(_ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x3CA642)
3CA63A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CA63C:  LDR             R2, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x3CA646)
3CA63E:  ADD             R1, PC; _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr
3CA640:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CA642:  ADD             R2, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
3CA644:  LDR             R1, [R1]; CGameLogic::nPrintFocusHelpCounter ...
3CA646:  LDR             R2, [R2]; CGameLogic::nPrintFocusHelpTimer ...
3CA648:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CA64A:  LDR             R6, [R1]; CGameLogic::nPrintFocusHelpCounter
3CA64C:  ADD             R0, R3
3CA64E:  STR             R0, [R2]; CGameLogic::nPrintFocusHelpTimer
3CA650:  ADDS            R0, R6, #1
3CA652:  STR             R0, [R1]; CGameLogic::nPrintFocusHelpCounter
3CA654:  ADD.W           R5, R11, #0x18C
3CA658:  MOVS            R4, #0
3CA65A:  MOV.W           R0, #0x3F800000
3CA65E:  STRD.W          R4, R4, [R11,#0x18C]
3CA662:  STR.W           R0, [R11,#0x194]
3CA666:  MOV             R0, R5; this
3CA668:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CA66C:  ADD             R6, SP, #0xD8+var_A8
3CA66E:  MOV             R1, R5; CVector *
3CA670:  MOV             R2, R9
3CA672:  MOV             R0, R6; CVector *
3CA674:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CA678:  MOV             R0, R6; this
3CA67A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CA67E:  ADD             R0, SP, #0xD8+var_B8; CVector *
3CA680:  MOV             R1, R9; CVector *
3CA682:  MOV             R2, R6
3CA684:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CA688:  VLDR            D16, [SP,#0xD8+var_B8]
3CA68C:  LDR             R0, [SP,#0xD8+var_B0]
3CA68E:  STR.W           R0, [R11,#0x194]
3CA692:  MOV             R0, R5; this
3CA694:  VSTR            D16, [R11,#0x18C]
3CA698:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CA69C:  MOVS            R0, #0
3CA69E:  STRB.W          R4, [R11,#0xA]
3CA6A2:  MOVT            R0, #0x428C
3CA6A6:  STR.W           R0, [R11,#0x8C]
3CA6AA:  ADD             SP, SP, #0x78 ; 'x'
3CA6AC:  VPOP            {D8-D15}
3CA6B0:  ADD             SP, SP, #4
3CA6B2:  POP.W           {R8-R11}
3CA6B6:  POP             {R4-R7,PC}
