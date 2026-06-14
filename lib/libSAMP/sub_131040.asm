; =========================================================
; Game Engine Function: sub_131040
; Address            : 0x131040 - 0x131684
; =========================================================

131040:  PUSH            {R4-R7,LR}
131042:  ADD             R7, SP, #0xC
131044:  PUSH.W          {R8}
131048:  VPUSH           {D8-D9}
13104C:  SUB             SP, SP, #0x10
13104E:  MOV             R8, R0
131050:  LDR             R0, =(off_2349A8 - 0x13105A)
131052:  VLDR            S16, [R8,#0x14]
131056:  ADD             R0, PC; off_2349A8
131058:  LDR             R0, [R0]; dword_381BF4
13105A:  LDR             R0, [R0]
13105C:  LDRB.W          R0, [R0,#0x81]
131060:  CBZ             R0, loc_13107C
131062:  B               loc_13106C
131064:  DCD off_2349A8 - 0x13105A
131068:  DCFS -100.0
13106C:  VLDR            S0, =-100.0
131070:  VMOV.F32        S2, #27.0
131074:  VDIV.F32        S0, S16, S0
131078:  VMLA.F32        S16, S0, S2
13107C:  LDR.W           R5, [R8,#0x6C]
131080:  VMOV.I32        Q8, #0
131084:  LDR             R1, =(aQjk - 0x131096); "QJK(" ...
131086:  ADD             R6, SP, #0x30+var_2C
131088:  ADD.W           R0, R5, #0x58 ; 'X'
13108C:  MOVS            R2, #0
13108E:  VST1.32         {D16-D17}, [R0]!
131092:  ADD             R1, PC; "QJK("
131094:  STR             R2, [R0]
131096:  MOV             R0, R6; int
131098:  BL              sub_13055C
13109C:  MOV             R0, R5
13109E:  MOV             R1, R6
1310A0:  MOVS            R2, #0x51 ; 'Q'
1310A2:  BL              sub_130FE8
1310A6:  B               loc_1310AC
1310A8:  DCD aQjk - 0x131096
1310AC:  LDRB.W          R0, [SP,#0x30+var_2C]
1310B0:  LSLS            R0, R0, #0x1F
1310B2:  ITT NE
1310B4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1310B6:  BLXNE           j__ZdlPv; operator delete(void *)
1310BA:  LDR.W           R5, [R8,#0x6C]
1310BE:  ADD             R6, SP, #0x30+var_2C
1310C0:  LDR             R1, =(aSkw+4 - 0x1310C8); "W" ...
1310C2:  MOV             R0, R6; int
1310C4:  ADD             R1, PC; "W" ; src
1310C6:  BL              sub_13055C
1310CA:  MOV             R0, R5
1310CC:  MOV             R1, R6
1310CE:  MOVS            R2, #0x57 ; 'W'
1310D0:  BL              sub_130FE8
1310D4:  B               loc_1310DC
1310D6:  ALIGN 4
1310D8:  DCD aSkw+4 - 0x1310C8
1310DC:  LDRB.W          R0, [SP,#0x30+var_2C]
1310E0:  LSLS            R0, R0, #0x1F
1310E2:  ITT NE
1310E4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1310E6:  BLXNE           j__ZdlPv; operator delete(void *)
1310EA:  LDR.W           R5, [R8,#0x6C]
1310EE:  ADD             R6, SP, #0x30+var_2C
1310F0:  LDR             R1, =(unk_901B9 - 0x1310F8)
1310F2:  MOV             R0, R6; int
1310F4:  ADD             R1, PC; unk_901B9 ; src
1310F6:  BL              sub_13055C
1310FA:  MOV             R0, R5
1310FC:  MOV             R1, R6
1310FE:  MOVS            R2, #0x45 ; 'E'
131100:  BL              sub_130FE8
131104:  B               loc_13110C
131106:  ALIGN 4
131108:  DCD unk_901B9 - 0x1310F8
13110C:  LDRB.W          R0, [SP,#0x30+var_2C]
131110:  LSLS            R0, R0, #0x1F
131112:  ITT NE
131114:  LDRNE           R0, [SP,#0x30+var_24]; void *
131116:  BLXNE           j__ZdlPv; operator delete(void *)
13111A:  LDR.W           R5, [R8,#0x6C]
13111E:  ADD             R6, SP, #0x30+var_2C
131120:  LDR             R1, =(aR_0 - 0x131128); "R" ...
131122:  MOV             R0, R6; int
131124:  ADD             R1, PC; "R"
131126:  BL              sub_13055C
13112A:  MOV             R0, R5
13112C:  MOV             R1, R6
13112E:  MOVS            R2, #0x52 ; 'R'
131130:  BL              sub_130FE8
131134:  B               loc_13113C
131136:  ALIGN 4
131138:  DCD aR_0 - 0x131128
13113C:  LDRB.W          R0, [SP,#0x30+var_2C]
131140:  LSLS            R0, R0, #0x1F
131142:  ITT NE
131144:  LDRNE           R0, [SP,#0x30+var_24]; void *
131146:  BLXNE           j__ZdlPv; operator delete(void *)
13114A:  LDR.W           R5, [R8,#0x6C]
13114E:  ADD             R6, SP, #0x30+var_2C
131150:  LDR             R1, =(aFtd+2 - 0x131158); "TD" ...
131152:  MOV             R0, R6; int
131154:  ADD             R1, PC; "TD" ; src
131156:  BL              sub_13055C
13115A:  MOV             R0, R5
13115C:  MOV             R1, R6
13115E:  MOVS            R2, #0x54 ; 'T'
131160:  BL              sub_130FE8
131164:  B               loc_13116C
131166:  ALIGN 4
131168:  DCD aFtd+2 - 0x131158
13116C:  LDRB.W          R0, [SP,#0x30+var_2C]
131170:  LSLS            R0, R0, #0x1F
131172:  ITT NE
131174:  LDRNE           R0, [SP,#0x30+var_24]; void *
131176:  BLXNE           j__ZdlPv; operator delete(void *)
13117A:  LDR.W           R5, [R8,#0x6C]
13117E:  ADD             R6, SP, #0x30+var_2C
131180:  LDR             R1, =(aY_0 - 0x131188); "Y" ...
131182:  MOV             R0, R6; int
131184:  ADD             R1, PC; "Y"
131186:  BL              sub_13055C
13118A:  MOV             R0, R5
13118C:  MOV             R1, R6
13118E:  MOVS            R2, #0x59 ; 'Y'
131190:  BL              sub_130FE8
131194:  B               loc_13119C
131196:  ALIGN 4
131198:  DCD aY_0 - 0x131188
13119C:  LDRB.W          R0, [SP,#0x30+var_2C]
1311A0:  LSLS            R0, R0, #0x1F
1311A2:  ITT NE
1311A4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1311A6:  BLXNE           j__ZdlPv; operator delete(void *)
1311AA:  LDR.W           R5, [R8,#0x6C]
1311AE:  ADD             R6, SP, #0x30+var_2C
1311B0:  LDR             R1, =(unk_88382 - 0x1311B8)
1311B2:  MOV             R0, R6; int
1311B4:  ADD             R1, PC; unk_88382 ; src
1311B6:  BL              sub_13055C
1311BA:  MOV             R0, R5
1311BC:  MOV             R1, R6
1311BE:  MOVS            R2, #0x55 ; 'U'
1311C0:  BL              sub_130FE8
1311C4:  B               loc_1311CC
1311C6:  ALIGN 4
1311C8:  DCD unk_88382 - 0x1311B8
1311CC:  LDRB.W          R0, [SP,#0x30+var_2C]
1311D0:  LSLS            R0, R0, #0x1F
1311D2:  ITT NE
1311D4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1311D6:  BLXNE           j__ZdlPv; operator delete(void *)
1311DA:  LDR.W           R5, [R8,#0x6C]
1311DE:  ADD             R6, SP, #0x30+var_2C
1311E0:  LDR             R1, =(aI - 0x1311E8); "I" ...
1311E2:  MOV             R0, R6; int
1311E4:  ADD             R1, PC; "I"
1311E6:  BL              sub_13055C
1311EA:  MOV             R0, R5
1311EC:  MOV             R1, R6
1311EE:  MOVS            R2, #0x49 ; 'I'
1311F0:  BL              sub_130FE8
1311F4:  B               loc_1311FC
1311F6:  ALIGN 4
1311F8:  DCD aI - 0x1311E8
1311FC:  LDRB.W          R0, [SP,#0x30+var_2C]
131200:  LSLS            R0, R0, #0x1F
131202:  ITT NE
131204:  LDRNE           R0, [SP,#0x30+var_24]; void *
131206:  BLXNE           j__ZdlPv; operator delete(void *)
13120A:  LDR.W           R5, [R8,#0x6C]
13120E:  ADD             R6, SP, #0x30+var_2C
131210:  LDR             R1, =(aO_0 - 0x131218); "O" ...
131212:  MOV             R0, R6; int
131214:  ADD             R1, PC; "O"
131216:  BL              sub_13055C
13121A:  MOV             R0, R5
13121C:  MOV             R1, R6
13121E:  MOVS            R2, #0x4F ; 'O'
131220:  BL              sub_130FE8
131224:  B               loc_13122C
131226:  ALIGN 4
131228:  DCD aO_0 - 0x131218
13122C:  LDRB.W          R0, [SP,#0x30+var_2C]
131230:  LSLS            R0, R0, #0x1F
131232:  ITT NE
131234:  LDRNE           R0, [SP,#0x30+var_24]; void *
131236:  BLXNE           j__ZdlPv; operator delete(void *)
13123A:  LDR.W           R5, [R8,#0x6C]
13123E:  ADD             R6, SP, #0x30+var_2C
131240:  LDR             R1, =(aP_1 - 0x131248); "P" ...
131242:  MOV             R0, R6; int
131244:  ADD             R1, PC; "P"
131246:  BL              sub_13055C
13124A:  MOV             R0, R5
13124C:  MOV             R1, R6
13124E:  MOVS            R2, #0x50 ; 'P'
131250:  BL              sub_130FE8
131254:  B               loc_13125C
131256:  ALIGN 4
131258:  DCD aP_1 - 0x131248
13125C:  LDRB.W          R0, [SP,#0x30+var_2C]
131260:  LSLS            R0, R0, #0x1F
131262:  ITT NE
131264:  LDRNE           R0, [SP,#0x30+var_24]; void *
131266:  BLXNE           j__ZdlPv; operator delete(void *)
13126A:  VMOV.F32        S0, #10.0
13126E:  LDR.W           R5, [R8,#0x70]
131272:  LDR             R1, =(unk_8C30A - 0x13127C)
131274:  ADD             R6, SP, #0x30+var_2C
131276:  MOVS            R0, #0
131278:  ADD             R1, PC; unk_8C30A ; src
13127A:  STRD.W          R0, R0, [R5,#0x60]
13127E:  STR             R0, [R5,#0x68]
131280:  MOV             R0, R6; int
131282:  VDIV.F32        S16, S16, S0
131286:  VMOV.F32        S0, #0.5
13128A:  VMUL.F32        S0, S16, S0
13128E:  VSTR            S0, [R5,#0x58]
131292:  VSTR            S0, [R5,#0x5C]
131296:  BL              sub_13055C
13129A:  MOV             R0, R5
13129C:  MOV             R1, R6
13129E:  MOVS            R2, #0x41 ; 'A'
1312A0:  BL              sub_130FE8
1312A4:  B               loc_1312AC
1312A6:  ALIGN 4
1312A8:  DCD unk_8C30A - 0x13127C
1312AC:  LDRB.W          R0, [SP,#0x30+var_2C]
1312B0:  LSLS            R0, R0, #0x1F
1312B2:  ITT NE
1312B4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1312B6:  BLXNE           j__ZdlPv; operator delete(void *)
1312BA:  LDR.W           R5, [R8,#0x70]
1312BE:  ADD             R6, SP, #0x30+var_2C
1312C0:  LDR             R1, =(aS_2 - 0x1312C8); "S" ...
1312C2:  MOV             R0, R6; int
1312C4:  ADD             R1, PC; "S"
1312C6:  BL              sub_13055C
1312CA:  MOV             R0, R5
1312CC:  MOV             R1, R6
1312CE:  MOVS            R2, #0x53 ; 'S'
1312D0:  BL              sub_130FE8
1312D4:  LDRB.W          R0, [SP,#0x30+var_2C]
1312D8:  LSLS            R0, R0, #0x1F
1312DA:  ITT NE
1312DC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1312DE:  BLXNE           j__ZdlPv; operator delete(void *)
1312E2:  LDR.W           R5, [R8,#0x70]
1312E6:  ADD             R6, SP, #0x30+var_2C
1312E8:  LDR             R1, =(aFtd+4 - 0x1312F0); "D" ...
1312EA:  MOV             R0, R6; int
1312EC:  ADD             R1, PC; "D" ; src
1312EE:  BL              sub_13055C
1312F2:  MOV             R0, R5
1312F4:  MOV             R1, R6
1312F6:  MOVS            R2, #0x44 ; 'D'
1312F8:  BL              sub_130FE8
1312FC:  LDRB.W          R0, [SP,#0x30+var_2C]
131300:  LSLS            R0, R0, #0x1F
131302:  ITT NE
131304:  LDRNE           R0, [SP,#0x30+var_24]; void *
131306:  BLXNE           j__ZdlPv; operator delete(void *)
13130A:  LDR.W           R5, [R8,#0x70]
13130E:  ADD             R6, SP, #0x30+var_2C
131310:  LDR             R1, =(aF_0 - 0x131318); "F" ...
131312:  MOV             R0, R6; int
131314:  ADD             R1, PC; "F"
131316:  BL              sub_13055C
13131A:  MOV             R0, R5
13131C:  MOV             R1, R6
13131E:  MOVS            R2, #0x46 ; 'F'
131320:  BL              sub_130FE8
131324:  LDRB.W          R0, [SP,#0x30+var_2C]
131328:  LSLS            R0, R0, #0x1F
13132A:  ITT NE
13132C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13132E:  BLXNE           j__ZdlPv; operator delete(void *)
131332:  LDR.W           R5, [R8,#0x70]
131336:  ADD             R6, SP, #0x30+var_2C
131338:  LDR             R1, =(aG - 0x131340); "G" ...
13133A:  MOV             R0, R6; int
13133C:  ADD             R1, PC; "G"
13133E:  BL              sub_13055C
131342:  MOV             R0, R5
131344:  MOV             R1, R6
131346:  MOVS            R2, #0x47 ; 'G'
131348:  BL              sub_130FE8
13134C:  LDRB.W          R0, [SP,#0x30+var_2C]
131350:  LSLS            R0, R0, #0x1F
131352:  ITT NE
131354:  LDRNE           R0, [SP,#0x30+var_24]; void *
131356:  BLXNE           j__ZdlPv; operator delete(void *)
13135A:  LDR.W           R5, [R8,#0x70]
13135E:  ADD             R6, SP, #0x30+var_2C
131360:  LDR             R1, =(aH_0 - 0x131368); "H" ...
131362:  MOV             R0, R6; int
131364:  ADD             R1, PC; "H"
131366:  BL              sub_13055C
13136A:  MOV             R0, R5
13136C:  MOV             R1, R6
13136E:  MOVS            R2, #0x48 ; 'H'
131370:  BL              sub_130FE8
131374:  LDRB.W          R0, [SP,#0x30+var_2C]
131378:  LSLS            R0, R0, #0x1F
13137A:  ITT NE
13137C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13137E:  BLXNE           j__ZdlPv; operator delete(void *)
131382:  LDR.W           R5, [R8,#0x70]
131386:  ADD             R6, SP, #0x30+var_2C
131388:  LDR             R1, =(aQjk+2 - 0x131390); "JK(" ...
13138A:  MOV             R0, R6; int
13138C:  ADD             R1, PC; "JK(" ; src
13138E:  BL              sub_13055C
131392:  MOV             R0, R5
131394:  MOV             R1, R6
131396:  MOVS            R2, #0x4A ; 'J'
131398:  BL              sub_130FE8
13139C:  LDRB.W          R0, [SP,#0x30+var_2C]
1313A0:  LSLS            R0, R0, #0x1F
1313A2:  ITT NE
1313A4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1313A6:  BLXNE           j__ZdlPv; operator delete(void *)
1313AA:  LDR.W           R5, [R8,#0x70]
1313AE:  ADD             R6, SP, #0x30+var_2C
1313B0:  LDR             R1, =(aQjk+4 - 0x1313B8); "K(" ...
1313B2:  MOV             R0, R6; int
1313B4:  ADD             R1, PC; "K(" ; src
1313B6:  BL              sub_13055C
1313BA:  MOV             R0, R5
1313BC:  MOV             R1, R6
1313BE:  MOVS            R2, #0x4B ; 'K'
1313C0:  BL              sub_130FE8
1313C4:  LDRB.W          R0, [SP,#0x30+var_2C]
1313C8:  LSLS            R0, R0, #0x1F
1313CA:  ITT NE
1313CC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1313CE:  BLXNE           j__ZdlPv; operator delete(void *)
1313D2:  LDR.W           R5, [R8,#0x70]
1313D6:  ADD             R6, SP, #0x30+var_2C
1313D8:  LDR             R1, =(unk_8FCF2 - 0x1313E0)
1313DA:  MOV             R0, R6; int
1313DC:  ADD             R1, PC; unk_8FCF2 ; src
1313DE:  BL              sub_13055C
1313E2:  MOV             R0, R5
1313E4:  MOV             R1, R6
1313E6:  MOVS            R2, #0x4C ; 'L'
1313E8:  BL              sub_130FE8
1313EC:  LDRB.W          R0, [SP,#0x30+var_2C]
1313F0:  LSLS            R0, R0, #0x1F
1313F2:  ITT NE
1313F4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1313F6:  BLXNE           j__ZdlPv; operator delete(void *)
1313FA:  LDR.W           R0, [R8,#0x74]
1313FE:  VMOV.I32        Q8, #0
131402:  MOVS            R4, #0
131404:  ADD.W           R1, R0, #0x58 ; 'X'
131408:  VST1.32         {D16-D17}, [R1]!
13140C:  STR             R4, [R1]
13140E:  MOVS            R1, #2
131410:  BL              sub_12FFFC
131414:  VMOV.F32        S0, #1.5
131418:  STR             R4, [R0,#0x28]
13141A:  STR             R4, [R0,#0x20]
13141C:  ADD             R6, SP, #0x30+var_2C
13141E:  STR             R4, [R0,#0x18]
131420:  VMUL.F32        S18, S16, S0
131424:  VSTR            S18, [R0,#0x24]
131428:  VSTR            S18, [R0,#0x1C]
13142C:  VSTR            S18, [R0,#0x14]
131430:  MOV             R0, R6; int
131432:  LDR.W           R5, [R8,#0x74]
131436:  LDR             R1, =(aZ_3 - 0x13143C); "Z" ...
131438:  ADD             R1, PC; "Z"
13143A:  BL              sub_13055C
13143E:  MOV             R0, R5
131440:  MOV             R1, R6
131442:  MOVS            R2, #0x5A ; 'Z'
131444:  BL              sub_130FE8
131448:  LDRB.W          R0, [SP,#0x30+var_2C]
13144C:  LSLS            R0, R0, #0x1F
13144E:  ITT NE
131450:  LDRNE           R0, [SP,#0x30+var_24]; void *
131452:  BLXNE           j__ZdlPv; operator delete(void *)
131456:  LDR.W           R5, [R8,#0x74]
13145A:  ADD             R6, SP, #0x30+var_2C
13145C:  LDR             R1, =(aX_0 - 0x131464); "X" ...
13145E:  MOV             R0, R6; int
131460:  ADD             R1, PC; "X"
131462:  BL              sub_13055C
131466:  MOV             R0, R5
131468:  MOV             R1, R6
13146A:  MOVS            R2, #0x58 ; 'X'
13146C:  BL              sub_130FE8
131470:  LDRB.W          R0, [SP,#0x30+var_2C]
131474:  LSLS            R0, R0, #0x1F
131476:  ITT NE
131478:  LDRNE           R0, [SP,#0x30+var_24]; void *
13147A:  BLXNE           j__ZdlPv; operator delete(void *)
13147E:  LDR.W           R5, [R8,#0x74]
131482:  ADD             R6, SP, #0x30+var_2C
131484:  LDR             R1, =(unk_84F93 - 0x13148C)
131486:  MOV             R0, R6; int
131488:  ADD             R1, PC; unk_84F93 ; src
13148A:  BL              sub_13055C
13148E:  MOV             R0, R5
131490:  MOV             R1, R6
131492:  MOVS            R2, #0x43 ; 'C'
131494:  BL              sub_130FE8
131498:  LDRB.W          R0, [SP,#0x30+var_2C]
13149C:  LSLS            R0, R0, #0x1F
13149E:  ITT NE
1314A0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1314A2:  BLXNE           j__ZdlPv; operator delete(void *)
1314A6:  LDR.W           R5, [R8,#0x74]
1314AA:  ADD             R6, SP, #0x30+var_2C
1314AC:  LDR             R1, =(aV_0 - 0x1314B4); "V" ...
1314AE:  MOV             R0, R6; int
1314B0:  ADD             R1, PC; "V"
1314B2:  BL              sub_13055C
1314B6:  MOV             R0, R5
1314B8:  MOV             R1, R6
1314BA:  MOVS            R2, #0x56 ; 'V'
1314BC:  BL              sub_130FE8
1314C0:  LDRB.W          R0, [SP,#0x30+var_2C]
1314C4:  LSLS            R0, R0, #0x1F
1314C6:  ITT NE
1314C8:  LDRNE           R0, [SP,#0x30+var_24]; void *
1314CA:  BLXNE           j__ZdlPv; operator delete(void *)
1314CE:  LDR.W           R5, [R8,#0x74]
1314D2:  ADD             R6, SP, #0x30+var_2C
1314D4:  LDR             R1, =(aB_1 - 0x1314DC); "B" ...
1314D6:  MOV             R0, R6; int
1314D8:  ADD             R1, PC; "B"
1314DA:  BL              sub_13055C
1314DE:  MOV             R0, R5
1314E0:  MOV             R1, R6
1314E2:  MOVS            R2, #0x42 ; 'B'
1314E4:  BL              sub_130FE8
1314E8:  LDRB.W          R0, [SP,#0x30+var_2C]
1314EC:  LSLS            R0, R0, #0x1F
1314EE:  ITT NE
1314F0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1314F2:  BLXNE           j__ZdlPv; operator delete(void *)
1314F6:  LDR.W           R5, [R8,#0x74]
1314FA:  ADD             R6, SP, #0x30+var_2C
1314FC:  LDR             R1, =(aN_0 - 0x131504); "N" ...
1314FE:  MOV             R0, R6; int
131500:  ADD             R1, PC; "N"
131502:  BL              sub_13055C
131506:  MOV             R0, R5
131508:  MOV             R1, R6
13150A:  MOVS            R2, #0x4E ; 'N'
13150C:  BL              sub_130FE8
131510:  LDRB.W          R0, [SP,#0x30+var_2C]
131514:  LSLS            R0, R0, #0x1F
131516:  ITT NE
131518:  LDRNE           R0, [SP,#0x30+var_24]; void *
13151A:  BLXNE           j__ZdlPv; operator delete(void *)
13151E:  LDR.W           R5, [R8,#0x74]
131522:  ADD             R6, SP, #0x30+var_2C
131524:  LDR             R1, =(aM - 0x13152C); "M" ...
131526:  MOV             R0, R6; int
131528:  ADD             R1, PC; "M"
13152A:  BL              sub_13055C
13152E:  MOV             R0, R5
131530:  MOV             R1, R6
131532:  MOVS            R2, #0x4D ; 'M'
131534:  BL              sub_130FE8
131538:  LDRB.W          R0, [SP,#0x30+var_2C]
13153C:  LSLS            R0, R0, #0x1F
13153E:  ITT NE
131540:  LDRNE           R0, [SP,#0x30+var_24]; void *
131542:  BLXNE           j__ZdlPv; operator delete(void *)
131546:  LDR.W           R0, [R8,#0x74]
13154A:  MOVS            R1, #3
13154C:  BL              sub_12FFFC
131550:  MOVS            R4, #0
131552:  VSTR            S18, [R0,#0x24]
131556:  STR             R4, [R0,#0x28]
131558:  VMOV.I32        Q8, #0
13155C:  STR             R4, [R0,#0x20]
13155E:  ADD             R6, SP, #0x30+var_2C
131560:  VSTR            S18, [R0,#0x1C]
131564:  STR             R4, [R0,#0x18]
131566:  VSTR            S18, [R0,#0x14]
13156A:  LDR.W           R5, [R8,#0x78]
13156E:  LDR             R1, =(asc_83A7E - 0x13157C); "/" ...
131570:  ADD.W           R0, R5, #0x58 ; 'X'
131574:  VST1.32         {D16-D17}, [R0]!
131578:  ADD             R1, PC; "/"
13157A:  STR             R4, [R0]
13157C:  MOV             R0, R6; int
13157E:  BL              sub_13055C
131582:  MOV             R0, R5
131584:  MOV             R1, R6
131586:  MOVS            R2, #0x2F ; '/'
131588:  BL              sub_130FE8
13158C:  LDRB.W          R1, [SP,#0x30+var_2C]
131590:  STR             R4, [R0,#0x28]
131592:  VSTR            S18, [R0,#0x24]
131596:  STR             R4, [R0,#0x20]
131598:  VSTR            S18, [R0,#0x1C]
13159C:  STR             R4, [R0,#0x18]
13159E:  VSTR            S18, [R0,#0x14]
1315A2:  LSLS            R0, R1, #0x1F
1315A4:  ITT NE
1315A6:  LDRNE           R0, [SP,#0x30+var_24]; void *
1315A8:  BLXNE           j__ZdlPv; operator delete(void *)
1315AC:  LDR.W           R0, [R8,#0x78]
1315B0:  MOVS            R1, #4
1315B2:  BL              sub_12FFFC
1315B6:  LDR.W           R0, [R8,#0x78]
1315BA:  MOVS            R1, #5
1315BC:  BL              sub_12FFFC
1315C0:  LDR.W           R0, [R8,#0x78]
1315C4:  MOVS            R1, #6
1315C6:  BL              sub_12FFFC
1315CA:  LDR.W           R0, [R8,#0x78]
1315CE:  MOVS            R1, #9
1315D0:  BL              sub_12FFFC
1315D4:  VMOV.F32        S0, #3.0
1315D8:  MOVS            R1, #0
1315DA:  STR             R1, [R0,#0x28]
1315DC:  ADD             R6, SP, #0x30+var_2C
1315DE:  STR             R1, [R0,#0x20]
1315E0:  STR             R1, [R0,#0x18]
1315E2:  VMUL.F32        S0, S16, S0
1315E6:  VSTR            S0, [R0,#0x24]
1315EA:  VSTR            S0, [R0,#0x1C]
1315EE:  VSTR            S0, [R0,#0x14]
1315F2:  MOV             R0, R6; int
1315F4:  LDR.W           R5, [R8,#0x78]
1315F8:  LDR             R1, =(unk_88380 - 0x1315FE)
1315FA:  ADD             R1, PC; unk_88380 ; src
1315FC:  BL              sub_13055C
131600:  MOV             R0, R5
131602:  MOV             R1, R6
131604:  MOVS            R2, #0x2C ; ','
131606:  BL              sub_130FE8
13160A:  LDRB.W          R0, [SP,#0x30+var_2C]
13160E:  LSLS            R0, R0, #0x1F
131610:  ITT NE
131612:  LDRNE           R0, [SP,#0x30+var_24]; void *
131614:  BLXNE           j__ZdlPv; operator delete(void *)
131618:  LDR.W           R5, [R8,#0x78]
13161C:  ADD             R6, SP, #0x30+var_2C
13161E:  LDR             R1, =(asc_836CD - 0x131626); "." ...
131620:  MOV             R0, R6; int
131622:  ADD             R1, PC; "."
131624:  BL              sub_13055C
131628:  MOV             R0, R5
13162A:  MOV             R1, R6
13162C:  MOVS            R2, #0x2E ; '.'
13162E:  BL              sub_130FE8
131632:  LDRB.W          R0, [SP,#0x30+var_2C]
131636:  LSLS            R0, R0, #0x1F
131638:  ITT NE
13163A:  LDRNE           R0, [SP,#0x30+var_24]; void *
13163C:  BLXNE           j__ZdlPv; operator delete(void *)
131640:  LDR.W           R0, [R8,#0x78]
131644:  MOVS            R1, #0xC
131646:  BL              sub_12FFFC
13164A:  LDR.W           R0, [R8,#0x78]
13164E:  MOVS            R1, #0xB
131650:  BL              sub_12FFFC
131654:  LDR.W           R0, [R8,#0x78]
131658:  MOVS            R1, #0xA
13165A:  BL              sub_12FFFC
13165E:  MOVS            R1, #0
131660:  VSTR            S18, [R0,#0x24]
131664:  STR             R1, [R0,#0x28]
131666:  STR             R1, [R0,#0x20]
131668:  VSTR            S18, [R0,#0x1C]
13166C:  STR             R1, [R0,#0x18]
13166E:  VSTR            S18, [R0,#0x14]
131672:  MOV             R0, R8
131674:  BL              sub_13D758
131678:  ADD             SP, SP, #0x10
13167A:  VPOP            {D8-D9}
13167E:  POP.W           {R8}
131682:  POP             {R4-R7,PC}
