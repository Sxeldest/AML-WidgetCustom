; =========================================================
; Game Engine Function: sub_F6284
; Address            : 0xF6284 - 0xF629C
; =========================================================

F6284:  PUSH            {R4,R5,R7,LR}
F6286:  ADD             R7, SP, #8
F6288:  LDR             R5, =(unk_1AF5A8 - 0xF6290)
F628A:  MOVS            R4, #0x1C
F628C:  ADD             R5, PC; unk_1AF5A8
F628E:  ADDS            R0, R5, R4
F6290:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F6294:  SUBS            R4, #0xC
F6296:  CMP             R4, #4
F6298:  BNE             loc_F628E
F629A:  POP             {R4,R5,R7,PC}
