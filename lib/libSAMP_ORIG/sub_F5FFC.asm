; =========================================================
; Game Engine Function: sub_F5FFC
; Address            : 0xF5FFC - 0xF603E
; =========================================================

F5FFC:  PUSH            {R4-R7,LR}
F5FFE:  ADD             R7, SP, #0xC
F6000:  PUSH.W          {R11}
F6004:  MOV             R4, R0
F6006:  LDR             R0, =(_ZTVNSt6__ndk117moneypunct_bynameIcLb0EEE_ptr - 0xF600E)
F6008:  MOV             R5, R4
F600A:  ADD             R0, PC; _ZTVNSt6__ndk117moneypunct_bynameIcLb0EEE_ptr
F600C:  LDR             R0, [R0]; `vtable for'std::moneypunct_byname<char,false> ...
F600E:  ADDS            R0, #8
F6010:  STR.W           R0, [R5],#0xC
F6014:  LDR             R1, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0xF601E)
F6016:  ADD.W           R0, R4, #0x30 ; '0'
F601A:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
F601C:  LDR             R6, [R1]; std::string::~string()
F601E:  BLX             R6; std::string::~string()
F6020:  ADD.W           R0, R4, #0x24 ; '$'
F6024:  BLX             R6; std::string::~string()
F6026:  ADD.W           R0, R4, #0x18
F602A:  BLX             R6; std::string::~string()
F602C:  MOV             R0, R5
F602E:  BLX             R6; std::string::~string()
F6030:  MOV             R0, R4
F6032:  POP.W           {R11}
F6036:  POP.W           {R4-R7,LR}
F603A:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
