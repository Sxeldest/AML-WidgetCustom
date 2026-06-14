; =========================================================
; Game Engine Function: sub_1613E0
; Address            : 0x1613E0 - 0x16141C
; =========================================================

1613E0:  PUSH            {R4,R5,R7,LR}
1613E2:  ADD             R7, SP, #8
1613E4:  SUB             SP, SP, #8
1613E6:  LDR             R5, =(aN12antiCrasher - 0x1613EE); "N12anti_crasher3UEF12anti_crasherE" ...
1613E8:  MOV             R4, R0
1613EA:  ADD             R5, PC; "N12anti_crasher3UEF12anti_crasherE"
1613EC:  MOV             R1, R5; s
1613EE:  BL              sub_DC6DC
1613F2:  MOVS            R0, #0
1613F4:  STR             R0, [SP,#0x10+status]
1613F6:  ADD             R3, SP, #0x10+status; lpstatus
1613F8:  MOV             R0, R5; lpmangled
1613FA:  MOVS            R1, #0; lpout
1613FC:  MOVS            R2, #0; lpoutlen
1613FE:  BLX             j___cxa_demangle
161402:  MOV             R5, R0
161404:  CBZ             R0, loc_161418
161406:  LDR             R0, [SP,#0x10+status]
161408:  CBNZ            R0, loc_161412
16140A:  MOV             R0, R4; int
16140C:  MOV             R1, R5; s
16140E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
161412:  MOV             R0, R5; ptr
161414:  BLX             free
161418:  ADD             SP, SP, #8
16141A:  POP             {R4,R5,R7,PC}
