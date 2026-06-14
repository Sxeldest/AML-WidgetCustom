; =========================================================
; Game Engine Function: sub_F60B4
; Address            : 0xF60B4 - 0xF60F8
; =========================================================

F60B4:  PUSH            {R4-R7,LR}
F60B6:  ADD             R7, SP, #0xC
F60B8:  PUSH.W          {R11}
F60BC:  MOV             R4, R0
F60BE:  LDR             R0, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr - 0xF60C6)
F60C0:  MOV             R5, R4
F60C2:  ADD             R0, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr
F60C4:  LDR             R0, [R0]; `vtable for'std::moneypunct_byname<wchar_t,false> ...
F60C6:  ADDS            R0, #8
F60C8:  STR.W           R0, [R5],#0x10
F60CC:  LDR             R1, =(_ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr - 0xF60D6)
F60CE:  ADD.W           R0, R4, #0x34 ; '4'
F60D2:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr
F60D4:  LDR             R6, [R1]; std::wstring::~wstring()
F60D6:  BLX             R6; std::wstring::~wstring()
F60D8:  ADD.W           R0, R4, #0x28 ; '('
F60DC:  BLX             R6; std::wstring::~wstring()
F60DE:  ADD.W           R0, R4, #0x1C
F60E2:  BLX             R6; std::wstring::~wstring()
F60E4:  MOV             R0, R5
F60E6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F60EA:  MOV             R0, R4
F60EC:  POP.W           {R11}
F60F0:  POP.W           {R4-R7,LR}
F60F4:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
