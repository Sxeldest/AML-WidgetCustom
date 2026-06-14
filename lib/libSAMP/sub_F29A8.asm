; =========================================================
; Game Engine Function: sub_F29A8
; Address            : 0xF29A8 - 0xF29E4
; =========================================================

F29A8:  PUSH            {R4,R5,R7,LR}
F29AA:  ADD             R7, SP, #8
F29AC:  SUB             SP, SP, #8
F29AE:  LDR             R5, =(a17applicatione - 0xF29B6); "17ApplicationEvents" ...
F29B0:  MOV             R4, R0
F29B2:  ADD             R5, PC; "17ApplicationEvents"
F29B4:  MOV             R1, R5; s
F29B6:  BL              sub_DC6DC
F29BA:  MOVS            R0, #0
F29BC:  STR             R0, [SP,#0x10+status]
F29BE:  ADD             R3, SP, #0x10+status; lpstatus
F29C0:  MOV             R0, R5; lpmangled
F29C2:  MOVS            R1, #0; lpout
F29C4:  MOVS            R2, #0; lpoutlen
F29C6:  BLX             j___cxa_demangle
F29CA:  MOV             R5, R0
F29CC:  CBZ             R0, loc_F29E0
F29CE:  LDR             R0, [SP,#0x10+status]
F29D0:  CBNZ            R0, loc_F29DA
F29D2:  MOV             R0, R4; int
F29D4:  MOV             R1, R5; s
F29D6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F29DA:  MOV             R0, R5; ptr
F29DC:  BLX             free
F29E0:  ADD             SP, SP, #8
F29E2:  POP             {R4,R5,R7,PC}
