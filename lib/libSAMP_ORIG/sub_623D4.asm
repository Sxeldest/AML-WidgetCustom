; =========================================================
; Game Engine Function: sub_623D4
; Address            : 0x623D4 - 0x625E2
; =========================================================

623D4:  PUSH            {R4-R7,LR}
623D6:  ADD             R7, SP, #0xC
623D8:  PUSH.W          {R8,R9,R11}
623DC:  VPUSH           {D8}
623E0:  SUB             SP, SP, #0x68
623E2:  LDR             R0, =(__stack_chk_guard_ptr - 0x623F0)
623E4:  MOV             R9, R1
623E6:  VLDR            S16, =255.0
623EA:  ADD             R5, SP, #0x88+var_6C
623EC:  ADD             R0, PC; __stack_chk_guard_ptr
623EE:  MOV             R6, R3
623F0:  MOV             R8, R2
623F2:  LDR             R0, [R0]; __stack_chk_guard
623F4:  LDR             R0, [R0]
623F6:  STR             R0, [SP,#0x88+var_24]
623F8:  MOV             R0, R5
623FA:  VLDR            S0, [R3]
623FE:  VMUL.F32        S0, S0, S16
62402:  VCVT.S32.F32    S0, S0
62406:  VMOV            R1, S0
6240A:  BL              sub_68500
6240E:  LDR             R2, =(asc_4A813 - 0x62414); "{" ...
62410:  ADD             R2, PC; "{"
62412:  MOV             R0, R5; int
62414:  MOVS            R1, #0; int
62416:  MOVS            R4, #0
62418:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
6241C:  VLDR            D16, [R0]
62420:  LDR             R1, [R0,#8]
62422:  STR             R1, [SP,#0x88+var_58]
62424:  VSTR            D16, [SP,#0x88+var_60]
62428:  STRD.W          R4, R4, [R0]
6242C:  STR             R4, [R0,#8]
6242E:  VLDR            S0, [R6,#4]
62432:  VMUL.F32        S0, S0, S16
62436:  VCVT.S32.F32    S0, S0
6243A:  VMOV            R1, S0
6243E:  ADD             R5, SP, #0x88+var_78
62440:  MOV             R0, R5
62442:  BL              sub_68500
62446:  LDRB.W          R0, [SP,#0x88+var_78]
6244A:  LDRD.W          R2, R1, [SP,#0x88+var_74]
6244E:  ANDS.W          R3, R0, #1
62452:  ITT EQ
62454:  ADDEQ           R1, R5, #1
62456:  LSREQ           R2, R0, #1
62458:  ADD             R0, SP, #0x88+var_60
6245A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
6245E:  VLDR            D16, [R0]
62462:  LDR             R1, [R0,#8]
62464:  STR             R1, [SP,#0x88+var_48]
62466:  MOVS            R1, #0
62468:  VSTR            D16, [SP,#0x88+var_50]
6246C:  STRD.W          R1, R1, [R0]
62470:  STR             R1, [R0,#8]
62472:  VLDR            S0, [R6,#8]
62476:  VMUL.F32        S0, S0, S16
6247A:  VCVT.S32.F32    S0, S0
6247E:  VMOV            R1, S0
62482:  ADD             R5, SP, #0x88+var_84
62484:  MOV             R0, R5
62486:  BL              sub_68500
6248A:  LDRB.W          R0, [SP,#0x88+var_84]
6248E:  LDRD.W          R2, R1, [SP,#0x88+var_80]
62492:  ANDS.W          R3, R0, #1
62496:  ITT EQ
62498:  ADDEQ           R1, R5, #1
6249A:  LSREQ           R2, R0, #1
6249C:  ADD             R0, SP, #0x88+var_50
6249E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
624A2:  VLDR            D16, [R0]
624A6:  MOVS            R5, #0
624A8:  LDR             R2, [R0,#8]
624AA:  LDR             R1, =(unk_4DA83 - 0x624B2)
624AC:  STR             R2, [SP,#0x88+var_38]
624AE:  ADD             R1, PC; unk_4DA83 ; s
624B0:  VSTR            D16, [SP,#0x88+var_40]
624B4:  STRD.W          R5, R5, [R0]
624B8:  STR             R5, [R0,#8]
624BA:  ADD             R6, SP, #0x88+var_40
624BC:  MOV             R0, R6; int
624BE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
624C2:  VLDR            D16, [R0]
624C6:  LDR             R1, [R0,#8]
624C8:  STR             R1, [SP,#0x88+var_28]
624CA:  VSTR            D16, [SP,#0x88+var_30]
624CE:  STRD.W          R5, R5, [R0]
624D2:  STR             R5, [R0,#8]
624D4:  LDRB.W          R0, [SP,#0x88+var_40]
624D8:  LSLS            R0, R0, #0x1F
624DA:  ITT NE
624DC:  LDRNE           R0, [SP,#0x88+var_38]; void *
624DE:  BLXNE           j__ZdlPv; operator delete(void *)
624E2:  LDRB.W          R0, [SP,#0x88+var_84]
624E6:  LSLS            R0, R0, #0x1F
624E8:  ITT NE
624EA:  LDRNE           R0, [SP,#0x88+var_7C]; void *
624EC:  BLXNE           j__ZdlPv; operator delete(void *)
624F0:  LDRB.W          R0, [SP,#0x88+var_50]
624F4:  LSLS            R0, R0, #0x1F
624F6:  ITT NE
624F8:  LDRNE           R0, [SP,#0x88+var_48]; void *
624FA:  BLXNE           j__ZdlPv; operator delete(void *)
624FE:  LDRB.W          R0, [SP,#0x88+var_78]
62502:  LSLS            R0, R0, #0x1F
62504:  ITT NE
62506:  LDRNE           R0, [SP,#0x88+var_70]; void *
62508:  BLXNE           j__ZdlPv; operator delete(void *)
6250C:  LDRB.W          R0, [SP,#0x88+var_60]
62510:  LSLS            R0, R0, #0x1F
62512:  ITT NE
62514:  LDRNE           R0, [SP,#0x88+var_58]; void *
62516:  BLXNE           j__ZdlPv; operator delete(void *)
6251A:  LDRB.W          R0, [SP,#0x88+var_6C]
6251E:  LSLS            R0, R0, #0x1F
62520:  ITT NE
62522:  LDRNE           R0, [SP,#0x88+var_64]; void *
62524:  BLXNE           j__ZdlPv; operator delete(void *)
62528:  ADD             R0, SP, #0x88+var_60
6252A:  ADD             R1, SP, #0x88+var_30
6252C:  MOV             R2, R8
6252E:  BL              sub_62698
62532:  LDR             R1, =(aFfffff - 0x62538); "{FFFFFF}" ...
62534:  ADD             R1, PC; "{FFFFFF}"
62536:  ADD             R0, SP, #0x88+var_60; int
62538:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
6253C:  VLDR            D16, [R0]
62540:  MOVS            R5, #0
62542:  LDR             R1, [R0,#8]
62544:  STR             R1, [SP,#0x88+var_48]
62546:  VSTR            D16, [SP,#0x88+var_50]
6254A:  STRD.W          R5, R5, [R0]
6254E:  STR             R5, [R0,#8]
62550:  LDRB.W          R0, [R9]
62554:  LDRD.W          R2, R1, [R9,#4]
62558:  ANDS.W          R3, R0, #1
6255C:  ITT EQ
6255E:  ADDEQ.W         R1, R9, #1
62562:  LSREQ           R2, R0, #1
62564:  ADD             R0, SP, #0x88+var_50
62566:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
6256A:  VLDR            D16, [R0]
6256E:  LDR             R1, [R0,#8]
62570:  STR             R1, [SP,#0x88+var_38]
62572:  VSTR            D16, [SP,#0x88+var_40]
62576:  STRD.W          R5, R5, [R0]
6257A:  STR             R5, [R0,#8]
6257C:  LDRB.W          R1, [SP,#0x88+var_40]
62580:  LDR             R0, [SP,#0x88+var_38]
62582:  LSLS            R1, R1, #0x1F
62584:  IT EQ
62586:  ADDEQ           R0, R6, #1
62588:  BL              sub_6C73C
6258C:  LDRB.W          R0, [SP,#0x88+var_40]
62590:  LSLS            R0, R0, #0x1F
62592:  ITT NE
62594:  LDRNE           R0, [SP,#0x88+var_38]; void *
62596:  BLXNE           j__ZdlPv; operator delete(void *)
6259A:  LDRB.W          R0, [SP,#0x88+var_50]
6259E:  LSLS            R0, R0, #0x1F
625A0:  ITT NE
625A2:  LDRNE           R0, [SP,#0x88+var_48]; void *
625A4:  BLXNE           j__ZdlPv; operator delete(void *)
625A8:  LDRB.W          R0, [SP,#0x88+var_60]
625AC:  LSLS            R0, R0, #0x1F
625AE:  ITT NE
625B0:  LDRNE           R0, [SP,#0x88+var_58]; void *
625B2:  BLXNE           j__ZdlPv; operator delete(void *)
625B6:  LDRB.W          R0, [SP,#0x88+var_30]
625BA:  LSLS            R0, R0, #0x1F
625BC:  ITT NE
625BE:  LDRNE           R0, [SP,#0x88+var_28]; void *
625C0:  BLXNE           j__ZdlPv; operator delete(void *)
625C4:  LDR             R0, [SP,#0x88+var_24]
625C6:  LDR             R1, =(__stack_chk_guard_ptr - 0x625CC)
625C8:  ADD             R1, PC; __stack_chk_guard_ptr
625CA:  LDR             R1, [R1]; __stack_chk_guard
625CC:  LDR             R1, [R1]
625CE:  CMP             R1, R0
625D0:  ITTTT EQ
625D2:  ADDEQ           SP, SP, #0x68 ; 'h'
625D4:  VPOPEQ          {D8}
625D8:  POPEQ.W         {R8,R9,R11}
625DC:  POPEQ           {R4-R7,PC}
625DE:  BLX             __stack_chk_fail
