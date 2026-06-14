; =========================================================
; Game Engine Function: sub_20E174
; Address            : 0x20E174 - 0x20E18C
; =========================================================

20E174:  PUSH            {R4,R5,R7,LR}
20E176:  ADD             R7, SP, #8
20E178:  LDR             R5, =(unk_383E30 - 0x20E180)
20E17A:  MOVS            R4, #0x1C
20E17C:  ADD             R5, PC; unk_383E30
20E17E:  ADDS            R0, R5, R4
20E180:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
20E184:  SUBS            R4, #0xC
20E186:  CMP             R4, #4
20E188:  BNE             loc_20E17E
20E18A:  POP             {R4,R5,R7,PC}
