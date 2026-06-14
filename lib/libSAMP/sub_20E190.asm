; =========================================================
; Game Engine Function: sub_20E190
; Address            : 0x20E190 - 0x20E1A8
; =========================================================

20E190:  PUSH            {R4,R5,R7,LR}
20E192:  ADD             R7, SP, #8
20E194:  LDR             R5, =(unk_383E30 - 0x20E19C)
20E196:  MOVS            R4, #0x34 ; '4'
20E198:  ADD             R5, PC; unk_383E30
20E19A:  ADDS            R0, R5, R4
20E19C:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
20E1A0:  SUBS            R4, #0xC
20E1A2:  CMP             R4, #0x1C
20E1A4:  BNE             loc_20E19A
20E1A6:  POP             {R4,R5,R7,PC}
