; =========================================================
; Game Engine Function: sub_ED4F8
; Address            : 0xED4F8 - 0xED70C
; =========================================================

ED4F8:  PUSH            {R4-R7,LR}
ED4FA:  ADD             R7, SP, #0xC
ED4FC:  PUSH.W          {R8-R11}
ED500:  SUB             SP, SP, #0xD4
ED502:  MOV             R5, R2
ED504:  MOV             R10, R1
ED506:  MOV             R11, R0
ED508:  CMP             R0, #4; switch 5 cases
ED50A:  BHI             def_ED50E; jumptable 000ED50E default case, case 1
ED50C:  MOVS            R0, #1
ED50E:  TBB.W           [PC,R11]; switch jump
ED512:  DCB 0x13; jump table for switch statement
ED513:  DCB 0x12
ED514:  DCB 3
ED515:  DCB 5
ED516:  DCB 7
ED517:  ALIGN 2
ED518:  MOVS            R0, #5; jumptable 000ED50E case 2
ED51A:  B               loc_ED538; jumptable 000ED50E case 0
ED51C:  MOVS            R0, #6; jumptable 000ED50E case 3
ED51E:  B               loc_ED538; jumptable 000ED50E case 0
ED520:  LDR             R1, =(aAxl - 0xED52A); jumptable 000ED50E case 4
ED522:  MOVS            R0, #3
ED524:  MOV             R2, R10
ED526:  ADD             R1, PC; "AXL"
ED528:  ADD             SP, SP, #0xD4
ED52A:  POP.W           {R8-R11}
ED52E:  POP.W           {R4-R7,LR}
ED532:  B.W             sub_2242BC
ED536:  MOVS            R0, #4; jumptable 000ED50E default case, case 1
ED538:  LDR             R1, =(aAxl - 0xED540); jumptable 000ED50E case 0
ED53A:  MOV             R2, R10; text
ED53C:  ADD             R1, PC; "AXL"
ED53E:  STR             R1, [SP,#0xF0+var_DC]
ED540:  BLX             __android_log_write
ED544:  LDR             R0, =(byte_23DEB4 - 0xED54A)
ED546:  ADD             R0, PC; byte_23DEB4
ED548:  LDRB            R0, [R0]
ED54A:  DMB.W           ISH
ED54E:  LSLS            R0, R0, #0x1F
ED550:  BEQ.W           loc_ED6DC
ED554:  LDR             R6, =(dword_23DE04 - 0xED55A)
ED556:  ADD             R6, PC; dword_23DE04
ED558:  LDR             R0, [R6,#(dword_23DE48 - 0x23DE04)]
ED55A:  CMP             R0, #0
ED55C:  BNE             loc_ED5E2
ED55E:  ADD.W           R9, SP, #0xF0+var_D0
ED562:  STR             R5, [SP,#0xF0+var_E0]
ED564:  MOV             R0, R9
ED566:  BL              sub_ED844
ED56A:  MOV             R5, R6
ED56C:  LDR             R0, [SP,#0xF0+var_D0]
ED56E:  LDR.W           R1, [R5],#4
ED572:  MOV             R8, R6
ED574:  LDR.W           R0, [R0,#-0xC]
ED578:  LDR.W           R1, [R1,#-0xC]
ED57C:  ADD.W           R4, R9, R0
ED580:  ADD             R6, R1
ED582:  MOV             R1, R4; std::ios_base *
ED584:  MOV             R0, R6; this
ED586:  BLX             j__ZNSt6__ndk18ios_base4swapERS0_; std::ios_base::swap(std::ios_base&)
ED58A:  LDRD.W          R0, R1, [R6,#0x48]
ED58E:  LDRD.W          R2, R3, [R4,#0x48]
ED592:  STRD.W          R2, R3, [R6,#0x48]
ED596:  MOV             R6, R8
ED598:  STRD.W          R0, R1, [R4,#0x48]
ED59C:  MOV             R0, R5
ED59E:  BL              sub_E5108
ED5A2:  ADD.W           R5, R9, #4
ED5A6:  ADDS            R0, R6, #4
ED5A8:  MOV             R1, R5
ED5AA:  BL              sub_EE410
ED5AE:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xED5B4)
ED5B0:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
ED5B2:  LDR             R0, [R0]; `vtable for'std::ofstream ...
ED5B4:  ADD.W           R1, R0, #0x20 ; ' '
ED5B8:  ADDS            R0, #0xC
ED5BA:  STR             R0, [SP,#0xF0+var_D0]
ED5BC:  MOV             R0, R5
ED5BE:  STR             R1, [SP,#0xF0+var_70]
ED5C0:  BL              sub_E50B0
ED5C4:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xED5CA)
ED5C6:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
ED5C8:  LDR             R0, [R0]; `VTT for'std::ofstream ...
ED5CA:  ADDS            R1, R0, #4
ED5CC:  MOV             R0, R9
ED5CE:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
ED5D2:  ADD.W           R0, R9, #0x60 ; '`'
ED5D6:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
ED5DA:  LDR             R0, [R6,#(dword_23DE48 - 0x23DE04)]
ED5DC:  LDR             R5, [SP,#0xF0+var_E0]
ED5DE:  CMP             R0, #0
ED5E0:  BEQ             loc_ED6CC
ED5E2:  CMP.W           R11, #0
ED5E6:  BEQ             loc_ED60E
ED5E8:  ADD.W           R9, SP, #0xF0+var_D8
ED5EC:  MOV             R0, R9; this
ED5EE:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
ED5F2:  SUB.W           R0, R11, #1
ED5F6:  MOV             R8, R6
ED5F8:  CMP             R0, #2
ED5FA:  BHI             loc_ED64C
ED5FC:  LDR             R1, =(unk_92268 - 0xED604)
ED5FE:  LDR             R2, =(off_22AA80 - 0xED606); "Info" ...
ED600:  ADD             R1, PC; unk_92268
ED602:  ADD             R2, PC; off_22AA80
ED604:  LDR.W           R3, [R1,R0,LSL#2]
ED608:  LDR.W           R2, [R2,R0,LSL#2]
ED60C:  B               loc_ED652
ED60E:  ADD             R4, SP, #0xF0+var_D8
ED610:  MOV             R8, R6
ED612:  MOV             R0, R4; this
ED614:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
ED618:  LDR             R2, =(sub_EE610+1 - 0xED624)
ED61A:  MOVS            R3, #3
ED61C:  LDR             R0, =(dword_23DE04 - 0xED626)
ED61E:  LDR             R1, =(aHMS - 0xED62A); "{:%H:%M:%S} | {}" ...
ED620:  ADD             R2, PC; sub_EE610
ED622:  ADD             R0, PC; dword_23DE04
ED624:  STR             R3, [SP,#0xF0+var_C4]
ED626:  ADD             R1, PC; "{:%H:%M:%S} | {}"
ED628:  LDR             R3, [SP,#0xF0+var_DC]
ED62A:  STRD.W          R10, R5, [SP,#0xF0+var_C0]
ED62E:  STR             R3, [SP,#0xF0+var_C8]
ED630:  STRD.W          R4, R2, [SP,#0xF0+var_D0]
ED634:  MOVS            R2, #0
ED636:  MOVW            R6, #0xDDF
ED63A:  ADD             R3, SP, #0xF0+var_D0
ED63C:  STRD.W          R6, R2, [SP,#0xF0+var_F0]
ED640:  STRD.W          R3, R2, [SP,#0xF0+var_E8]
ED644:  MOVS            R2, #0x10
ED646:  BL              sub_EE584
ED64A:  B               loc_ED682
ED64C:  LDR             R2, =(aAxl - 0xED654); "AXL" ...
ED64E:  MOVS            R3, #3
ED650:  ADD             R2, PC; "AXL"
ED652:  LDR             R0, =(dword_23DE04 - 0xED660)
ED654:  ADD.W           R12, SP, #0xF0+var_C8
ED658:  LDR             R1, =(aHMS_0 - 0xED662); "{:%H:%M:%S} | [{}] {}" ...
ED65A:  LDR             R4, =(sub_EE610+1 - 0xED666)
ED65C:  ADD             R0, PC; dword_23DE04
ED65E:  ADD             R1, PC; "{:%H:%M:%S} | [{}] {}"
ED660:  STR             R5, [SP,#0xF0+var_BC]
ED662:  ADD             R4, PC; sub_EE610
ED664:  STM.W           R12, {R2,R3,R10}
ED668:  STRD.W          R9, R4, [SP,#0xF0+var_D0]
ED66C:  MOVS            R2, #0
ED66E:  MOVW            R6, #0xDDF
ED672:  ADD             R3, SP, #0xF0+var_D0
ED674:  STRD.W          R6, R2, [SP,#0xF0+var_F0]
ED678:  STRD.W          R3, R2, [SP,#0xF0+var_E8]
ED67C:  MOVS            R2, #0x15
ED67E:  BL              sub_EE584
ED682:  LDR.W           R0, [R8]
ED686:  MOV             R5, R8
ED688:  LDR.W           R0, [R0,#-0xC]
ED68C:  ADD.W           R1, R8, R0
ED690:  ADD             R0, SP, #0xF0+var_D0; this
ED692:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
ED696:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xED69C)
ED698:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
ED69A:  LDR             R1, [R0]; std::locale::id *
ED69C:  ADD             R0, SP, #0xF0+var_D0; this
ED69E:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
ED6A2:  LDR             R1, [R0]
ED6A4:  LDR             R2, [R1,#0x1C]
ED6A6:  MOVS            R1, #0xA
ED6A8:  BLX             R2
ED6AA:  MOV             R4, R0
ED6AC:  ADD             R0, SP, #0xF0+var_D0; this
ED6AE:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
ED6B2:  LDR             R0, =(dword_23DE04 - 0xED6B8)
ED6B4:  ADD             R0, PC; dword_23DE04
ED6B6:  MOV             R1, R4
ED6B8:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
ED6BC:  LDR             R0, =(dword_23DE04 - 0xED6C2)
ED6BE:  ADD             R0, PC; dword_23DE04
ED6C0:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
ED6C4:  ADD             SP, SP, #0xD4
ED6C6:  POP.W           {R8-R11}
ED6CA:  POP             {R4-R7,PC}
ED6CC:  LDR             R1, =(aLogwrite - 0xED6D4); "LogWrite" ...
ED6CE:  LDR             R2, =(aCanTOpenFile - 0xED6D6); "Can't open file" ...
ED6D0:  ADD             R1, PC; "LogWrite"
ED6D2:  ADD             R2, PC; "Can't open file"
ED6D4:  MOVS            R0, #5; prio
ED6D6:  BLX             __android_log_write
ED6DA:  B               loc_ED6C4
ED6DC:  LDR             R0, =(byte_23DEB4 - 0xED6E2)
ED6DE:  ADD             R0, PC; byte_23DEB4 ; __guard *
ED6E0:  BLX             j___cxa_guard_acquire
ED6E4:  CMP             R0, #0
ED6E6:  BEQ.W           loc_ED554
ED6EA:  LDR             R0, =(dword_23DE04 - 0xED6F0)
ED6EC:  ADD             R0, PC; dword_23DE04
ED6EE:  BL              sub_ED844
ED6F2:  LDR             R0, =(sub_EDE5C+1 - 0xED6FC)
ED6F4:  LDR             R1, =(dword_23DE04 - 0xED6FE)
ED6F6:  LDR             R2, =(off_22A540 - 0xED700)
ED6F8:  ADD             R0, PC; sub_EDE5C ; lpfunc
ED6FA:  ADD             R1, PC; dword_23DE04 ; obj
ED6FC:  ADD             R2, PC; off_22A540 ; lpdso_handle
ED6FE:  BLX             __cxa_atexit
ED702:  LDR             R0, =(byte_23DEB4 - 0xED708)
ED704:  ADD             R0, PC; byte_23DEB4 ; __guard *
ED706:  BLX             j___cxa_guard_release
ED70A:  B               loc_ED554
