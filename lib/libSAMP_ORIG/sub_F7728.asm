; =========================================================
; Game Engine Function: sub_F7728
; Address            : 0xF7728 - 0xF7788
; =========================================================

F7728:  PUSH            {R4,R5,R7,LR}
F772A:  ADD             R7, SP, #8
F772C:  LDR             R1, =(_ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr - 0xF7738)
F772E:  MOV             R4, R0
F7730:  ADD.W           R0, R0, #0x208
F7734:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr
F7736:  LDR             R5, [R1]; std::wstring::~wstring()
F7738:  BLX             R5; std::wstring::~wstring()
F773A:  ADD.W           R0, R4, #0x1FC
F773E:  BLX             R5; std::wstring::~wstring()
F7740:  ADD.W           R0, R4, #0x1F0
F7744:  BLX             R5; std::wstring::~wstring()
F7746:  ADD.W           R0, R4, #0x1E4
F774A:  BLX             R5; std::wstring::~wstring()
F774C:  MOV.W           R5, #0x1D8
F7750:  ADDS            R0, R4, R5
F7752:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
F7756:  SUBS            R5, #0xC
F7758:  CMP.W           R5, #0x1C0
F775C:  BNE             loc_F7750
F775E:  MOV.W           R5, #0x1C0
F7762:  ADDS            R0, R4, R5
F7764:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
F7768:  SUBS            R5, #0xC
F776A:  CMP             R5, #0xA0
F776C:  BNE             loc_F7762
F776E:  MOVS            R5, #0xA0
F7770:  ADDS            R0, R4, R5
F7772:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
F7776:  SUBS            R5, #0xC
F7778:  ADDS.W          R0, R5, #8
F777C:  BNE             loc_F7770
F777E:  MOV             R0, R4
F7780:  POP.W           {R4,R5,R7,LR}
F7784:  B.W             sub_10C4AC
