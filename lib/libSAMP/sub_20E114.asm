; =========================================================
; Game Engine Function: sub_20E114
; Address            : 0x20E114 - 0x20E12E
; =========================================================

20E114:  PUSH            {R4,R5,R7,LR}
20E116:  ADD             R7, SP, #8
20E118:  LDR             R5, =(unk_3838C0 - 0x20E120)
20E11A:  MOVS            R4, #0x9C
20E11C:  ADD             R5, PC; unk_3838C0
20E11E:  ADDS            R0, R5, R4
20E120:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
20E124:  SUBS            R4, #0xC
20E126:  ADDS.W          R0, R4, #0xC
20E12A:  BNE             loc_20E11E
20E12C:  POP             {R4,R5,R7,PC}
