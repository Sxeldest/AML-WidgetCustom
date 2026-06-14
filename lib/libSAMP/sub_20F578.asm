; =========================================================
; Game Engine Function: sub_20F578
; Address            : 0x20F578 - 0x20F5D8
; =========================================================

20F578:  PUSH            {R4,R5,R7,LR}
20F57A:  ADD             R7, SP, #8
20F57C:  LDR             R1, =(_ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr - 0x20F588)
20F57E:  MOV             R4, R0
20F580:  ADD.W           R0, R0, #0x208
20F584:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr
20F586:  LDR             R5, [R1]; std::wstring::~wstring()
20F588:  BLX             R5; std::wstring::~wstring()
20F58A:  ADD.W           R0, R4, #0x1FC
20F58E:  BLX             R5; std::wstring::~wstring()
20F590:  ADD.W           R0, R4, #0x1F0
20F594:  BLX             R5; std::wstring::~wstring()
20F596:  ADD.W           R0, R4, #0x1E4
20F59A:  BLX             R5; std::wstring::~wstring()
20F59C:  MOV.W           R5, #0x1D8
20F5A0:  ADDS            R0, R4, R5
20F5A2:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
20F5A6:  SUBS            R5, #0xC
20F5A8:  CMP.W           R5, #0x1C0
20F5AC:  BNE             loc_20F5A0
20F5AE:  MOV.W           R5, #0x1C0
20F5B2:  ADDS            R0, R4, R5
20F5B4:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
20F5B8:  SUBS            R5, #0xC
20F5BA:  CMP             R5, #0xA0
20F5BC:  BNE             loc_20F5B2
20F5BE:  MOVS            R5, #0xA0
20F5C0:  ADDS            R0, R4, R5
20F5C2:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
20F5C6:  SUBS            R5, #0xC
20F5C8:  ADDS.W          R0, R5, #8
20F5CC:  BNE             loc_20F5C0
20F5CE:  MOV             R0, R4
20F5D0:  POP.W           {R4,R5,R7,LR}
20F5D4:  B.W             sub_2248A4
