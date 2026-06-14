; =========================================================
; Game Engine Function: sub_121720
; Address            : 0x121720 - 0x12175C
; =========================================================

121720:  PUSH            {R4,R5,R7,LR}
121722:  ADD             R7, SP, #8
121724:  SUB             SP, SP, #8
121726:  LDR             R5, =(a21fixCrashGetT - 0x12172E); "21fix_crash_get_texture" ...
121728:  MOV             R4, R0
12172A:  ADD             R5, PC; "21fix_crash_get_texture"
12172C:  MOV             R1, R5; s
12172E:  BL              sub_DC6DC
121732:  MOVS            R0, #0
121734:  STR             R0, [SP,#0x10+status]
121736:  ADD             R3, SP, #0x10+status; lpstatus
121738:  MOV             R0, R5; lpmangled
12173A:  MOVS            R1, #0; lpout
12173C:  MOVS            R2, #0; lpoutlen
12173E:  BLX             j___cxa_demangle
121742:  MOV             R5, R0
121744:  CBZ             R0, loc_121758
121746:  LDR             R0, [SP,#0x10+status]
121748:  CBNZ            R0, loc_121752
12174A:  MOV             R0, R4; int
12174C:  MOV             R1, R5; s
12174E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
121752:  MOV             R0, R5; ptr
121754:  BLX             free
121758:  ADD             SP, SP, #8
12175A:  POP             {R4,R5,R7,PC}
