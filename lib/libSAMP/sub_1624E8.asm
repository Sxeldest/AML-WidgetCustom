; =========================================================
; Game Engine Function: sub_1624E8
; Address            : 0x1624E8 - 0x162524
; =========================================================

1624E8:  PUSH            {R4,R5,R7,LR}
1624EA:  ADD             R7, SP, #8
1624EC:  SUB             SP, SP, #8
1624EE:  LDR             R5, =(a8poolLog - 0x1624F6); "8pool_log" ...
1624F0:  MOV             R4, R0
1624F2:  ADD             R5, PC; "8pool_log"
1624F4:  MOV             R1, R5; s
1624F6:  BL              sub_DC6DC
1624FA:  MOVS            R0, #0
1624FC:  STR             R0, [SP,#0x10+status]
1624FE:  ADD             R3, SP, #0x10+status; lpstatus
162500:  MOV             R0, R5; lpmangled
162502:  MOVS            R1, #0; lpout
162504:  MOVS            R2, #0; lpoutlen
162506:  BLX             j___cxa_demangle
16250A:  MOV             R5, R0
16250C:  CBZ             R0, loc_162520
16250E:  LDR             R0, [SP,#0x10+status]
162510:  CBNZ            R0, loc_16251A
162512:  MOV             R0, R4; int
162514:  MOV             R1, R5; s
162516:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
16251A:  MOV             R0, R5; ptr
16251C:  BLX             free
162520:  ADD             SP, SP, #8
162522:  POP             {R4,R5,R7,PC}
