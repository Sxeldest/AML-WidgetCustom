; =========================================================
; Game Engine Function: sub_12A8A4
; Address            : 0x12A8A4 - 0x12A8DE
; =========================================================

12A8A4:  PUSH            {R4,R6,R7,LR}
12A8A6:  ADD             R7, SP, #8
12A8A8:  SUB             SP, SP, #0x18
12A8AA:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN2UI12render3DTextEvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12A8B4); `vtable for'std::__function::__func<UI::render3DText(void)::$_1,std::allocator<UI::render3DText(void)::$_1>,void ()(void)> ...
12A8AC:  MOV             R4, SP
12A8AE:  LDR             R1, [R0,#0x54]
12A8B0:  ADD             R2, PC; `vtable for'std::__function::__func<UI::render3DText(void)::$_1,std::allocator<UI::render3DText(void)::$_1>,void ()(void)>
12A8B2:  STR             R4, [SP,#0x20+var_10]
12A8B4:  ADDS            R2, #8
12A8B6:  STR             R2, [SP,#0x20+var_20]
12A8B8:  LDR             R2, [R1]
12A8BA:  STR             R0, [SP,#0x20+var_1C]
12A8BC:  LDR             R2, [R2,#0xC]
12A8BE:  MOV             R0, R1
12A8C0:  MOV             R1, R4
12A8C2:  BLX             R2
12A8C4:  LDR             R0, [SP,#0x20+var_10]
12A8C6:  CMP             R4, R0
12A8C8:  BEQ             loc_12A8D0
12A8CA:  CBZ             R0, loc_12A8DA
12A8CC:  MOVS            R1, #5
12A8CE:  B               loc_12A8D2
12A8D0:  MOVS            R1, #4
12A8D2:  LDR             R2, [R0]
12A8D4:  LDR.W           R1, [R2,R1,LSL#2]
12A8D8:  BLX             R1
12A8DA:  ADD             SP, SP, #0x18
12A8DC:  POP             {R4,R6,R7,PC}
