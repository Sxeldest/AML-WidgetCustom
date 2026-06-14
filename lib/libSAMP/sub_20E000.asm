; =========================================================
; Game Engine Function: sub_20E000
; Address            : 0x20E000 - 0x20E044
; =========================================================

20E000:  PUSH            {R4-R7,LR}
20E002:  ADD             R7, SP, #0xC
20E004:  PUSH.W          {R11}
20E008:  MOV             R4, R0
20E00A:  LDR             R0, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr - 0x20E012)
20E00C:  MOV             R5, R4
20E00E:  ADD             R0, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr
20E010:  LDR             R0, [R0]; `vtable for'std::moneypunct_byname<wchar_t,true> ...
20E012:  ADDS            R0, #8
20E014:  STR.W           R0, [R5],#0x10
20E018:  LDR             R1, =(_ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr - 0x20E022)
20E01A:  ADD.W           R0, R4, #0x34 ; '4'
20E01E:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr
20E020:  LDR             R6, [R1]; std::wstring::~wstring()
20E022:  BLX             R6; std::wstring::~wstring()
20E024:  ADD.W           R0, R4, #0x28 ; '('
20E028:  BLX             R6; std::wstring::~wstring()
20E02A:  ADD.W           R0, R4, #0x1C
20E02E:  BLX             R6; std::wstring::~wstring()
20E030:  MOV             R0, R5
20E032:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20E036:  MOV             R0, R4
20E038:  POP.W           {R11}
20E03C:  POP.W           {R4-R7,LR}
20E040:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
