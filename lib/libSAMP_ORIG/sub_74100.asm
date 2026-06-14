; =========================================================
; Game Engine Function: sub_74100
; Address            : 0x74100 - 0x74AB2
; =========================================================

74100:  PUSH            {R4-R7,LR}
74102:  ADD             R7, SP, #0xC
74104:  PUSH.W          {R8-R11}
74108:  SUB             SP, SP, #4
7410A:  VPUSH           {D8-D15}
7410E:  SUB.W           SP, SP, #0x440
74112:  LDR             R0, =(byte_1A44E4 - 0x74118)
74114:  ADD             R0, PC; byte_1A44E4
74116:  LDRB            R0, [R0]
74118:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x74122)
7411C:  CMP             R0, #0
7411E:  ADD             R1, PC; __stack_chk_guard_ptr
74120:  LDR             R1, [R1]; __stack_chk_guard
74122:  LDR             R1, [R1]
74124:  STR.W           R1, [R7,#var_68]
74128:  BEQ.W           loc_74A8C
7412C:  LDR             R0, =(off_114AD8 - 0x74132)
7412E:  ADD             R0, PC; off_114AD8
74130:  LDR             R6, [R0]; dword_1A4434
74132:  LDR             R4, [R6]
74134:  CMP             R4, #0
74136:  BEQ.W           loc_74A8C
7413A:  MOV             R0, R4
7413C:  BL              sub_74B78
74140:  LDR.W           R8, [R6]
74144:  LDR.W           R0, [R8,#0x3B0]
74148:  LDR             R1, [R0]
7414A:  CMP             R1, #0
7414C:  BEQ.W           loc_74A8C
74150:  MOVW            R0, #0x139C
74154:  VMOV.I32        Q8, #0
74158:  ADD             R0, R1
7415A:  STR             R0, [SP,#0x4A0+var_460]
7415C:  ADDW            R0, R1, #0xFB4
74160:  STR             R1, [SP,#0x4A0+var_458]
74162:  MOVS            R1, #0
74164:  STR             R4, [SP,#0x4A0+var_484]
74166:  ADDS            R2, R0, R1
74168:  ADDS            R1, #8
7416A:  CMP.W           R1, #0x3E8
7416E:  VLD1.8          {D18}, [R2]
74172:  VADDW.U8        Q8, Q8, D18
74176:  BNE             loc_74166
74178:  VADD.I16        D16, D16, D17
7417C:  STR             R6, [SP,#0x4A0+var_474]
7417E:  LDR             R2, =(dword_1A44DC - 0x7418A)
74180:  LDR             R3, [SP,#0x4A0+var_460]
74182:  VMOV.U16        R0, D16[1]
74186:  ADD             R2, PC; dword_1A44DC
74188:  VMOV.U16        R1, D16[0]
7418C:  STR             R2, [SP,#0x4A0+var_46C]
7418E:  LDRB.W          R12, [R3]
74192:  LDRB.W          LR, [R3,#1]
74196:  LDRB            R4, [R3,#2]
74198:  LDRB            R6, [R3,#3]
7419A:  VMOV.U16        R3, D16[2]
7419E:  LDR             R2, [R2]
741A0:  ADD             R0, R1
741A2:  VMOV.U16        R1, D16[3]
741A6:  ADD             R0, R3
741A8:  ADD             R0, R1
741AA:  ADD             R0, R12
741AC:  ADD             R0, LR
741AE:  ADD             R0, R4
741B0:  ADDS            R3, R0, R6
741B2:  MOVS            R0, #1
741B4:  UXTAH.W         R6, R0, R3
741B8:  MOV             R0, #0xFFFFFFED
741BC:  UXTAH.W         R1, R0, R3
741C0:  MOV             R0, R2
741C2:  CMP             R2, R1
741C4:  IT GT
741C6:  MOVGT           R0, R1
741C8:  STR             R3, [SP,#0x4A0+var_470]
741CA:  UXTH            R3, R3
741CC:  CMP             R2, R1
741CE:  STR             R3, [SP,#0x4A0+var_480]
741D0:  BGT             loc_741D8
741D2:  CMP.W           R0, #0xFFFFFFFF
741D6:  BGT             loc_741E0
741D8:  LDR             R1, [SP,#0x4A0+var_46C]
741DA:  BIC.W           R0, R0, R0,ASR#31
741DE:  STR             R0, [R1]
741E0:  ADD.W           R0, R6, R6,LSL#2
741E4:  STR             R6, [SP,#0x4A0+var_478]
741E6:  LSLS            R4, R0, #2
741E8:  MOV             R0, R4; size
741EA:  BLX             malloc
741EE:  MOV             R1, R4; n
741F0:  MOV             R6, R0
741F2:  BLX             sub_10967C
741F6:  LDR             R0, =(off_114AB0 - 0x74204)
741F8:  MOVW            R3, #0x13A2
741FC:  LDR             R4, [SP,#0x4A0+var_460]
741FE:  LDR             R5, [SP,#0x4A0+var_458]
74200:  ADD             R0, PC; off_114AB0
74202:  LDRD.W          R1, R2, [R4,#0x24]
74206:  STR             R1, [R6,#0xC]
74208:  ADD             R3, R5
7420A:  LDR.W           R1, [R8,#0x3B0]
7420E:  STRD.W          R3, R2, [R6,#4]
74212:  LDR             R2, [R0]; dword_1A4408
74214:  LDR             R0, [R1]
74216:  MOVW            R1, #:lower16:unk_1413FD
7421A:  STR             R3, [SP,#0x4A0+var_464]
7421C:  MOVW            R3, #0x13BC
74220:  STR             R2, [SP,#0x4A0+var_468]
74222:  MOVT            R1, #:upper16:unk_1413FD
74226:  LDR             R2, [R2]
74228:  LDR             R0, [R0,R3]
7422A:  ADD             R1, R2
7422C:  LDRH            R4, [R4,#4]
7422E:  STR             R4, [R6]
74230:  BLX             R1
74232:  UBFX.W          R1, R0, #8, #8
74236:  UBFX.W          R2, R0, #0x10, #8
7423A:  LSRS            R0, R0, #0x18
7423C:  VLDR            S16, =0.0039216
74240:  VMOV            S4, R0
74244:  ADD.W           R8, SP, #0x4A0+var_290
74248:  VMOV            S0, R1
7424C:  MOV.W           R0, #0x3F800000
74250:  VMOV            S2, R2
74254:  STR             R0, [SP,#0x4A0+var_284]
74256:  VCVT.F32.S32    S0, S0
7425A:  MOV             R0, R8
7425C:  VCVT.F32.S32    S2, S2
74260:  VCVT.F32.S32    S4, S4
74264:  VMUL.F32        S0, S0, S16
74268:  VMUL.F32        S2, S2, S16
7426C:  VMUL.F32        S4, S4, S16
74270:  VSTR            S0, [SP,#0x4A0+var_288]
74274:  VSTR            S2, [SP,#0x4A0+var_28C]
74278:  VSTR            S4, [SP,#0x4A0+var_290]
7427C:  BL              sub_88A34
74280:  MOV             R3, R5
74282:  LDR             R5, [SP,#0x4A0+var_468]
74284:  MOVW            R4, #:lower16:unk_148E8F
74288:  MOV.W           R10, #0
7428C:  MOV.W           R11, #1
74290:  MOVT            R4, #:upper16:unk_148E8F
74294:  MOV             R1, R6
74296:  STR             R6, [SP,#0x4A0+var_45C]
74298:  STR             R0, [R6,#0x10]
7429A:  B               loc_742F8
7429C:  LDR             R2, [SP,#0x4A0+var_45C]
7429E:  ADD.W           R9, R2, R0,LSL#2
742A2:  LDR             R0, [R5]
742A4:  ADDS            R2, R0, R4
742A6:  STR.W           R1, [R9,#4]
742AA:  MOV             R0, R3
742AC:  MOV             R1, R6
742AE:  BLX             R2
742B0:  STR.W           R0, [R9,#8]
742B4:  MOV             R1, R6
742B6:  LDR             R0, [R5]
742B8:  ADD             R0, R4
742BA:  ADD.W           R2, R0, #0x16
742BE:  LDR             R0, [SP,#0x4A0+var_458]
742C0:  BLX             R2
742C2:  LDR             R1, [SP,#0x4A0+var_458]
742C4:  STR.W           R0, [R9,#0xC]
742C8:  ADD.W           R1, R1, R10,LSL#2
742CC:  LDR             R2, [R5]
742CE:  LDR             R1, [R1,#4]
742D0:  LDR             R0, [R1]
742D2:  MOV             R1, #0x14A403
742DA:  ADD             R1, R2
742DC:  BLX             R1
742DE:  LDR             R3, [SP,#0x4A0+var_458]
742E0:  ADD.W           R11, R11, #1
742E4:  LSRS            R0, R0, #8
742E6:  ADD.W           R0, R0, #0xFF000000
742EA:  STR.W           R0, [R9,#0x10]
742EE:  ADD.W           R10, R10, #1
742F2:  CMP.W           R10, #0x3EC
742F6:  BEQ             loc_7432A
742F8:  ADD.W           R0, R3, R10
742FC:  LDRB.W          R0, [R0,#0xFB4]
74300:  CMP             R0, #0
74302:  BEQ             loc_742EE
74304:  LDR             R0, [SP,#0x4A0+var_460]
74306:  UXTH.W          R6, R10
7430A:  LDR             R2, [SP,#0x4A0+var_45C]
7430C:  LDRH            R1, [R0,#4]
7430E:  ADD.W           R0, R11, R11,LSL#2
74312:  CMP             R1, R6
74314:  LDR             R1, [SP,#0x4A0+var_464]
74316:  STR.W           R10, [R2,R0,LSL#2]
7431A:  BEQ             loc_7429C
7431C:  ADD.W           R1, R3, R10,LSL#2
74320:  LDR             R1, [R1,#4]
74322:  CMP             R1, #0
74324:  IT NE
74326:  ADDNE           R1, #4
74328:  B               loc_7429C
7432A:  LDR             R0, =(byte_1A44E5 - 0x74334)
7432C:  LDR.W           R10, [SP,#0x4A0+var_480]
74330:  ADD             R0, PC; byte_1A44E5
74332:  LDRB            R0, [R0]
74334:  CMP             R0, #0
74336:  ITT NE
74338:  LDRNE           R0, [SP,#0x4A0+var_470]
7433A:  MOVSNE.W        R0, R0,LSL#16
7433E:  BNE             loc_743FE
74340:  BL              sub_8C514
74344:  MOV             R4, R0
74346:  MOV             R0, #0x3F333333
7434E:  ADD             R5, SP, #0x4A0+var_290
74350:  STR.W           R0, [R4,#0x90]
74354:  MOV.W           R0, #0x41000000
74358:  STRD.W          R0, R0, [SP,#0x4A0+var_290]
7435C:  MOVS            R0, #1
7435E:  MOV             R1, R5
74360:  BL              sub_96058
74364:  ADR.W           R0, dword_74B10
74368:  MOV             R1, R5
7436A:  VLD1.64         {D16-D17}, [R0@128]
7436E:  MOVS            R0, #2
74370:  VST1.64         {D16-D17}, [R5]
74374:  BL              sub_95E08
74378:  LDR             R0, =(unk_1A44E8 - 0x74380)
7437A:  MOVS            R1, #0
7437C:  ADD             R0, PC; unk_1A44E8
7437E:  STR             R0, [SP,#0x4A0+var_470]
74380:  BL              sub_8FCD4
74384:  VMOV.F32        S0, #0.5
74388:  VLDR            S4, [R4,#0xC]
7438C:  VLDR            S2, [R4,#8]
74390:  MOV.W           R0, #0x3F000000
74394:  ADD             R4, SP, #0x4A0+var_3A8
74396:  STRD.W          R0, R0, [SP,#0x4A0+var_3A8]
7439A:  ADD             R0, SP, #0x4A0+var_290
7439C:  MOVS            R1, #1
7439E:  MOV             R2, R4
743A0:  VMUL.F32        S4, S4, S0
743A4:  VMUL.F32        S0, S2, S0
743A8:  VSTR            S4, [SP,#0x4A0+var_28C]
743AC:  VSTR            S0, [SP,#0x4A0+var_290]
743B0:  BL              sub_976E0
743B4:  LDR             R0, =(aBegincscoreboa - 0x743BE); "###beginCScoreBoard" ...
743B6:  MOVS            R1, #0
743B8:  MOVS            R2, #0x2F ; '/'
743BA:  ADD             R0, PC; "###beginCScoreBoard"
743BC:  BL              sub_8FD20
743C0:  LDR             R1, =(aServerinfo - 0x743CA); "###serverInfo" ...
743C2:  MOVS            R0, #2
743C4:  MOVS            R2, #0
743C6:  ADD             R1, PC; "###serverInfo"
743C8:  BL              sub_99F94
743CC:  MOVW            R8, #0
743D0:  CMP.W           R10, #8
743D4:  MOVT            R8, #0xBF80
743D8:  BHI             loc_743F2
743DA:  LDR             R1, =(aPlayers9 - 0x743E6); "Players: 9" ...
743DC:  ADD             R0, SP, #0x4A0+var_290; int
743DE:  MOVS            R2, #0; int
743E0:  MOVS            R3, #0; int
743E2:  ADD             R1, PC; "Players: 9"
743E4:  STR.W           R8, [SP,#0x4A0+var_4A0]; float
743E8:  BL              sub_899BC
743EC:  LDR             R1, =(aPlayers99 - 0x743F2); "Players: 99" ...
743EE:  ADD             R1, PC; "Players: 99"
743F0:  B               loc_744B0
743F2:  CMP.W           R10, #0x62 ; 'b'
743F6:  BHI             loc_74460
743F8:  LDR             R1, =(aPlayers99 - 0x743FE); "Players: 99" ...
743FA:  ADD             R1, PC; "Players: 99"
743FC:  B               loc_744B0
743FE:  LDR             R0, [SP,#0x4A0+var_45C]
74400:  MOV.W           R9, #0
74404:  MOV             LR, #0xFFFFFFEC
74408:  MOV             R3, R10
7440A:  ADD.W           R12, R0, #0x14
7440E:  B               loc_7441A
74410:  ADD.W           R9, R9, #1
74414:  SUBS            R3, #1
74416:  CMP             R9, R10
74418:  BEQ             loc_74340
7441A:  CMP             R9, R10
7441C:  BCS             loc_74410
7441E:  MOVS            R6, #0
74420:  MOV             R0, R12
74422:  B               loc_7442C
74424:  ADDS            R6, #1
74426:  ADDS            R0, #0x14
74428:  CMP             R3, R6
7442A:  BEQ             loc_74410
7442C:  LDR.W           R5, [R0,#-0xC]
74430:  LDR             R4, [R0,#8]
74432:  CMP             R4, R5
74434:  BLE             loc_74424
74436:  MOV             R5, R0
74438:  MOV             R4, R8
7443A:  VLD1.8          {D16-D17}, [R5],LR
7443E:  VLD1.8          {D18-D19}, [R5]
74442:  VST1.64         {D18-D19}, [R8]
74446:  VST1.8          {D16-D17}, [R5]!
7444A:  VLD1.8          {D18-D19}, [R4]!
7444E:  LDR             R2, [R5]
74450:  STR             R2, [R4]
74452:  MOV             R4, R0
74454:  VST1.8          {D18-D19}, [R4]!
74458:  LDR             R1, [R4]
7445A:  STR             R2, [R4]
7445C:  STR             R1, [R5]
7445E:  B               loc_74424
74460:  MOVW            R0, #0x3E6
74464:  CMP             R10, R0
74466:  BHI             loc_744A4
74468:  LDR             R1, =(aPlayers999 - 0x7446E); "Players: 999" ...
7446A:  ADD             R1, PC; "Players: 999"
7446C:  B               loc_744B0
7446E:  ALIGN 0x10
74470:  DCD byte_1A44E4 - 0x74118
74474:  DCD off_114AD8 - 0x74132
74478:  DCD dword_1A44DC - 0x7418A
7447C:  DCD off_114AB0 - 0x74204
74480:  DCFS 0.0039216
74484:  DCD byte_1A44E5 - 0x74334
74488:  DCD unk_1A44E8 - 0x74380
7448C:  DCD aBegincscoreboa - 0x743BE
74490:  DCD aServerinfo - 0x743CA
74494:  DCD aPlayers9 - 0x743E6
74498:  DCD aPlayers99 - 0x743F2
7449C:  DCD aPlayers99 - 0x743FE
744A0:  DCD aPlayers999 - 0x7446E
744A4:  LDR             R1, =(aPlayers1000 - 0x744AA); "Players: 1000" ...
744A6:  ADD             R1, PC; "Players: 1000"
744A8:  B               loc_744B0
744AA:  ALIGN 4
744AC:  DCD aPlayers1000 - 0x744AA
744B0:  ADD             R0, SP, #0x4A0+var_290; int
744B2:  MOVS            R2, #0; int
744B4:  MOVS            R3, #0; int
744B6:  STR.W           R8, [SP,#0x4A0+var_4A0]; float
744BA:  BL              sub_899BC
744BE:  LDR             R0, [SP,#0x4A0+var_474]
744C0:  ADD             R5, SP, #0x4A0+var_290
744C2:  MOV.W           R2, #0x200
744C6:  VLDR            S20, [SP,#0x4A0+var_290]
744CA:  LDR             R1, [R0]
744CC:  MOV             R0, R5
744CE:  BL              sub_87F98
744D2:  MOV             R9, #0x3F4CCCCD
744DA:  MOV             R0, R9
744DC:  BL              sub_978D0
744E0:  LDR             R0, =(aS_2 - 0x744E8); "%s" ...
744E2:  MOV             R1, R5
744E4:  ADD             R0, PC; "%s"
744E6:  BL              sub_A61F0
744EA:  LDR             R0, =(off_114C24 - 0x744FA)
744EC:  VMOV.F32        S22, #3.0
744F0:  VCVT.F64.F32    D16, S20
744F4:  LDR             R6, [SP,#0x4A0+var_470]
744F6:  ADD             R0, PC; off_114C24
744F8:  LDR             R5, [R0]; dword_116D58
744FA:  MOV.W           R0, #0xFFFFFFFF
744FE:  VLDR            S0, [R5]
74502:  VDIV.F32        S0, S0, S22
74506:  VCVT.F64.F32    D17, S0
7450A:  VADD.F64        D16, D16, D17
7450E:  VLDR            S0, [R6]
74512:  VCVT.F64.F32    D17, S0
74516:  VSUB.F64        D16, D17, D16
7451A:  VCVT.F32.F64    S0, D16
7451E:  VMOV            R1, S0
74522:  BL              sub_99738
74526:  BL              sub_99408
7452A:  LDR             R0, =(aPlayersD - 0x74532); "Players: %d" ...
7452C:  LDR             R1, [SP,#0x4A0+var_478]
7452E:  ADD             R0, PC; "Players: %d"
74530:  BL              sub_A61F0
74534:  VLDR            S0, [R5]
74538:  MOV.W           R0, #0xFFFFFFFF
7453C:  VLDR            S18, =100.0
74540:  VLDR            S2, [R6]
74544:  VDIV.F32        S0, S0, S22
74548:  VDIV.F32        S2, S2, S18
7454C:  VADD.F32        S0, S2, S0
74550:  VADD.F32        S0, S20, S0
74554:  VMOV            R1, S0
74558:  BL              sub_99738
7455C:  BL              sub_99408
74560:  MOVS            R0, #1
74562:  MOVS            R1, #0
74564:  MOVS            R2, #1
74566:  BL              sub_99F94
7456A:  BL              sub_A7558
7456E:  VMOV.I32        Q8, #0
74572:  MOVS            R0, #3
74574:  MOV             R1, R4
74576:  VST1.64         {D16-D17}, [R4]
7457A:  BL              sub_95E08
7457E:  LDR             R0, =(aHeaders - 0x7458C); "###headers" ...
74580:  MOVS            R1, #0
74582:  ADD             R4, SP, #0x4A0+var_3A8
74584:  MOVT            R1, #0x41B8
74588:  ADD             R0, PC; "###headers"
7458A:  STRD.W          R8, R1, [SP,#0x4A0+var_3A8]
7458E:  MOV             R1, R4
74590:  MOVS            R2, #0
74592:  MOVS            R3, #0
74594:  BL              sub_9565C
74598:  LDR             R1, =(aHeaderscolumn - 0x745A2); "###headersColumn" ...
7459A:  MOVS            R0, #4
7459C:  MOVS            R2, #0
7459E:  ADD             R1, PC; "###headersColumn"
745A0:  BL              sub_99F94
745A4:  MOV             R0, R9
745A6:  BL              sub_978D0
745AA:  LDR             R0, =(aId - 0x745B0); " id" ...
745AC:  ADD             R0, PC; " id"
745AE:  BL              sub_A61F0
745B2:  VLDR            S0, [R6]
745B6:  VMOV.F32        S24, #10.0
745BA:  MOV.W           R0, #0xFFFFFFFF
745BE:  VDIV.F32        S0, S0, S18
745C2:  VMUL.F32        S0, S0, S24
745C6:  VMOV            R1, S0
745CA:  BL              sub_99738
745CE:  BL              sub_99408
745D2:  LDR             R0, =(aName - 0x745D8); " name" ...
745D4:  ADD             R0, PC; " name"
745D6:  BL              sub_A61F0
745DA:  VLDR            S0, [R6]
745DE:  MOV.W           R0, #0xFFFFFFFF
745E2:  VLDR            S26, =60.0
745E6:  VDIV.F32        S0, S0, S18
745EA:  VMUL.F32        S0, S0, S26
745EE:  VMOV            R1, S0
745F2:  BL              sub_99738
745F6:  BL              sub_99408
745FA:  LDR             R0, =(aScore - 0x74600); " score" ...
745FC:  ADD             R0, PC; " score"
745FE:  BL              sub_A61F0
74602:  VLDR            S0, [R6]
74606:  VMOV.F32        S28, #15.0
7460A:  MOV.W           R0, #0xFFFFFFFF
7460E:  VDIV.F32        S0, S0, S18
74612:  VMUL.F32        S0, S0, S28
74616:  VMOV            R1, S0
7461A:  BL              sub_99738
7461E:  BL              sub_99408
74622:  LDR             R0, =(aPing - 0x74628); " ping" ...
74624:  ADD             R0, PC; " ping"
74626:  BL              sub_A61F0
7462A:  VLDR            S0, [R6]
7462E:  MOV.W           R0, #0xFFFFFFFF
74632:  VDIV.F32        S0, S0, S18
74636:  VMUL.F32        S0, S0, S28
7463A:  VMOV            R1, S0
7463E:  BL              sub_99738
74642:  BL              sub_99408
74646:  MOVS            R0, #1
74648:  MOVS            R1, #0
7464A:  MOVS            R2, #1
7464C:  BL              sub_99F94
74650:  BL              sub_959E0
74654:  MOVS            R0, #1
74656:  BL              sub_96230
7465A:  ADR.W           R0, dword_74B20
7465E:  MOV             R1, R4
74660:  VLD1.64         {D16-D17}, [R0@128]
74664:  MOVS            R0, #5
74666:  VST1.64         {D16-D17}, [R4]
7466A:  BL              sub_95E08
7466E:  ADR.W           R0, dword_74B30
74672:  MOV             R1, R4
74674:  VLD1.64         {D16-D17}, [R0@128]
74678:  MOVS            R0, #3
7467A:  VST1.64         {D16-D17}, [R4]
7467E:  BL              sub_95E08
74682:  LDR             R0, =(aList - 0x7468E); "###list" ...
74684:  ADD             R4, SP, #0x4A0+var_3A8
74686:  MOVS            R2, #1
74688:  MOVS            R3, #0
7468A:  ADD             R0, PC; "###list"
7468C:  MOV             R1, R4
7468E:  STRD.W          R8, R8, [SP,#0x4A0+var_3A8]
74692:  BL              sub_9565C
74696:  MOV             R0, R9
74698:  MOV             R9, R4
7469A:  MOVS            R4, #0
7469C:  BL              sub_978D0
746A0:  LDR             R1, =(aListcolumn - 0x746AA); "###listColumn" ...
746A2:  MOVS            R0, #4
746A4:  MOVS            R2, #0
746A6:  ADD             R1, PC; "###listColumn"
746A8:  BL              sub_99F94
746AC:  LDR             R0, [SP,#0x4A0+var_46C]
746AE:  LDR             R2, [R0]
746B0:  CMP             R2, R10
746B2:  BGT.W           loc_74A74
746B6:  B               loc_746EC
746B8:  DCD aS_2 - 0x744E8
746BC:  DCD off_114C24 - 0x744FA
746C0:  DCD aPlayersD - 0x74532
746C4:  DCFS 100.0
746C8:  DCD aHeaders - 0x7458C
746CC:  DCD aHeaderscolumn - 0x745A2
746D0:  DCD aId - 0x745B0
746D4:  DCD aName - 0x745D8
746D8:  DCFS 60.0
746DC:  DCD aScore - 0x74600
746E0:  DCD aPing - 0x74628
746E4:  DCD aList - 0x7468E
746E8:  DCD aListcolumn - 0x746AA
746EC:  ADD             R0, SP, #0x4A0+var_43C
746EE:  VMOV.F32        S30, #20.0
746F2:  ADD.W           R1, R0, #8
746F6:  STR             R1, [SP,#0x4A0+var_474]
746F8:  ADD.W           R1, R0, #0x2C ; ','
746FC:  STR             R1, [SP,#0x4A0+var_478]
746FE:  ADD.W           R3, R0, #0x40 ; '@'
74702:  ADD.W           R11, R0, #0xC
74706:  ADD.W           R0, R2, R2,LSL#2
7470A:  LDR             R1, [SP,#0x4A0+var_45C]
7470C:  ADD             R5, SP, #0x4A0+var_448
7470E:  STR             R3, [SP,#0x4A0+var_460]
74710:  ADD.W           R0, R1, R0,LSL#2
74714:  STR.W           R11, [SP,#0x4A0+var_47C]
74718:  ADDS            R0, #8
7471A:  STR             R0, [SP,#0x4A0+var_458]
7471C:  ADD.W           R0, R10, #1
74720:  STR             R0, [SP,#0x4A0+var_480]
74722:  ADR.W           R0, dword_74B40
74726:  MOV             R10, R3
74728:  VLD1.64         {D10-D11}, [R0@128]
7472C:  MOV             R0, R2
7472E:  MOV             R8, R9
74730:  MOV             R6, R2
74732:  BL              sub_97C90
74736:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x7473E)
74738:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74742)
7473A:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
7473C:  STR             R4, [SP,#0x4A0+var_438]
7473E:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74740:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74742:  LDR             R4, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74744:  ADD.W           R1, R0, #0x20 ; ' '
74748:  ADDS            R0, #0xC
7474A:  ADD.W           R9, R4, #0x20 ; ' '
7474E:  STR             R1, [SP,#0x4A0+var_3FC]
74750:  STR             R0, [SP,#0x4A0+var_43C]
74752:  STR.W           R9, [SP,#0x4A0+var_434]
74756:  MOV             R0, R10; this
74758:  MOV             R1, R11; void *
7475A:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
7475E:  MOV.W           R0, #0xFFFFFFFF
74762:  STR.W           R9, [SP,#0x4A0+var_434]
74766:  STR             R0, [SP,#0x4A0+var_3B0]
74768:  MOVS            R0, #0
7476A:  STR             R0, [SP,#0x4A0+var_3B4]
7476C:  ADD.W           R0, R4, #0x34 ; '4'
74770:  STR             R0, [SP,#0x4A0+var_45C]
74772:  STR             R0, [SP,#0x4A0+var_3FC]
74774:  ADD.W           R0, R4, #0xC
74778:  STR             R0, [SP,#0x4A0+var_464]
7477A:  STR             R0, [SP,#0x4A0+var_43C]
7477C:  MOV             R0, R11
7477E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
74782:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x7478E)
74784:  VMOV.I32        Q8, #0
74788:  LDR             R1, [SP,#0x4A0+var_478]
7478A:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
7478C:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
7478E:  VST1.32         {D16-D17}, [R1]
74792:  MOVS            R1, #0x18
74794:  ADDS            R0, #8
74796:  STR             R1, [SP,#0x4A0+var_400]
74798:  STR             R0, [SP,#0x4A0+var_468]
7479A:  STR             R0, [SP,#0x4A0+var_430]
7479C:  LDR             R0, [SP,#0x4A0+var_474]
7479E:  MOV             R1, R6
747A0:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
747A4:  MOV             R0, R5
747A6:  MOV             R1, R11
747A8:  MOV             R10, R9
747AA:  MOV             R9, R8
747AC:  BL              sub_75206
747B0:  LDR             R1, =(asc_4C6E0 - 0x747B8); "##" ...
747B2:  MOVS            R4, #0
747B4:  ADD             R1, PC; "##"
747B6:  ADD             R0, SP, #0x4A0+var_454
747B8:  MOV             R2, R5
747BA:  BLX             j__ZNSt6__ndk1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_; std::operator+<char>(char const*,std::string const&)
747BE:  LDR             R0, =(dword_1A44E0 - 0x747C6)
747C0:  LDR             R5, [SP,#0x4A0+var_44C]
747C2:  ADD             R0, PC; dword_1A44E0
747C4:  LDRB.W          R8, [SP,#0x4A0+var_454]
747C8:  STR             R0, [SP,#0x4A0+var_46C]
747CA:  LDR.W           R11, [R0]
747CE:  BL              sub_8C524
747D2:  VLDR            S0, [R0,#0x4C]
747D6:  MOVS.W          R0, R8,LSL#31
747DA:  ADD             R0, SP, #0x4A0+var_454
747DC:  STR             R4, [SP,#0x4A0+var_3A8]
747DE:  VADD.F32        S0, S0, S30
747E2:  VSTR            S0, [SP,#0x4A0+var_3A4]
747E6:  IT EQ
747E8:  ADDEQ           R5, R0, #1
747EA:  SUB.W           R0, R6, R11
747EE:  CLZ.W           R0, R0
747F2:  LSRS            R1, R0, #5
747F4:  MOV             R0, R5
747F6:  MOVS            R2, #6
747F8:  MOV             R3, R9
747FA:  BL              sub_A7C88
747FE:  LDR             R5, [SP,#0x4A0+var_460]
74800:  CMP             R0, #0
74802:  MOV.W           R8, #0
74806:  BEQ             loc_74892
74808:  MOVS            R0, #0
7480A:  BL              sub_9559C
7480E:  CMP             R0, #0
74810:  BEQ             loc_74892
74812:  BL              sub_6C808
74816:  LDR             R0, [R0,#0x60]
74818:  MOVS            R1, #1
7481A:  BL              sub_6C90C
7481E:  LDR             R0, =(off_114B4C - 0x74824)
74820:  ADD             R0, PC; off_114B4C
74822:  LDR             R0, [R0]; dword_1A44CC
74824:  STR.W           R8, [R0]
74828:  MOVS            R0, #0
7482A:  BL              sub_74070
7482E:  MOV             R0, R9
74830:  BL              sub_86B90
74834:  LDR             R0, [SP,#0x4A0+var_458]
74836:  LDR.W           R0, [R0,#-8]
7483A:  STR             R0, [SP,#0x4A0+var_3AC]
7483C:  ADD             R1, SP, #0x4A0+var_3AC
7483E:  MOV             R0, R9
74840:  MOVS            R2, #0x20 ; ' '
74842:  MOVS            R3, #1
74844:  BL              sub_86D52
74848:  STR.W           R8, [SP,#0x4A0+var_3AC]
7484C:  ADD             R1, SP, #0x4A0+var_3AC
7484E:  MOV             R0, R9
74850:  MOVS            R2, #0x20 ; ' '
74852:  MOVS            R3, #1
74854:  BL              sub_86D52
74858:  LDR             R0, [SP,#0x4A0+var_484]
7485A:  LDR.W           R0, [R0,#0x210]
7485E:  LDR             R1, =(off_114BB0 - 0x74864)
74860:  ADD             R1, PC; off_114BB0
74862:  LDR             R2, [R0]
74864:  LDR             R1, [R1]; unk_116E2C
74866:  LDR.W           R12, [R2,#0x6C]
7486A:  MOVS            R2, #9
7486C:  MOVS            R3, #1
7486E:  STRD.W          R2, R8, [SP,#0x4A0+var_4A0]
74872:  MOV.W           R2, #0xFFFFFFFF
74876:  STR             R2, [SP,#0x4A0+var_494]
74878:  MOVW            R2, #0xFFFF
7487C:  STRD.W          R2, R2, [SP,#0x4A0+var_490]
74880:  MOV             R2, R9
74882:  STR.W           R8, [SP,#0x4A0+var_498]
74886:  STR.W           R8, [SP,#0x4A0+var_488]
7488A:  BLX             R12
7488C:  MOV             R0, R9
7488E:  BL              sub_86BF8
74892:  MOVS            R0, #0
74894:  BL              sub_8B850
74898:  CMP             R0, #0
7489A:  ITT NE
7489C:  LDRNE           R0, [SP,#0x4A0+var_46C]
7489E:  STRNE           R6, [R0]
748A0:  CMP             R6, R11
748A2:  BNE             loc_748B0
748A4:  VST1.64         {D10-D11}, [R9]
748A8:  MOVS            R0, #0x18
748AA:  MOV             R1, R9
748AC:  BL              sub_95E08
748B0:  MOVS            R1, #0
748B2:  MOVS            R0, #0
748B4:  MOVT            R1, #0xBF80
748B8:  BL              sub_8B214
748BC:  LDRB.W          R0, [SP,#0x4A0+var_454]
748C0:  LSLS            R0, R0, #0x1F
748C2:  ITT NE
748C4:  LDRNE           R0, [SP,#0x4A0+var_44C]; void *
748C6:  BLXNE           j__ZdlPv; operator delete(void *)
748CA:  LDRB.W          R0, [SP,#0x4A0+var_448]
748CE:  LSLS            R0, R0, #0x1F
748D0:  ITT NE
748D2:  LDRNE           R0, [SP,#0x4A0+var_440]; void *
748D4:  BLXNE           j__ZdlPv; operator delete(void *)
748D8:  LDR             R1, [SP,#0x4A0+var_45C]
748DA:  LDRB.W          R0, [SP,#0x4A0+var_410]
748DE:  STR             R1, [SP,#0x4A0+var_3FC]
748E0:  LDR             R1, [SP,#0x4A0+var_464]
748E2:  STR             R1, [SP,#0x4A0+var_43C]
748E4:  LSLS            R0, R0, #0x1F
748E6:  LDR             R1, [SP,#0x4A0+var_468]
748E8:  STRD.W          R10, R1, [SP,#0x4A0+var_434]
748EC:  ITT NE
748EE:  LDRNE           R0, [SP,#0x4A0+var_408]; void *
748F0:  BLXNE           j__ZdlPv; operator delete(void *)
748F4:  LDR.W           R11, [SP,#0x4A0+var_47C]
748F8:  MOV             R0, R11
748FA:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
748FE:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74904)
74900:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74902:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74904:  ADDS            R1, R0, #4
74906:  ADD             R0, SP, #0x4A0+var_43C
74908:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
7490C:  MOV             R0, R5
7490E:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
74912:  LDR.W           R10, [SP,#0x4A0+var_458]
74916:  SUB.W           R4, R7, #-var_73
7491A:  MOV             R0, R4
7491C:  LDR.W           R3, [R10,#-8]
74920:  BL              sub_74C80
74924:  LDR.W           R3, [R10]
74928:  SUB.W           R0, R7, #-var_7E
7492C:  BL              sub_74C80
74930:  LDR.W           R3, [R10,#4]
74934:  SUB.W           R0, R7, #-var_89
74938:  BL              sub_74C80
7493C:  LDR.W           R0, [R10,#8]
74940:  MOV.W           R8, #0x3F800000
74944:  LDR             R5, =(aS_2 - 0x74960); "%s" ...
74946:  STR.W           R8, [SP,#0x4A0+var_39C]
7494A:  UXTB            R1, R0
7494C:  UBFX.W          R2, R0, #8, #8
74950:  UBFX.W          R0, R0, #0x10, #8
74954:  VMOV            S0, R1
74958:  VMOV            S2, R2
7495C:  ADD             R5, PC; "%s"
7495E:  VMOV            S4, R0
74962:  MOV             R0, R9
74964:  VCVT.F32.S32    S0, S0
74968:  MOV             R1, R5
7496A:  VCVT.F32.S32    S2, S2
7496E:  MOV             R2, R4
74970:  VCVT.F32.S32    S4, S4
74974:  VMUL.F32        S17, S0, S16
74978:  VMUL.F32        S19, S2, S16
7497C:  VMUL.F32        S25, S4, S16
74980:  VSTR            S17, [SP,#0x4A0+var_3A0]
74984:  VSTR            S19, [SP,#0x4A0+var_3A4]
74988:  VSTR            S25, [SP,#0x4A0+var_3A8]
7498C:  BL              sub_A62B8
74990:  LDR             R4, [SP,#0x4A0+var_470]
74992:  MOV.W           R0, #0xFFFFFFFF
74996:  VLDR            S0, [R4]
7499A:  VDIV.F32        S0, S0, S18
7499E:  VMUL.F32        S0, S0, S24
749A2:  VMOV            R1, S0
749A6:  BL              sub_99738
749AA:  BL              sub_99408
749AE:  LDR.W           R2, [R10,#-4]
749B2:  MOV             R0, R9
749B4:  MOV             R1, R5
749B6:  STR.W           R8, [SP,#0x4A0+var_39C]
749BA:  VSTR            S17, [SP,#0x4A0+var_3A0]
749BE:  VSTR            S19, [SP,#0x4A0+var_3A4]
749C2:  VSTR            S25, [SP,#0x4A0+var_3A8]
749C6:  BL              sub_A62B8
749CA:  VLDR            S0, [R4]
749CE:  MOV.W           R0, #0xFFFFFFFF
749D2:  VDIV.F32        S0, S0, S18
749D6:  VMUL.F32        S0, S0, S26
749DA:  VMOV            R1, S0
749DE:  BL              sub_99738
749E2:  BL              sub_99408
749E6:  SUB.W           R2, R7, #-var_7E
749EA:  MOV             R0, R9
749EC:  MOV             R1, R5
749EE:  STR.W           R8, [SP,#0x4A0+var_39C]
749F2:  VSTR            S17, [SP,#0x4A0+var_3A0]
749F6:  VSTR            S19, [SP,#0x4A0+var_3A4]
749FA:  VSTR            S25, [SP,#0x4A0+var_3A8]
749FE:  BL              sub_A62B8
74A02:  VLDR            S0, [R4]
74A06:  MOV.W           R0, #0xFFFFFFFF
74A0A:  VDIV.F32        S0, S0, S18
74A0E:  VMUL.F32        S0, S0, S28
74A12:  VMOV            R1, S0
74A16:  BL              sub_99738
74A1A:  BL              sub_99408
74A1E:  SUB.W           R2, R7, #-var_89
74A22:  MOV             R0, R9
74A24:  MOV             R1, R5
74A26:  STR.W           R8, [SP,#0x4A0+var_39C]
74A2A:  VSTR            S17, [SP,#0x4A0+var_3A0]
74A2E:  VSTR            S19, [SP,#0x4A0+var_3A4]
74A32:  VSTR            S25, [SP,#0x4A0+var_3A8]
74A36:  BL              sub_A62B8
74A3A:  VLDR            S0, [R4]
74A3E:  MOV.W           R0, #0xFFFFFFFF
74A42:  VDIV.F32        S0, S0, S18
74A46:  VMUL.F32        S0, S0, S28
74A4A:  VMOV            R1, S0
74A4E:  BL              sub_99738
74A52:  BL              sub_99408
74A56:  ADD.W           R10, R10, #0x14
74A5A:  STR.W           R10, [SP,#0x4A0+var_458]
74A5E:  ADDS            R6, #1
74A60:  LDR             R0, [SP,#0x4A0+var_480]
74A62:  LDR.W           R10, [SP,#0x4A0+var_460]
74A66:  ADD             R5, SP, #0x4A0+var_448
74A68:  CMP             R0, R6
74A6A:  MOV             R2, R6
74A6C:  MOV.W           R4, #0
74A70:  BNE.W           loc_7472C
74A74:  BL              sub_96B84
74A78:  BL              sub_959E0
74A7C:  BL              sub_94DC0
74A80:  MOVS            R0, #1
74A82:  BL              sub_9618C
74A86:  MOVS            R0, #3
74A88:  BL              sub_96230
74A8C:  LDR.W           R0, [R7,#var_68]
74A90:  LDR             R1, =(__stack_chk_guard_ptr - 0x74A96)
74A92:  ADD             R1, PC; __stack_chk_guard_ptr
74A94:  LDR             R1, [R1]; __stack_chk_guard
74A96:  LDR             R1, [R1]
74A98:  CMP             R1, R0
74A9A:  ITTTT EQ
74A9C:  ADDEQ.W         SP, SP, #0x440
74AA0:  VPOPEQ          {D8-D15}
74AA4:  ADDEQ           SP, SP, #4
74AA6:  POPEQ.W         {R8-R11}
74AAA:  IT EQ
74AAC:  POPEQ           {R4-R7,PC}
74AAE:  BLX             __stack_chk_fail
