; =========================================================
; Game Engine Function: sub_20DFA4
; Address            : 0x20DFA4 - 0x20DFE8
; =========================================================

20DFA4:  PUSH            {R4-R7,LR}
20DFA6:  ADD             R7, SP, #0xC
20DFA8:  PUSH.W          {R11}
20DFAC:  MOV             R4, R0
20DFAE:  LDR             R0, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr - 0x20DFB6)
20DFB0:  MOV             R5, R4
20DFB2:  ADD             R0, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr
20DFB4:  LDR             R0, [R0]; `vtable for'std::moneypunct_byname<wchar_t,false> ...
20DFB6:  ADDS            R0, #8
20DFB8:  STR.W           R0, [R5],#0x10
20DFBC:  LDR             R1, =(_ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr - 0x20DFC6)
20DFBE:  ADD.W           R0, R4, #0x34 ; '4'
20DFC2:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr
20DFC4:  LDR             R6, [R1]; std::wstring::~wstring()
20DFC6:  BLX             R6; std::wstring::~wstring()
20DFC8:  ADD.W           R0, R4, #0x28 ; '('
20DFCC:  BLX             R6; std::wstring::~wstring()
20DFCE:  ADD.W           R0, R4, #0x1C
20DFD2:  BLX             R6; std::wstring::~wstring()
20DFD4:  MOV             R0, R5
20DFD6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20DFDA:  MOV             R0, R4
20DFDC:  POP.W           {R11}
20DFE0:  POP.W           {R4-R7,LR}
20DFE4:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
