; =========================================================
; Game Engine Function: sub_F6058
; Address            : 0xF6058 - 0xF609A
; =========================================================

F6058:  PUSH            {R4-R7,LR}
F605A:  ADD             R7, SP, #0xC
F605C:  PUSH.W          {R11}
F6060:  MOV             R4, R0
F6062:  LDR             R0, =(_ZTVNSt6__ndk117moneypunct_bynameIcLb1EEE_ptr - 0xF606A)
F6064:  MOV             R5, R4
F6066:  ADD             R0, PC; _ZTVNSt6__ndk117moneypunct_bynameIcLb1EEE_ptr
F6068:  LDR             R0, [R0]; `vtable for'std::moneypunct_byname<char,true> ...
F606A:  ADDS            R0, #8
F606C:  STR.W           R0, [R5],#0xC
F6070:  LDR             R1, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0xF607A)
F6072:  ADD.W           R0, R4, #0x30 ; '0'
F6076:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
F6078:  LDR             R6, [R1]; std::string::~string()
F607A:  BLX             R6; std::string::~string()
F607C:  ADD.W           R0, R4, #0x24 ; '$'
F6080:  BLX             R6; std::string::~string()
F6082:  ADD.W           R0, R4, #0x18
F6086:  BLX             R6; std::string::~string()
F6088:  MOV             R0, R5
F608A:  BLX             R6; std::string::~string()
F608C:  MOV             R0, R4
F608E:  POP.W           {R11}
F6092:  POP.W           {R4-R7,LR}
F6096:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
