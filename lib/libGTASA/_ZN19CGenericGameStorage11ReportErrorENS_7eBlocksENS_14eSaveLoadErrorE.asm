; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage11ReportErrorENS_7eBlocksENS_14eSaveLoadErrorE
; Address            : 0x48321C - 0x48348C
; =========================================================

48321C:  PUSH            {R7,LR}
48321E:  MOV             R7, SP
483220:  SUB             SP, SP, #0x98
483222:  LDR             R2, =(__stack_chk_guard_ptr - 0x48322A)
483224:  CMP             R0, #0x1C; switch 29 cases
483226:  ADD             R2, PC; __stack_chk_guard_ptr
483228:  LDR             R2, [R2]; __stack_chk_guard
48322A:  LDR             R2, [R2]
48322C:  STR             R2, [SP,#0xA0+var_C]
48322E:  BHI.W           def_483232; jumptable 00483232 default case, cases 25,26
483232:  TBH.W           [PC,R0,LSL#1]; switch jump
483236:  DCW 0x1D; jump table for switch statement
483238:  DCW 0x2A
48323A:  DCW 0x34
48323C:  DCW 0x39
48323E:  DCW 0x43
483240:  DCW 0x4B
483242:  DCW 0x50
483244:  DCW 0x5A
483246:  DCW 0x62
483248:  DCW 0x6F
48324A:  DCW 0x76
48324C:  DCW 0x7B
48324E:  DCW 0x80
483250:  DCW 0x83
483252:  DCW 0x90
483254:  DCW 0x9F
483256:  DCW 0xAB
483258:  DCW 0xB8
48325A:  DCW 0xC4
48325C:  DCW 0xCC
48325E:  DCW 0xD4
483260:  DCW 0xD9
483262:  DCW 0xF9
483264:  DCW 0xFC
483266:  DCW 0x104
483268:  DCW 0x128
48326A:  DCW 0x128
48326C:  DCW 0x110
48326E:  DCW 0x11D
483270:  LDR             R0, =(aSimpleVariable - 0x483278); jumptable 00483232 case 0
483272:  MOVS            R2, #0
483274:  ADD             R0, PC; "SIMPLE_VARIABLES"
483276:  VLD1.64         {D16-D17}, [R0]
48327A:  ADD             R0, SP, #0xA0+var_38
48327C:  VST1.64         {D16-D17}, [R0]!
483280:  STRB            R2, [R0]
483282:  CMP             R1, #2
483284:  BNE.W           loc_4833FC
483288:  B               loc_4833A0
48328A:  MOV             R0, #0x535450; jumptable 00483232 case 1
483292:  STR             R0, [SP,#0xA0+var_38+4]
483294:  MOV             R0, #0x49524353
48329C:  B               loc_48330C
48329E:  MOV             R0, #0x4C4F4F50; jumptable 00483232 case 2
4832A6:  B               loc_483394
4832A8:  MOV             R0, #0x534547; jumptable 00483232 case 3
4832B0:  STR             R0, [SP,#0xA0+var_38+4]
4832B2:  MOV             R0, #0x41524147
4832BA:  B               loc_48330C
4832BC:  LDR             R0, =(aGamelogic - 0x4832C2); jumptable 00483232 case 4
4832BE:  ADD             R0, PC; "GAMELOGIC"
4832C0:  VLDR            D16, [R0]
4832C4:  MOVS            R0, #0x43 ; 'C'
4832C6:  STRH.W          R0, [SP,#0xA0+var_30]
4832CA:  B               loc_483482
4832CC:  MOV             R0, #0x48544150; jumptable 00483232 case 5
4832D4:  B               loc_483394
4832D6:  MOV             R0, #0x535055; jumptable 00483232 case 6
4832DE:  STR             R0, [SP,#0xA0+var_38+4]
4832E0:  MOV             R0, #0x4B434950
4832E8:  B               loc_48330C
4832EA:  LDR             R0, =(aPhoneinfo - 0x4832F0); jumptable 00483232 case 7
4832EC:  ADD             R0, PC; "PHONEINFO"
4832EE:  VLDR            D16, [R0]
4832F2:  MOVS            R0, #0x4F ; 'O'
4832F4:  STRH.W          R0, [SP,#0xA0+var_30]
4832F8:  B               loc_483482
4832FA:  MOV             R0, #(off_545240+1); jumptable 00483232 case 8
483302:  STR             R0, [SP,#0xA0+var_38+4]
483304:  MOV             R0, #0x54534552
48330C:  STR             R0, [SP,#0xA0+var_38]
48330E:  CMP             R1, #2
483310:  BNE             loc_4833FC
483312:  B               loc_4833A0
483314:  MOV             R0, #0x41444152; jumptable 00483232 case 9
48331C:  STR             R0, [SP,#0xA0+var_38]
48331E:  MOVS            R0, #0x52 ; 'R'
483320:  B               loc_483398
483322:  MOV             R0, #0x454E4F5A; jumptable 00483232 case 10
48332A:  B               loc_483394
48332C:  MOV             R0, #0x474E4147; jumptable 00483232 case 11
483334:  B               loc_483394
483336:  LDR             R0, =(aCarGenerators - 0x48333C); jumptable 00483232 case 12
483338:  ADD             R0, PC; "CAR GENERATORS"
48333A:  B               loc_483340
48333C:  LDR             R0, =(aPedGenerators - 0x483342); jumptable 00483232 case 13
48333E:  ADD             R0, PC; "PED GENERATORS"
483340:  ADDS            R2, R0, #7
483342:  ADD             R3, SP, #0xA0+var_38
483344:  VLDR            D16, [R0]
483348:  ORR.W           R0, R3, #7
48334C:  VLD1.8          {D17}, [R2]
483350:  VST1.8          {D17}, [R0]
483354:  B               loc_483482
483356:  LDR             R0, =(aAudioScriptObj - 0x483364); jumptable 00483232 case 14
483358:  MOV             R2, #0x544345
483360:  ADD             R0, PC; "AUDIO SCRIPT OBJECT"
483362:  VLD1.64         {D16-D17}, [R0]
483366:  ADD             R0, SP, #0xA0+var_38
483368:  VST1.64         {D16-D17}, [R0]!
48336C:  STR             R2, [R0]
48336E:  CMP             R1, #2
483370:  BNE             loc_4833FC
483372:  B               loc_4833A0
483374:  LDR             R0, =(aPlayerinfo - 0x483380); jumptable 00483232 case 15
483376:  MOVS            R2, #0
483378:  STRB.W          R2, [SP,#0xA0+var_30+2]
48337C:  ADD             R0, PC; "PLAYERINFO"
48337E:  VLDR            D16, [R0]
483382:  MOVW            R0, #0x4F46
483386:  STRH.W          R0, [SP,#0xA0+var_30]
48338A:  B               loc_483482
48338C:  MOV             R0, #0x54415453; jumptable 00483232 case 16
483394:  STR             R0, [SP,#0xA0+var_38]
483396:  MOVS            R0, #0x53 ; 'S'
483398:  STRH.W          R0, [SP,#0xA0+var_38+4]
48339C:  CMP             R1, #2
48339E:  BNE             loc_4833FC
4833A0:  ADD             R0, SP, #0xA0+var_9C
4833A2:  ADR             R1, aSavingErrorS; "Saving error: %s"
4833A4:  B               loc_48340C
4833A6:  LDR             R0, =(aSetPieces - 0x4833B2); jumptable 00483232 case 17
4833A8:  MOVS            R2, #0
4833AA:  STRB.W          R2, [SP,#0xA0+var_30+2]
4833AE:  ADD             R0, PC; "SET PIECES"
4833B0:  VLDR            D16, [R0]
4833B4:  MOVW            R0, #0x5345
4833B8:  STRH.W          R0, [SP,#0xA0+var_30]
4833BC:  B               loc_483482
4833BE:  LDR             R0, =(aStreaming - 0x4833C4); jumptable 00483232 case 18
4833C0:  ADD             R0, PC; "STREAMING"
4833C2:  VLDR            D16, [R0]
4833C6:  MOVS            R0, #0x47 ; 'G'
4833C8:  STRH.W          R0, [SP,#0xA0+var_30]
4833CC:  B               loc_483482
4833CE:  LDR             R0, =(aPedTypes - 0x4833D4); jumptable 00483232 case 19
4833D0:  ADD             R0, PC; "PED TYPES"
4833D2:  VLDR            D16, [R0]
4833D6:  MOVS            R0, #0x53 ; 'S'
4833D8:  STRH.W          R0, [SP,#0xA0+var_30]
4833DC:  B               loc_483482
4833DE:  MOV             R0, #0x53474154; jumptable 00483232 case 20
4833E6:  B               loc_4833F0
4833E8:  MOV             R0, #0x534C5049; jumptable 00483232 case 21
4833F0:  STR             R0, [SP,#0xA0+var_38]
4833F2:  MOVS            R0, #0
4833F4:  STRB.W          R0, [SP,#0xA0+var_38+4]
4833F8:  CMP             R1, #2
4833FA:  BEQ             loc_4833A0
4833FC:  CMP             R1, #1
4833FE:  BEQ             loc_483408
483400:  CBNZ            R1, loc_483412
483402:  ADD             R0, SP, #0xA0+var_9C
483404:  ADR             R1, aLoadingSyncErr; "Loading sync error: %s"
483406:  B               loc_48340C
483408:  ADD             R0, SP, #0xA0+var_9C
48340A:  ADR             R1, aLoadingErrorS; "Loading error: %s"
48340C:  ADD             R2, SP, #0xA0+var_38
48340E:  BL              sub_5E6BC0
483412:  LDR             R0, =(__stack_chk_guard_ptr - 0x48341A)
483414:  LDR             R1, [SP,#0xA0+var_C]
483416:  ADD             R0, PC; __stack_chk_guard_ptr
483418:  LDR             R0, [R0]; __stack_chk_guard
48341A:  LDR             R0, [R0]
48341C:  SUBS            R0, R0, R1
48341E:  ITT EQ
483420:  ADDEQ           SP, SP, #0x98
483422:  POPEQ           {R7,PC}
483424:  BLX             __stack_chk_fail
483428:  LDR             R0, =(aShopping - 0x48342E); jumptable 00483232 case 22
48342A:  ADD             R0, PC; "SHOPPING"
48342C:  B               loc_483432
48342E:  LDR             R0, =(aGangwars - 0x483434); jumptable 00483232 case 23
483430:  ADD             R0, PC; "GANGWARS"
483432:  VLDR            D16, [R0]
483436:  MOVS            R0, #0
483438:  STRB.W          R0, [SP,#0xA0+var_30]
48343C:  B               loc_483482
48343E:  LDR             R0, =(aStuntjumps - 0x48344A); jumptable 00483232 case 24
483440:  MOVS            R2, #0
483442:  STRB.W          R2, [SP,#0xA0+var_30+2]
483446:  ADD             R0, PC; "STUNTJUMPS"
483448:  VLDR            D16, [R0]
48344C:  MOVW            R0, #0x5350
483450:  STRH.W          R0, [SP,#0xA0+var_30]
483454:  B               loc_483482
483456:  LDR             R0, =(aUser3dmarkers - 0x48345E); jumptable 00483232 case 27
483458:  ADD             R3, SP, #0xA0+var_38
48345A:  ADD             R0, PC; "USER3DMARKERS"
48345C:  ADDS            R2, R0, #6
48345E:  VLDR            D16, [R0]
483462:  ORR.W           R0, R3, #6
483466:  VLD1.16         {D17}, [R2]
48346A:  VST1.16         {D17}, [R0]
48346E:  B               loc_483482
483470:  LDR             R0, =(aPosteffects - 0x483476); jumptable 00483232 case 28
483472:  ADD             R0, PC; "POSTEFFECTS"
483474:  VLDR            D16, [R0]
483478:  MOV             R0, #0x535443
483480:  STR             R0, [SP,#0xA0+var_30]
483482:  VSTR            D16, [SP,#0xA0+var_38]
483486:  CMP             R1, #2; jumptable 00483232 default case, cases 25,26
483488:  BNE             loc_4833FC
48348A:  B               loc_4833A0
