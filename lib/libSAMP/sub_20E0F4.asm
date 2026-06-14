; =========================================================
; Game Engine Function: sub_20E0F4
; Address            : 0x20E0F4 - 0x20E10E
; =========================================================

20E0F4:  PUSH            {R4,R5,R7,LR}
20E0F6:  ADD             R7, SP, #8
20E0F8:  LDR             R5, =(unk_383818 - 0x20E100)
20E0FA:  MOVS            R4, #0x9C
20E0FC:  ADD             R5, PC; unk_383818
20E0FE:  ADDS            R0, R5, R4
20E100:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20E104:  SUBS            R4, #0xC
20E106:  ADDS.W          R0, R4, #0xC
20E10A:  BNE             loc_20E0FE
20E10C:  POP             {R4,R5,R7,PC}
