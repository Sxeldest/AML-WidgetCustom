; =========================================================
; Game Engine Function: sub_12A84C
; Address            : 0x12A84C - 0x12A886
; =========================================================

12A84C:  PUSH            {R4,R6,R7,LR}
12A84E:  ADD             R7, SP, #8
12A850:  SUB             SP, SP, #0x18
12A852:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN2UI6renderEvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12A85C); `vtable for'std::__function::__func<UI::render(void)::$_0,std::allocator<UI::render(void)::$_0>,void ()(void)> ...
12A854:  MOV             R4, SP
12A856:  LDR             R1, [R0,#0x54]
12A858:  ADD             R2, PC; `vtable for'std::__function::__func<UI::render(void)::$_0,std::allocator<UI::render(void)::$_0>,void ()(void)>
12A85A:  STR             R4, [SP,#0x20+var_10]
12A85C:  ADDS            R2, #8
12A85E:  STR             R2, [SP,#0x20+var_20]
12A860:  LDR             R2, [R1]
12A862:  STR             R0, [SP,#0x20+var_1C]
12A864:  LDR             R2, [R2,#0xC]
12A866:  MOV             R0, R1
12A868:  MOV             R1, R4
12A86A:  BLX             R2
12A86C:  LDR             R0, [SP,#0x20+var_10]
12A86E:  CMP             R4, R0
12A870:  BEQ             loc_12A878
12A872:  CBZ             R0, loc_12A882
12A874:  MOVS            R1, #5
12A876:  B               loc_12A87A
12A878:  MOVS            R1, #4
12A87A:  LDR             R2, [R0]
12A87C:  LDR.W           R1, [R2,R1,LSL#2]
12A880:  BLX             R1
12A882:  ADD             SP, SP, #0x18
12A884:  POP             {R4,R6,R7,PC}
