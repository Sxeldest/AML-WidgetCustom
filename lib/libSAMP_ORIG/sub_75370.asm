; =========================================================
; Game Engine Function: sub_75370
; Address            : 0x75370 - 0x7540E
; =========================================================

75370:  PUSH            {R4-R7,LR}
75372:  ADD             R7, SP, #0xC
75374:  PUSH.W          {R8-R11}
75378:  SUB             SP, SP, #4
7537A:  CMP             R1, #0
7537C:  BEQ             loc_75406
7537E:  MOV             R10, R0
75380:  LDRB            R0, [R1]
75382:  MOV             R6, R1
75384:  CMP             R0, #0
75386:  BEQ             loc_75406
75388:  MOVS            R0, #0x24 ; '$'; unsigned int
7538A:  MOV             R8, R3
7538C:  MOV             R9, R2
7538E:  LDR.W           R11, [R7,#arg_4]
75392:  BLX             j__Znwj; operator new(uint)
75396:  MOV             R5, R0
75398:  MOVS            R0, #0
7539A:  MOV             R4, R5
7539C:  STRD.W          R0, R0, [R5]
753A0:  STR             R0, [R5,#8]
753A2:  MOV             R1, R6; s
753A4:  STRD.W          R0, R0, [R5,#0x14]
753A8:  STR.W           R0, [R4,#0x10]!
753AC:  MOV             R0, R5; int
753AE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
753B2:  MOV             R0, R4; int
753B4:  MOV             R1, R8; s
753B6:  STR.W           R9, [R5,#0xC]
753BA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
753BE:  LDR.W           R4, [R10,#8]
753C2:  LDR             R0, [R7,#arg_0]
753C4:  CMP             R4, #5
753C6:  STRB.W          R11, [R5,#0x20]
753CA:  STR             R0, [R5,#0x1C]
753CC:  BCC             loc_753EA
753CE:  LDR.W           R0, [R10,#4]; void *
753D2:  SUBS            R3, R4, #1
753D4:  STR.W           R3, [R10,#8]
753D8:  LDRD.W          R1, R2, [R0]
753DC:  STR             R2, [R1,#4]
753DE:  LDR             R2, [R0,#4]
753E0:  STR             R1, [R2]
753E2:  BLX             j__ZdlPv; operator delete(void *)
753E6:  LDR.W           R4, [R10,#8]
753EA:  MOVS            R0, #0xC; unsigned int
753EC:  BLX             j__Znwj; operator new(uint)
753F0:  LDR.W           R1, [R10]
753F4:  ADDS            R2, R4, #1
753F6:  STR.W           R2, [R10,#8]
753FA:  STR.W           R0, [R10]
753FE:  STRD.W          R1, R10, [R0]
75402:  STR             R5, [R0,#8]
75404:  STR             R0, [R1,#4]
75406:  ADD             SP, SP, #4
75408:  POP.W           {R8-R11}
7540C:  POP             {R4-R7,PC}
