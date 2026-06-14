; =========================================================
; Game Engine Function: sub_F6110
; Address            : 0xF6110 - 0xF6154
; =========================================================

F6110:  PUSH            {R4-R7,LR}
F6112:  ADD             R7, SP, #0xC
F6114:  PUSH.W          {R11}
F6118:  MOV             R4, R0
F611A:  LDR             R0, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr - 0xF6122)
F611C:  MOV             R5, R4
F611E:  ADD             R0, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr
F6120:  LDR             R0, [R0]; `vtable for'std::moneypunct_byname<wchar_t,true> ...
F6122:  ADDS            R0, #8
F6124:  STR.W           R0, [R5],#0x10
F6128:  LDR             R1, =(_ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr - 0xF6132)
F612A:  ADD.W           R0, R4, #0x34 ; '4'
F612E:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev_ptr
F6130:  LDR             R6, [R1]; std::wstring::~wstring()
F6132:  BLX             R6; std::wstring::~wstring()
F6134:  ADD.W           R0, R4, #0x28 ; '('
F6138:  BLX             R6; std::wstring::~wstring()
F613A:  ADD.W           R0, R4, #0x1C
F613E:  BLX             R6; std::wstring::~wstring()
F6140:  MOV             R0, R5
F6142:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F6146:  MOV             R0, R4
F6148:  POP.W           {R11}
F614C:  POP.W           {R4-R7,LR}
F6150:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
