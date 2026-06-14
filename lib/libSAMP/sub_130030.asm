; =========================================================
; Game Engine Function: sub_130030
; Address            : 0x130030 - 0x130494
; =========================================================

130030:  PUSH            {R4-R7,LR}
130032:  ADD             R7, SP, #0xC
130034:  PUSH.W          {R8,R9,R11}
130038:  VPUSH           {D8-D11}
13003C:  SUB             SP, SP, #0x38
13003E:  MOV             R5, R0
130040:  LDRB.W          R0, [R0,#0x51]
130044:  MOV             R4, R1
130046:  CBZ             R0, loc_13008C
130048:  VLDR            S0, [R5,#0x14]
13004C:  ADR.W           R0, dword_1304B0
130050:  VLDR            S4, [R5,#0x2C]
130054:  MOVS            R1, #1
130056:  VLDR            S2, [R5,#0x18]
13005A:  ADD             R3, SP, #0x70+var_50; int
13005C:  VLDR            S6, [R5,#0x30]
130060:  VADD.F32        S0, S4, S0
130064:  VLD1.64         {D16-D17}, [R0]
130068:  MOV.W           R0, #0x3F800000
13006C:  VADD.F32        S2, S6, S2
130070:  ADD             R2, SP, #0x70+var_40; int
130072:  STRD.W          R1, R0, [SP,#0x70+var_70]; int
130076:  ADD.W           R1, R5, #0x2C ; ','; int
13007A:  MOV             R0, R4; int
13007C:  VST1.64         {D16-D17}, [R3]
130080:  VSTR            S0, [SP,#0x70+var_40]
130084:  VSTR            S2, [SP,#0x70+var_3C]
130088:  BL              sub_12AB98
13008C:  LDR             R0, =(off_2349A8 - 0x130096)
13008E:  VLDR            S16, [R5,#0x14]
130092:  ADD             R0, PC; off_2349A8
130094:  LDR             R0, [R0]; dword_381BF4
130096:  LDR             R0, [R0]
130098:  LDRB.W          R0, [R0,#0x81]
13009C:  CBZ             R0, loc_1300AE
13009E:  VLDR            S0, =-100.0
1300A2:  VMOV.F32        S2, #27.0
1300A6:  VDIV.F32        S0, S16, S0
1300AA:  VMLA.F32        S16, S0, S2
1300AE:  LDR             R0, [R5,#0x70]
1300B0:  SUBS            R0, #1; switch 12 cases
1300B2:  CMP             R0, #0xB
1300B4:  BHI.W           def_1300B8; jumptable 001300B8 default case, cases 4-7
1300B8:  TBH.W           [PC,R0,LSL#1]; switch jump
1300BC:  DCW 0x3B; jump table for switch statement
1300BE:  DCW 0x5C
1300C0:  DCW 0xC7
1300C2:  DCW 0x1AB
1300C4:  DCW 0x1AB
1300C6:  DCW 0x1AB
1300C8:  DCW 0x1AB
1300CA:  DCW 0x114
1300CC:  DCW 0x13E
1300CE:  DCW 0xC
1300D0:  DCW 0xC
1300D2:  DCW 0x170
1300D4:  VLDR            S10, [R5,#0x2C]; jumptable 001300B8 cases 10,11
1300D8:  VMOV.F32        S0, #0.25
1300DC:  VLDR            S6, =0.3
1300E0:  VMOV.F32        S2, #0.75
1300E4:  VMOV.F32        S14, S10
1300E8:  VLDR            S12, [R5,#0x30]
1300EC:  VLDR            S8, [R5,#0x18]
1300F0:  VMOV.F32        S4, #0.5
1300F4:  VMOV.F32        Q8, #1.0
1300F8:  VMLA.F32        S14, S16, S6
1300FC:  VMOV.F32        S6, S12
130100:  VMLA.F32        S6, S8, S0
130104:  VSTR            S14, [SP,#0x70+var_40]
130108:  VMOV.F32        S0, S12
13010C:  VSTR            S14, [SP,#0x70+var_58]
130110:  VMLA.F32        S12, S8, S4
130114:  VMLA.F32        S0, S8, S2
130118:  VLDR            S2, =0.7
13011C:  VSTR            S6, [SP,#0x70+var_3C]
130120:  VMLA.F32        S10, S16, S2
130124:  VSTR            S12, [SP,#0x70+var_5C]
130128:  VSTR            S0, [SP,#0x70+var_54]
13012C:  VSTR            S10, [SP,#0x70+var_60]
130130:  B               loc_1303F4
130132:  VLDR            S6, [R5,#0x2C]; jumptable 001300B8 case 1
130136:  VMOV.F32        S0, #0.25
13013A:  VLDR            S2, =0.37
13013E:  VMOV.F32        S18, #0.5
130142:  VMOV.F32        S10, S6
130146:  VLDR            S8, [R5,#0x30]
13014A:  VLDR            S4, [R5,#0x18]
13014E:  VMOV.F32        Q5, #1.0
130152:  VMLA.F32        S10, S16, S2
130156:  VMOV.F32        S2, S8
13015A:  VMLA.F32        S8, S4, S0
13015E:  VMOV.F32        S0, S6
130162:  VMLA.F32        S2, S4, S18
130166:  VLDR            S4, =0.63
13016A:  VMLA.F32        S0, S16, S18
13016E:  VMLA.F32        S6, S16, S4
130172:  B               loc_1301B6
130174:  VLDR            S6, [R5,#0x2C]; jumptable 001300B8 case 2
130178:  VMOV.F32        S0, #0.25
13017C:  VLDR            S2, =0.37
130180:  VMOV.F32        S18, #0.5
130184:  VMOV.F32        S10, S6
130188:  VLDR            S4, [R5,#0x18]
13018C:  VLDR            S8, [R5,#0x30]
130190:  ADR             R0, dword_1304B0
130192:  VLDR            S12, =0.63
130196:  VLD1.64         {D10-D11}, [R0]
13019A:  VMLA.F32        S10, S16, S2
13019E:  VMOV.F32        S2, S8
1301A2:  VMLA.F32        S8, S4, S0
1301A6:  VMOV.F32        S0, S6
1301AA:  VMLA.F32        S6, S16, S12
1301AE:  VMLA.F32        S2, S4, S18
1301B2:  VMLA.F32        S0, S16, S18
1301B6:  ADD             R6, SP, #0x70+var_50
1301B8:  ADD             R1, SP, #0x70+var_40; int
1301BA:  ADD             R2, SP, #0x70+var_58; int
1301BC:  ADD             R3, SP, #0x70+var_60; int
1301BE:  MOV.W           R8, #0x3F800000
1301C2:  MOV.W           R9, #1
1301C6:  MOV             R0, R4; int
1301C8:  VSTR            S10, [SP,#0x70+var_40]
1301CC:  VSTR            S2, [SP,#0x70+var_3C]
1301D0:  VSTR            S8, [SP,#0x70+var_54]
1301D4:  VSTR            S0, [SP,#0x70+var_58]
1301D8:  VSTR            S2, [SP,#0x70+var_5C]
1301DC:  VSTR            S6, [SP,#0x70+var_60]
1301E0:  VST1.64         {D10-D11}, [R6]
1301E4:  STRD.W          R6, R9, [SP,#0x70+var_70]; int
1301E8:  STR.W           R8, [SP,#0x70+var_68]; float
1301EC:  BL              sub_12AC34
1301F0:  VLDR            S4, [R5,#0x30]
1301F4:  VMOV.F32        S6, #-1.0
1301F8:  VLDR            S0, [R5,#0x18]
1301FC:  ADD             R1, SP, #0x70+var_40
1301FE:  VMOV.F32        S8, S4
130202:  VLDR            S2, [R5,#0x2C]
130206:  VLDR            S10, =0.44
13020A:  ADD             R2, SP, #0x70+var_58
13020C:  VMOV.F32        S12, S2
130210:  VST1.64         {D10-D11}, [R6]
130214:  MOV             R0, R4
130216:  MOV             R3, R6
130218:  STRD.W          R9, R8, [SP,#0x70+var_70]
13021C:  VMLA.F32        S8, S0, S18
130220:  VMLA.F32        S12, S16, S10
130224:  VLDR            S10, =0.68
130228:  VMLA.F32        S4, S0, S10
13022C:  VSTR            S12, [SP,#0x70+var_40]
130230:  VADD.F32        S6, S8, S6
130234:  VLDR            S8, =0.56
130238:  VSTR            S4, [SP,#0x70+var_54]
13023C:  VMLA.F32        S2, S16, S8
130240:  VSTR            S6, [SP,#0x70+var_3C]
130244:  VSTR            S2, [SP,#0x70+var_58]
130248:  B               loc_130396
13024A:  LDR             R0, =(byte_3141C0 - 0x130250); jumptable 001300B8 case 3
13024C:  ADD             R0, PC; byte_3141C0
13024E:  LDRB            R0, [R0]
130250:  DMB.W           ISH
130254:  LDR             R6, =(unk_314198 - 0x13025A)
130256:  ADD             R6, PC; unk_314198
130258:  LSLS            R0, R0, #0x1F
13025A:  BEQ.W           loc_130468
13025E:  VLDR            S8, [R5,#0x2C]
130262:  VMOV.F32        S2, #0.5
130266:  VLDR            S4, =0.45
13026A:  VMOV.F32        S12, #0.25
13026E:  VMOV.F32        S14, S8
130272:  VLDR            S10, [R5,#0x30]
130276:  VMOV.F32        S1, S8
13027A:  VLDR            S0, =0.65
13027E:  VLDR            S6, [R5,#0x18]
130282:  VMOV.F32        Q8, #1.0
130286:  ADD             R3, SP, #0x70+var_50
130288:  MOV             R0, R4
13028A:  MOV             R1, R6
13028C:  MOVS            R2, #5
13028E:  VST1.64         {D16-D17}, [R3]
130292:  VMLA.F32        S14, S16, S4
130296:  VLDR            S4, =0.35
13029A:  VMLA.F32        S1, S16, S0
13029E:  VMLA.F32        S8, S16, S4
1302A2:  VMOV.F32        S4, S10
1302A6:  VSTR            S14, [R6,#0x20]
1302AA:  VSTR            S14, [R6,#8]
1302AE:  VSTR            S1, [R6,#0x10]
1302B2:  VMLA.F32        S4, S6, S0
1302B6:  VSTR            S8, [R6]
1302BA:  VMOV.F32        S0, S10
1302BE:  VSTR            S1, [R6,#0x18]
1302C2:  VMLA.F32        S10, S6, S12
1302C6:  VMLA.F32        S0, S6, S2
1302CA:  VSTR            S4, [R6,#0x24]
1302CE:  VSTR            S4, [R6,#0x1C]
1302D2:  VSTR            S10, [R6,#0xC]
1302D6:  VSTR            S10, [R6,#0x14]
1302DA:  VSTR            S0, [R6,#4]
1302DE:  BL              sub_12AC7E
1302E2:  B               def_1300B8; jumptable 001300B8 default case, cases 4-7
1302E4:  LDR             R0, [R5,#8]; jumptable 001300B8 case 8
1302E6:  CMP             R0, #0
1302E8:  BEQ.W           def_1300B8; jumptable 001300B8 default case, cases 4-7
1302EC:  LDR             R0, [R0,#8]
1302EE:  CMP             R0, #0
1302F0:  BEQ.W           def_1300B8; jumptable 001300B8 default case, cases 4-7
1302F4:  LDR             R0, [R0,#8]; lpsrc
1302F6:  CMP             R0, #0
1302F8:  BEQ.W           def_1300B8; jumptable 001300B8 default case, cases 4-7
1302FC:  LDR             R1, =(off_234BA8 - 0x130306)
1302FE:  MOVS            R3, #0; s2d
130300:  LDR             R2, =(_ZTI8Keyboard - 0x130308); `typeinfo for'Keyboard ...
130302:  ADD             R1, PC; off_234BA8
130304:  ADD             R2, PC; lpdtype
130306:  LDR             R1, [R1]; lpstype
130308:  BLX             j___dynamic_cast
13030C:  CMP             R0, #0
13030E:  BEQ.W           def_1300B8; jumptable 001300B8 default case, cases 4-7
130312:  LDR             R0, [R0,#0x68]
130314:  SUBS            R1, R0, #2
130316:  CMP             R1, #2
130318:  BCC.W           loc_130426
13031C:  CMP             R0, #1
13031E:  BHI.W           loc_130444
130322:  LDR             R1, =(aEng - 0x13032A); "eng" ...
130324:  ADD             R6, SP, #0x70+var_50
130326:  ADD             R1, PC; "eng"
130328:  MOV             R0, R6; int
13032A:  BL              sub_13055C
13032E:  MOV             R0, R5
130330:  MOV             R1, R6
130332:  BL              sub_130514
130336:  B               loc_130458
130338:  VLDR            S6, [R5,#0x2C]; jumptable 001300B8 case 9
13033C:  VMOV.F32        Q8, #1.0
130340:  VLDR            S8, [R5,#0x30]
130344:  MOV.W           R0, #0x3F800000
130348:  VMOV.F32        S10, S6
13034C:  VLDR            S2, =0.07
130350:  VMOV.F32        S12, S8
130354:  VLDR            S0, =0.35
130358:  VLDR            S4, [R5,#0x18]
13035C:  MOVS            R1, #1
13035E:  STRD.W          R1, R0, [SP,#0x70+var_70]; int
130362:  ADD             R3, SP, #0x70+var_50; int
130364:  ADD             R1, SP, #0x70+var_40; int
130366:  ADD             R2, SP, #0x70+var_58; int
130368:  MOV             R0, R4; int
13036A:  VST1.64         {D16-D17}, [R3]
13036E:  VMLA.F32        S10, S16, S2
130372:  VMLA.F32        S12, S4, S0
130376:  VLDR            S2, =0.65
13037A:  VLDR            S0, =0.93
13037E:  VMLA.F32        S8, S4, S2
130382:  VMLA.F32        S6, S16, S0
130386:  VSTR            S10, [SP,#0x70+var_40]
13038A:  VSTR            S12, [SP,#0x70+var_3C]
13038E:  VSTR            S8, [SP,#0x70+var_54]
130392:  VSTR            S6, [SP,#0x70+var_58]
130396:  BL              sub_12AB98
13039A:  B               def_1300B8; jumptable 001300B8 default case, cases 4-7
13039C:  VLDR            S10, [R5,#0x30]; jumptable 001300B8 case 12
1303A0:  VMOV.F32        S0, #0.25
1303A4:  VLDR            S8, [R5,#0x2C]
1303A8:  VMOV.F32        S2, #0.5
1303AC:  VMOV.F32        S14, S10
1303B0:  VLDR            S6, [R5,#0x18]
1303B4:  VMOV.F32        S1, S10
1303B8:  VLDR            S4, =0.7
1303BC:  VMOV.F32        S12, S8
1303C0:  VMLA.F32        S10, S6, S4
1303C4:  VMOV.F32        Q8, #1.0
1303C8:  VMLA.F32        S14, S6, S0
1303CC:  VLDR            S0, =0.3
1303D0:  VMLA.F32        S1, S6, S2
1303D4:  VMLA.F32        S12, S16, S4
1303D8:  VMLA.F32        S8, S16, S0
1303DC:  VSTR            S10, [SP,#0x70+var_5C]
1303E0:  VSTR            S14, [SP,#0x70+var_3C]
1303E4:  VSTR            S1, [SP,#0x70+var_54]
1303E8:  VSTR            S12, [SP,#0x70+var_40]
1303EC:  VSTR            S8, [SP,#0x70+var_58]
1303F0:  VSTR            S12, [SP,#0x70+var_60]
1303F4:  ADD             R0, SP, #0x70+var_50
1303F6:  MOV.W           R1, #0x3F800000
1303FA:  MOVS            R2, #1
1303FC:  STR             R1, [SP,#0x70+var_68]; float
1303FE:  STRD.W          R0, R2, [SP,#0x70+var_70]; int
130402:  ADD             R1, SP, #0x70+var_40; int
130404:  ADD             R2, SP, #0x70+var_58; int
130406:  ADD             R3, SP, #0x70+var_60; int
130408:  VST1.64         {D16-D17}, [R0]
13040C:  MOV             R0, R4; int
13040E:  BL              sub_12AC34
130412:  MOV             R0, R5; jumptable 001300B8 default case, cases 4-7
130414:  MOV             R1, R4
130416:  BL              sub_12C0B6
13041A:  ADD             SP, SP, #0x38 ; '8'
13041C:  VPOP            {D8-D11}
130420:  POP.W           {R8,R9,R11}
130424:  POP             {R4-R7,PC}
130426:  LDR             R1, =(aRu - 0x13042E); "ru" ...
130428:  ADD             R6, SP, #0x70+var_50
13042A:  ADD             R1, PC; "ru"
13042C:  MOV             R0, R6; int
13042E:  BL              sub_13055C
130432:  MOV             R0, R5
130434:  MOV             R1, R6
130436:  BL              sub_130514
13043A:  B               loc_130458
13043C:  DCD off_2349A8 - 0x130096
130440:  DCFS -100.0
130444:  LDR             R1, =(aBack - 0x13044C); "[back]" ...
130446:  ADD             R6, SP, #0x70+var_50
130448:  ADD             R1, PC; "[back]"
13044A:  MOV             R0, R6; int
13044C:  BL              sub_13055C
130450:  MOV             R0, R5
130452:  MOV             R1, R6
130454:  BL              sub_130514
130458:  LDRB.W          R0, [SP,#0x70+var_50]
13045C:  LSLS            R0, R0, #0x1F
13045E:  BEQ             def_1300B8; jumptable 001300B8 default case, cases 4-7
130460:  LDR             R0, [SP,#0x70+var_48]; void *
130462:  BLX             j__ZdlPv; operator delete(void *)
130466:  B               def_1300B8; jumptable 001300B8 default case, cases 4-7
130468:  LDR             R0, =(byte_3141C0 - 0x13046E)
13046A:  ADD             R0, PC; byte_3141C0 ; __guard *
13046C:  BLX             j___cxa_guard_acquire
130470:  CMP             R0, #0
130472:  BEQ.W           loc_13025E
130476:  VMOV.I32        Q8, #0
13047A:  LDR             R0, =(byte_3141C0 - 0x130484)
13047C:  MOV             R2, R6
13047E:  MOVS            R1, #0
130480:  ADD             R0, PC; byte_3141C0 ; __guard *
130482:  STR             R1, [R6,#(dword_3141BC - 0x314198)]
130484:  VST1.64         {D16-D17}, [R2]!
130488:  VST1.64         {D16-D17}, [R2]!
13048C:  STR             R1, [R2]
13048E:  BLX             j___cxa_guard_release
130492:  B               loc_13025E
