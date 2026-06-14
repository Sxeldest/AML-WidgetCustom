; =========================================================
; Game Engine Function: sub_F62A0
; Address            : 0xF62A0 - 0xF62B8
; =========================================================

F62A0:  PUSH            {R4,R5,R7,LR}
F62A2:  ADD             R7, SP, #8
F62A4:  LDR             R5, =(unk_1AF5A8 - 0xF62AC)
F62A6:  MOVS            R4, #0x34 ; '4'
F62A8:  ADD             R5, PC; unk_1AF5A8
F62AA:  ADDS            R0, R5, R4
F62AC:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
F62B0:  SUBS            R4, #0xC
F62B2:  CMP             R4, #0x1C
F62B4:  BNE             loc_F62AA
F62B6:  POP             {R4,R5,R7,PC}
