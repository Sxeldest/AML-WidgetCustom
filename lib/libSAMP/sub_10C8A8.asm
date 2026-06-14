; =========================================================
; Game Engine Function: sub_10C8A8
; Address            : 0x10C8A8 - 0x10C942
; =========================================================

10C8A8:  PUSH            {R4-R7,LR}
10C8AA:  ADD             R7, SP, #0xC
10C8AC:  PUSH.W          {R8}
10C8B0:  SUB             SP, SP, #0x30
10C8B2:  MOV             R4, R0
10C8B4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN18DisplayPerformanceC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x10C8BE); `vtable for'std::__function::__func<DisplayPerformance::DisplayPerformance(void)::$_0,std::allocator<DisplayPerformance::DisplayPerformance(void)::$_0>,void ()(void)> ...
10C8B6:  MOVS            R1, #0
10C8B8:  MOV             R8, SP
10C8BA:  ADD             R0, PC; `vtable for'std::__function::__func<DisplayPerformance::DisplayPerformance(void)::$_0,std::allocator<DisplayPerformance::DisplayPerformance(void)::$_0>,void ()(void)>
10C8BC:  STR             R1, [R4]
10C8BE:  ADDS            R0, #8
10C8C0:  STR.W           R8, [SP,#0x40+var_30]
10C8C4:  STR             R4, [SP,#0x40+var_3C]
10C8C6:  STR             R0, [SP,#0x40+var_40]
10C8C8:  BL              sub_10CD1C
10C8CC:  LDR             R0, =(unk_263208 - 0x10C8D2)
10C8CE:  ADD             R0, PC; unk_263208
10C8D0:  LDR             R6, [R0,#(dword_263218 - 0x263208)]
10C8D2:  CBNZ            R6, loc_10C904
10C8D4:  MOV             R5, SP
10C8D6:  ADD             R0, SP, #0x40+var_28
10C8D8:  MOV             R1, R5
10C8DA:  BL              sub_10CD74
10C8DE:  BL              sub_10CD1C
10C8E2:  LDR             R0, =(unk_263208 - 0x10C8E8)
10C8E4:  ADD             R0, PC; unk_263208
10C8E6:  ADD             R5, SP, #0x40+var_28
10C8E8:  MOV             R1, R5
10C8EA:  BL              sub_10CDA0
10C8EE:  LDR             R0, [SP,#0x40+var_18]
10C8F0:  CMP             R5, R0
10C8F2:  BEQ             loc_10C8FA
10C8F4:  CBZ             R0, loc_10C904
10C8F6:  MOVS            R1, #5
10C8F8:  B               loc_10C8FC
10C8FA:  MOVS            R1, #4
10C8FC:  LDR             R2, [R0]
10C8FE:  LDR.W           R1, [R2,R1,LSL#2]
10C902:  BLX             R1
10C904:  LDR             R0, [SP,#0x40+var_30]
10C906:  CMP             R8, R0
10C908:  BEQ             loc_10C910
10C90A:  CBZ             R0, loc_10C91A
10C90C:  MOVS            R1, #5
10C90E:  B               loc_10C912
10C910:  MOVS            R1, #4
10C912:  LDR             R2, [R0]
10C914:  LDR.W           R1, [R2,R1,LSL#2]
10C918:  BLX             R1
10C91A:  CBNZ            R6, loc_10C938
10C91C:  LDR             R0, =(off_23494C - 0x10C92A)
10C91E:  MOV             R2, #0x67231C
10C926:  ADD             R0, PC; off_23494C
10C928:  LDR             R0, [R0]; dword_23DF24
10C92A:  LDR             R0, [R0]
10C92C:  LDR             R1, =(sub_10C974+1 - 0x10C936)
10C92E:  ADD             R0, R2
10C930:  MOV             R2, R4
10C932:  ADD             R1, PC; sub_10C974
10C934:  BL              sub_164196
10C938:  MOV             R0, R4
10C93A:  ADD             SP, SP, #0x30 ; '0'
10C93C:  POP.W           {R8}
10C940:  POP             {R4-R7,PC}
