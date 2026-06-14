; =========================================================
; Game Engine Function: sub_10D09C
; Address            : 0x10D09C - 0x10D0D8
; =========================================================

10D09C:  PUSH            {R4,R5,R7,LR}
10D09E:  ADD             R7, SP, #8
10D0A0:  SUB             SP, SP, #8
10D0A2:  LDR             R5, =(a19dustfreeheli - 0x10D0AA); "19DustFreeHelicopters" ...
10D0A4:  MOV             R4, R0
10D0A6:  ADD             R5, PC; "19DustFreeHelicopters"
10D0A8:  MOV             R1, R5; s
10D0AA:  BL              sub_DC6DC
10D0AE:  MOVS            R0, #0
10D0B0:  STR             R0, [SP,#0x10+status]
10D0B2:  ADD             R3, SP, #0x10+status; lpstatus
10D0B4:  MOV             R0, R5; lpmangled
10D0B6:  MOVS            R1, #0; lpout
10D0B8:  MOVS            R2, #0; lpoutlen
10D0BA:  BLX             j___cxa_demangle
10D0BE:  MOV             R5, R0
10D0C0:  CBZ             R0, loc_10D0D4
10D0C2:  LDR             R0, [SP,#0x10+status]
10D0C4:  CBNZ            R0, loc_10D0CE
10D0C6:  MOV             R0, R4; int
10D0C8:  MOV             R1, R5; s
10D0CA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10D0CE:  MOV             R0, R5; ptr
10D0D0:  BLX             free
10D0D4:  ADD             SP, SP, #8
10D0D6:  POP             {R4,R5,R7,PC}
