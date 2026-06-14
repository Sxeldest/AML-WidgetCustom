; =========================================================
; Game Engine Function: _ZN11CWaterLevel28SplitWaterTriangleAlongYLineEiii7CRenPariiS0_iiS0_
; Address            : 0x59B014 - 0x59B63A
; =========================================================

59B014:  PUSH            {R4-R7,LR}
59B016:  ADD             R7, SP, #0xC
59B018:  PUSH.W          {R8-R11}
59B01C:  SUB             SP, SP, #4
59B01E:  VPUSH           {D8-D15}
59B022:  SUB             SP, SP, #0x48
59B024:  STR             R3, [SP,#0xA8+var_64]
59B026:  MOV             R5, R2
59B028:  MOV             R8, R1
59B02A:  MOV             R10, R0
59B02C:  LDR             R1, [R7,#arg_28]
59B02E:  LDR             R6, [R7,#arg_34]
59B030:  LDRD.W          R11, R2, [R7,#arg_20]
59B034:  CMP             R1, R5
59B036:  LDR             R0, [R7,#arg_C]
59B038:  BLE.W           loc_59B1BA
59B03C:  CMP             R8, R2
59B03E:  BNE.W           loc_59B33A
59B042:  MOV             R11, R0
59B044:  SUB.W           R9, R10, R5
59B048:  SUB.W           R0, R8, R11
59B04C:  SUBS            R4, R1, R5
59B04E:  MUL.W           R0, R0, R9
59B052:  MOV             R1, R4
59B054:  BLX.W           __aeabi_idiv
59B058:  VMOV            S0, R4
59B05C:  LDR             R1, [R7,#arg_14]
59B05E:  VMOV            S2, R9
59B062:  ADD.W           R9, R0, R11
59B066:  VCVT.F32.S32    S0, S0
59B06A:  LDR             R0, [R7,#arg_2C]
59B06C:  VCVT.F32.S32    S2, S2
59B070:  STR             R1, [SP,#0xA8+var_98]
59B072:  VMOV            S4, R1
59B076:  LDR             R1, [R7,#arg_10]
59B078:  STR             R1, [SP,#0xA8+var_9C]
59B07A:  VMOV            S10, R0
59B07E:  LDR             R1, [R7,#arg_18]
59B080:  MOVS            R4, #0
59B082:  STR             R1, [SP,#0xA8+var_94]
59B084:  LDR             R0, [R7,#arg_4]
59B086:  VMOV            S6, R1
59B08A:  LDR             R1, [R7,#arg_1C]
59B08C:  VDIV.F32        S0, S2, S0
59B090:  STR.W           R11, [SP,#0xA8+var_A0]
59B094:  STR             R1, [SP,#0xA8+var_90]
59B096:  VMOV.F32        S2, #1.0
59B09A:  VMOV            S8, R1
59B09E:  LDR             R1, [R7,#arg_20]
59B0A0:  VMOV            S26, R0
59B0A4:  STR             R1, [SP,#0xA8+var_8C]
59B0A6:  STR             R4, [SP,#0xA8+var_74]
59B0A8:  VMUL.F32        S30, S0, S10
59B0AC:  STR             R4, [SP,#0xA8+var_A4]
59B0AE:  MOV             R0, R9
59B0B0:  STRD.W          R9, R10, [SP,#0xA8+var_88]
59B0B4:  MOV             R1, R5
59B0B6:  LDR.W           R11, [SP,#0xA8+var_64]
59B0BA:  VSUB.F32        S22, S2, S0
59B0BE:  VMOV            S2, R6
59B0C2:  LDR             R6, [R7,#arg_30]
59B0C4:  VMOV            S19, R11
59B0C8:  VMUL.F32        S24, S0, S2
59B0CC:  VMOV            S12, R6
59B0D0:  LDR             R6, [R7,#arg_0]
59B0D2:  VMUL.F32        S28, S0, S12
59B0D6:  VMUL.F32        S2, S22, S8
59B0DA:  VMUL.F32        S8, S0, S26
59B0DE:  VMOV            S21, R6
59B0E2:  VMUL.F32        S6, S22, S6
59B0E6:  VMUL.F32        S4, S22, S4
59B0EA:  VADD.F32        S16, S24, S2
59B0EE:  VADD.F32        S17, S8, S2
59B0F2:  VMUL.F32        S2, S0, S19
59B0F6:  VMUL.F32        S0, S0, S21
59B0FA:  VADD.F32        S20, S30, S4
59B0FE:  VADD.F32        S18, S28, S6
59B102:  VADD.F32        S23, S2, S4
59B106:  VADD.F32        S25, S0, S6
59B10A:  VSTR            S20, [SP,#0xA8+var_80]
59B10E:  VSTR            S18, [SP,#0xA8+var_7C]
59B112:  VSTR            S16, [SP,#0xA8+var_78]
59B116:  VSTR            S17, [SP,#0xA8+var_A8]
59B11A:  VMOV            R2, S23
59B11E:  VMOV            R3, S25
59B122:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
59B126:  VMUL.F32        S0, S22, S26
59B12A:  LDR             R0, [R7,#arg_8]
59B12C:  VMUL.F32        S4, S22, S19
59B130:  STR             R0, [SP,#0xA8+var_9C]
59B132:  VMUL.F32        S2, S22, S21
59B136:  LDR             R0, [R7,#arg_4]
59B138:  MOV             R1, R9
59B13A:  MOV             R2, R5
59B13C:  MOV             R3, R10
59B13E:  STRD.W          R6, R0, [SP,#0xA8+var_A4]
59B142:  MOV             R0, R8
59B144:  STR             R4, [SP,#0xA8+var_6C]
59B146:  VADD.F32        S22, S24, S0
59B14A:  VSTR            S20, [SP,#0xA8+var_78]
59B14E:  VADD.F32        S26, S30, S4
59B152:  VSTR            S18, [SP,#0xA8+var_74]
59B156:  VADD.F32        S24, S28, S2
59B15A:  VSTR            S16, [SP,#0xA8+var_70]
59B15E:  STR             R4, [SP,#0xA8+var_7C]
59B160:  VSTR            S26, [SP,#0xA8+var_88]
59B164:  VSTR            S24, [SP,#0xA8+var_84]
59B168:  VSTR            S22, [SP,#0xA8+var_80]
59B16C:  STR             R4, [SP,#0xA8+var_8C]
59B16E:  VSTR            S23, [SP,#0xA8+var_98]
59B172:  VSTR            S25, [SP,#0xA8+var_94]
59B176:  VSTR            S17, [SP,#0xA8+var_90]
59B17A:  STR.W           R11, [SP,#0xA8+var_A8]
59B17E:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59B182:  VMOV            R2, S26
59B186:  LDR             R0, [R7,#arg_28]
59B188:  VMOV            R3, S24
59B18C:  STRD.W          R4, R8, [SP,#0xA8+var_8C]
59B190:  STR             R0, [SP,#0xA8+var_84]
59B192:  LDR             R0, [R7,#arg_2C]
59B194:  STR             R0, [SP,#0xA8+var_80]
59B196:  LDR             R0, [R7,#arg_30]
59B198:  STR             R0, [SP,#0xA8+var_7C]
59B19A:  LDR             R0, [R7,#arg_34]
59B19C:  STR             R0, [SP,#0xA8+var_78]
59B19E:  LDR             R0, [R7,#arg_38]
59B1A0:  STR             R0, [SP,#0xA8+var_74]
59B1A2:  ADD             R0, SP, #0xA8+var_A4
59B1A4:  VSTR            S20, [SP,#0xA8+var_98]
59B1A8:  VSTR            S18, [SP,#0xA8+var_94]
59B1AC:  VSTR            S16, [SP,#0xA8+var_90]
59B1B0:  STM.W           R0, {R4,R9,R10}
59B1B4:  VSTR            S22, [SP,#0xA8+var_A8]
59B1B8:  B               loc_59B336
59B1BA:  SUB.W           R6, R10, R5
59B1BE:  CMP             R8, R2
59B1C0:  BNE.W           loc_59B4B2
59B1C4:  MOV             R9, R0
59B1C6:  SUB.W           R0, R8, R9
59B1CA:  SUBS            R4, R1, R5
59B1CC:  MULS            R0, R6
59B1CE:  MOV             R1, R4
59B1D0:  BLX.W           __aeabi_idiv
59B1D4:  VMOV            S0, R4
59B1D8:  LDR             R1, [R7,#arg_14]
59B1DA:  VMOV            S2, R6
59B1DE:  LDR             R6, [R7,#arg_30]
59B1E0:  VCVT.F32.S32    S0, S0
59B1E4:  MOVS            R4, #0
59B1E6:  VCVT.F32.S32    S2, S2
59B1EA:  STR             R1, [SP,#0xA8+var_98]
59B1EC:  VMOV            S4, R1
59B1F0:  LDR             R1, [R7,#arg_10]
59B1F2:  STR             R1, [SP,#0xA8+var_9C]
59B1F4:  VMOV            S12, R6
59B1F8:  LDR             R1, [R7,#arg_18]
59B1FA:  STR             R1, [SP,#0xA8+var_94]
59B1FC:  STR.W           R9, [SP,#0xA8+var_A0]
59B200:  ADD             R9, R0
59B202:  VMOV            S6, R1
59B206:  LDR             R1, [R7,#arg_1C]
59B208:  VDIV.F32        S0, S2, S0
59B20C:  STR             R1, [SP,#0xA8+var_90]
59B20E:  STR.W           R11, [SP,#0xA8+var_8C]
59B212:  LDR             R0, [R7,#arg_4]
59B214:  LDR.W           R11, [R7,#arg_34]
59B218:  STR             R4, [SP,#0xA8+var_74]
59B21A:  STR             R4, [SP,#0xA8+var_A4]
59B21C:  STRD.W          R9, R10, [SP,#0xA8+var_88]
59B220:  LDR             R6, [SP,#0xA8+var_64]
59B222:  VMOV.F32        S2, #1.0
59B226:  VMOV            S8, R1
59B22A:  MOV             R1, R5
59B22C:  VMOV            S26, R0
59B230:  MOV             R0, R9
59B232:  VMOV            S19, R6
59B236:  VMUL.F32        S28, S0, S12
59B23A:  VSUB.F32        S22, S2, S0
59B23E:  VMOV            S2, R11
59B242:  LDR.W           R11, [R7,#arg_2C]
59B246:  VMUL.F32        S24, S0, S2
59B24A:  VMOV            S10, R11
59B24E:  LDR.W           R11, [R7,#arg_0]
59B252:  VMUL.F32        S30, S0, S10
59B256:  VMUL.F32        S2, S22, S8
59B25A:  VMUL.F32        S8, S0, S26
59B25E:  VMOV            S21, R11
59B262:  VMUL.F32        S6, S22, S6
59B266:  VMUL.F32        S4, S22, S4
59B26A:  VADD.F32        S16, S24, S2
59B26E:  VADD.F32        S17, S8, S2
59B272:  VMUL.F32        S2, S0, S19
59B276:  VMUL.F32        S0, S0, S21
59B27A:  VADD.F32        S20, S30, S4
59B27E:  VADD.F32        S18, S28, S6
59B282:  VADD.F32        S23, S2, S4
59B286:  VADD.F32        S25, S0, S6
59B28A:  VSTR            S20, [SP,#0xA8+var_80]
59B28E:  VSTR            S18, [SP,#0xA8+var_7C]
59B292:  VSTR            S16, [SP,#0xA8+var_78]
59B296:  VSTR            S17, [SP,#0xA8+var_A8]
59B29A:  VMOV            R2, S23
59B29E:  VMOV            R3, S25
59B2A2:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
59B2A6:  VMUL.F32        S4, S22, S26
59B2AA:  LDR             R0, [R7,#arg_8]
59B2AC:  VMUL.F32        S2, S22, S21
59B2B0:  STR             R0, [SP,#0xA8+var_7C]
59B2B2:  VMUL.F32        S0, S22, S19
59B2B6:  LDR             R0, [R7,#arg_4]
59B2B8:  STR             R0, [SP,#0xA8+var_80]
59B2BA:  MOV             R0, R8
59B2BC:  MOV             R1, R9
59B2BE:  MOV             R2, R10
59B2C0:  MOV             R3, R5
59B2C2:  STRD.W          R6, R11, [SP,#0xA8+var_88]
59B2C6:  STR             R4, [SP,#0xA8+var_6C]
59B2C8:  VADD.F32        S24, S24, S4
59B2CC:  VSTR            S23, [SP,#0xA8+var_78]
59B2D0:  VADD.F32        S26, S28, S2
59B2D4:  VSTR            S25, [SP,#0xA8+var_74]
59B2D8:  VADD.F32        S22, S30, S0
59B2DC:  VSTR            S17, [SP,#0xA8+var_70]
59B2E0:  STR             R4, [SP,#0xA8+var_8C]
59B2E2:  VSTR            S20, [SP,#0xA8+var_98]
59B2E6:  VSTR            S18, [SP,#0xA8+var_94]
59B2EA:  VSTR            S16, [SP,#0xA8+var_90]
59B2EE:  STR             R4, [SP,#0xA8+var_9C]
59B2F0:  VSTR            S22, [SP,#0xA8+var_A8]
59B2F4:  VSTR            S26, [SP,#0xA8+var_A4]
59B2F8:  VSTR            S24, [SP,#0xA8+var_A0]
59B2FC:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59B300:  LDR             R0, [R7,#arg_28]
59B302:  VMOV            R2, S22
59B306:  STRD.W          R4, R8, [SP,#0xA8+var_8C]
59B30A:  VMOV            R3, S26
59B30E:  STR             R0, [SP,#0xA8+var_84]
59B310:  LDR             R0, [R7,#arg_2C]
59B312:  STR             R0, [SP,#0xA8+var_80]
59B314:  LDR             R0, [R7,#arg_30]
59B316:  STR             R0, [SP,#0xA8+var_7C]
59B318:  LDR             R0, [R7,#arg_34]
59B31A:  STR             R0, [SP,#0xA8+var_78]
59B31C:  LDR             R0, [R7,#arg_38]
59B31E:  STR             R0, [SP,#0xA8+var_74]
59B320:  ADD             R0, SP, #0xA8+var_A4
59B322:  VSTR            S20, [SP,#0xA8+var_98]
59B326:  VSTR            S18, [SP,#0xA8+var_94]
59B32A:  VSTR            S16, [SP,#0xA8+var_90]
59B32E:  STM.W           R0, {R4,R9,R10}
59B332:  VSTR            S24, [SP,#0xA8+var_A8]
59B336:  MOV             R0, R8
59B338:  B               loc_59B626
59B33A:  MOV             R9, R6
59B33C:  SUB.W           R6, R10, R5
59B340:  SUB.W           R0, R0, R8
59B344:  SUBS            R4, R1, R5
59B346:  MULS            R0, R6
59B348:  MOV             R1, R4
59B34A:  BLX.W           __aeabi_idiv
59B34E:  VMOV            S0, R6
59B352:  LDR             R1, [R7,#arg_8]
59B354:  VMOV            S2, R4
59B358:  ADD.W           R11, R0, R8
59B35C:  LDR             R0, [R7,#arg_4]
59B35E:  MOVS            R4, #0
59B360:  STR             R1, [SP,#0xA8+var_A4]
59B362:  MOV             R1, R5
59B364:  STR             R0, [SP,#0xA8+var_A8]
59B366:  VCVT.F32.S32    S2, S2
59B36A:  VCVT.F32.S32    S0, S0
59B36E:  LDR             R6, [R7,#arg_30]
59B370:  VMOV            S4, R0
59B374:  LDR             R3, [R7,#arg_0]
59B376:  LDR             R0, [R7,#arg_2C]
59B378:  VMOV            S12, R6
59B37C:  LDR             R6, [R7,#arg_1C]
59B37E:  LDR             R2, [SP,#0xA8+var_64]
59B380:  VMOV            S6, R3
59B384:  VMOV            S8, R0
59B388:  MOV             R0, R8
59B38A:  VMOV            S22, R6
59B38E:  LDR             R6, [R7,#arg_14]
59B390:  VDIV.F32        S0, S0, S2
59B394:  STR             R4, [SP,#0xA8+var_74]
59B396:  STR.W           R10, [SP,#0xA8+var_84]
59B39A:  STR             R4, [SP,#0xA8+var_8C]
59B39C:  STR             R5, [SP,#0xA8+var_9C]
59B39E:  STR.W           R11, [SP,#0xA8+var_88]
59B3A2:  STR.W           R11, [SP,#0xA8+var_A0]
59B3A6:  VMOV.F32        S2, #1.0
59B3AA:  VMOV            S10, R2
59B3AE:  VMOV            S30, R6
59B3B2:  VMUL.F32        S28, S0, S8
59B3B6:  VMUL.F32        S24, S0, S12
59B3BA:  VMUL.F32        S8, S0, S22
59B3BE:  VSUB.F32        S18, S2, S0
59B3C2:  VMOV            S2, R9
59B3C6:  LDR.W           R9, [R7,#arg_18]
59B3CA:  VMUL.F32        S20, S0, S2
59B3CE:  VMOV            S26, R9
59B3D2:  VMUL.F32        S2, S18, S4
59B3D6:  VMUL.F32        S4, S18, S6
59B3DA:  VMUL.F32        S6, S18, S10
59B3DE:  VMUL.F32        S10, S0, S26
59B3E2:  VMUL.F32        S0, S0, S30
59B3E6:  VADD.F32        S16, S20, S2
59B3EA:  VADD.F32        S17, S24, S4
59B3EE:  VADD.F32        S19, S28, S6
59B3F2:  VADD.F32        S21, S8, S2
59B3F6:  VADD.F32        S23, S10, S4
59B3FA:  VADD.F32        S25, S0, S6
59B3FE:  VSTR            S19, [SP,#0xA8+var_80]
59B402:  VSTR            S17, [SP,#0xA8+var_7C]
59B406:  VSTR            S16, [SP,#0xA8+var_78]
59B40A:  VSTR            S25, [SP,#0xA8+var_98]
59B40E:  VSTR            S23, [SP,#0xA8+var_94]
59B412:  VSTR            S21, [SP,#0xA8+var_90]
59B416:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
59B41A:  VMUL.F32        S0, S18, S22
59B41E:  LDR             R0, [R7,#arg_20]
59B420:  VMUL.F32        S4, S18, S30
59B424:  STR             R0, [SP,#0xA8+var_8C]
59B426:  VMUL.F32        S2, S18, S26
59B42A:  LDR             R0, [R7,#arg_1C]
59B42C:  STR             R0, [SP,#0xA8+var_90]
59B42E:  MOV             R0, R11
59B430:  STRD.W          R6, R9, [SP,#0xA8+var_98]
59B434:  MOV             R2, R5
59B436:  LDR             R6, [R7,#arg_C]
59B438:  MOV             R3, R10
59B43A:  STR             R4, [SP,#0xA8+var_6C]
59B43C:  VADD.F32        S18, S20, S0
59B440:  VADD.F32        S22, S28, S4
59B444:  MOV             R1, R6
59B446:  VADD.F32        S20, S24, S2
59B44A:  VSTR            S22, [SP,#0xA8+var_78]
59B44E:  VSTR            S20, [SP,#0xA8+var_74]
59B452:  VSTR            S18, [SP,#0xA8+var_70]
59B456:  STR             R4, [SP,#0xA8+var_7C]
59B458:  VSTR            S19, [SP,#0xA8+var_88]
59B45C:  VSTR            S17, [SP,#0xA8+var_84]
59B460:  VSTR            S16, [SP,#0xA8+var_80]
59B464:  STR             R4, [SP,#0xA8+var_9C]
59B466:  VSTR            S25, [SP,#0xA8+var_A8]
59B46A:  VSTR            S23, [SP,#0xA8+var_A4]
59B46E:  VSTR            S21, [SP,#0xA8+var_A0]
59B472:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59B476:  LDR             R0, [R7,#arg_24]
59B478:  VMOV            R2, S19
59B47C:  STR             R4, [SP,#0xA8+var_8C]
59B47E:  VMOV            R3, S17
59B482:  STR             R0, [SP,#0xA8+var_88]
59B484:  LDR             R0, [R7,#arg_28]
59B486:  STR             R0, [SP,#0xA8+var_84]
59B488:  LDR             R0, [R7,#arg_2C]
59B48A:  STR             R0, [SP,#0xA8+var_80]
59B48C:  LDR             R0, [R7,#arg_30]
59B48E:  STR             R0, [SP,#0xA8+var_7C]
59B490:  LDR             R0, [R7,#arg_34]
59B492:  STR             R0, [SP,#0xA8+var_78]
59B494:  LDR             R0, [R7,#arg_38]
59B496:  STR             R0, [SP,#0xA8+var_74]
59B498:  ADD             R0, SP, #0xA8+var_A4
59B49A:  VSTR            S22, [SP,#0xA8+var_98]
59B49E:  VSTR            S20, [SP,#0xA8+var_94]
59B4A2:  VSTR            S18, [SP,#0xA8+var_90]
59B4A6:  STM.W           R0, {R4,R6,R10}
59B4AA:  MOV             R0, R11
59B4AC:  VSTR            S16, [SP,#0xA8+var_A8]
59B4B0:  B               loc_59B626
59B4B2:  SUB.W           R0, R0, R8
59B4B6:  SUBS            R4, R1, R5
59B4B8:  MULS            R0, R6
59B4BA:  MOV             R1, R4
59B4BC:  BLX.W           __aeabi_idiv
59B4C0:  VMOV            S0, R6
59B4C4:  LDR             R1, [R7,#arg_8]
59B4C6:  VMOV            S2, R4
59B4CA:  ADD.W           R11, R0, R8
59B4CE:  LDR             R0, [R7,#arg_4]
59B4D0:  MOVS            R4, #0
59B4D2:  STR             R1, [SP,#0xA8+var_A4]
59B4D4:  MOV             R1, R5
59B4D6:  STR             R0, [SP,#0xA8+var_A8]
59B4D8:  VCVT.F32.S32    S2, S2
59B4DC:  VCVT.F32.S32    S0, S0
59B4E0:  LDR             R6, [R7,#arg_30]
59B4E2:  LDR.W           R9, [R7,#arg_34]
59B4E6:  VMOV            S4, R0
59B4EA:  LDR             R3, [R7,#arg_0]
59B4EC:  VMOV            S12, R6
59B4F0:  LDR             R6, [R7,#arg_1C]
59B4F2:  LDR             R0, [R7,#arg_2C]
59B4F4:  LDR             R2, [SP,#0xA8+var_64]
59B4F6:  VMOV            S6, R3
59B4FA:  VMOV            S26, R6
59B4FE:  LDR             R6, [R7,#arg_14]
59B500:  VDIV.F32        S0, S0, S2
59B504:  STR             R4, [SP,#0xA8+var_74]
59B506:  STR.W           R10, [SP,#0xA8+var_84]
59B50A:  STR             R4, [SP,#0xA8+var_8C]
59B50C:  STR             R5, [SP,#0xA8+var_9C]
59B50E:  STR.W           R11, [SP,#0xA8+var_88]
59B512:  STR.W           R11, [SP,#0xA8+var_A0]
59B516:  VMOV.F32        S2, #1.0
59B51A:  VMOV            S8, R0
59B51E:  MOV             R0, R8
59B520:  VMOV            S10, R2
59B524:  VMOV            S30, R6
59B528:  VMUL.F32        S24, S0, S8
59B52C:  VMUL.F32        S22, S0, S12
59B530:  VMUL.F32        S8, S0, S26
59B534:  VSUB.F32        S16, S2, S0
59B538:  VMOV            S2, R9
59B53C:  LDR.W           R9, [R7,#arg_18]
59B540:  VMUL.F32        S18, S0, S2
59B544:  VMOV            S28, R9
59B548:  VMUL.F32        S2, S16, S4
59B54C:  VMUL.F32        S4, S16, S6
59B550:  VMUL.F32        S6, S16, S10
59B554:  VMUL.F32        S10, S0, S28
59B558:  VMUL.F32        S0, S0, S30
59B55C:  VADD.F32        S20, S18, S2
59B560:  VADD.F32        S17, S22, S4
59B564:  VADD.F32        S19, S24, S6
59B568:  VADD.F32        S21, S8, S2
59B56C:  VADD.F32        S23, S10, S4
59B570:  VADD.F32        S25, S0, S6
59B574:  VSTR            S19, [SP,#0xA8+var_80]
59B578:  VSTR            S17, [SP,#0xA8+var_7C]
59B57C:  VSTR            S20, [SP,#0xA8+var_78]
59B580:  VSTR            S25, [SP,#0xA8+var_98]
59B584:  VSTR            S23, [SP,#0xA8+var_94]
59B588:  VSTR            S21, [SP,#0xA8+var_90]
59B58C:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
59B590:  ADD             R0, SP, #0xA8+var_7C
59B592:  MOV             R2, R10
59B594:  STM.W           R0, {R4,R6,R9}
59B598:  MOV             R3, R5
59B59A:  LDR             R6, [R7,#arg_C]
59B59C:  LDR             R0, [R7,#arg_1C]
59B59E:  STR             R0, [SP,#0xA8+var_70]
59B5A0:  LDR             R0, [R7,#arg_20]
59B5A2:  MOV             R1, R6
59B5A4:  STR             R0, [SP,#0xA8+var_6C]
59B5A6:  MOV             R0, R11
59B5A8:  VSTR            S25, [SP,#0xA8+var_88]
59B5AC:  VSTR            S23, [SP,#0xA8+var_84]
59B5B0:  VSTR            S21, [SP,#0xA8+var_80]
59B5B4:  STR             R4, [SP,#0xA8+var_8C]
59B5B6:  VSTR            S19, [SP,#0xA8+var_98]
59B5BA:  VSTR            S17, [SP,#0xA8+var_94]
59B5BE:  VSTR            S20, [SP,#0xA8+var_90]
59B5C2:  STR             R4, [SP,#0xA8+var_9C]
59B5C4:  VSTR            S19, [SP,#0xA8+var_A8]
59B5C8:  VSTR            S17, [SP,#0xA8+var_A4]
59B5CC:  VSTR            S20, [SP,#0xA8+var_A0]
59B5D0:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59B5D4:  VMUL.F32        S0, S16, S26
59B5D8:  LDR             R0, [R7,#arg_38]
59B5DA:  VMUL.F32        S2, S16, S30
59B5DE:  STR             R0, [SP,#0xA8+var_74]
59B5E0:  VMUL.F32        S4, S16, S28
59B5E4:  LDR             R0, [R7,#arg_34]
59B5E6:  STR             R0, [SP,#0xA8+var_78]
59B5E8:  VMOV            R2, S19
59B5EC:  LDR             R0, [R7,#arg_30]
59B5EE:  VMOV            R3, S17
59B5F2:  STR             R0, [SP,#0xA8+var_7C]
59B5F4:  LDR             R0, [R7,#arg_2C]
59B5F6:  VADD.F32        S0, S18, S0
59B5FA:  STR             R0, [SP,#0xA8+var_80]
59B5FC:  VADD.F32        S2, S24, S2
59B600:  LDR             R0, [R7,#arg_28]
59B602:  VADD.F32        S4, S22, S4
59B606:  STR             R0, [SP,#0xA8+var_84]
59B608:  LDR             R0, [R7,#arg_24]
59B60A:  STRD.W          R4, R0, [SP,#0xA8+var_8C]
59B60E:  ADD             R0, SP, #0xA8+var_A4
59B610:  VSTR            S2, [SP,#0xA8+var_98]
59B614:  VSTR            S4, [SP,#0xA8+var_94]
59B618:  VSTR            S0, [SP,#0xA8+var_90]
59B61C:  STM.W           R0, {R4,R6,R10}
59B620:  MOV             R0, R11
59B622:  VSTR            S20, [SP,#0xA8+var_A8]
59B626:  MOV             R1, R10
59B628:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
59B62C:  ADD             SP, SP, #0x48 ; 'H'
59B62E:  VPOP            {D8-D15}
59B632:  ADD             SP, SP, #4
59B634:  POP.W           {R8-R11}
59B638:  POP             {R4-R7,PC}
