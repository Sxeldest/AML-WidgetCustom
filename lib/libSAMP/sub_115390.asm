; =========================================================
; Game Engine Function: sub_115390
; Address            : 0x115390 - 0x1153CC
; =========================================================

115390:  PUSH            {R4,R5,R7,LR}
115392:  ADD             R7, SP, #8
115394:  SUB             SP, SP, #8
115396:  LDR             R5, =(a10radarRect - 0x11539E); "10radar_rect" ...
115398:  MOV             R4, R0
11539A:  ADD             R5, PC; "10radar_rect"
11539C:  MOV             R1, R5; s
11539E:  BL              sub_DC6DC
1153A2:  MOVS            R0, #0
1153A4:  STR             R0, [SP,#0x10+status]
1153A6:  ADD             R3, SP, #0x10+status; lpstatus
1153A8:  MOV             R0, R5; lpmangled
1153AA:  MOVS            R1, #0; lpout
1153AC:  MOVS            R2, #0; lpoutlen
1153AE:  BLX             j___cxa_demangle
1153B2:  MOV             R5, R0
1153B4:  CBZ             R0, loc_1153C8
1153B6:  LDR             R0, [SP,#0x10+status]
1153B8:  CBNZ            R0, loc_1153C2
1153BA:  MOV             R0, R4; int
1153BC:  MOV             R1, R5; s
1153BE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
1153C2:  MOV             R0, R5; ptr
1153C4:  BLX             free
1153C8:  ADD             SP, SP, #8
1153CA:  POP             {R4,R5,R7,PC}
