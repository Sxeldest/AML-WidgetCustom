; =========================================================
; Game Engine Function: sub_F6244
; Address            : 0xF6244 - 0xF6260
; =========================================================

F6244:  PUSH            {R4,R5,R7,LR}
F6246:  ADD             R7, SP, #8
F6248:  LDR             R5, =(unk_1AF0DC - 0xF6252)
F624A:  MOV.W           R4, #0x114
F624E:  ADD             R5, PC; unk_1AF0DC
F6250:  ADDS            R0, R5, R4
F6252:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F6256:  SUBS            R4, #0xC
F6258:  ADDS.W          R0, R4, #0xC
F625C:  BNE             loc_F6250
F625E:  POP             {R4,R5,R7,PC}
