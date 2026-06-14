; =========================================================
; Game Engine Function: sub_20F514
; Address            : 0x20F514 - 0x20F574
; =========================================================

20F514:  PUSH            {R4,R5,R7,LR}
20F516:  ADD             R7, SP, #8
20F518:  LDR             R1, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x20F524)
20F51A:  MOV             R4, R0
20F51C:  ADD.W           R0, R0, #0x208
20F520:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
20F522:  LDR             R5, [R1]; std::string::~string()
20F524:  BLX             R5; std::string::~string()
20F526:  ADD.W           R0, R4, #0x1FC
20F52A:  BLX             R5; std::string::~string()
20F52C:  ADD.W           R0, R4, #0x1F0
20F530:  BLX             R5; std::string::~string()
20F532:  ADD.W           R0, R4, #0x1E4
20F536:  BLX             R5; std::string::~string()
20F538:  MOV.W           R5, #0x1D8
20F53C:  ADDS            R0, R4, R5
20F53E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20F542:  SUBS            R5, #0xC
20F544:  CMP.W           R5, #0x1C0
20F548:  BNE             loc_20F53C
20F54A:  MOV.W           R5, #0x1C0
20F54E:  ADDS            R0, R4, R5
20F550:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20F554:  SUBS            R5, #0xC
20F556:  CMP             R5, #0xA0
20F558:  BNE             loc_20F54E
20F55A:  MOVS            R5, #0xA0
20F55C:  ADDS            R0, R4, R5
20F55E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20F562:  SUBS            R5, #0xC
20F564:  ADDS.W          R0, R5, #8
20F568:  BNE             loc_20F55C
20F56A:  MOV             R0, R4
20F56C:  POP.W           {R4,R5,R7,LR}
20F570:  B.W             sub_2248A4
