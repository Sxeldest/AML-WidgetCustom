; =========================================================
; Game Engine Function: INT123_synth_ntom_real
; Address            : 0x238F30 - 0x23944A
; =========================================================

238F30:  PUSH            {R4-R7,LR}
238F32:  ADD             R7, SP, #0xC
238F34:  PUSH.W          {R8-R11}
238F38:  SUB             SP, SP, #0x2C
238F3A:  MOV             R9, R2
238F3C:  MOVW            R12, #0xB2A8
238F40:  MOVW            LR, #0xB2A0
238F44:  MOVW            R5, #0x4848
238F48:  LDR.W           R8, [R9,R12]
238F4C:  MOV             R2, R0
238F4E:  LDR.W           R6, [R9,LR]
238F52:  LDR.W           R5, [R9,R5]
238F56:  CBZ             R5, loc_238F80
238F58:  ADD.W           R5, R9, R1,LSL#8
238F5C:  MOVW            R4, #0x4850
238F60:  ADD             R5, R4
238F62:  MOVS            R4, #0
238F64:  ADDS            R0, R5, R4
238F66:  VLDR            D16, [R0]
238F6A:  ADDS            R0, R2, R4
238F6C:  ADDS            R4, #8
238F6E:  VLDR            D17, [R0]
238F72:  CMP.W           R4, #0x100
238F76:  VMUL.F64        D16, D17, D16
238F7A:  VSTR            D16, [R0]
238F7E:  BNE             loc_238F64
238F80:  ADD.W           R4, R6, R8
238F84:  CBZ             R1, loc_238FA2
238F86:  MOVW            R0, #0x4838
238F8A:  MOVW            R6, #0x4828
238F8E:  LDR.W           R5, [R9,R0]
238F92:  MOVW            R0, #0x918C
238F96:  LDR.W           R10, [R9,R0]
238F9A:  ADD.W           R8, R9, R6
238F9E:  ADDS            R4, #8
238FA0:  B               loc_238FCC
238FA2:  MOVW            R8, #0x4838
238FA6:  MOVW            R6, #0x9188
238FAA:  LDR.W           R0, [R9,R8]
238FAE:  LDR.W           R10, [R9,R6]
238FB2:  MOVW            R6, #0x918C
238FB6:  ADDS            R0, #0xF
238FB8:  STR.W           R10, [R9,R6]
238FBC:  AND.W           R5, R0, #0xF
238FC0:  STR.W           R5, [R9,R8]
238FC4:  MOVW            R0, #0x4820
238FC8:  ADD.W           R8, R9, R0
238FCC:  ADD             R12, R9
238FCE:  LSLS            R0, R5, #0x1F
238FD0:  ADD.W           R6, R9, LR
238FD4:  STRD.W          R3, R1, [SP,#0x48+var_24]
238FD8:  STRD.W          R6, R12, [SP,#0x48+var_40]
238FDC:  BNE             loc_238FF4
238FDE:  LDRD.W          R0, R8, [R8]
238FE2:  ADD.W           R1, R8, R5,LSL#3
238FE6:  ADDS            R1, #8
238FE8:  ADD.W           R0, R0, R5,LSL#3
238FEC:  BLX             j_INT123_dct64
238FF0:  ADDS            R5, #1
238FF2:  B               loc_23900C
238FF4:  LDRD.W          R1, R0, [R8]
238FF8:  ADDS            R3, R5, #1
238FFA:  AND.W           R3, R3, #0xF
238FFE:  MOV             R8, R1
239000:  ADD.W           R1, R8, R5,LSL#3
239004:  ADD.W           R0, R0, R3,LSL#3
239008:  BLX             j_INT123_dct64
23900C:  MOVW            R2, #0x4844
239010:  MOVW            R0, #0x9190
239014:  LDR.W           R2, [R9,R2]
239018:  ADD.W           R11, R8, #0x780
23901C:  LDR.W           R1, [R9,R0]
239020:  STR.W           R9, [SP,#0x48+var_28]
239024:  ADD             R9, R0
239026:  SUB.W           R0, R2, R5,LSL#3
23902A:  ADD.W           R6, R0, #0x80
23902E:  RSB.W           R0, R5, #0x210
239032:  ADD.W           R12, R1, R10
239036:  STR             R0, [SP,#0x48+var_44]
239038:  RSB.W           R0, R5, #0x1F0
23903C:  STR             R5, [SP,#0x48+var_2C]
23903E:  MOVW            R5, #:lower16:loc_1FFFF0
239042:  VLDR            D16, =0.0000305175781
239046:  MOV.W           LR, #0x10
23904A:  MOVW            R10, #0x7FFF
23904E:  MOVT            R5, #:upper16:loc_1FFFF0
239052:  STR             R2, [SP,#0x48+var_34]
239054:  STR             R0, [SP,#0x48+var_38]
239056:  STR.W           R8, [SP,#0x48+var_30]
23905A:  CMP.W           R12, #0x8000
23905E:  BLT.W           loc_23918C
239062:  VLDM            R8, {D17-D20}
239066:  MOVS            R0, #0
239068:  MVN.W           R1, R12
23906C:  MOVT            R0, #0xFFFF
239070:  VLDM            R6, {D21-D24}
239074:  CMP             R1, R0
239076:  VMUL.F64        D18, D22, D18
23907A:  VMUL.F64        D17, D21, D17
23907E:  VMUL.F64        D19, D23, D19
239082:  VSUB.F64        D17, D17, D18
239086:  VMUL.F64        D20, D24, D20
23908A:  VADD.F64        D17, D17, D19
23908E:  VLDR            D18, [R8,#0x20]
239092:  VLDR            D21, [R6,#0x20]
239096:  VSUB.F64        D17, D17, D20
23909A:  VMUL.F64        D18, D21, D18
23909E:  VLDR            D19, [R8,#0x28]
2390A2:  VLDR            D22, [R6,#0x28]
2390A6:  VADD.F64        D17, D17, D18
2390AA:  VMUL.F64        D19, D22, D19
2390AE:  VLDR            D20, [R8,#0x30]
2390B2:  VLDR            D21, [R6,#0x30]
2390B6:  VSUB.F64        D17, D17, D19
2390BA:  VMUL.F64        D20, D21, D20
2390BE:  VLDR            D18, [R8,#0x38]
2390C2:  VLDR            D22, [R6,#0x38]
2390C6:  VADD.F64        D17, D17, D20
2390CA:  VMUL.F64        D18, D22, D18
2390CE:  VLDR            D19, [R8,#0x40]
2390D2:  VLDR            D21, [R6,#0x40]
2390D6:  VSUB.F64        D17, D17, D18
2390DA:  VMUL.F64        D19, D21, D19
2390DE:  VLDR            D20, [R8,#0x48]
2390E2:  VLDR            D22, [R6,#0x48]
2390E6:  VADD.F64        D17, D17, D19
2390EA:  VMUL.F64        D20, D22, D20
2390EE:  VLDR            D18, [R8,#0x50]
2390F2:  VLDR            D21, [R6,#0x50]
2390F6:  VSUB.F64        D17, D17, D20
2390FA:  VMUL.F64        D18, D21, D18
2390FE:  VLDR            D19, [R8,#0x58]
239102:  VLDR            D22, [R6,#0x58]
239106:  VADD.F64        D17, D17, D18
23910A:  VMUL.F64        D19, D22, D19
23910E:  VLDR            D20, [R8,#0x60]
239112:  VLDR            D21, [R6,#0x60]
239116:  VSUB.F64        D17, D17, D19
23911A:  VMUL.F64        D20, D21, D20
23911E:  VLDR            D18, [R8,#0x68]
239122:  VLDR            D22, [R6,#0x68]
239126:  VADD.F64        D17, D17, D20
23912A:  VMUL.F64        D18, D22, D18
23912E:  VLDR            D19, [R8,#0x70]
239132:  VLDR            D21, [R6,#0x70]
239136:  VSUB.F64        D17, D17, D18
23913A:  VMUL.F64        D19, D21, D19
23913E:  VLDR            D20, [R8,#0x78]
239142:  VLDR            D22, [R6,#0x78]
239146:  IT LE
239148:  MOVLE           R1, R0
23914A:  VADD.F64        D17, D17, D19
23914E:  ADD.W           R0, R12, #0x8000
239152:  ADD             R1, R0
239154:  BIC.W           R2, R1, R10
239158:  AND.W           R1, R5, R1,LSR#11
23915C:  ADD             R1, R4
23915E:  ADD.W           R3, R1, #0x10
239162:  VMUL.F64        D18, D22, D20
239166:  VSUB.F64        D17, D17, D18
23916A:  VMUL.F64        D17, D17, D16
23916E:  VSTR            D17, [R4]
239172:  SUB.W           R0, R0, #0x8000
239176:  ADDS            R4, #0x10
239178:  CMP.W           R0, #0x10000
23917C:  BGE             loc_23916E
23917E:  SUB.W           R0, R12, #0x8000
239182:  LDR.W           R1, [R9]
239186:  SUB.W           R12, R0, R2
23918A:  MOV             R4, R3
23918C:  ADD             R12, R1
23918E:  ADD.W           R6, R6, #0x100
239192:  SUBS.W          LR, LR, #1
239196:  ADD.W           R8, R8, #0x80
23919A:  BNE.W           loc_23905A
23919E:  LDRD.W          R0, R3, [SP,#0x48+var_38]
2391A2:  CMP.W           R12, #0x8000
2391A6:  LDR             R2, [SP,#0x48+var_30]
2391A8:  ADD.W           R1, R3, R0,LSL#3
2391AC:  ADD.W           R10, R2, #0x800
2391B0:  BLT             loc_23929A
2391B2:  ADD.W           R0, R2, #0x810
2391B6:  VLDR            D17, [R1,#0x110]
2391BA:  VLDR            D21, [R10]
2391BE:  VLDR            D22, [R0]
2391C2:  LDR             R0, [SP,#0x48+var_44]
2391C4:  VMUL.F64        D17, D17, D22
2391C8:  ADD.W           R0, R3, R0,LSL#3
2391CC:  VLDR            D23, [R0]
2391D0:  ADD.W           R0, R2, #0x820
2391D4:  VLDR            D18, [R1,#0x120]
2391D8:  VMUL.F64        D21, D23, D21
2391DC:  VLDR            D22, [R0]
2391E0:  ADD.W           R0, R2, #0x830
2391E4:  VADD.F64        D17, D21, D17
2391E8:  VMUL.F64        D18, D18, D22
2391EC:  VLDR            D23, [R0]
2391F0:  ADD.W           R0, R2, #0x840
2391F4:  VLDR            D19, [R1,#0x130]
2391F8:  VADD.F64        D17, D17, D18
2391FC:  VMUL.F64        D19, D19, D23
239200:  VLDR            D21, [R0]
239204:  ADD.W           R0, R2, #0x850
239208:  VLDR            D20, [R1,#0x140]
23920C:  VADD.F64        D17, D17, D19
239210:  VMUL.F64        D20, D20, D21
239214:  VLDR            D22, [R0]
239218:  ADD.W           R0, R2, #0x860
23921C:  VLDR            D18, [R1,#0x150]
239220:  VADD.F64        D17, D17, D20
239224:  VMUL.F64        D18, D18, D22
239228:  VLDR            D21, [R0]
23922C:  ADD.W           R0, R2, #0x870
239230:  VLDR            D20, [R1,#0x160]
239234:  MOVS            R2, #0
239236:  VADD.F64        D17, D17, D18
23923A:  MOVT            R2, #0xFFFF
23923E:  VMUL.F64        D20, D20, D21
239242:  VLDR            D22, [R0]
239246:  MVN.W           R0, R12
23924A:  VLDR            D19, [R1,#0x170]
23924E:  CMP             R0, R2
239250:  VADD.F64        D17, D17, D20
239254:  IT LE
239256:  MOVLE           R0, R2
239258:  ADD             R0, R12
23925A:  ADD.W           R3, R0, #0x8000
23925E:  MOVW            R0, #0x7FFF
239262:  BIC.W           R2, R3, R0
239266:  ADD.W           R0, R12, #0x8000
23926A:  AND.W           R3, R5, R3,LSR#11
23926E:  ADD             R3, R4
239270:  ADD.W           R8, R3, #0x10
239274:  VMUL.F64        D18, D19, D22
239278:  VADD.F64        D17, D17, D18
23927C:  VMUL.F64        D17, D17, D16
239280:  VSTR            D17, [R4]
239284:  SUB.W           R0, R0, #0x8000
239288:  ADDS            R4, #0x10
23928A:  CMP.W           R0, #0x10000
23928E:  BGE             loc_239280
239290:  SUB.W           R0, R12, #0x8000
239294:  SUB.W           R12, R0, R2
239298:  B               loc_23929C
23929A:  MOV             R8, R4
23929C:  LDR             R0, [SP,#0x48+var_2C]
23929E:  MOVW            LR, #:lower16:(stru_3FFF8.st_value+2)
2392A2:  MOVS            R4, #0xF
2392A4:  MOVT            LR, #:upper16:(stru_3FFF8.st_value+2)
2392A8:  ADD.W           R6, R1, R0,LSL#4
2392AC:  MOV             R3, R11
2392AE:  LDR.W           R11, [R9]
2392B2:  ADD.W           R2, R11, R12
2392B6:  CMP.W           R2, #0x8000
2392BA:  BGE             loc_2392C8
2392BC:  MOV             R12, R2
2392BE:  B               loc_239408
2392C0:  DCFD 0.0000305175781
2392C8:  VLDR            D17, [R6,#-8]
2392CC:  MOVS            R1, #0
2392CE:  VLDR            D22, [R3]
2392D2:  MVNS            R0, R2
2392D4:  VLDR            D18, [R6,#-0x10]
2392D8:  MOVT            R1, #0xFFFF
2392DC:  VLDR            D21, [R10,#-0x78]
2392E0:  CMP             R0, R1
2392E2:  VNMUL.F64       D17, D17, D22
2392E6:  ADD.W           R5, R2, #0x8000
2392EA:  MOV             R2, R8
2392EC:  VMUL.F64        D18, D18, D21
2392F0:  VLDR            D19, [R6,#-0x18]
2392F4:  VLDR            D23, [R10,#-0x70]
2392F8:  VSUB.F64        D17, D17, D18
2392FC:  VMUL.F64        D19, D19, D23
239300:  VLDR            D20, [R6,#-0x20]
239304:  VLDR            D21, [R10,#-0x68]
239308:  VSUB.F64        D17, D17, D19
23930C:  VMUL.F64        D20, D20, D21
239310:  VLDR            D18, [R10,#-0x60]
239314:  VLDR            D22, [R6,#-0x28]
239318:  VSUB.F64        D17, D17, D20
23931C:  VMUL.F64        D18, D22, D18
239320:  VLDR            D19, [R10,#-0x58]
239324:  VLDR            D21, [R6,#-0x30]
239328:  VSUB.F64        D17, D17, D18
23932C:  VMUL.F64        D19, D21, D19
239330:  VLDR            D20, [R10,#-0x50]
239334:  VLDR            D22, [R6,#-0x38]
239338:  VSUB.F64        D17, D17, D19
23933C:  VMUL.F64        D20, D22, D20
239340:  VLDR            D18, [R10,#-0x48]
239344:  VLDR            D21, [R6,#-0x40]
239348:  VSUB.F64        D17, D17, D20
23934C:  VMUL.F64        D18, D21, D18
239350:  VLDR            D19, [R10,#-0x40]
239354:  VLDR            D22, [R6,#-0x48]
239358:  VSUB.F64        D17, D17, D18
23935C:  VMUL.F64        D19, D22, D19
239360:  VLDR            D20, [R10,#-0x38]
239364:  VLDR            D21, [R6,#-0x50]
239368:  VSUB.F64        D17, D17, D19
23936C:  VMUL.F64        D20, D21, D20
239370:  VLDR            D18, [R10,#-0x30]
239374:  VLDR            D22, [R6,#-0x58]
239378:  VSUB.F64        D17, D17, D20
23937C:  VMUL.F64        D18, D22, D18
239380:  VLDR            D19, [R10,#-0x28]
239384:  VLDR            D21, [R6,#-0x60]
239388:  VSUB.F64        D17, D17, D18
23938C:  VMUL.F64        D19, D21, D19
239390:  VLDR            D24, [R10,#-0x20]
239394:  VLDR            D25, [R6,#-0x68]
239398:  VSUB.F64        D17, D17, D19
23939C:  VMUL.F64        D21, D25, D24
2393A0:  VLDR            D23, [R10,#-0x18]
2393A4:  VLDR            D18, [R6,#-0x70]
2393A8:  VSUB.F64        D17, D17, D21
2393AC:  VMUL.F64        D18, D18, D23
2393B0:  VLDR            D22, [R10,#-0x10]
2393B4:  VLDR            D19, [R6,#-0x78]
2393B8:  VSUB.F64        D17, D17, D18
2393BC:  VMUL.F64        D19, D19, D22
2393C0:  VLDR            D20, [R10,#-8]
2393C4:  VLDR            D21, [R6,#-0x80]
2393C8:  IT LE
2393CA:  MOVLE           R0, R1
2393CC:  VSUB.F64        D17, D17, D19
2393D0:  ADD             R0, R5
2393D2:  SUB.W           R1, R12, #0x8000
2393D6:  AND.W           R10, LR, R0,LSR#14
2393DA:  BFC.W           R0, #0, #0xF
2393DE:  VMUL.F64        D18, D21, D20
2393E2:  VSUB.F64        D17, D17, D18
2393E6:  VMUL.F64        D17, D17, D16
2393EA:  VSTR            D17, [R2]
2393EE:  SUB.W           R5, R5, #0x8000
2393F2:  ADDS            R2, #0x10
2393F4:  CMP.W           R5, #0x10000
2393F8:  BGE             loc_2393EA
2393FA:  ADD             R1, R11
2393FC:  SUB.W           R12, R1, R0
239400:  ADD.W           R0, R8, R10,LSL#3
239404:  ADD.W           R8, R0, #0x10
239408:  SUB.W           R11, R3, #0x80
23940C:  SUB.W           R6, R6, #0x100
239410:  SUBS            R4, #1
239412:  MOV             R10, R3
239414:  BNE.W           loc_2392AC
239418:  LDR             R2, [SP,#0x48+var_20]
23941A:  MOVW            R1, #0x9188
23941E:  LDR             R0, [SP,#0x48+var_28]
239420:  ADD.W           R0, R0, R2,LSL#2
239424:  STR.W           R12, [R0,R1]
239428:  LDR             R0, [SP,#0x48+var_24]
23942A:  CBZ             R0, loc_239440
23942C:  LDR             R0, [SP,#0x48+var_40]
23942E:  CMP             R2, #0
239430:  LDR             R0, [R0]
239432:  IT NE
239434:  SUBNE.W         R8, R8, #8
239438:  LDR             R1, [SP,#0x48+var_3C]
23943A:  SUB.W           R0, R8, R0
23943E:  STR             R0, [R1]
239440:  MOVS            R0, #0
239442:  ADD             SP, SP, #0x2C ; ','
239444:  POP.W           {R8-R11}
239448:  POP             {R4-R7,PC}
