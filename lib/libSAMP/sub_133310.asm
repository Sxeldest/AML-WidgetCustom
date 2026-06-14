; =========================================================
; Game Engine Function: sub_133310
; Address            : 0x133310 - 0x13353E
; =========================================================

133310:  PUSH            {R4-R7,LR}
133312:  ADD             R7, SP, #0xC
133314:  PUSH.W          {R8-R11}
133318:  SUB             SP, SP, #0x34
13331A:  MOV             R4, R0
13331C:  BL              sub_12BC78
133320:  LDR             R1, =(_ZTV4menu - 0x133330); `vtable for'menu ...
133322:  VMOV.I32        Q8, #0
133326:  ADD.W           R9, R4, #0x54 ; 'T'
13332A:  LDR             R0, =(aHud - 0x13333E); "hud" ...
13332C:  ADD             R1, PC; `vtable for'menu
13332E:  STR.W           R9, [SP,#0x50+var_44]
133332:  ADDS            R1, #8
133334:  VST1.32         {D16-D17}, [R9]!
133338:  MOV             R11, R4
13333A:  ADD             R0, PC; "hud"
13333C:  STR             R1, [R4]
13333E:  MOVS            R1, #0
133340:  STR.W           R1, [R9]
133344:  ADD.W           R8, R4, #0x58 ; 'X'
133348:  STR.W           R1, [R11,#0x68]!
13334C:  ADD.W           R1, R4, #0x60 ; '`'
133350:  STR             R1, [SP,#0x50+var_4C]
133352:  ADD.W           R1, R4, #0x5C ; '\'
133356:  STR             R1, [SP,#0x50+var_48]
133358:  BL              sub_1636F0
13335C:  MOV             R5, R0
13335E:  ADDS            R0, #1
133360:  BNE             loc_13336C
133362:  LDR             R0, =(asc_879DB - 0x133368); "*" ...
133364:  ADD             R0, PC; "*"
133366:  BL              sub_1636F0
13336A:  MOV             R5, R0
13336C:  LDR             R2, =(aMenuBg - 0x133372); "menu_bg" ...
13336E:  ADD             R2, PC; "menu_bg"
133370:  LDR             R0, [SP,#0x50+var_44]
133372:  MOV             R1, R5
133374:  BL              sub_163144
133378:  LDR             R0, [SP,#0x50+var_44]
13337A:  LDR             R0, [R0]
13337C:  CMP             R0, #0
13337E:  BEQ.W           loc_1334EE
133382:  LDR             R2, =(aMenuAtlas - 0x133388); "menu_atlas" ...
133384:  ADD             R2, PC; "menu_atlas"
133386:  MOV             R0, R8
133388:  MOV             R1, R5
13338A:  BL              sub_163144
13338E:  LDR.W           R6, [R8]
133392:  CMP             R6, #0
133394:  BEQ.W           loc_133512
133398:  MOVS            R0, #0x8C; unsigned int
13339A:  BLX             j__Znwj; operator new(uint)
13339E:  MOV             R5, R0
1333A0:  MOV             R1, R6
1333A2:  BL              sub_133A40
1333A6:  LDR             R0, [SP,#0x50+var_48]
1333A8:  MOV             R1, R5
1333AA:  BL              sub_1343E8
1333AE:  LDR             R1, [R4,#0x5C]
1333B0:  MOV             R0, R4
1333B2:  BL              sub_12BDF6
1333B6:  MOVS            R0, #0x68 ; 'h'; unsigned int
1333B8:  BLX             j__Znwj; operator new(uint)
1333BC:  LDR.W           R6, [R8]
1333C0:  MOV             R5, R0
1333C2:  BL              sub_12BC78
1333C6:  LDR             R0, =(_ZTVN4menu13widget_headerE - 0x1333D6); `vtable for'menu::widget_header ...
1333C8:  ADR             R1, dword_1335B0
1333CA:  VLD1.64         {D16-D17}, [R1]
1333CE:  ADD.W           R1, R5, #0x58 ; 'X'
1333D2:  ADD             R0, PC; `vtable for'menu::widget_header
1333D4:  ADDS            R0, #8
1333D6:  STR             R0, [R5]
1333D8:  LDR             R0, [SP,#0x50+var_4C]
1333DA:  VST1.32         {D16-D17}, [R1]
1333DE:  MOV             R1, R5
1333E0:  STR             R6, [R5,#0x54]
1333E2:  BL              sub_134402
1333E6:  LDR             R1, [R4,#0x60]
1333E8:  MOV             R0, R4
1333EA:  BL              sub_12BDF6
1333EE:  MOV.W           R0, #0x3A800000
1333F2:  STR             R0, [SP,#0x50+var_3C]
1333F4:  MOV             R0, #0x3F17C000
1333FC:  STR             R0, [SP,#0x50+var_40]
1333FE:  MOVS            R0, #0x3D2C0000
133404:  STR             R0, [SP,#0x50+var_20]
133406:  MOV             R0, #0x3F224000
13340E:  STR             R0, [SP,#0x50+var_24]
133410:  MOVS            R0, #0x88; unsigned int
133412:  BLX             j__Znwj; operator new(uint)
133416:  LDR.W           R1, [R8]
13341A:  MOV             R5, R0
13341C:  ADD             R2, SP, #0x50+var_40
13341E:  ADD             R3, SP, #0x50+var_24
133420:  BL              sub_134140
133424:  MOV             R0, R9
133426:  MOV             R1, R5
133428:  BL              sub_13441C
13342C:  LDR             R1, [R4,#0x64]
13342E:  MOV             R0, R4
133430:  BL              sub_12BDF6
133434:  MOVS            R0, #0x3E4B0000
13343A:  STR             R0, [SP,#0x50+var_3C]
13343C:  MOV             R0, #0x3E818000
133444:  STR             R0, [SP,#0x50+var_40]
133446:  MOVS            R0, #0x3E780000
13344C:  STR             R0, [SP,#0x50+var_20]
13344E:  MOV             R0, #0x3F00C000
133456:  STR             R0, [SP,#0x50+var_24]
133458:  MOVS            R0, #0x88; unsigned int
13345A:  BLX             j__Znwj; operator new(uint)
13345E:  LDR.W           R1, [R8]
133462:  MOV             R5, R0
133464:  ADD.W           R10, SP, #0x50+var_40
133468:  ADD             R3, SP, #0x50+var_24
13346A:  MOV             R2, R10
13346C:  BL              sub_134294
133470:  MOV             R0, R11
133472:  MOV             R1, R5
133474:  BL              sub_134436
133478:  LDR             R1, [R4,#0x68]
13347A:  MOV             R0, R4
13347C:  BL              sub_12BDF6
133480:  LDR             R0, [SP,#0x50+var_48]
133482:  LDR             R0, [R0]
133484:  BL              sub_1335F8
133488:  LDR             R0, [R4,#0x68]
13348A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menuC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x133494); `vtable for'std::__function::__func<menu::menu(void)::$_0,std::allocator<menu::menu(void)::$_0>,void ()(void)> ...
13348C:  STR.W           R10, [SP,#0x50+var_30]
133490:  ADD             R1, PC; `vtable for'std::__function::__func<menu::menu(void)::$_0,std::allocator<menu::menu(void)::$_0>,void ()(void)>
133492:  STR             R4, [SP,#0x50+var_3C]
133494:  ADDS            R1, #8
133496:  STR             R1, [SP,#0x50+var_40]
133498:  ADDS            R0, #0x58 ; 'X'
13349A:  MOV             R1, R10
13349C:  BL              sub_12C504
1334A0:  LDR             R0, [SP,#0x50+var_30]
1334A2:  CMP             R10, R0
1334A4:  BEQ             loc_1334AC
1334A6:  CBZ             R0, loc_1334B6
1334A8:  MOVS            R1, #5
1334AA:  B               loc_1334AE
1334AC:  MOVS            R1, #4
1334AE:  LDR             R2, [R0]
1334B0:  LDR.W           R1, [R2,R1,LSL#2]
1334B4:  BLX             R1
1334B6:  LDR             R0, [R4,#0x64]
1334B8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menuC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x1334C2); `vtable for'std::__function::__func<menu::menu(void)::$_1,std::allocator<menu::menu(void)::$_1>,void ()(void)> ...
1334BA:  STR.W           R10, [SP,#0x50+var_30]
1334BE:  ADD             R1, PC; `vtable for'std::__function::__func<menu::menu(void)::$_1,std::allocator<menu::menu(void)::$_1>,void ()(void)>
1334C0:  STR             R4, [SP,#0x50+var_3C]
1334C2:  ADDS            R1, #8
1334C4:  STR             R1, [SP,#0x50+var_40]
1334C6:  ADDS            R0, #0x58 ; 'X'
1334C8:  MOV             R1, R10
1334CA:  BL              sub_12C504
1334CE:  LDR             R0, [SP,#0x50+var_30]
1334D0:  CMP             R10, R0
1334D2:  BEQ             loc_1334DA
1334D4:  CBZ             R0, loc_1334E4
1334D6:  MOVS            R1, #5
1334D8:  B               loc_1334DC
1334DA:  MOVS            R1, #4
1334DC:  LDR             R2, [R0]
1334DE:  LDR.W           R1, [R2,R1,LSL#2]
1334E2:  BLX             R1
1334E4:  MOV             R0, R4
1334E6:  ADD             SP, SP, #0x34 ; '4'
1334E8:  POP.W           {R8-R11}
1334EC:  POP             {R4-R7,PC}
1334EE:  MOVS            R0, #8; thrown_size
1334F0:  BLX             j___cxa_allocate_exception
1334F4:  LDR             R1, =(aMenuUiBackgrou - 0x1334FC); "menu UI: background texture not found" ...
1334F6:  MOV             R5, R0
1334F8:  ADD             R1, PC; "menu UI: background texture not found"
1334FA:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
1334FE:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x133506)
133500:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x133508)
133502:  ADD             R0, PC; _ZTISt13runtime_error_ptr
133504:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
133506:  LDR             R1, [R0]; lptinfo
133508:  MOV             R0, R5; void *
13350A:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
13350C:  BLX             j___cxa_throw
133510:  B               loc_133534
133512:  MOVS            R0, #8; thrown_size
133514:  BLX             j___cxa_allocate_exception
133518:  LDR             R1, =(aMenuUiAtlasTex - 0x133520); "menu UI: atlas texture not found" ...
13351A:  MOV             R5, R0
13351C:  ADD             R1, PC; "menu UI: atlas texture not found"
13351E:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
133522:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x13352A)
133524:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x13352C)
133526:  ADD             R0, PC; _ZTISt13runtime_error_ptr
133528:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
13352A:  LDR             R1, [R0]; lptinfo
13352C:  MOV             R0, R5; void *
13352E:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
133530:  BLX             j___cxa_throw
133534:  B               loc_133536
133536:  MOV             R0, R5; void *
133538:  BLX             j___cxa_free_exception
13353C:  B               loc_13356E
