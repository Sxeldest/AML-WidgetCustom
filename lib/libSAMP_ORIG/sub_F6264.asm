; =========================================================
; Game Engine Function: sub_F6264
; Address            : 0xF6264 - 0xF6280
; =========================================================

F6264:  PUSH            {R4,R5,R7,LR}
F6266:  ADD             R7, SP, #8
F6268:  LDR             R5, =(unk_1AF1FC - 0xF6272)
F626A:  MOV.W           R4, #0x114
F626E:  ADD             R5, PC; unk_1AF1FC
F6270:  ADDS            R0, R5, R4
F6272:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
F6276:  SUBS            R4, #0xC
F6278:  ADDS.W          R0, R4, #0xC
F627C:  BNE             loc_F6270
F627E:  POP             {R4,R5,R7,PC}
