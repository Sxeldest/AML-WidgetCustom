; =========================================================
; Game Engine Function: sub_1545C8
; Address            : 0x1545C8 - 0x154644
; =========================================================

1545C8:  PUSH            {R4-R7,LR}
1545CA:  ADD             R7, SP, #0xC
1545CC:  PUSH.W          {R8}
1545D0:  SUB.W           SP, SP, #0x800
1545D4:  MOV             R8, R1
1545D6:  LDR             R1, =(byte_8F794 - 0x1545E0)
1545D8:  MOV             R6, R2
1545DA:  MOV             R4, R0
1545DC:  ADD             R1, PC; byte_8F794 ; char *
1545DE:  BLX             j__ZNSt13runtime_errorC2EPKc_0; std::runtime_error::runtime_error(char const*)
1545E2:  LDR             R0, =(_ZTV13BassException - 0x1545EE); `vtable for'BassException ...
1545E4:  MOVS            R1, #0
1545E6:  MOV             R5, R4
1545E8:  STR             R6, [R4,#8]
1545EA:  ADD             R0, PC; `vtable for'BassException
1545EC:  STR.W           R1, [R5,#0xC]!
1545F0:  ADDS            R0, #8
1545F2:  STR             R0, [R4]
1545F4:  STRD.W          R1, R1, [R4,#0x10]
1545F8:  MOV             R0, R5; int
1545FA:  MOV             R1, R8; s
1545FC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
154600:  LDR             R1, =(asc_8B87F - 0x154606); ": " ...
154602:  ADD             R1, PC; ": "
154604:  MOV             R0, R5; int
154606:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
15460A:  MOV             R0, R6
15460C:  BL              sub_159660
154610:  MOV             R1, R0; s
154612:  MOV             R0, R5; int
154614:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
154618:  LDRB            R0, [R4,#0xC]
15461A:  LDR             R3, [R4,#0x14]
15461C:  LDR             R2, =(aBassexceptionS - 0x154628); "BassException - %s" ...
15461E:  LSLS            R0, R0, #0x1F
154620:  IT EQ
154622:  ADDEQ           R3, R5, #1
154624:  ADD             R2, PC; "BassException - %s"
154626:  ADD.W           R0, SP, #0x810+s
15462A:  BL              sub_1546EC
15462E:  ADD.W           R1, SP, #0x810+s; s
154632:  MOVS            R0, #4; int
154634:  BL              sub_159B70
154638:  MOV             R0, R4
15463A:  ADD.W           SP, SP, #0x800
15463E:  POP.W           {R8}
154642:  POP             {R4-R7,PC}
