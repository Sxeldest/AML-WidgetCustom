; =========================================================
; Game Engine Function: sub_11BF20
; Address            : 0x11BF20 - 0x11BF5C
; =========================================================

11BF20:  PUSH            {R4,R5,R7,LR}
11BF22:  ADD             R7, SP, #8
11BF24:  SUB             SP, SP, #8
11BF26:  LDR             R5, =(aN9modloader8te - 0x11BF2E); "N9modloader8texturesE" ...
11BF28:  MOV             R4, R0
11BF2A:  ADD             R5, PC; "N9modloader8texturesE"
11BF2C:  MOV             R1, R5; s
11BF2E:  BL              sub_DC6DC
11BF32:  MOVS            R0, #0
11BF34:  STR             R0, [SP,#0x10+status]
11BF36:  ADD             R3, SP, #0x10+status; lpstatus
11BF38:  MOV             R0, R5; lpmangled
11BF3A:  MOVS            R1, #0; lpout
11BF3C:  MOVS            R2, #0; lpoutlen
11BF3E:  BLX             j___cxa_demangle
11BF42:  MOV             R5, R0
11BF44:  CBZ             R0, loc_11BF58
11BF46:  LDR             R0, [SP,#0x10+status]
11BF48:  CBNZ            R0, loc_11BF52
11BF4A:  MOV             R0, R4; int
11BF4C:  MOV             R1, R5; s
11BF4E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11BF52:  MOV             R0, R5; ptr
11BF54:  BLX             free
11BF58:  ADD             SP, SP, #8
11BF5A:  POP             {R4,R5,R7,PC}
