; =========================================================
; Game Engine Function: sub_F6224
; Address            : 0xF6224 - 0xF623E
; =========================================================

F6224:  PUSH            {R4,R5,R7,LR}
F6226:  ADD             R7, SP, #8
F6228:  LDR             R5, =(unk_1AF034 - 0xF6230)
F622A:  MOVS            R4, #0x9C
F622C:  ADD             R5, PC; unk_1AF034
F622E:  ADDS            R0, R5, R4
F6230:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
F6234:  SUBS            R4, #0xC
F6236:  ADDS.W          R0, R4, #0xC
F623A:  BNE             loc_F622E
F623C:  POP             {R4,R5,R7,PC}
