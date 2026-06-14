; =========================================================
; Game Engine Function: sub_20E154
; Address            : 0x20E154 - 0x20E170
; =========================================================

20E154:  PUSH            {R4,R5,R7,LR}
20E156:  ADD             R7, SP, #8
20E158:  LDR             R5, =(unk_383A88 - 0x20E162)
20E15A:  MOV.W           R4, #0x114
20E15E:  ADD             R5, PC; unk_383A88
20E160:  ADDS            R0, R5, R4
20E162:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
20E166:  SUBS            R4, #0xC
20E168:  ADDS.W          R0, R4, #0xC
20E16C:  BNE             loc_20E160
20E16E:  POP             {R4,R5,R7,PC}
