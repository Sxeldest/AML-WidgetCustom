; =========================================================
; Game Engine Function: sub_115DF4
; Address            : 0x115DF4 - 0x115E30
; =========================================================

115DF4:  PUSH            {R4,R5,R7,LR}
115DF6:  ADD             R7, SP, #8
115DF8:  SUB             SP, SP, #8
115DFA:  LDR             R5, =(a14streamedFile - 0x115E02); "14streamed_files" ...
115DFC:  MOV             R4, R0
115DFE:  ADD             R5, PC; "14streamed_files"
115E00:  MOV             R1, R5; s
115E02:  BL              sub_DC6DC
115E06:  MOVS            R0, #0
115E08:  STR             R0, [SP,#0x10+status]
115E0A:  ADD             R3, SP, #0x10+status; lpstatus
115E0C:  MOV             R0, R5; lpmangled
115E0E:  MOVS            R1, #0; lpout
115E10:  MOVS            R2, #0; lpoutlen
115E12:  BLX             j___cxa_demangle
115E16:  MOV             R5, R0
115E18:  CBZ             R0, loc_115E2C
115E1A:  LDR             R0, [SP,#0x10+status]
115E1C:  CBNZ            R0, loc_115E26
115E1E:  MOV             R0, R4; int
115E20:  MOV             R1, R5; s
115E22:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
115E26:  MOV             R0, R5; ptr
115E28:  BLX             free
115E2C:  ADD             SP, SP, #8
115E2E:  POP             {R4,R5,R7,PC}
