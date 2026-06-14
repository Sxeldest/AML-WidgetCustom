; =========================================================
; Game Engine Function: sub_124358
; Address            : 0x124358 - 0x1245D4
; =========================================================

124358:  PUSH            {R4-R7,LR}
12435A:  ADD             R7, SP, #0xC
12435C:  PUSH.W          {R8-R11}
124360:  SUB             SP, SP, #0x24
124362:  ADD.W           R12, SP, #0x40+var_38
124366:  STM.W           R12, {R1-R3}
12436A:  LDR             R2, =(dword_263C34 - 0x124370)
12436C:  ADD             R2, PC; dword_263C34
12436E:  LDR             R1, [R2]
124370:  CMP             R1, #0
124372:  BNE.W           loc_1245A4
124376:  STR             R0, [SP,#0x40+var_3C]
124378:  MOVW            R4, #0xF568
12437C:  STR             R0, [R2]
12437E:  MOVS            R5, #0xC
124380:  LDR             R2, =(dword_22C944 - 0x124392)
124382:  MOV.W           R10, #0x18
124386:  MOV.W           R11, #0xD
12438A:  MOV.W           R9, #0xD2
12438E:  ADD             R2, PC; dword_22C944
124390:  MOVT            R4, #0xFFFF
124394:  ADDS            R6, R2, R4
124396:  LDR.W           R0, [R6,#0xA98]
12439A:  CMP             R0, #4; switch 5 cases
12439C:  BHI             def_12439E; jumptable 0012439E default case, case 1
12439E:  TBB.W           [PC,R0]; switch jump
1243A2:  DCB 3; jump table for switch statement
1243A3:  DCB 0x46
1243A4:  DCB 0x3F
1243A5:  DCB 0x42
1243A6:  DCB 0x45
1243A7:  ALIGN 2
1243A8:  STR             R5, [SP,#0x40+var_2C]; jumptable 0012439E case 0
1243AA:  MOV             R8, R2
1243AC:  BL              sub_124658
1243B0:  LDR             R0, =(dword_263C74 - 0x1243BA)
1243B2:  MOVS            R2, #0x1F
1243B4:  LDR             R1, =(aEvehicleTNotAH - 0x1243BC); "{ eVehicle_t::NOT_A_HANDLING, \"" ...
1243B6:  ADD             R0, PC; dword_263C74
1243B8:  ADD             R1, PC; "{ eVehicle_t::NOT_A_HANDLING, \""
1243BA:  BL              sub_FB2B4
1243BE:  LDR.W           R6, [R6,#0xA9C]
1243C2:  MOV             R5, R0
1243C4:  MOV             R0, R6; s
1243C6:  BLX             strlen
1243CA:  MOV             R2, R0
1243CC:  MOV             R0, R5
1243CE:  MOV             R1, R6
1243D0:  BL              sub_FB2B4
1243D4:  LDR             R1, =(asc_8E558 - 0x1243DC); "\" }," ...
1243D6:  MOVS            R2, #4
1243D8:  ADD             R1, PC; "\" },"
1243DA:  BL              sub_FB2B4
1243DE:  MOV             R5, R0
1243E0:  LDR             R0, [R0]
1243E2:  ADD             R6, SP, #0x40+var_24
1243E4:  LDR.W           R0, [R0,#-0xC]
1243E8:  ADDS            R1, R5, R0
1243EA:  MOV             R0, R6; this
1243EC:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
1243F0:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x1243F6)
1243F2:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
1243F4:  LDR             R1, [R0]; std::locale::id *
1243F6:  MOV             R0, R6; this
1243F8:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
1243FC:  LDR             R1, [R0]
1243FE:  LDR             R2, [R1,#0x1C]
124400:  MOVS            R1, #0xA
124402:  BLX             R2
124404:  MOV             R6, R0
124406:  ADD             R0, SP, #0x40+var_24; this
124408:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
12440C:  MOV             R0, R5
12440E:  MOV             R1, R6
124410:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
124414:  MOV             R0, R5
124416:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
12441A:  MOV             R2, R8
12441C:  LDR             R5, [SP,#0x40+var_2C]
12441E:  B               loc_124432
124420:  ADD.W           R11, R11, #1; jumptable 0012439E case 2
124424:  B               def_12439E; jumptable 0012439E default case, case 1
124426:  ADD.W           R10, R10, #1; jumptable 0012439E case 3
12442A:  B               def_12439E; jumptable 0012439E default case, case 1
12442C:  ADDS            R5, #1; jumptable 0012439E case 4
12442E:  ADD.W           R9, R9, #1; jumptable 0012439E default case, case 1
124432:  ADDS            R4, #8
124434:  BNE             loc_124394
124436:  LDR             R0, [R7,#arg_0]
124438:  CMP             R5, R0
12443A:  IT GT
12443C:  MOVGT           R0, R5
12443E:  LDR             R1, [SP,#0x40+var_38]
124440:  STR             R0, [SP,#0x40+var_40]
124442:  CMP             R9, R1
124444:  IT GT
124446:  MOVGT           R1, R9
124448:  LDR             R2, [SP,#0x40+var_34]
12444A:  CMP             R11, R2
12444C:  IT GT
12444E:  MOVGT           R2, R11
124450:  LDR             R3, [SP,#0x40+var_30]
124452:  CMP             R10, R3
124454:  IT GT
124456:  MOVGT           R3, R10
124458:  BL              sub_1246CC
12445C:  LDR             R0, =(off_23494C - 0x12446C)
12445E:  MOVW            R6, #0x4C58
124462:  ADD             R5, SP, #0x40+var_28
124464:  MOVT            R6, #0x67 ; 'g'
124468:  ADD             R0, PC; off_23494C
12446A:  MOV             R2, R5
12446C:  LDR             R4, [R0]; dword_23DF24
12446E:  LDR             R0, [R4]
124470:  LDR             R1, =(sub_124A1C+1 - 0x124478)
124472:  ADD             R0, R6
124474:  ADD             R1, PC; sub_124A1C
124476:  BL              sub_164196
12447A:  LDR             R0, [R4]
12447C:  MOVW            R8, #0x3384
124480:  LDR             R1, =(sub_124A64+1 - 0x12448E)
124482:  MOVT            R8, #0x67 ; 'g'
124486:  ADD             R0, R8
124488:  MOV             R2, R5
12448A:  ADD             R1, PC; sub_124A64
12448C:  ADD.W           R0, R0, #0xF00
124490:  BL              sub_164196
124494:  LDR             R0, [R4]
124496:  MOV             R2, R5
124498:  LDR             R1, =(sub_124AA8+1 - 0x1244A0)
12449A:  ADD             R0, R6
12449C:  ADD             R1, PC; sub_124AA8
12449E:  ADD.W           R0, R0, #0xD60
1244A2:  BL              sub_164196
1244A6:  LDR             R0, [R4]
1244A8:  MOVW            R2, #0x5C50
1244AC:  LDR             R1, =(sub_124B00+1 - 0x1244BA)
1244AE:  MOVT            R2, #0x67 ; 'g'
1244B2:  ADD             R0, R2
1244B4:  MOV             R2, R5
1244B6:  ADD             R1, PC; sub_124B00
1244B8:  BL              sub_164196
1244BC:  LDR             R0, [R4]
1244BE:  MOVW            R3, #0xF794
1244C2:  LDR             R1, =(sub_124B0C+1 - 0x1244D0)
1244C4:  MOVT            R3, #0x66 ; 'f'
1244C8:  LDR             R2, =(unk_263C38 - 0x1244D2)
1244CA:  ADD             R0, R3
1244CC:  ADD             R1, PC; sub_124B0C
1244CE:  ADD             R2, PC; unk_263C38
1244D0:  BL              sub_164196
1244D4:  LDR             R0, [R4]
1244D6:  LDR             R1, =(sub_124C90+1 - 0x1244E0)
1244D8:  LDR             R2, =(unk_263C3C - 0x1244E2)
1244DA:  ADD             R0, R8
1244DC:  ADD             R1, PC; sub_124C90
1244DE:  ADD             R2, PC; unk_263C3C
1244E0:  BL              sub_164196
1244E4:  LDR             R0, [R4]
1244E6:  MOVW            R3, #0x48C
1244EA:  LDR             R1, =(sub_124CB8+1 - 0x1244F8)
1244EC:  MOVT            R3, #0x67 ; 'g'
1244F0:  LDR             R2, =(off_263C40 - 0x1244FA)
1244F2:  ADD             R0, R3
1244F4:  ADD             R1, PC; sub_124CB8
1244F6:  ADD             R2, PC; off_263C40
1244F8:  BL              sub_164196
1244FC:  LDR             R0, [R4]
1244FE:  MOVW            R2, #0x1F70
124502:  LDR             R1, =(sub_12525C+1 - 0x124510)
124504:  MOVT            R2, #0x67 ; 'g'
124508:  ADD             R0, R2
12450A:  MOVS            R2, #0
12450C:  ADD             R1, PC; sub_12525C
12450E:  BL              sub_164196
124512:  LDR             R4, =(dword_22C944 - 0x12451A)
124514:  LDR             R6, [SP,#0x40+var_3C]
124516:  ADD             R4, PC; dword_22C944
124518:  MOV             R5, R4
12451A:  LDR             R0, [R5]
12451C:  SUBS            R0, #1; switch 4 cases
12451E:  CMP             R0, #3
124520:  BHI             def_124524; jumptable 00124524 default case
124522:  LDR             R1, [R5,#4]; "gtsamg" ...
124524:  TBB.W           [PC,R0]; switch jump
124528:  DCB 2; jump table for switch statement
124529:  DCB 6
12452A:  DCB 0xA
12452B:  DCB 0xE
12452C:  MOV             R0, R6; jumptable 00124524 case 1
12452E:  BL              sub_12528C
124532:  B               def_124524; jumptable 00124524 default case
124534:  MOV             R0, R6; jumptable 00124524 case 2
124536:  BL              sub_1253B8
12453A:  B               def_124524; jumptable 00124524 default case
12453C:  MOV             R0, R6; jumptable 00124524 case 3
12453E:  BL              sub_125590
124542:  B               def_124524; jumptable 00124524 default case
124544:  MOV             R0, R6; jumptable 00124524 case 4
124546:  BL              sub_125788
12454A:  ADDS            R5, #8; jumptable 00124524 default case
12454C:  ADDW            R0, R4, #0xA98
124550:  CMP             R5, R0
124552:  BNE             loc_12451A
124554:  BL              sub_124658
124558:  LDR             R0, =(dword_263C74 - 0x124560)
12455A:  ADD             R5, SP, #0x40+var_20
12455C:  ADD             R0, PC; dword_263C74
12455E:  LDR             R1, [R0]
124560:  LDR.W           R1, [R1,#-0xC]
124564:  ADD             R1, R0
124566:  MOV             R0, R5; this
124568:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
12456C:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x124572)
12456E:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
124570:  LDR             R1, [R0]; std::locale::id *
124572:  MOV             R0, R5; this
124574:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
124578:  LDR             R1, [R0]
12457A:  LDR             R2, [R1,#0x1C]
12457C:  MOVS            R1, #0xA
12457E:  BLX             R2
124580:  MOV             R5, R0
124582:  ADD             R0, SP, #0x40+var_20; this
124584:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
124588:  LDR             R4, =(dword_263C74 - 0x124590)
12458A:  MOV             R1, R5
12458C:  ADD             R4, PC; dword_263C74
12458E:  MOV             R0, R4
124590:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
124594:  MOV             R0, R4
124596:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
12459A:  MOV             R0, R6
12459C:  ADD             SP, SP, #0x24 ; '$'
12459E:  POP.W           {R8-R11}
1245A2:  POP             {R4-R7,PC}
1245A4:  LDR             R1, =(aAxl - 0x1245AE); "AXL" ...
1245A6:  MOVS            R0, #6; prio
1245A8:  LDR             R2, =(aChandlinghookD - 0x1245B0); "CHandlingHook: Double calling CHandling"... ...
1245AA:  ADD             R1, PC; "AXL"
1245AC:  ADD             R2, PC; "CHandlingHook: Double calling CHandling"...
1245AE:  BLX             __android_log_print
1245B2:  MOVS            R0, #8; thrown_size
1245B4:  BLX             j___cxa_allocate_exception
1245B8:  LDR             R1, =(aDoubleCallingC - 0x1245C0); "Double calling CHandlingHook constructo"... ...
1245BA:  MOV             R4, R0
1245BC:  ADD             R1, PC; "Double calling CHandlingHook constructo"...
1245BE:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
1245C2:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x1245CA)
1245C4:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x1245CC)
1245C6:  ADD             R0, PC; _ZTISt13runtime_error_ptr
1245C8:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
1245CA:  LDR             R1, [R0]; lptinfo
1245CC:  MOV             R0, R4; void *
1245CE:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
1245D0:  BLX             j___cxa_throw
