; =========================================================
; Game Engine Function: sub_1211E4
; Address            : 0x1211E4 - 0x121220
; =========================================================

1211E4:  PUSH            {R4,R5,R7,LR}
1211E6:  ADD             R7, SP, #8
1211E8:  SUB             SP, SP, #8
1211EA:  LDR             R5, =(a14fixBoundRect - 0x1211F2); "14fix_bound_rect" ...
1211EC:  MOV             R4, R0
1211EE:  ADD             R5, PC; "14fix_bound_rect"
1211F0:  MOV             R1, R5; s
1211F2:  BL              sub_DC6DC
1211F6:  MOVS            R0, #0
1211F8:  STR             R0, [SP,#0x10+status]
1211FA:  ADD             R3, SP, #0x10+status; lpstatus
1211FC:  MOV             R0, R5; lpmangled
1211FE:  MOVS            R1, #0; lpout
121200:  MOVS            R2, #0; lpoutlen
121202:  BLX             j___cxa_demangle
121206:  MOV             R5, R0
121208:  CBZ             R0, loc_12121C
12120A:  LDR             R0, [SP,#0x10+status]
12120C:  CBNZ            R0, loc_121216
12120E:  MOV             R0, R4; int
121210:  MOV             R1, R5; s
121212:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
121216:  MOV             R0, R5; ptr
121218:  BLX             free
12121C:  ADD             SP, SP, #8
12121E:  POP             {R4,R5,R7,PC}
