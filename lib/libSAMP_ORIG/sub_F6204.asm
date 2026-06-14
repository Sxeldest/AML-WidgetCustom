; =========================================================
; Game Engine Function: sub_F6204
; Address            : 0xF6204 - 0xF621E
; =========================================================

F6204:  PUSH            {R4,R5,R7,LR}
F6206:  ADD             R7, SP, #8
F6208:  LDR             R5, =(unk_1AEF8C - 0xF6210)
F620A:  MOVS            R4, #0x9C
F620C:  ADD             R5, PC; unk_1AEF8C
F620E:  ADDS            R0, R5, R4
F6210:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F6214:  SUBS            R4, #0xC
F6216:  ADDS.W          R0, R4, #0xC
F621A:  BNE             loc_F620E
F621C:  POP             {R4,R5,R7,PC}
