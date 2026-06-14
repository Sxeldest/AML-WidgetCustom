; =========================================================
; Game Engine Function: sub_172FDA
; Address            : 0x172FDA - 0x173720
; =========================================================

172FDA:  PUSH            {R4-R7,LR}
172FDC:  ADD             R7, SP, #0xC
172FDE:  PUSH.W          {R8-R11}
172FE2:  SUB             SP, SP, #4
172FE4:  VPUSH           {D8-D9}
172FE8:  SUB             SP, SP, #0x20
172FEA:  CMP             R2, #2
172FEC:  BLT.W           loc_17370E
172FF0:  MOV             R10, R0
172FF2:  LDR             R0, [R0,#0x28]
172FF4:  MOV             R4, R1
172FF6:  LDR             R6, [R7,#arg_0]
172FF8:  LDRB.W          R1, [R10,#0x24]
172FFC:  MOV             R8, R3
172FFE:  LDR.W           R9, [R0,#4]
173002:  SUBS            R3, R2, #1
173004:  MOV             R11, R2
173006:  LDR             R2, [R0]
173008:  VLDR            S18, [R7,#arg_4]
17300C:  CMP             R6, #0
17300E:  STR.W           R2, [R7,#var_40]
173012:  STR.W           R3, [R7,#var_38]
173016:  IT NE
173018:  MOVNE           R3, R11
17301A:  LSLS            R0, R1, #0x1F
17301C:  STR.W           R3, [R7,#var_3C]
173020:  BNE.W           loc_173166
173024:  ADD.W           R0, R3, R3,LSL#1
173028:  LSLS            R2, R3, #2
17302A:  LSLS            R1, R0, #1
17302C:  MOV             R0, R10
17302E:  BL              sub_172DC0
173032:  VMOV.F32        S0, #0.5
173036:  ADDS            R0, R4, #4
173038:  VMOV.F32        S2, #1.0
17303C:  MOVS            R2, #0
17303E:  MOV             R11, R4
173040:  VMUL.F32        S0, S18, S0
173044:  LDR.W           R1, [R7,#var_38]
173048:  ADD.W           R12, R2, #1
17304C:  VLDR            S4, [R0,#-4]
173050:  SUBS            R2, R1, R2
173052:  VLDR            S6, [R0]
173056:  IT NE
173058:  MOVNE           R2, R12
17305A:  ADD.W           R2, R4, R2,LSL#3
17305E:  VLDR            S8, [R2,#4]
173062:  VLDR            S10, [R2]
173066:  VSUB.F32        S8, S8, S6
17306A:  VSUB.F32        S10, S10, S4
17306E:  VMUL.F32        S12, S8, S8
173072:  VMLA.F32        S12, S10, S10
173076:  VCMP.F32        S12, #0.0
17307A:  VMRS            APSR_nzcv, FPSCR
17307E:  BLE             loc_173090
173080:  VSQRT.F32       S12, S12
173084:  VDIV.F32        S12, S2, S12
173088:  VMUL.F32        S8, S8, S12
17308C:  VMUL.F32        S10, S10, S12
173090:  VMUL.F32        S10, S0, S10
173094:  LDR.W           R5, [R10,#0x38]
173098:  VMUL.F32        S8, S0, S8
17309C:  LDR.W           R1, [R7,#var_40]
1730A0:  ADDS            R3, R2, #4
1730A2:  ADD.W           R6, R10, #0x34 ; '4'
1730A6:  STRD.W          R1, R9, [R5,#8]
1730AA:  VSUB.F32        S6, S6, S10
1730AE:  VADD.F32        S4, S4, S8
1730B2:  VSTR            S6, [R5,#4]
1730B6:  VSTR            S4, [R5]
1730BA:  VLDR            S6, [R3]
1730BE:  VLDR            S4, [R2]
1730C2:  VSUB.F32        S6, S6, S10
1730C6:  LDR.W           R5, [R10,#0x38]
1730CA:  VADD.F32        S4, S8, S4
1730CE:  STRD.W          R1, R9, [R5,#0x1C]
1730D2:  STR.W           R8, [R5,#0x10]
1730D6:  VSTR            S6, [R5,#0x18]
1730DA:  VSTR            S4, [R5,#0x14]
1730DE:  VLDR            S6, [R3]
1730E2:  VLDR            S4, [R2]
1730E6:  VADD.F32        S6, S10, S6
1730EA:  LDR.W           R3, [R10,#0x38]
1730EE:  VSUB.F32        S4, S4, S8
1730F2:  STRD.W          R1, R9, [R3,#0x30]
1730F6:  LDR.W           R2, [R10,#0x38]
1730FA:  STR.W           R8, [R3,#0x24]
1730FE:  VSTR            S6, [R3,#0x2C]
173102:  VSTR            S4, [R3,#0x28]
173106:  VLDR            S6, [R0]
17310A:  VLDR            S4, [R0,#-4]
17310E:  ADDS            R0, #8
173110:  STRD.W          R1, R9, [R2,#0x44]
173114:  VADD.F32        S6, S10, S6
173118:  LDM             R6, {R3,R5,R6}
17311A:  VSUB.F32        S4, S4, S8
17311E:  ADD.W           R4, R5, #0x50 ; 'P'
173122:  ADDS            R1, R3, #4
173124:  STR.W           R1, [R10,#0x34]
173128:  ADDS            R1, R3, #1
17312A:  STRH            R1, [R6,#2]
17312C:  ADDS            R1, R3, #2
17312E:  STRH            R1, [R6,#4]
173130:  STRH            R1, [R6,#8]
173132:  ADDS            R1, R3, #3
173134:  STRH            R1, [R6,#0xA]
173136:  ADD.W           LR, R6, #0xC
17313A:  LDR.W           R1, [R7,#var_3C]
17313E:  STR.W           R8, [R2,#0x38]
173142:  STR.W           R4, [R10,#0x38]
173146:  CMP             R1, R12
173148:  VSTR            S4, [R2,#0x3C]
17314C:  MOV             R4, R11
17314E:  VSTR            S6, [R2,#0x40]
173152:  MOV             R2, R12
173154:  STR.W           LR, [R10,#0x3C]
173158:  STR.W           R8, [R5,#0x4C]
17315C:  STRH            R3, [R6]
17315E:  STRH            R3, [R6,#6]
173160:  BNE.W           loc_173044
173164:  B               loc_17370E
173166:  VMOV.F32        S16, #1.0
17316A:  MOVS            R0, #0xC
17316C:  ADD.W           R2, R11, R11,LSL#1
173170:  VCMP.F32        S18, S16
173174:  VMRS            APSR_nzcv, FPSCR
173178:  IT GT
17317A:  MOVGT           R0, #0x12
17317C:  MUL.W           R1, R0, R3
173180:  MOV             R0, R10
173182:  IT GT
173184:  MOVGT.W         R2, R11,LSL#2
173188:  STR.W           R2, [R7,#var_4C]
17318C:  BL              sub_172DC0
173190:  VCMP.F32        S18, S16
173194:  MOVS            R0, #3
173196:  MOV.W           R1, R11,LSL#3
17319A:  MOV             R2, SP
17319C:  LDR.W           LR, [R7,#var_3C]
1731A0:  VMRS            APSR_nzcv, FPSCR
1731A4:  IT GT
1731A6:  MOVGT           R0, #5
1731A8:  MLS.W           R6, R1, R0, R2
1731AC:  ADD.W           R0, R6, R11,LSL#3
1731B0:  ADD.W           R12, R6, #4
1731B4:  STR.W           R0, [R7,#var_44]
1731B8:  MOV             SP, R6
1731BA:  LDR.W           R5, [R7,#var_38]
1731BE:  BIC.W           R1, R8, #0xFF000000
1731C2:  ADDS            R0, R4, #4
1731C4:  STR.W           R1, [R7,#var_50]
1731C8:  MOVS            R3, #0
1731CA:  MOV             R1, R12
1731CC:  ADDS            R2, R3, #1
1731CE:  SUBS            R3, R5, R3
1731D0:  VLDR            S2, [R0,#-4]
1731D4:  VLDR            S0, [R0]
1731D8:  IT NE
1731DA:  MOVNE           R3, R2
1731DC:  ADD.W           R3, R4, R3,LSL#3
1731E0:  VLDR            S6, [R3,#4]
1731E4:  VLDR            S4, [R3]
1731E8:  VSUB.F32        S0, S6, S0
1731EC:  VSUB.F32        S2, S4, S2
1731F0:  VMUL.F32        S4, S0, S0
1731F4:  VMLA.F32        S4, S2, S2
1731F8:  VCMP.F32        S4, #0.0
1731FC:  VMRS            APSR_nzcv, FPSCR
173200:  BLE             loc_173212
173202:  VSQRT.F32       S4, S4
173206:  VDIV.F32        S4, S16, S4
17320A:  VMUL.F32        S0, S0, S4
17320E:  VMUL.F32        S2, S2, S4
173212:  VNEG.F32        S2, S2
173216:  VSTR            S0, [R1,#-4]
17321A:  ADDS            R0, #8
17321C:  CMP             LR, R2
17321E:  MOV             R3, R2
173220:  VSTR            S2, [R1]
173224:  ADD.W           R1, R1, #8
173228:  BNE             loc_1731CC
17322A:  LDR             R0, [R7,#arg_0]
17322C:  STR.W           R6, [R7,#var_48]
173230:  CBZ             R0, loc_173254
173232:  VCMP.F32        S18, S16
173236:  VMRS            APSR_nzcv, FPSCR
17323A:  BLE.W           loc_1735A4
17323E:  VMOV.F32        S0, #-1.0
173242:  VMOV.F32        S2, #0.5
173246:  VADD.F32        S0, S18, S0
17324A:  VMUL.F32        S0, S0, S2
17324E:  VADD.F32        S2, S0, S16
173252:  B               loc_17336A
173254:  LDR.W           R3, [R7,#var_44]
173258:  VCMP.F32        S18, S16
17325C:  LDR.W           R2, [R7,#var_38]
173260:  VMRS            APSR_nzcv, FPSCR
173264:  LDRD.W          R0, R1, [R3,#-0x10]
173268:  STR.W           R0, [R6,R2,LSL#3]
17326C:  VMOV            S4, R0
173270:  ADD.W           R0, R6, R2,LSL#3
173274:  STR             R1, [R0,#4]
173276:  BLE.W           loc_173540
17327A:  VMOV.F32        S0, #-1.0
17327E:  VLDR            S12, [R4,#4]
173282:  VMOV.F32        S2, #0.5
173286:  VLDR            S8, [R6,#4]
17328A:  VLDR            S10, [R4]
17328E:  VMOV.F32        S3, S12
173292:  VLDR            S6, [R6]
173296:  VMOV.F32        S14, S10
17329A:  VMOV.F32        S9, S10
17329E:  VMOV.F32        S5, S10
1732A2:  VADD.F32        S0, S18, S0
1732A6:  VMUL.F32        S0, S0, S2
1732AA:  VMOV.F32        S2, S12
1732AE:  VMLA.F32        S2, S0, S8
1732B2:  VMLA.F32        S14, S0, S6
1732B6:  VMUL.F32        S7, S0, S4
1732BA:  VSTR            S2, [R3,#0xC]
1732BE:  VADD.F32        S2, S0, S16
1732C2:  VSTR            S14, [R3,#8]
1732C6:  VLDR            S1, [R6,#4]
1732CA:  VLDR            S14, [R6]
1732CE:  VMLS.F32        S3, S0, S1
1732D2:  VLDR            S1, [R0,#4]
1732D6:  VMLS.F32        S5, S0, S14
1732DA:  ADD.W           R0, R4, R2,LSL#3
1732DE:  VMUL.F32        S14, S0, S1
1732E2:  VMLA.F32        S9, S6, S2
1732E6:  VLDR            S11, [R0,#4]
1732EA:  VMOV.F32        S6, S12
1732EE:  VMUL.F32        S1, S2, S1
1732F2:  VMUL.F32        S4, S2, S4
1732F6:  VSTR            S3, [R3,#0x14]
1732FA:  VSTR            S5, [R3,#0x10]
1732FE:  VLDR            S5, [R0]
173302:  ADD.W           R0, R3, R2,LSL#5
173306:  VMLA.F32        S6, S2, S8
17330A:  VLDR            S8, [R6,#4]
17330E:  VLDR            S3, [R6]
173312:  VMLS.F32        S12, S2, S8
173316:  VSTR            S9, [R3]
17331A:  VMLS.F32        S10, S2, S3
17331E:  VSUB.F32        S8, S11, S14
173322:  VSTR            S6, [R3,#4]
173326:  VSUB.F32        S3, S5, S7
17332A:  VADD.F32        S7, S7, S5
17332E:  VSTR            S12, [R3,#0x1C]
173332:  VSUB.F32        S6, S11, S1
173336:  VSTR            S10, [R3,#0x18]
17333A:  VSUB.F32        S13, S5, S4
17333E:  VADD.F32        S14, S14, S11
173342:  VADD.F32        S4, S4, S5
173346:  VADD.F32        S1, S1, S11
17334A:  VSTR            S8, [R0,#0x14]
17334E:  VSTR            S3, [R0,#0x10]
173352:  VSTR            S7, [R0,#8]
173356:  VSTR            S6, [R0,#0x1C]
17335A:  VSTR            S13, [R0,#0x18]
17335E:  VSTR            S14, [R0,#0xC]
173362:  VSTR            S4, [R0]
173366:  VSTR            S1, [R0,#4]
17336A:  VMOV.F32        S4, #0.5
17336E:  LDR.W           R0, [R10,#0x3C]
173372:  LDR.W           R2, [R10,#0x34]
173376:  MOVS            R1, #1
173378:  ADDS            R0, #0x24 ; '$'
17337A:  MOV             LR, R2
17337C:  SUBS.W          R6, R11, R1
173380:  VLDR            S6, [R12,#-4]
173384:  VLDR            S8, [R12]
173388:  IT NE
17338A:  MOVNE           R6, R1
17338C:  LDR.W           R3, [R7,#var_48]
173390:  ADD.W           R5, LR, #1
173394:  ADD.W           R3, R3, R6,LSL#3
173398:  VLDR            S12, [R3,#4]
17339C:  VLDR            S10, [R3]
1733A0:  ADD.W           R3, LR, #3
1733A4:  VADD.F32        S8, S8, S12
1733A8:  VADD.F32        S6, S6, S10
1733AC:  VMUL.F32        S8, S8, S4
1733B0:  VMUL.F32        S6, S6, S4
1733B4:  VMUL.F32        S10, S8, S8
1733B8:  VMLA.F32        S10, S6, S6
1733BC:  VCMP.F32        S10, S4
1733C0:  VMRS            APSR_nzcv, FPSCR
1733C4:  IT MI
1733C6:  VMOVMI.F32      S10, S4
1733CA:  VDIV.F32        S10, S16, S10
1733CE:  STRH.W          R3, [R0,#-6]
1733D2:  STRH.W          R3, [R0,#-8]
1733D6:  ADD.W           R3, LR, #2
1733DA:  STRH.W          R3, [R0,#-0xA]
1733DE:  CMP             R11, R1
1733E0:  STRH.W          LR, [R0,#-0x12]
1733E4:  STRH.W          LR, [R0,#-0x14]
1733E8:  STRH.W          R5, [R0,#-0x16]
1733EC:  STRH.W          R3, [R0,#-0x1E]
1733F0:  STRH.W          R3, [R0,#-0x20]
1733F4:  STRH.W          R5, [R0,#-0x22]
1733F8:  IT NE
1733FA:  ADDNE.W         R2, LR, #4
1733FE:  ADDS            R5, R2, #3
173400:  STRH.W          R5, [R0,#-4]
173404:  ADD.W           R5, R4, R6,LSL#3
173408:  ADDS            R3, R2, #2
17340A:  STRH.W          R3, [R0,#-2]
17340E:  STRH.W          R3, [R0,#-0xC]
173412:  STRH.W          R3, [R0,#-0x1C]
173416:  LDR.W           R3, [R7,#var_44]
17341A:  STRH.W          R2, [R0,#-0x10]
17341E:  ADD.W           R3, R3, R6,LSL#5
173422:  VMUL.F32        S8, S8, S10
173426:  VLDR            S14, [R5]
17342A:  VMUL.F32        S6, S6, S10
17342E:  VLDR            S1, [R5,#4]
173432:  ADDS            R5, R2, #1
173434:  STRH.W          R5, [R0,#-0xE]
173438:  STRH.W          R5, [R0,#-0x18]
17343C:  STRH.W          R5, [R0,#-0x1A]
173440:  STRH.W          R5, [R0,#-0x24]
173444:  VMUL.F32        S12, S2, S8
173448:  VMUL.F32        S10, S2, S6
17344C:  VMUL.F32        S6, S0, S6
173450:  VMUL.F32        S8, S0, S8
173454:  VSUB.F32        S5, S1, S12
173458:  VADD.F32        S3, S14, S10
17345C:  VSUB.F32        S9, S14, S6
173460:  VSUB.F32        S7, S1, S8
173464:  VSUB.F32        S10, S14, S10
173468:  VADD.F32        S8, S1, S8
17346C:  VADD.F32        S6, S14, S6
173470:  VADD.F32        S12, S1, S12
173474:  VSTR            S5, [R3,#0x1C]
173478:  VSTR            S3, [R3]
17347C:  VSTR            S9, [R3,#0x10]
173480:  VSTR            S7, [R3,#0x14]
173484:  VSTR            S10, [R3,#0x18]
173488:  VSTR            S8, [R3,#0xC]
17348C:  VSTR            S6, [R3,#8]
173490:  VSTR            S12, [R3,#4]
173494:  LDR.W           R3, [R7,#var_3C]
173498:  CMP             R3, R1
17349A:  BEQ             loc_1734AC
17349C:  MOV             LR, R2
17349E:  ADDS            R0, #0x24 ; '$'
1734A0:  ADD.W           R12, R12, #8
1734A4:  LDR.W           R2, [R10,#0x34]
1734A8:  ADDS            R1, #1
1734AA:  B               loc_17337C
1734AC:  LDR.W           R4, [R7,#var_40]
1734B0:  CMP.W           R11, #1
1734B4:  LDR.W           R12, [R7,#var_50]
1734B8:  STR.W           R0, [R10,#0x3C]
1734BC:  BLT.W           loc_1736FE
1734C0:  LDR.W           R0, [R7,#var_44]
1734C4:  LDR.W           R1, [R10,#0x38]
1734C8:  ADDS            R0, #0x10
1734CA:  SUB.W           R6, R0, #0x10
1734CE:  LDR.W           R5, [R0,#-4]
1734D2:  SUBS.W          R11, R11, #1
1734D6:  LDM             R6, {R2,R3,R6}
1734D8:  STRD.W          R2, R3, [R1]
1734DC:  LDR.W           R1, [R10,#0x38]
1734E0:  STRD.W          R4, R9, [R1,#8]
1734E4:  LDR.W           R1, [R10,#0x38]
1734E8:  STRD.W          R6, R5, [R1,#0x14]
1734EC:  LDR.W           R2, [R10,#0x38]
1734F0:  STR.W           R12, [R1,#0x10]
1734F4:  STRD.W          R4, R9, [R2,#0x1C]
1734F8:  LDR.W           R1, [R10,#0x38]
1734FC:  LDRD.W          R2, R3, [R0]
173500:  STRD.W          R2, R3, [R1,#0x28]
173504:  LDR.W           R2, [R10,#0x38]
173508:  STR.W           R8, [R1,#0x24]
17350C:  STRD.W          R4, R9, [R2,#0x30]
173510:  LDR.W           R1, [R10,#0x38]
173514:  LDRD.W          R2, R3, [R0,#8]
173518:  ADD.W           R0, R0, #0x20 ; ' '
17351C:  STRD.W          R2, R3, [R1,#0x3C]
173520:  LDR.W           R2, [R10,#0x38]
173524:  STR.W           R8, [R1,#0x38]
173528:  STRD.W          R4, R9, [R2,#0x44]
17352C:  LDR.W           R2, [R10,#0x38]
173530:  ADD.W           R1, R2, #0x50 ; 'P'
173534:  STR.W           R1, [R10,#0x38]
173538:  STR.W           R12, [R2,#0x4C]
17353C:  BNE             loc_1734CA
17353E:  B               loc_1736FE
173540:  ADD.W           R1, R4, R2,LSL#3
173544:  VLDR            S1, [R0,#4]
173548:  VLDR            S0, [R4]
17354C:  ADD.W           R0, R3, R2,LSL#4
173550:  VLDR            S2, [R4,#4]
173554:  VLDR            S8, [R6,#4]
173558:  VLDR            S6, [R6]
17355C:  VLDR            S12, [R1]
173560:  VADD.F32        S10, S8, S2
173564:  VLDR            S14, [R1,#4]
173568:  VSUB.F32        S2, S2, S8
17356C:  VSUB.F32        S8, S0, S6
173570:  VADD.F32        S0, S6, S0
173574:  VSUB.F32        S6, S14, S1
173578:  VADD.F32        S14, S1, S14
17357C:  VADD.F32        S1, S12, S4
173580:  VSUB.F32        S4, S12, S4
173584:  VSTR            S10, [R3,#4]
173588:  VSTR            S2, [R3,#0xC]
17358C:  VSTR            S8, [R3,#8]
173590:  VSTR            S0, [R3]
173594:  VSTR            S6, [R0,#0xC]
173598:  VSTR            S14, [R0,#4]
17359C:  VSTR            S1, [R0]
1735A0:  VSTR            S4, [R0,#8]
1735A4:  VMOV.F32        S0, #0.5
1735A8:  LDR.W           R0, [R10,#0x3C]
1735AC:  LDR.W           R2, [R10,#0x34]
1735B0:  MOVS            R1, #1
1735B2:  ADDS            R0, #0x18
1735B4:  MOV             R6, R2
1735B6:  SUBS.W          R3, R11, R1
1735BA:  VLDR            S2, [R12,#-4]
1735BE:  VLDR            S4, [R12]
1735C2:  IT NE
1735C4:  MOVNE           R3, R1
1735C6:  LDR.W           R5, [R7,#var_48]
1735CA:  ADD.W           R5, R5, R3,LSL#3
1735CE:  VLDR            S8, [R5,#4]
1735D2:  VLDR            S6, [R5]
1735D6:  ADDS            R5, R6, #1
1735D8:  VADD.F32        S4, S4, S8
1735DC:  VADD.F32        S2, S2, S6
1735E0:  VMUL.F32        S4, S4, S0
1735E4:  VMUL.F32        S2, S2, S0
1735E8:  VMUL.F32        S6, S4, S4
1735EC:  VMLA.F32        S6, S2, S2
1735F0:  VCMP.F32        S6, S0
1735F4:  VMRS            APSR_nzcv, FPSCR
1735F8:  IT MI
1735FA:  VMOVMI.F32      S6, S0
1735FE:  VDIV.F32        S6, S16, S6
173602:  STRH.W          R5, [R0,#-0xA]
173606:  ADDS            R5, R6, #2
173608:  STRH.W          R5, [R0,#-0x12]
17360C:  STRH.W          R5, [R0,#-0x14]
173610:  ADD.W           R5, R4, R3,LSL#3
173614:  STRH.W          R6, [R0,#-6]
173618:  CMP             R11, R1
17361A:  STRH.W          R6, [R0,#-8]
17361E:  STRH.W          R6, [R0,#-0x16]
173622:  VMUL.F32        S2, S2, S6
173626:  VLDR            S8, [R5,#4]
17362A:  VMUL.F32        S4, S4, S6
17362E:  VLDR            S6, [R5]
173632:  IT NE
173634:  ADDNE           R2, R6, #3
173636:  LDR.W           R5, [R7,#var_44]
17363A:  ADDS            R6, R2, #1
17363C:  CMP             LR, R1
17363E:  ADD.W           R3, R5, R3,LSL#4
173642:  STRH.W          R2, [R0,#-4]
173646:  STRH.W          R2, [R0,#-0xE]
17364A:  STRH.W          R2, [R0,#-0x18]
17364E:  VADD.F32        S10, S6, S2
173652:  STRH.W          R6, [R0,#-2]
173656:  VSUB.F32        S12, S8, S4
17365A:  STRH.W          R6, [R0,#-0xC]
17365E:  VSUB.F32        S2, S6, S2
173662:  ADD.W           R6, R2, #2
173666:  VADD.F32        S4, S8, S4
17366A:  STRH.W          R6, [R0,#-0x10]
17366E:  VSTR            S10, [R3]
173672:  VSTR            S12, [R3,#0xC]
173676:  VSTR            S2, [R3,#8]
17367A:  VSTR            S4, [R3,#4]
17367E:  BEQ             loc_173690
173680:  MOV             R6, R2
173682:  ADDS            R0, #0x18
173684:  ADD.W           R12, R12, #8
173688:  LDR.W           R2, [R10,#0x34]
17368C:  ADDS            R1, #1
17368E:  B               loc_1735B6
173690:  LDR.W           R6, [R7,#var_40]
173694:  CMP.W           R11, #1
173698:  LDR.W           R5, [R7,#var_50]
17369C:  STR.W           R0, [R10,#0x3C]
1736A0:  BLT             loc_1736FE
1736A2:  LDR.W           R0, [R7,#var_44]
1736A6:  LDR.W           R1, [R10,#0x38]
1736AA:  ADDS            R0, #8
1736AC:  LDRD.W          R2, R3, [R4],#8
1736B0:  SUBS.W          R11, R11, #1
1736B4:  STRD.W          R2, R3, [R1]
1736B8:  LDR.W           R1, [R10,#0x38]
1736BC:  LDRD.W          R2, R3, [R0,#-8]
1736C0:  STRD.W          R6, R9, [R1,#8]
1736C4:  LDR.W           R1, [R10,#0x38]
1736C8:  STRD.W          R2, R3, [R1,#0x14]
1736CC:  LDR.W           R2, [R10,#0x38]
1736D0:  STR.W           R8, [R1,#0x10]
1736D4:  STRD.W          R6, R9, [R2,#0x1C]
1736D8:  LDR.W           R1, [R10,#0x38]
1736DC:  LDRD.W          R3, R2, [R0],#0x10
1736E0:  STRD.W          R3, R2, [R1,#0x28]
1736E4:  LDR.W           R2, [R10,#0x38]
1736E8:  STR             R5, [R1,#0x24]
1736EA:  STRD.W          R6, R9, [R2,#0x30]
1736EE:  LDR.W           R2, [R10,#0x38]
1736F2:  ADD.W           R1, R2, #0x3C ; '<'
1736F6:  STR.W           R1, [R10,#0x38]
1736FA:  STR             R5, [R2,#0x38]
1736FC:  BNE             loc_1736AC
1736FE:  LDR.W           R1, [R7,#var_4C]
173702:  LDR.W           R0, [R10,#0x34]
173706:  UXTAH.W         R0, R0, R1
17370A:  STR.W           R0, [R10,#0x34]
17370E:  SUB.W           R4, R7, #-var_30
173712:  MOV             SP, R4
173714:  VPOP            {D8-D9}
173718:  ADD             SP, SP, #4
17371A:  POP.W           {R8-R11}
17371E:  POP             {R4-R7,PC}
