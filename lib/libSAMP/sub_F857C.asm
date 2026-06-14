; =========================================================
; Game Engine Function: sub_F857C
; Address            : 0xF857C - 0xF85C0
; =========================================================

F857C:  PUSH            {R4-R7,LR}
F857E:  ADD             R7, SP, #0xC
F8580:  PUSH.W          {R11}
F8584:  SUBS            R6, R0, #1
F8586:  MOV             R4, R2
F8588:  MOVW            R2, #0x713
F858C:  CMP             R6, R2
F858E:  BHI             loc_F85AE
F8590:  LDR             R2, =(unk_92DBE - 0xF859A)
F8592:  ADD.W           R0, R0, R0,LSL#3
F8596:  ADD             R2, PC; unk_92DBE
F8598:  ADD.W           R5, R2, R0,LSL#3
F859C:  MOV             R0, R1; int
F859E:  MOV             R1, R5; s
F85A0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F85A4:  ADD.W           R1, R5, #0x24 ; '$'; s
F85A8:  MOV             R0, R4; int
F85AA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F85AE:  MOVS            R0, #0
F85B0:  MOVW            R1, #0x714
F85B4:  CMP             R6, R1
F85B6:  IT CC
F85B8:  MOVCC           R0, #1
F85BA:  POP.W           {R11}
F85BE:  POP             {R4-R7,PC}
