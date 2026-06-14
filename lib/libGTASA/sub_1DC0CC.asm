; =========================================================
; Game Engine Function: sub_1DC0CC
; Address            : 0x1DC0CC - 0x1DC90C
; =========================================================

1DC0CC:  PUSH            {R4-R7,LR}
1DC0CE:  ADD             R7, SP, #0xC
1DC0D0:  PUSH.W          {R8-R11}
1DC0D4:  SUB.W           SP, SP, #0x680
1DC0D8:  SUB             SP, SP, #4
1DC0DA:  MOV             R10, R0
1DC0DC:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC0EA)
1DC0E0:  MOV             R5, R1
1DC0E2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1DC0F0)
1DC0E6:  ADD             R0, PC; RwEngineInstance_ptr
1DC0E8:  LDR.W           R2, =(dword_6BCF84 - 0x1DC0F8)
1DC0EC:  ADD             R1, PC; __stack_chk_guard_ptr
1DC0EE:  MOVW            R9, #0x1E
1DC0F2:  LDR             R0, [R0]; RwEngineInstance
1DC0F4:  ADD             R2, PC; dword_6BCF84
1DC0F6:  LDR             R1, [R1]; __stack_chk_guard
1DC0F8:  MOVT            R9, #0x8000
1DC0FC:  LDR             R2, [R2]
1DC0FE:  LDR             R0, [R0]
1DC100:  LDR             R1, [R1]
1DC102:  STR.W           R1, [R7,#var_20]
1DC106:  ADDS            R1, R0, R2
1DC108:  LDR             R1, [R1,#0x1C]
1DC10A:  CMP             R1, #0
1DC10C:  BEQ             loc_1DC1F0
1DC10E:  LDR.W           R3, [R0,#0xFC]
1DC112:  ADD.W           R0, SP, #0x6A0+var_120
1DC116:  MOV             R1, R10
1DC118:  MOV.W           R2, #0x100
1DC11C:  BLX             R3
1DC11E:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC126)
1DC122:  ADD             R0, PC; RwEngineInstance_ptr
1DC124:  LDR             R0, [R0]; RwEngineInstance
1DC126:  LDR             R0, [R0]
1DC128:  LDR.W           R1, [R0,#0x118]
1DC12C:  MOV             R0, R10
1DC12E:  BLX             R1
1DC130:  CMP.W           R0, #0x100
1DC134:  BCC             loc_1DC160
1DC136:  MOVS            R4, #0
1DC138:  MOV             R1, R10
1DC13A:  STR.W           R4, [SP,#0x6A0+var_278]
1DC13E:  MOV.W           R2, #0x100
1DC142:  LDRB.W          R0, [R10,#0xFF]
1DC146:  MOVS            R3, #0xFF
1DC148:  STR             R0, [SP,#0x6A0+var_6A0]
1DC14A:  MOV             R0, R9; int
1DC14C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC150:  STR.W           R0, [SP,#0x6A0+var_274]
1DC154:  ADD.W           R0, SP, #0x6A0+var_278
1DC158:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC15C:  STRB.W          R4, [SP,#0x6A0+var_21]
1DC160:  MOVS            R0, #0
1DC162:  CMP             R5, #0
1DC164:  STRB.W          R0, [SP,#0x6A0+var_220]
1DC168:  ITT NE
1DC16A:  LDRBNE          R0, [R5]
1DC16C:  CMPNE           R0, #0
1DC16E:  BEQ             loc_1DC1C4
1DC170:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC17E)
1DC174:  MOV             R1, R5
1DC176:  MOV.W           R2, #0x100
1DC17A:  ADD             R0, PC; RwEngineInstance_ptr
1DC17C:  LDR             R4, [R0]; RwEngineInstance
1DC17E:  LDR             R0, [R4]
1DC180:  LDR.W           R3, [R0,#0xFC]
1DC184:  ADD.W           R0, SP, #0x6A0+var_220
1DC188:  BLX             R3
1DC18A:  LDR             R0, [R4]
1DC18C:  LDR.W           R1, [R0,#0x118]
1DC190:  MOV             R0, R5
1DC192:  BLX             R1
1DC194:  CMP.W           R0, #0x100
1DC198:  BCC             loc_1DC1C4
1DC19A:  MOVS            R4, #0
1DC19C:  MOV             R1, R5
1DC19E:  STR.W           R4, [SP,#0x6A0+var_278]
1DC1A2:  MOV.W           R2, #0x100
1DC1A6:  LDRB.W          R0, [R5,#0xFF]
1DC1AA:  MOVS            R3, #0xFF
1DC1AC:  STR             R0, [SP,#0x6A0+var_6A0]
1DC1AE:  MOV             R0, R9; int
1DC1B0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC1B4:  STR.W           R0, [SP,#0x6A0+var_274]
1DC1B8:  ADD.W           R0, SP, #0x6A0+var_278
1DC1BC:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC1C0:  STRB.W          R4, [SP,#0x6A0+var_121]
1DC1C4:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC1D0)
1DC1C8:  LDR.W           R1, =(dword_6BCF84 - 0x1DC1D2)
1DC1CC:  ADD             R0, PC; RwEngineInstance_ptr
1DC1CE:  ADD             R1, PC; dword_6BCF84
1DC1D0:  LDR             R0, [R0]; RwEngineInstance
1DC1D2:  LDR             R1, [R1]
1DC1D4:  LDR             R0, [R0]
1DC1D6:  ADD             R0, R1
1DC1D8:  LDR             R1, [R0,#0x1C]
1DC1DA:  CMP             R1, #0
1DC1DC:  BEQ.W           loc_1DC45C
1DC1E0:  LDR             R1, [R0,#0x20]
1DC1E2:  MOVW            R8, #0x9004
1DC1E6:  CMP             R1, #0
1DC1E8:  IT EQ
1DC1EA:  MOVWEQ          R8, #0x8004
1DC1EE:  B               loc_1DC460
1DC1F0:  LDR.W           R3, [R0,#0xFC]
1DC1F4:  ADD.W           R0, SP, #0x6A0+var_120
1DC1F8:  MOV             R1, R10
1DC1FA:  MOV.W           R2, #0x100
1DC1FE:  BLX             R3
1DC200:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC208)
1DC204:  ADD             R0, PC; RwEngineInstance_ptr
1DC206:  LDR             R0, [R0]; RwEngineInstance
1DC208:  LDR             R0, [R0]
1DC20A:  LDR.W           R1, [R0,#0x118]
1DC20E:  MOV             R0, R10
1DC210:  BLX             R1
1DC212:  CMP.W           R0, #0x100
1DC216:  BCC             loc_1DC242
1DC218:  MOVS            R4, #0
1DC21A:  MOV             R1, R10
1DC21C:  STR.W           R4, [SP,#0x6A0+var_278]
1DC220:  MOV.W           R2, #0x100
1DC224:  LDRB.W          R0, [R10,#0xFF]
1DC228:  MOVS            R3, #0xFF
1DC22A:  STR             R0, [SP,#0x6A0+var_6A0]
1DC22C:  MOV             R0, R9; int
1DC22E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC232:  STR.W           R0, [SP,#0x6A0+var_274]
1DC236:  ADD.W           R0, SP, #0x6A0+var_278
1DC23A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC23E:  STRB.W          R4, [SP,#0x6A0+var_21]
1DC242:  MOVS            R0, #0
1DC244:  CMP             R5, #0
1DC246:  STRB.W          R0, [SP,#0x6A0+var_220]
1DC24A:  ITT NE
1DC24C:  LDRBNE          R0, [R5]
1DC24E:  CMPNE           R0, #0
1DC250:  BEQ             loc_1DC2A6
1DC252:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC260)
1DC256:  MOV             R1, R5
1DC258:  MOV.W           R2, #0x100
1DC25C:  ADD             R0, PC; RwEngineInstance_ptr
1DC25E:  LDR             R4, [R0]; RwEngineInstance
1DC260:  LDR             R0, [R4]
1DC262:  LDR.W           R3, [R0,#0xFC]
1DC266:  ADD.W           R0, SP, #0x6A0+var_220
1DC26A:  BLX             R3
1DC26C:  LDR             R0, [R4]
1DC26E:  LDR.W           R1, [R0,#0x118]
1DC272:  MOV             R0, R5
1DC274:  BLX             R1
1DC276:  CMP.W           R0, #0x100
1DC27A:  BCC             loc_1DC2A6
1DC27C:  MOVS            R4, #0
1DC27E:  MOV             R1, R5
1DC280:  STR.W           R4, [SP,#0x6A0+var_278]
1DC284:  MOV.W           R2, #0x100
1DC288:  LDRB.W          R0, [R5,#0xFF]
1DC28C:  MOVS            R3, #0xFF
1DC28E:  STR             R0, [SP,#0x6A0+var_6A0]
1DC290:  MOV             R0, R9; int
1DC292:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC296:  STR.W           R0, [SP,#0x6A0+var_274]
1DC29A:  ADD.W           R0, SP, #0x6A0+var_278
1DC29E:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC2A2:  STRB.W          R4, [SP,#0x6A0+var_121]
1DC2A6:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC2B2)
1DC2AA:  LDR.W           R1, =(dword_6BCF84 - 0x1DC2B4)
1DC2AE:  ADD             R0, PC; RwEngineInstance_ptr
1DC2B0:  ADD             R1, PC; dword_6BCF84
1DC2B2:  LDR             R0, [R0]; RwEngineInstance
1DC2B4:  LDR             R1, [R1]
1DC2B6:  LDR             R0, [R0]
1DC2B8:  ADD             R0, R1
1DC2BA:  LDR             R6, [R0,#0x30]
1DC2BC:  CBZ             R6, loc_1DC2CC
1DC2BE:  ADD.W           R0, SP, #0x6A0+var_120
1DC2C2:  ADD.W           R1, SP, #0x6A0+var_220
1DC2C6:  MOVS            R2, #0
1DC2C8:  MOVS            R3, #4
1DC2CA:  BLX             R6
1DC2CC:  ADDW            R1, SP, #0x6A0+var_22C
1DC2D0:  MOVS            R4, #0
1DC2D2:  ADD.W           R0, SP, #0x6A0+var_230
1DC2D6:  STR.W           R4, [SP,#0x6A0+var_224]
1DC2DA:  STR.W           R4, [SP,#0x6A0+var_228]
1DC2DE:  ADD.W           R2, SP, #0x6A0+var_228
1DC2E2:  STRD.W          R2, R1, [SP,#0x6A0+var_6A0]
1DC2E6:  ADD.W           R1, SP, #0x6A0+var_220
1DC2EA:  STR             R0, [SP,#0x6A0+var_698]
1DC2EC:  ADD.W           R0, SP, #0x6A0+var_120
1DC2F0:  ADDW            R3, SP, #0x6A0+var_224
1DC2F4:  MOVS            R2, #4
1DC2F6:  BL              sub_1DCBFC
1DC2FA:  MOV             R6, R0
1DC2FC:  CMP             R6, #0
1DC2FE:  STR.W           R6, [SP,#0x6A0+var_238]
1DC302:  BEQ.W           loc_1DC8E8
1DC306:  LDR.W           R3, [SP,#0x6A0+var_230]; int
1DC30A:  LDR.W           R2, [SP,#0x6A0+var_22C]; int
1DC30E:  LDR.W           R1, [SP,#0x6A0+var_228]; int
1DC312:  LDR.W           R0, [SP,#0x6A0+var_224]; int
1DC316:  STR             R5, [SP,#0x6A0+var_684]
1DC318:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1DC31C:  MOV             R5, R0
1DC31E:  CMP             R5, #0
1DC320:  BEQ.W           loc_1DC7B2
1DC324:  LDRB.W          R0, [R5,#0x22]
1DC328:  MOV.W           R1, #0x6000
1DC32C:  TST.W           R1, R0,LSL#8
1DC330:  BEQ             loc_1DC356
1DC332:  LSLS            R0, R0, #8
1DC334:  ADD.W           R2, SP, #0x6A0+var_238
1DC338:  LSLS            R0, R0, #0x11
1DC33A:  MOV.W           R1, #0
1DC33E:  ITE PL
1DC340:  MOVPL           R0, #8
1DC342:  MOVMI           R0, #4
1DC344:  MOVS            R3, #1
1DC346:  STR             R0, [SP,#0x6A0+var_6A0]
1DC348:  ADD             R0, SP, #0x6A0+var_678
1DC34A:  BL              sub_1DCE3C
1DC34E:  LDR.W           R6, [SP,#0x6A0+var_238]
1DC352:  ADD             R0, SP, #0x6A0+var_678
1DC354:  STR             R0, [R6,#0x18]
1DC356:  MOV             R0, R6
1DC358:  BLX             j__Z19RwImageGammaCorrectP7RwImage; RwImageGammaCorrect(RwImage *)
1DC35C:  MOV             R0, R5
1DC35E:  MOV             R1, R6
1DC360:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1DC364:  CMP             R0, #0
1DC366:  BEQ.W           loc_1DC7AC
1DC36A:  MOV             R0, R6
1DC36C:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC370:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC37C)
1DC374:  LDR.W           R1, =(dword_6BCF84 - 0x1DC37E)
1DC378:  ADD             R0, PC; RwEngineInstance_ptr
1DC37A:  ADD             R1, PC; dword_6BCF84
1DC37C:  LDR             R0, [R0]; RwEngineInstance
1DC37E:  LDR             R1, [R1]
1DC380:  LDR             R0, [R0]
1DC382:  LDR.W           R2, [R0,#0x13C]
1DC386:  ADD             R0, R1
1DC388:  LDR             R0, [R0,#8]
1DC38A:  BLX             R2
1DC38C:  MOV             R4, R0
1DC38E:  CMP             R4, #0
1DC390:  BEQ.W           loc_1DC7FC
1DC394:  LDR.W           R0, =(textureTKList_ptr - 0x1DC3A6)
1DC398:  MOV.W           R11, #0
1DC39C:  MOVS            R1, #1
1DC39E:  MOV             R8, R4
1DC3A0:  MOV             R6, R4
1DC3A2:  ADD             R0, PC; textureTKList_ptr
1DC3A4:  STRD.W          R5, R11, [R4]
1DC3A8:  MOVW            R2, #0x1102
1DC3AC:  STRD.W          R11, R1, [R4,#0x50]
1DC3B0:  STRB.W          R11, [R8,#0x30]!
1DC3B4:  STRB.W          R11, [R6,#0x10]!
1DC3B8:  LDRB.W          R1, [R5,#0x20]
1DC3BC:  LDR             R0, [R0]; textureTKList
1DC3BE:  CMP             R1, #5
1DC3C0:  MOV             R1, R4
1DC3C2:  IT EQ
1DC3C4:  MOVWEQ          R2, #0x3302
1DC3C8:  STR             R2, [R4,#0x50]
1DC3CA:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DC3CE:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC3DA)
1DC3D2:  MOV             R1, R10
1DC3D4:  MOVS            R2, #0x20 ; ' '
1DC3D6:  ADD             R0, PC; RwEngineInstance_ptr
1DC3D8:  LDR             R5, [R0]; RwEngineInstance
1DC3DA:  LDR             R0, [R5]
1DC3DC:  LDR.W           R3, [R0,#0xFC]
1DC3E0:  MOV             R0, R6
1DC3E2:  BLX             R3
1DC3E4:  LDR             R0, [R5]
1DC3E6:  LDR.W           R1, [R0,#0x118]
1DC3EA:  MOV             R0, R10
1DC3EC:  BLX             R1
1DC3EE:  CMP             R0, #0x1F
1DC3F0:  BLS             loc_1DC418
1DC3F2:  STR.W           R11, [SP,#0x6A0+var_278]
1DC3F6:  MOV             R1, R10
1DC3F8:  LDRB.W          R0, [R10,#0x1F]
1DC3FC:  MOVS            R2, #0x20 ; ' '
1DC3FE:  STR             R0, [SP,#0x6A0+var_6A0]
1DC400:  MOV             R0, R9; int
1DC402:  MOVS            R3, #0x1F
1DC404:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC408:  STR.W           R0, [SP,#0x6A0+var_274]
1DC40C:  ADD.W           R0, SP, #0x6A0+var_278
1DC410:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC414:  STRB.W          R11, [R4,#0x2F]
1DC418:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC422)
1DC41C:  LDR             R5, [SP,#0x6A0+var_684]
1DC41E:  ADD             R0, PC; RwEngineInstance_ptr
1DC420:  CMP             R5, #0
1DC422:  LDR             R0, [R0]; RwEngineInstance
1DC424:  LDR             R0, [R0]
1DC426:  LDR.W           R3, [R0,#0xFC]
1DC42A:  BEQ.W           loc_1DC800
1DC42E:  MOV             R0, R8
1DC430:  MOV             R1, R5
1DC432:  MOVS            R2, #0x20 ; ' '
1DC434:  BLX             R3
1DC436:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC43E)
1DC43A:  ADD             R0, PC; RwEngineInstance_ptr
1DC43C:  LDR             R0, [R0]; RwEngineInstance
1DC43E:  LDR             R0, [R0]
1DC440:  LDR.W           R1, [R0,#0x118]
1DC444:  MOV             R0, R5
1DC446:  BLX             R1
1DC448:  CMP             R0, #0x20 ; ' '
1DC44A:  BCC.W           loc_1DC8E8
1DC44E:  MOV             R1, R5
1DC450:  MOVS            R5, #0
1DC452:  STR.W           R5, [SP,#0x6A0+var_278]
1DC456:  LDRB            R0, [R1,#0x1F]
1DC458:  STR             R0, [SP,#0x6A0+var_6A0]
1DC45A:  B               loc_1DC82C
1DC45C:  MOV.W           R8, #4
1DC460:  LDR             R6, [R0,#0x30]
1DC462:  CBZ             R6, loc_1DC472
1DC464:  ADD.W           R0, SP, #0x6A0+var_120
1DC468:  ADD.W           R1, SP, #0x6A0+var_220
1DC46C:  MOVS            R2, #0
1DC46E:  MOV             R3, R8
1DC470:  BLX             R6
1DC472:  ADDW            R1, SP, #0x6A0+var_22C
1DC476:  MOVS            R4, #0
1DC478:  ADD.W           R0, SP, #0x6A0+var_230
1DC47C:  STR.W           R4, [SP,#0x6A0+var_224]
1DC480:  STR.W           R4, [SP,#0x6A0+var_228]
1DC484:  ADD.W           R2, SP, #0x6A0+var_228
1DC488:  STRD.W          R2, R1, [SP,#0x6A0+var_6A0]
1DC48C:  ADD.W           R1, SP, #0x6A0+var_220
1DC490:  STR             R0, [SP,#0x6A0+var_698]
1DC492:  ADD.W           R0, SP, #0x6A0+var_120
1DC496:  ADDW            R3, SP, #0x6A0+var_224
1DC49A:  MOV             R2, R8
1DC49C:  BL              sub_1DCBFC
1DC4A0:  MOV             R6, R0
1DC4A2:  CMP             R6, #0
1DC4A4:  STR.W           R6, [SP,#0x6A0+var_278]
1DC4A8:  BEQ.W           loc_1DC8E8
1DC4AC:  LDR.W           R3, [SP,#0x6A0+var_230]; int
1DC4B0:  LDR.W           R2, [SP,#0x6A0+var_22C]; int
1DC4B4:  LDR.W           R1, [SP,#0x6A0+var_228]; int
1DC4B8:  LDR.W           R0, [SP,#0x6A0+var_224]; int
1DC4BC:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1DC4C0:  MOV             R9, R0
1DC4C2:  CMP.W           R9, #0
1DC4C6:  BEQ.W           loc_1DC7B2
1DC4CA:  LDR.W           R0, [SP,#0x6A0+var_230]
1DC4CE:  STR.W           R10, [SP,#0x6A0+var_67C]
1DC4D2:  TST.W           R0, #0x8000
1DC4D6:  BNE             loc_1DC4E0
1DC4D8:  MOV             R0, R6
1DC4DA:  BLX             j__Z19RwImageGammaCorrectP7RwImage; RwImageGammaCorrect(RwImage *)
1DC4DE:  B               loc_1DC6AC
1DC4E0:  LSLS            R0, R0, #0x13
1DC4E2:  BMI.W           loc_1DC6AC
1DC4E6:  MOV             R0, R9
1DC4E8:  BLX             j__Z20RwRasterGetNumLevelsP8RwRaster; RwRasterGetNumLevels(RwRaster *)
1DC4EC:  MOV             R1, R0
1DC4EE:  CMP             R0, #1
1DC4F0:  STR             R1, [SP,#0x6A0+var_680]
1DC4F2:  BLE.W           loc_1DC66A
1DC4F6:  LDR.W           R1, =(RwEngineInstance_ptr - 0x1DC504)
1DC4FA:  MOVS            R6, #1
1DC4FC:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1DC506)
1DC500:  ADD             R1, PC; RwEngineInstance_ptr
1DC502:  ADD             R0, PC; RwEngineInstance_ptr
1DC504:  LDR             R1, [R1]; RwEngineInstance
1DC506:  STR             R1, [SP,#0x6A0+var_690]
1DC508:  LDR.W           R1, =(RwEngineInstance_ptr - 0x1DC512)
1DC50C:  LDR             R0, [R0]; RwEngineInstance
1DC50E:  ADD             R1, PC; RwEngineInstance_ptr
1DC510:  STR             R0, [SP,#0x6A0+var_688]
1DC512:  ADD.W           R0, SP, #0x6A0+var_120
1DC516:  LDR             R1, [R1]; RwEngineInstance
1DC518:  STR             R1, [SP,#0x6A0+var_68C]
1DC51A:  LDR             R4, [SP,#0x6A0+var_688]
1DC51C:  MOV.W           R2, #0x100
1DC520:  LDR             R1, [R4]
1DC522:  LDR.W           R3, [R1,#0xFC]
1DC526:  MOV             R1, R10
1DC528:  BLX             R3
1DC52A:  LDR             R0, [R4]
1DC52C:  LDR.W           R1, [R0,#0x118]
1DC530:  MOV             R0, R10
1DC532:  BLX             R1
1DC534:  CMP.W           R0, #0x100
1DC538:  BCC             loc_1DC568
1DC53A:  MOVS            R4, #0
1DC53C:  MOV             R1, R10
1DC53E:  STR.W           R4, [SP,#0x6A0+var_238]
1DC542:  MOV.W           R2, #0x100
1DC546:  LDRB.W          R0, [R10,#0xFF]
1DC54A:  MOVS            R3, #0xFF
1DC54C:  STR             R0, [SP,#0x6A0+var_6A0]
1DC54E:  MOVS            R0, #0x8000001E; int
1DC554:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC558:  STR.W           R0, [SP,#0x6A0+var_234]
1DC55C:  ADD.W           R0, SP, #0x6A0+var_238
1DC560:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC564:  STRB.W          R4, [SP,#0x6A0+var_21]
1DC568:  MOVS            R0, #0
1DC56A:  CMP             R5, #0
1DC56C:  STRB.W          R0, [SP,#0x6A0+var_220]
1DC570:  ITT NE
1DC572:  LDRBNE          R0, [R5]
1DC574:  CMPNE           R0, #0
1DC576:  BEQ             loc_1DC5CA
1DC578:  LDR             R4, [SP,#0x6A0+var_690]
1DC57A:  MOV             R1, R5
1DC57C:  MOV.W           R2, #0x100
1DC580:  LDR             R0, [R4]
1DC582:  LDR.W           R3, [R0,#0xFC]
1DC586:  ADD.W           R0, SP, #0x6A0+var_220
1DC58A:  BLX             R3
1DC58C:  LDR             R0, [R4]
1DC58E:  LDR.W           R1, [R0,#0x118]
1DC592:  MOV             R0, R5
1DC594:  BLX             R1
1DC596:  CMP.W           R0, #0x100
1DC59A:  BCC             loc_1DC5CA
1DC59C:  MOVS            R4, #0
1DC59E:  MOV             R1, R5
1DC5A0:  STR.W           R4, [SP,#0x6A0+var_238]
1DC5A4:  MOV.W           R2, #0x100
1DC5A8:  LDRB.W          R0, [R5,#0xFF]
1DC5AC:  MOVS            R3, #0xFF
1DC5AE:  STR             R0, [SP,#0x6A0+var_6A0]
1DC5B0:  MOVS            R0, #0x8000001E; int
1DC5B6:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC5BA:  STR.W           R0, [SP,#0x6A0+var_234]
1DC5BE:  ADD.W           R0, SP, #0x6A0+var_238
1DC5C2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC5C6:  STRB.W          R4, [SP,#0x6A0+var_121]
1DC5CA:  LDR.W           R0, =(dword_6BCF84 - 0x1DC5DA)
1DC5CE:  MOV             R4, R5
1DC5D0:  LDR             R1, [SP,#0x6A0+var_68C]
1DC5D2:  ADD.W           R11, SP, #0x6A0+var_120
1DC5D6:  ADD             R0, PC; dword_6BCF84
1DC5D8:  ADD.W           R10, SP, #0x6A0+var_220
1DC5DC:  LDR             R0, [R0]
1DC5DE:  LDR             R1, [R1]
1DC5E0:  ADD             R0, R1
1DC5E2:  LDR             R5, [R0,#0x30]
1DC5E4:  CBZ             R5, loc_1DC5F0
1DC5E6:  UXTB            R2, R6
1DC5E8:  MOV             R0, R11
1DC5EA:  MOV             R1, R10
1DC5EC:  MOV             R3, R8
1DC5EE:  BLX             R5
1DC5F0:  UXTB            R1, R6
1DC5F2:  MOV             R0, R9
1DC5F4:  MOVS            R2, #5
1DC5F6:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1DC5FA:  LDR.W           R0, [R9,#0xC]
1DC5FE:  STR.W           R0, [SP,#0x6A0+var_224]
1DC602:  LDR.W           R0, [R9,#0x10]
1DC606:  STR.W           R0, [SP,#0x6A0+var_228]
1DC60A:  LDR.W           R0, [R9,#0x14]
1DC60E:  STR.W           R0, [SP,#0x6A0+var_22C]
1DC612:  LDRB.W          R1, [R9,#0x22]
1DC616:  LDRB.W          R0, [R9,#0x20]
1DC61A:  ORR.W           R0, R0, R1,LSL#8
1DC61E:  STR.W           R0, [SP,#0x6A0+var_230]
1DC622:  MOV             R0, R9
1DC624:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1DC628:  ADD.W           R0, SP, #0x6A0+var_228
1DC62C:  STR             R0, [SP,#0x6A0+var_6A0]
1DC62E:  ADDW            R0, SP, #0x6A0+var_22C
1DC632:  STR             R0, [SP,#0x6A0+var_69C]
1DC634:  ADD.W           R0, SP, #0x6A0+var_230
1DC638:  ADDW            R3, SP, #0x6A0+var_224
1DC63C:  STR             R0, [SP,#0x6A0+var_698]
1DC63E:  MOV             R0, R11
1DC640:  MOV             R1, R10
1DC642:  MOV             R2, R8
1DC644:  BL              sub_1DCBFC
1DC648:  ADD.W           R5, SP, #0x6A0+var_278
1DC64C:  CMP             R0, #0
1DC64E:  STR.W           R0, [R5,R6,LSL#2]
1DC652:  BEQ.W           loc_1DC8AA
1DC656:  LDR             R0, [SP,#0x6A0+var_680]
1DC658:  ADDS            R6, #1
1DC65A:  LDR.W           R10, [SP,#0x6A0+var_67C]
1DC65E:  MOV             R5, R4
1DC660:  CMP             R6, R0
1DC662:  ADD.W           R0, SP, #0x6A0+var_120
1DC666:  BLT.W           loc_1DC51A
1DC66A:  LDRB.W          R0, [R9,#0x22]
1DC66E:  MOV.W           R1, #0x6000
1DC672:  STR             R5, [SP,#0x6A0+var_684]
1DC674:  TST.W           R1, R0,LSL#8
1DC678:  BEQ.W           loc_1DC848
1DC67C:  LSLS            R0, R0, #8
1DC67E:  LDR.W           R11, [SP,#0x6A0+var_680]
1DC682:  LSLS            R0, R0, #0x11
1DC684:  ADD.W           R2, SP, #0x6A0+var_278
1DC688:  ITE PL
1DC68A:  MOVPL           R0, #8
1DC68C:  MOVMI           R0, #4
1DC68E:  MOVS            R1, #0
1DC690:  MOV             R3, R11
1DC692:  STR             R0, [SP,#0x6A0+var_6A0]
1DC694:  ADD             R0, SP, #0x6A0+var_678
1DC696:  BL              sub_1DCE3C
1DC69A:  LDR.W           R0, [SP,#0x6A0+var_278]
1DC69E:  BLX             j__Z19RwImageGammaCorrectP7RwImage; RwImageGammaCorrect(RwImage *)
1DC6A2:  CMP.W           R11, #1
1DC6A6:  BGE.W           loc_1DC86E
1DC6AA:  B               loc_1DC6C0
1DC6AC:  MOV             R0, R9
1DC6AE:  MOV             R1, R6
1DC6B0:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1DC6B4:  CMP             R0, #0
1DC6B6:  BEQ             loc_1DC7A8
1DC6B8:  MOV             R0, R6
1DC6BA:  STR             R5, [SP,#0x6A0+var_684]
1DC6BC:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC6C0:  LDR             R0, =(RwEngineInstance_ptr - 0x1DC6C8)
1DC6C2:  LDR             R1, =(dword_6BCF84 - 0x1DC6CA)
1DC6C4:  ADD             R0, PC; RwEngineInstance_ptr
1DC6C6:  ADD             R1, PC; dword_6BCF84
1DC6C8:  LDR             R0, [R0]; RwEngineInstance
1DC6CA:  LDR             R1, [R1]
1DC6CC:  LDR             R0, [R0]
1DC6CE:  LDR.W           R2, [R0,#0x13C]
1DC6D2:  ADD             R0, R1
1DC6D4:  LDR             R0, [R0,#8]
1DC6D6:  BLX             R2
1DC6D8:  MOV             R4, R0
1DC6DA:  CMP             R4, #0
1DC6DC:  BEQ.W           loc_1DC8E0
1DC6E0:  LDR             R0, =(textureTKList_ptr - 0x1DC6F0)
1DC6E2:  MOV.W           R11, #0
1DC6E6:  MOVS            R1, #1
1DC6E8:  MOV             R8, R4
1DC6EA:  MOV             R6, R4
1DC6EC:  ADD             R0, PC; textureTKList_ptr
1DC6EE:  STRD.W          R9, R11, [R4]
1DC6F2:  MOVW            R2, #0x1102
1DC6F6:  STRD.W          R11, R1, [R4,#0x50]
1DC6FA:  STRB.W          R11, [R8,#0x30]!
1DC6FE:  STRB.W          R11, [R6,#0x10]!
1DC702:  LDRB.W          R1, [R9,#0x20]
1DC706:  LDR             R0, [R0]; textureTKList
1DC708:  CMP             R1, #5
1DC70A:  MOV             R1, R4
1DC70C:  IT EQ
1DC70E:  MOVWEQ          R2, #0x3302
1DC712:  STR             R2, [R4,#0x50]
1DC714:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DC718:  LDR             R0, =(RwEngineInstance_ptr - 0x1DC724)
1DC71A:  MOVS            R2, #0x20 ; ' '
1DC71C:  LDR.W           R9, [SP,#0x6A0+var_67C]
1DC720:  ADD             R0, PC; RwEngineInstance_ptr
1DC722:  LDR             R5, [R0]; RwEngineInstance
1DC724:  MOV             R1, R9
1DC726:  LDR             R0, [R5]
1DC728:  LDR.W           R3, [R0,#0xFC]
1DC72C:  MOV             R0, R6
1DC72E:  BLX             R3
1DC730:  LDR             R0, [R5]
1DC732:  LDR.W           R1, [R0,#0x118]
1DC736:  MOV             R0, R9
1DC738:  BLX             R1
1DC73A:  MOVS            R6, #0x1E
1DC73C:  CMP             R0, #0x1F
1DC73E:  MOVT            R6, #0x8000
1DC742:  BLS             loc_1DC76A
1DC744:  STR.W           R11, [SP,#0x6A0+var_238]
1DC748:  MOV             R1, R9
1DC74A:  LDRB.W          R0, [R9,#0x1F]
1DC74E:  MOVS            R2, #0x20 ; ' '
1DC750:  STR             R0, [SP,#0x6A0+var_6A0]
1DC752:  MOV             R0, R6; int
1DC754:  MOVS            R3, #0x1F
1DC756:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC75A:  STR.W           R0, [SP,#0x6A0+var_234]
1DC75E:  ADD.W           R0, SP, #0x6A0+var_238
1DC762:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC766:  STRB.W          R11, [R4,#0x2F]
1DC76A:  LDR             R0, =(RwEngineInstance_ptr - 0x1DC772)
1DC76C:  LDR             R5, [SP,#0x6A0+var_684]
1DC76E:  ADD             R0, PC; RwEngineInstance_ptr
1DC770:  CMP             R5, #0
1DC772:  LDR             R0, [R0]; RwEngineInstance
1DC774:  LDR             R0, [R0]
1DC776:  LDR.W           R3, [R0,#0xFC]
1DC77A:  BEQ             loc_1DC7BA
1DC77C:  MOV             R0, R8
1DC77E:  MOV             R1, R5
1DC780:  MOVS            R2, #0x20 ; ' '
1DC782:  BLX             R3
1DC784:  LDR             R0, =(RwEngineInstance_ptr - 0x1DC78A)
1DC786:  ADD             R0, PC; RwEngineInstance_ptr
1DC788:  LDR             R0, [R0]; RwEngineInstance
1DC78A:  LDR             R0, [R0]
1DC78C:  LDR.W           R1, [R0,#0x118]
1DC790:  MOV             R0, R5
1DC792:  BLX             R1
1DC794:  CMP             R0, #0x20 ; ' '
1DC796:  BCC.W           loc_1DC8E8
1DC79A:  MOV             R1, R5
1DC79C:  MOVS            R5, #0
1DC79E:  STR.W           R5, [SP,#0x6A0+var_238]
1DC7A2:  LDRB            R0, [R1,#0x1F]
1DC7A4:  STR             R0, [SP,#0x6A0+var_6A0]
1DC7A6:  B               loc_1DC7E8
1DC7A8:  MOV             R0, R9
1DC7AA:  B               loc_1DC7AE
1DC7AC:  MOV             R0, R5
1DC7AE:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1DC7B2:  MOV             R0, R6
1DC7B4:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC7B8:  B               loc_1DC8E6
1DC7BA:  LDR             R5, =(byte_61CD7E - 0x1DC7C4)
1DC7BC:  MOV             R0, R8
1DC7BE:  MOVS            R2, #0x20 ; ' '
1DC7C0:  ADD             R5, PC; byte_61CD7E
1DC7C2:  MOV             R1, R5
1DC7C4:  BLX             R3
1DC7C6:  LDR             R0, =(RwEngineInstance_ptr - 0x1DC7CC)
1DC7C8:  ADD             R0, PC; RwEngineInstance_ptr
1DC7CA:  LDR             R0, [R0]; RwEngineInstance
1DC7CC:  LDR             R0, [R0]
1DC7CE:  LDR.W           R1, [R0,#0x118]
1DC7D2:  MOV             R0, R5
1DC7D4:  BLX             R1
1DC7D6:  CMP             R0, #0x20 ; ' '
1DC7D8:  BCC.W           loc_1DC8E8
1DC7DC:  LDR             R1, =(byte_61CD7E - 0x1DC7E8)
1DC7DE:  MOVS            R5, #0
1DC7E0:  STR.W           R5, [SP,#0x6A0+var_238]
1DC7E4:  ADD             R1, PC; byte_61CD7E
1DC7E6:  STR             R5, [SP,#0x6A0+var_6A0]
1DC7E8:  MOV             R0, R6; int
1DC7EA:  MOVS            R2, #0x20 ; ' '
1DC7EC:  MOVS            R3, #0x1F
1DC7EE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC7F2:  STR.W           R0, [SP,#0x6A0+var_234]
1DC7F6:  ADD.W           R0, SP, #0x6A0+var_238
1DC7FA:  B               loc_1DC83E
1DC7FC:  MOV             R0, R5
1DC7FE:  B               loc_1DC8E2
1DC800:  LDR             R5, =(byte_61CD7E - 0x1DC80A)
1DC802:  MOV             R0, R8
1DC804:  MOVS            R2, #0x20 ; ' '
1DC806:  ADD             R5, PC; byte_61CD7E
1DC808:  MOV             R1, R5
1DC80A:  BLX             R3
1DC80C:  LDR             R0, =(RwEngineInstance_ptr - 0x1DC812)
1DC80E:  ADD             R0, PC; RwEngineInstance_ptr
1DC810:  LDR             R0, [R0]; RwEngineInstance
1DC812:  LDR             R0, [R0]
1DC814:  LDR.W           R1, [R0,#0x118]
1DC818:  MOV             R0, R5
1DC81A:  BLX             R1
1DC81C:  CMP             R0, #0x20 ; ' '
1DC81E:  BCC             loc_1DC8E8
1DC820:  LDR             R1, =(byte_61CD7E - 0x1DC82C)
1DC822:  MOVS            R5, #0
1DC824:  STR.W           R5, [SP,#0x6A0+var_278]
1DC828:  ADD             R1, PC; byte_61CD7E
1DC82A:  STR             R5, [SP,#0x6A0+var_6A0]
1DC82C:  MOV             R0, R9; int
1DC82E:  MOVS            R2, #0x20 ; ' '
1DC830:  MOVS            R3, #0x1F
1DC832:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DC836:  STR.W           R0, [SP,#0x6A0+var_274]
1DC83A:  ADD.W           R0, SP, #0x6A0+var_278
1DC83E:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DC842:  STRB.W          R5, [R4,#0x4F]
1DC846:  B               loc_1DC8E8
1DC848:  LDR.W           R11, [SP,#0x6A0+var_680]
1DC84C:  CMP.W           R11, #1
1DC850:  BLT.W           loc_1DC6C0
1DC854:  ADD.W           R4, SP, #0x6A0+var_278
1DC858:  MOV             R5, R11
1DC85A:  LDR.W           R0, [R4],#4
1DC85E:  BLX             j__Z19RwImageGammaCorrectP7RwImage; RwImageGammaCorrect(RwImage *)
1DC862:  SUBS            R5, #1
1DC864:  BNE             loc_1DC85A
1DC866:  CMP.W           R11, #1
1DC86A:  BLT.W           loc_1DC6C0
1DC86E:  ADD.W           R0, SP, #0x6A0+var_278
1DC872:  SUB.W           R8, R11, #1
1DC876:  ADDS            R4, R0, #4
1DC878:  MOVS            R5, #0
1DC87A:  UXTB            R1, R5
1DC87C:  MOV             R0, R9
1DC87E:  MOVS            R2, #5
1DC880:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1DC884:  LDR.W           R6, [R4,#-4]
1DC888:  CBZ             R0, loc_1DC89A
1DC88A:  MOV             R0, R9
1DC88C:  MOV             R1, R6
1DC88E:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1DC892:  CBZ             R0, loc_1DC8C2
1DC894:  MOV             R0, R9
1DC896:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1DC89A:  MOV             R0, R6
1DC89C:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC8A0:  ADDS            R5, #1
1DC8A2:  ADDS            R4, #4
1DC8A4:  CMP             R5, R11
1DC8A6:  BLT             loc_1DC87A
1DC8A8:  B               loc_1DC6C0
1DC8AA:  CMP             R6, #1
1DC8AC:  BLT             loc_1DC8E0
1DC8AE:  SUBS            R4, R6, #1
1DC8B0:  LDR.W           R0, [R5,R4,LSL#2]
1DC8B4:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC8B8:  ADDS            R0, R4, #1
1DC8BA:  SUBS            R4, #1
1DC8BC:  CMP             R0, #1
1DC8BE:  BGT             loc_1DC8B0
1DC8C0:  B               loc_1DC8E0
1DC8C2:  CMP             R5, R11
1DC8C4:  BGE             loc_1DC8E0
1DC8C6:  MOV             R0, R6
1DC8C8:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC8CC:  CMP             R8, R5
1DC8CE:  BEQ             loc_1DC8E0
1DC8D0:  SUB.W           R5, R8, R5
1DC8D4:  LDR.W           R0, [R4],#4
1DC8D8:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DC8DC:  SUBS            R5, #1
1DC8DE:  BNE             loc_1DC8D4
1DC8E0:  MOV             R0, R9
1DC8E2:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1DC8E6:  MOVS            R4, #0
1DC8E8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1DC8F2)
1DC8EA:  LDR.W           R1, [R7,#var_20]
1DC8EE:  ADD             R0, PC; __stack_chk_guard_ptr
1DC8F0:  LDR             R0, [R0]; __stack_chk_guard
1DC8F2:  LDR             R0, [R0]
1DC8F4:  SUBS            R0, R0, R1
1DC8F6:  ITTTT EQ
1DC8F8:  MOVEQ           R0, R4
1DC8FA:  ADDEQ.W         SP, SP, #0x680
1DC8FE:  ADDEQ           SP, SP, #4
1DC900:  POPEQ.W         {R8-R11}
1DC904:  IT EQ
1DC906:  POPEQ           {R4-R7,PC}
1DC908:  BLX             __stack_chk_fail
