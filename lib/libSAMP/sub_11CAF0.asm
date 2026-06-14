; =========================================================
; Game Engine Function: sub_11CAF0
; Address            : 0x11CAF0 - 0x11CB2C
; =========================================================

11CAF0:  PUSH            {R4,R5,R7,LR}
11CAF2:  ADD             R7, SP, #8
11CAF4:  SUB             SP, SP, #8
11CAF6:  LDR             R5, =(a9bincaches - 0x11CAFE); "9BinCaches" ...
11CAF8:  MOV             R4, R0
11CAFA:  ADD             R5, PC; "9BinCaches"
11CAFC:  MOV             R1, R5; s
11CAFE:  BL              sub_DC6DC
11CB02:  MOVS            R0, #0
11CB04:  STR             R0, [SP,#0x10+status]
11CB06:  ADD             R3, SP, #0x10+status; lpstatus
11CB08:  MOV             R0, R5; lpmangled
11CB0A:  MOVS            R1, #0; lpout
11CB0C:  MOVS            R2, #0; lpoutlen
11CB0E:  BLX             j___cxa_demangle
11CB12:  MOV             R5, R0
11CB14:  CBZ             R0, loc_11CB28
11CB16:  LDR             R0, [SP,#0x10+status]
11CB18:  CBNZ            R0, loc_11CB22
11CB1A:  MOV             R0, R4; int
11CB1C:  MOV             R1, R5; s
11CB1E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11CB22:  MOV             R0, R5; ptr
11CB24:  BLX             free
11CB28:  ADD             SP, SP, #8
11CB2A:  POP             {R4,R5,R7,PC}
