; =========================================================
; Game Engine Function: sub_12D6B4
; Address            : 0x12D6B4 - 0x12D75C
; =========================================================

12D6B4:  PUSH            {R4-R7,LR}
12D6B6:  ADD             R7, SP, #0xC
12D6B8:  PUSH.W          {R8,R9,R11}
12D6BC:  MOV             R8, R0
12D6BE:  LDR.W           R0, [R0,#0x878]
12D6C2:  MOV             R6, R1
12D6C4:  MOV             R9, R1
12D6C6:  LDR.W           R1, [R6],#0x28
12D6CA:  ADD.W           R0, R0, R0,LSL#3
12D6CE:  ADD.W           R4, R8, R0,LSL#3
12D6D2:  ADDS            R0, R4, #4
12D6D4:  MOV             R5, R4
12D6D6:  STR.W           R1, [R5],#0x28
12D6DA:  ADD.W           R1, R9, #4
12D6DE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12D6E2:  ADD.W           R0, R4, #0x10
12D6E6:  ADD.W           R1, R9, #0x10
12D6EA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12D6EE:  ADD.W           R0, R4, #0x1C
12D6F2:  ADD.W           R1, R9, #0x1C
12D6F6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12D6FA:  VLD1.32         {D16-D17}, [R6]!
12D6FE:  MOV             R0, #0x88888889
12D706:  LDR.W           R1, [R8,#0x870]
12D70A:  VLD1.32         {D18-D19}, [R6]
12D70E:  CMP             R1, #0x1E
12D710:  VST1.32         {D16-D17}, [R5]!
12D714:  VST1.32         {D18-D19}, [R5]
12D718:  BNE             loc_12D736
12D71A:  LDR.W           R1, [R8,#0x874]
12D71E:  ADDS            R1, #1
12D720:  UMULL.W         R2, R3, R1, R0
12D724:  LSRS            R2, R3, #4
12D726:  LSLS            R2, R2, #4
12D728:  SUB.W           R2, R2, R3,LSR#4
12D72C:  SUB.W           R1, R1, R2,LSL#1
12D730:  STR.W           R1, [R8,#0x874]
12D734:  B               loc_12D73C
12D736:  ADDS            R1, #1
12D738:  STR.W           R1, [R8,#0x870]
12D73C:  LDR.W           R1, [R8,#0x878]
12D740:  ADDS            R1, #1
12D742:  UMULL.W         R0, R2, R1, R0
12D746:  LSRS            R0, R2, #4
12D748:  LSLS            R0, R0, #4
12D74A:  SUB.W           R0, R0, R2,LSR#4
12D74E:  SUB.W           R0, R1, R0,LSL#1
12D752:  STR.W           R0, [R8,#0x878]
12D756:  POP.W           {R8,R9,R11}
12D75A:  POP             {R4-R7,PC}
